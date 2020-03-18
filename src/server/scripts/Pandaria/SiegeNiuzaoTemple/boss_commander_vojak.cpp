/*
 * Trinity Core and update by Corporation ElisGrimm
 *
 * www.elisgrimm.ru
 *
 * Dungeon: Siege of Niuzao Temple.
 * Boss:    Commander Vo'jak.
 */

#include "ObjectMgr.h"
#include "AreaTrigger.h"
#include "AreaTriggerAI.h"
#include "ScriptMgr.h"
#include "Player.h"
#include "Creature.h"
#include "GameObject.h"
#include "ScriptedGossip.h"
#include "ScriptedCreature.h"
#include "CreatureTextMgr.h"
#include "InstanceScript.h"
#include "SpellInfo.h"
#include "SpellScript.h"
#include "SpellAuraEffects.h"
#include "SpellAuras.h"
#include "Spell.h"
#include "Map.h"
#include "MapManager.h"
#include "Cell.h"
#include "CellImpl.h"
#include "GridNotifiers.h"
#include "GridNotifiersImpl.h"

#include "siege_of_niuzao_temple.h"

/* Wowpedia

- Quotes and events.

    Yang Ironclaw = NPC 61620.

Meeting our backup
    Yang Ironclaw says: Thanks for the save, but we're still stuck in the middle of the entire mantid army.
    Yang Ironclaw says: Look out there. Too many for us to take head on.
    Yang Ironclaw says: Hmmm... I have a crazy idea that just might work, but we'll need your help heroes!
    Yang Ironclaw says: Let's give these mantid a taste of their own medicine!

Intro
    Yang Ironclaw says: Li and Lo, get the sap into position!
    Yang Ironclaw says: Let's get this party started, shall we?
    Yang Ironclaw yells: Bring it, uglies!
    Yang Ironclaw yells: We'll squish you like bugs!
    Yang Ironclaw yells: We've got your sap -- come and get it!
    - BOSS INTRO -

Sik'thik Swarmer
    Yang Ironclaw says: Swarmers are coming up the ramp -- use the sap to slow them down!

Sik'thik Demolisher
    Yang Ironclaw says: Demolishers are carrying explosives! Any direct hit will blow them up!

Sik'thik Warrior
    Yang Ironclaw says: Warriors coming in! Focus your fire!

Sik'thik Amberwing
    Yang Ironclaw says: The Amberwing is flying in, watch out!

Death
    - BOSS DEATH -
    Yang Ironclaw says: Well, that was fun, wasn't it?
    Yang Ironclaw says: Li and Lo, go look after our friends down below.
    Yang Ironclaw says: Ah, this gate is locked, but I think I have something that'll open it.
    Yang Ironclaw says: Let me see here... thirty second fuse...
    Yang Ironclaw says: Whoops, did I say thirty? I meant three.
    Yang Ironclaw says: Go, hurry! You must stop the siege! 

- Adds

Wave 1 = Sik'Thik Swarmers
Wave 2 = Sik'Thiks Demolishers
Wave 3 = Sik'Thik Swarmers & 1 Sik'Thik Warrior
Wave 4 = Sik'Thiks Demolishers & 1 Sik'Thik Warrior
*/

enum YangYells
{
    SAY_INTRO_1              = 0, // Thanks for the save, but we're still stuck in the middle of the entire mantid army.
    SAY_INTRO_2,                  // Look out there. Too many for us to take head on.
    SAY_INTRO_3,                  // Hmmm... I have a crazy idea that just might work, but we'll need your help heroes!
    SAY_INTRO_4,                  // Let's give these mantid a taste of their own medicine!

    SAY_ENCOUNTER_1,              // Li and Lo, get the sap into position!
    SAY_ENCOUNTER_2,              // Let's get this party started, shall we?
    SAY_ENCOUNTER_3,              // Bring it, uglies!
    SAY_ENCOUNTER_4,              // We'll squish you like bugs!
    SAY_ENCOUNTER_5,              // We've got your sap -- come and get it!

    SAY_YANG_SWARMERS,            // Swarmers are coming up the ramp -- use the sap to slow them down!
    SAY_YANG_DEMOLISHERS,         // Demolishers are carrying explosives! Any direct hit will blow them up!
    SAY_YANG_SWARMERS_WARRIOR,    // Warriors coming in! Focus your fire!
    SAY_YANG_AMBERWING,           // The Amberwing is flying in, watch out!

    SAY_OUTRO_1,                  // Well, that was fun, wasn't it?
    SAY_OUTRO_2,                  // Li and Lo, go look after our friends down below.
    SAY_OUTRO_3,                  // Ah, this gate is locked, but I think I have something that'll open it.
    SAY_OUTRO_4,                  // Let me see here... thirty second fuse...
    SAY_OUTRO_5,                  // Whoops, did I say thirty? I meant three.
    SAY_OUTRO_6                   // Go, hurry! You must stop the siege!
};

enum Yells
{
    // Boss
    SAY_INTRO                = 0, // Fools! Attacking the might of the Mantid head on? Your deaths will be swift!
    SAY_SWARMERS,                 // Swarmers, attack! Tear the flesh from their bones!
    SAY_DEMOLISHERS,              // Demolishers, get in there! Leave nothing but a pile of ash!
    SAY_WARRIORS,                 // Warriors, trample these weaklings! Crush them!
    SAY_AMBERWING,                // 0 - Carpet bomb the platform! Send in the Amberwing! ; 1 - They are holding us off, bring in the air support! ; 2 - Amberwing, get in there! Lay siege to their holdouts!
    SAY_AMBERWING_DEAD,           // Where...where is it? Worthless, useless... damn you! (Achievement)
    SAY_SEND_ALL_ADDS,            // Everyone, send everything! Slaughter these cowards, they are making us look like fools!
    SAY_ADDS_DEAD,                // Pah! Those who failed deserved to die; you merely culled the weak!

    SAY_AGGRO,                    // I must finish this myself, then. So be it!
    SAY_KILL,                     // 0 - Too easy! ; 1 - Were you even trying? ; 2 - Haha, you die so easily!
    SAY_DEATH                     // It was... a trap...
};

#define ANN_SWARMERS "A wave of |cFF28CC00Sik'thik Swarmers|r joins the battle." // Green name.
#define ANN_DEMOLISHERS "A wave of |cFF800080Sik'thik Demolishers|r joins the battle." // Purple name.
#define ANN_SWARMERS_WARRIOR "A wave of |cFF28CC00Sik'thik Swarmers|r and a |cFF8B7325Sik'thik Warrior|r join the battle." // Green / brown name.
#define ANN_DEMOLISHERS_WARRIOR "A wave of |cFF800080Sik'thik Demolishers|r and a |cFF8B7325Sik'thik Warrior|r join the battle." // Purple / brown name.
#define ANN_AMBERWING "The |cFFF4C224Sik'thik Amberwing|r moves into position to |cFFFF0000|Hspell:120559|h[Bombard]|h|r the platform!" // Orange name, red spell.

#define ANN_AMBERWING_AMMUNITION "Sik'thik Amberwing runs out of ammunition and flies away!"
#define ANN_PHASE_2 "Commander Vo'jak begins to approach the platform!"
#define ANN_CAUSTIC_SHAKE "Commander Vo'jak shakes off the |cFFFF0000|Hspell:120778|h[Caustic Tar]|h|r!"

enum Spells
{
    // Boss
    SPELL_RISING_SPEED       = 120758, // Every 2 seconds aura addition for 10% as.
    SPELL_THOUSAND_BLADES    = 120759, // Whirlwind, damage each sec and cancels Caustic tar.
    SPELL_DASHING_STRIKE     = 120789, // Main spell. Cast time + triggers SPELL_DASHING_STRIKE_AOE and 123183 dmg protection apply.
    SPELL_DASHING_STRIKE_AOE = 120794, // Aura, triggers 120807 damage in 10 yards each sec.
    SPELL_DASHING_STRIKE_TD  = 120800, // Target damage and knockback. Cancels SPELL_DASHING_STRIKE_AOE.

    // Caustic Tar Keg
    SPELL_CARRYING_TAR       = 120402, // Control Vehicle and slow spell.
    SPELL_CARRYING_TAR_A     = 123032, // Target selection and slow - This is spell from player keg interact.
    SPELL_SLOWED             = 120270, // Triggers Caustic Tar, 50% slow, dmg taken increase and inflicts damage + cancels Rising speed on boss.
    SPELL_CAUSTIC_TAR        = 120778, // Caustic Tar debuff on Adds / Boss.

    // Tar Puddle
    SPELL_TAR_PUDDLE_VISUAL  = 120473,

    // Sik'thik Amberwing
    SPELL_BOMBARD            = 120559, // Aura, triggers SPELL_BOMBARD_DUMMY every 1.5s for 15s.
    SPELL_BOMBARD_DUMMY      = 120202, // Dummy for SPELL_BOMBARD_PROTECTION on eff 0.
    SPELL_BOMBARD_PROTECTION = 120561, // Triggers SPELL_BOMBARD_MISSILE on eff 1.
    SPELL_BOMBARD_MISSILE    = 120199, // Damage etc., missile spell is SPELL_BOMBARD_DMG.
    SPELL_BOMBARD_DMG        = 120200,

    // Sik'thik Demolisher
    SPELL_CARRY_EXPLOSIVES   = 121986, // Aura for triggering all kinds of stuff including SPELL_UNSTABLE_BLAST.
    SPELL_UNSTABLE_BLAST     = 121981, // Explosion when being damaged or dying.

    // Makeshift Charge
    SPELL_DOOR_BREACH        = 127417
};

enum Events
{
    // Boss
    EVENT_RISING_SPEED       = 1,     // Every 2 seconds.
    EVENT_THOUSAND_BLADES,            // Every 15 - 17 seconds.
    EVENT_DASHING_STRIKE,             // Every 14 - 16 seconds.

    EVENT_SEND_SWARMERS,              // Wave 1: 6.
    EVENT_SEND_DEMOLISHERS,           // Wave 2: 10.
    EVENT_SEND_SWARMERS_WARRIOR,      // Wave 3: 6 + 1.
    EVENT_SEND_DEMOLISHERS_WARRIOR,   // Wave 4: 10 + 1.
    EVENT_SEND_AMBERWING,             // Amberwing.

    EVENT_BOSS_MOVE_STAIR,            // Boss.

    // Sik'thik Amberwing
    EVENT_MOVE_BOMBARD_POSITION,      // Amberwing.
    EVENT_START_BOMBARDING,
    EVENT_BOMBARDING_DONE,

    EVENT_MOVE_STAIR,                 // Other adds.

    // Tar Puddle
    EVENT_CHECK_TAR_ADDS,

    // Yang Ironclaw
    EVENT_START_INTRO,
    EVENT_MOVE_INTRO_1,
    EVENT_MOVE_INTRO_2,
    EVENT_TALK_INTRO_2,
    EVENT_TALK_INTRO_3,
    EVENT_TALK_INTRO_4,

    EVENT_START_ENCOUNTER,
    EVENT_ENCOUNTER_2,
    EVENT_ENCOUNTER_3,
    EVENT_ENCOUNTER_4,
    EVENT_ENCOUNTER_5,

    EVENT_START_OUTRO,
    EVENT_OUTRO_2,
    EVENT_OUTRO_MOVE_NEXT,
    EVENT_OUTRO_3,
    EVENT_OUTRO_4,
    EVENT_OUTRO_5,
    EVENT_OUTRO_6,

    EVENT_YANG_EVADE,

    // Li / Lo Chu
    EVENT_START_LEFT,
    EVENT_START_RIGHT,

    EVENT_PICKUP_KEG,
    EVENT_MOVE_DROP_KEG,
    EVENT_DROP_KEG,

    EVENT_LI_LO_CHU_OUTRO,

    EVENT_LI_LO_CHU_EVADE
};

enum Actions
{
    ACTION_MOVE_STAIR        = 1,

    // Yang Ironclaw
    ACTION_START_INTRO,
    ACTION_START_EVENT,
    ACTION_START_OUTRO,
    ACTION_YANG_EVADE,

    // Li / Lo Chu
    ACTION_START_LEFT,
    ACTION_START_RIGHT,
    ACTION_LI_LO_CHU_OUTRO,
    ACTION_LI_LO_CHU_EVADE
};

enum MovementPoints
{
    POINT_STAIR_LAST        = 22,
    POINT_AMBERWING_LAST    = 3
};

// Adds summon position.
Position const summonPos[34] =
{
    // Swarmers First wave (front).
    { 1492.31f, 5381.32f, 139.523f }, // 5.217f 
    { 1497.94f, 5382.99f, 139.517f }, // 5.081f
    { 1503.62f, 5384.27f, 138.987f }, // 4.989f
    { 1529.82f, 5384.92f, 139.999f }, // 4.539f
    { 1524.63f, 5385.99f, 139.761f }, // 4.630f
    { 1518.57f, 5386.58f, 138.899f }, // 4.968f

    // Demolishers First wave (front).
    { 1485.81f, 5387.15f, 139.537f }, // 5.133f
    { 1490.20f, 5388.31f, 139.501f }, // 5.076f
    { 1494.62f, 5389.79f, 139.373f }, // 5.217f
    { 1499.56f, 5390.67f, 139.093f }, // 5.081f
    { 1534.96f, 5390.47f, 139.256f }, // 4.478f
    { 1504.10f, 5391.90f, 138.702f }, // 4.989f
    { 1531.14f, 5393.00f, 139.114f }, // 4.569f
    { 1526.45f, 5393.73f, 139.188f }, // 4.705f
    { 1522.11f, 5394.43f, 139.199f }, // 4.594f
    { 1517.42f, 5394.66f, 139.189f }, // 4.503f

    // Swarmers Second wave (back).
    { 1490.23f, 5395.73f, 140.125f }, // 5.175f
    { 1496.01f, 5397.63f, 140.189f }, // 5.038f
    { 1501.61f, 5398.63f, 139.612f }, // 4.947f
    { 1534.09f, 5398.92f, 139.130f }, // 4.436f
    { 1519.44f, 5400.56f, 139.600f }, // 4.664f
    { 1526.40f, 5400.53f, 139.564f }, // 4.527f

    // First Warrior (with Swarmers).
    { 1498.52f, 5411.15f, 144.389f }, // 4.911f

    // Demolishers Second wave (back).
    { 1486.66f, 5399.95f, 142.134f }, // 5.106f
    { 1490.58f, 5401.87f, 142.353f }, // 5.056f
    { 1495.18f, 5403.71f, 142.512f }, // 5.175f
    { 1499.73f, 5404.56f, 141.805f }, // 5.038f
    { 1504.15f, 5404.81f, 140.792f }, // 4.947f
    { 1538.09f, 5404.21f, 139.430f }, // 4.436f
    { 1517.70f, 5406.80f, 140.215f }, // 4.672f
    { 1533.31f, 5406.38f, 139.854f }, // 4.527f
    { 1527.97f, 5406.99f, 140.135f }, // 4.664f
    { 1522.76f, 5407.42f, 140.269f }, // 4.719f

    // Second Warrior (with Demolishers).
    { 1523.97f, 5414.13f, 141.615f }, // 4.911f
};

// Movement points for going up stair.
Position const stairPlace[22] =
{
    { 1510.37f, 5398.34f, 139.107f }, // 4.812f
    { 1511.15f, 5387.16f, 138.849f }, // 4.781f
    { 1512.15f, 5372.63f, 139.076f }, // 4.781f // Reach first stair.
    { 1512.45f, 5368.38f, 141.466f }, // 4.781f
    { 1513.03f, 5360.00f, 146.222f }, // 4.781f // First stair done.
    { 1513.87f, 5347.94f, 146.235f }, // 4.781f - 0.116f.
    { 1525.10f, 5349.25f, 146.231f }, // 0.116f // Reach second stair.
    { 1536.63f, 5350.18f, 153.412f }, // 0.084f
    { 1549.17f, 5351.25f, 161.001f }, // 0.084f // Second stair done.
    { 1563.89f, 5343.66f, 161.214f }, // 5.810f
    { 1559.63f, 5336.60f, 161.218f }, // 4.168f
    { 1543.52f, 5331.50f, 161.226f }, // 3.462f
    { 1529.81f, 5327.08f, 161.235f }, // 3.253f
    { 1506.12f, 5325.12f, 161.205f }, // 3.222f // Third stair reached.
    { 1496.21f, 5324.86f, 167.331f }, // 3.167f
    { 1481.91f, 5324.49f, 175.944f }, // 3.210f // Third stair done.
    { 1470.39f, 5320.62f, 176.124f }, // 3.556f
    { 1471.60f, 5300.08f, 176.123f }, // 4.805f // Fourth small ramp reached.
    { 1472.25f, 5293.33f, 179.668f }, // 4.864f // Fourth small ramp done.
    { 1483.63f, 5286.94f, 179.770f }, // 0.143f // Fifth ramp reached.
    { 1492.67f, 5288.10f, 184.611f }, // 0.128f // Fifth ramp done.
    { 1502.48f, 5289.37f, 184.711f }, // 0.128f // DONE - attack players here.
};

// Spawn point for Amberwing.
Position const amberwingSummonPosition = { 1499.65f, 5427.57f, 148.619f };

// Movement points for Amberwing path.
Position const amberwingPath[3] =
{
    { 1506.61f, 5394.35f, 159.611f }, // 1 / 3
    { 1512.03f, 5361.56f, 191.747f }, // 2 / 3
    { 1528.78f, 5315.82f, 190.184f }, // 3 / 3 // DONE, start bombing here.
};

// Outro movement points for Yang Ironclaw.
Position const outroPoints[24] =
{
    { 1502.48f, 5289.37f, 184.711f },
    { 1492.67f, 5288.10f, 184.611f },
    { 1483.63f, 5286.94f, 179.770f },
    { 1472.25f, 5293.33f, 179.668f },
    { 1471.60f, 5300.08f, 176.123f },
    { 1470.39f, 5320.62f, 176.124f },
    { 1481.91f, 5324.49f, 175.944f },
    { 1496.21f, 5324.86f, 167.331f },
    { 1506.12f, 5325.12f, 161.205f },
    { 1529.81f, 5327.08f, 161.235f },
    { 1543.52f, 5331.50f, 161.226f },
    { 1559.63f, 5336.60f, 161.218f },
    { 1563.89f, 5343.66f, 161.214f },
    { 1549.17f, 5351.25f, 161.001f },
    { 1536.63f, 5350.18f, 153.412f },
    { 1525.10f, 5349.25f, 146.231f },
    { 1513.87f, 5347.94f, 146.235f },
    { 1513.03f, 5360.00f, 146.222f },
    { 1512.45f, 5368.38f, 141.466f },
    { 1512.15f, 5372.63f, 139.076f },
    { 1510.65f, 5390.22f, 138.841f },
    { 1528.56f, 5404.56f, 139.773f },
    { 1574.31f, 5412.17f, 137.926f },
    { 1617.43f, 5406.74f, 138.722f },
};

// Summon positions for Makeshift Charge.
Position const chargePositions[3] =
{
    { 1623.115f, 5410.071f, 138.727f },
    { 1622.510f, 5403.855f, 138.711f },
    { 1622.061f, 5399.151f, 138.725f },
};

// Mantid Tar Keg positions for Li Chu.
Position const liKegPositions[21] =
{
    { 1518.04f, 5313.76f, 184.649f },    // Mid.
    { 1516.91f, 5313.63f, 184.649f },
    { 1515.38f, 5313.47f, 184.649f },
    { 1513.99f, 5313.36f, 184.649f },
    { 1511.10f, 5312.98f, 184.649f },
    { 1512.43f, 5313.12f, 184.649f },
    { 1484.15f, 5310.51f, 184.649f },    // Left.
    { 1489.43f, 5310.90f, 184.649f },
    { 1489.04f, 5309.45f, 184.649f },
    { 1487.50f, 5309.25f, 184.649f },
    { 1485.97f, 5309.16f, 184.649f },
    { 1484.18f, 5309.06f, 184.649f },
    { 1490.79f, 5309.96f, 184.649f },
    { 1487.99f, 5310.76f, 184.649f },
    { 1485.52f, 5310.56f, 184.649f },
    { 1486.62f, 5310.72f, 184.649f },
    { 1491.29f, 5311.23f, 184.648f },
    { 1490.14f, 5308.33f, 184.649f },
    { 1488.48f, 5308.32f, 184.649f },
    { 1486.84f, 5308.20f, 184.649f },
    { 1485.18f, 5307.97f, 184.649f },
};

// Mantid Tar Keg positions for Lo Chu.
Position const loKegPositions[21] =
{
    { 1528.15f, 5312.76f, 184.649f },    // Right.
    { 1529.86f, 5312.87f, 184.649f },
    { 1531.01f, 5314.55f, 184.649f },
    { 1529.60f, 5314.37f, 184.649f },
    { 1527.95f, 5314.16f, 184.649f },
    { 1537.50f, 5313.80f, 184.649f },
    { 1535.79f, 5313.51f, 184.649f },
    { 1532.93f, 5313.32f, 184.649f },
    { 1531.45f, 5313.15f, 184.649f },
    { 1534.40f, 5313.50f, 184.649f },
    { 1537.22f, 5315.32f, 184.649f },
    { 1535.19f, 5314.99f, 184.649f },
    { 1532.85f, 5314.79f, 184.649f },
    { 1519.84f, 5313.92f, 184.649f },    // Mid.
    { 1519.94f, 5312.39f, 184.650f },
    { 1518.37f, 5312.28f, 184.650f },
    { 1516.54f, 5312.06f, 184.650f },
    { 1515.09f, 5311.94f, 184.650f },
    { 1513.53f, 5311.76f, 184.649f },
    { 1512.41f, 5311.62f, 184.650f },
    { 1510.92f, 5311.45f, 184.650f },
};

// Commander Vo'jak 61634.
class boss_commander_vojak : public CreatureScript
{
    public:
        boss_commander_vojak() : CreatureScript("boss_commander_vojak") { }

        struct boss_commander_vojakAI : public BossAI
        {
            boss_commander_vojakAI(Creature* creature) : BossAI(creature, DATA_COMMANDER_VOJAK_EVENT), summons(me)
            {
                instance = creature->GetInstanceScript();
            }

            InstanceScript* instance;
            SummonList summons;
            EventMap events;
            bool isDashing;
            Unit* dashingTarget;

			std::list<Creature*> wave1Adds;
			std::list<Creature*> wave2Adds;
			std::list<Creature*> wave3Adds;
			std::list<Creature*> wave4Adds;

            uint8 addsDead;
            uint8 pointReached;

            /*** SPECIAL AI FUNCTIONS ***/

            // 6 Swarmers.
            void SummonFirstWave()
			{
                for (uint8 i = 0; i < 6; i++)
                    if (Creature* swarmer = me->SummonCreature(NPC_SIKTHIK_SWARMER, summonPos[i], TEMPSUMMON_CORPSE_DESPAWN, 1000))
						wave1Adds.push_back(swarmer);
			}

            // 10 Demolishers.
            void SummonSecondWave()
			{
                for (uint8 i = 6; i < 16; i++)
                    if (Creature* demolisher = me->SummonCreature(NPC_SIKTHIK_DEMOLISHER, summonPos[i], TEMPSUMMON_CORPSE_DESPAWN, 1000))
						wave2Adds.push_back(demolisher);
			}

            // 6 Swarmers + 1 Warrior.
            void SummonThirdWave()
			{
                for (uint8 i = 16; i < 22; i++)
                    if (Creature* swarmer = me->SummonCreature(NPC_SIKTHIK_SWARMER, summonPos[i], TEMPSUMMON_CORPSE_DESPAWN, 1000))
						wave3Adds.push_back(swarmer);

                if (Creature* warrior = me->SummonCreature(NPC_SIKTHIK_WARRIOR, summonPos[22], TEMPSUMMON_CORPSE_DESPAWN, 1000))
				    wave3Adds.push_back(warrior);
			}

            // 10 Demolishers + 1 Warrior.
            void SummonFourthWave()
			{
                for (uint8 i = 23; i < 33; i++)
                    if (Creature* demolisher = me->SummonCreature(NPC_SIKTHIK_DEMOLISHER, summonPos[i], TEMPSUMMON_CORPSE_DESPAWN, 1000))
						wave4Adds.push_back(demolisher);

                if (Creature* warrior = me->SummonCreature(NPC_SIKTHIK_WARRIOR, summonPos[33], TEMPSUMMON_CORPSE_DESPAWN, 1000))
				    wave4Adds.push_back(warrior);
			}

            // Second phase entrance handling (After reaching stair top).
            void EnterSecondPhase()
			{
                Talk(SAY_AGGRO);

				me->GetMotionMaster()->MovementExpired();
                me->SetReactState(REACT_AGGRESSIVE);
				DoZoneInCombat(me, 100.0f);

                events.ScheduleEvent(EVENT_RISING_SPEED, 2000);
                events.ScheduleEvent(EVENT_THOUSAND_BLADES, urand(15000, 17000));
                events.ScheduleEvent(EVENT_DASHING_STRIKE, urand(14000, 16000));
			}

            /*** GENERAL AI FUNCTIONS ***/

            void Reset()
            {
                events.Reset();

                isDashing = false;
                dashingTarget = NULL;

                // Clear the adds lists (before despawn).
                wave1Adds.clear();
                wave2Adds.clear();
                wave3Adds.clear();
                wave4Adds.clear();

                summons.DespawnAll();

                addsDead = 0;
                pointReached = 0;

                

                if (instance)
                    instance->SetData(DATA_COMMANDER_VOJAK_EVENT, NOT_STARTED);

                _Reset();

                // Spawn the adds.
                SummonFirstWave();
                SummonSecondWave();
                SummonThirdWave();
                SummonFourthWave();
            }

            void EnterCombat(Unit* /*who*/)
            {
                Talk(SAY_INTRO);
                me->SetReactState(REACT_PASSIVE);
                me->ApplySpellImmune(0, IMMUNITY_ID, SPELL_BOMBARD_DMG, true);

                // Start the event by sending in the Swarmers and Amberwing.
                events.ScheduleEvent(EVENT_SEND_SWARMERS, 8100);
				events.ScheduleEvent(EVENT_SEND_AMBERWING, 15000);

                if (instance)
                {
                    instance->SetData(DATA_COMMANDER_VOJAK_EVENT, IN_PROGRESS);
                    instance->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me); // Add
                }

                _EnterCombat();
            }

            void KilledUnit(Unit* victim)
            {
                if (victim->GetTypeId() == TYPEID_PLAYER)
                    Talk(SAY_KILL);
            }

            void EnterEvadeMode(EvadeReason /*why*/)
            {
                me->AddUnitState(UNIT_STATE_EVADE);

                Reset();
                me->DeleteThreatList();
                me->CombatStop(true);
                me->GetMotionMaster()->MoveTargetedHome();

                if (Creature* Yang = me->FindNearestCreature(NPC_YANG_IRONCLAW, 500.0f, true))
                    Yang->AI()->DoAction(ACTION_YANG_EVADE);

                if (instance)
                {
                    instance->SetData(DATA_COMMANDER_VOJAK_EVENT, FAIL);
                    instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me); // Remove
                }

                _EnterEvadeMode();
            }

            void JustReachedHome()
            {
                me->ClearUnitState(UNIT_STATE_EVADE);

                _JustReachedHome();
            }

            void JustDied(Unit* /*killer*/)
            {
                Talk(SAY_DEATH);

                // Clear the adds lists (before despawn).
                wave1Adds.clear();
                wave2Adds.clear();
                wave3Adds.clear();
                wave4Adds.clear();

                summons.DespawnAll();

                if (Creature* Yang = me->FindNearestCreature(NPC_YANG_IRONCLAW, 500.0f, true))
                    Yang->AI()->DoAction(ACTION_START_OUTRO);

                if (instance)
                {
                    instance->SetData(DATA_COMMANDER_VOJAK_EVENT, DONE);
                    instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me); // Remove
                }

                _JustDied();
            }

            void JustSummoned(Creature* summon)
            {
                summons.Summon(summon);
                summon->setActive(true);

		        if (me->IsInCombat())
                    summon->SetInCombatWithZone();
            }

            void SummonedCreatureDies(Creature* summon, Unit* /*killer*/)
            {
                if (summon->GetEntry() != NPC_SIKTHIK_AMBERWING) // Amberwing doesn't count.
                    addsDead++;
				else
					Talk(SAY_AMBERWING_DEAD);                    // Just call it dead :).

                switch (addsDead)
                {
                    case 6: // Wave 1 killed.
                        events.ScheduleEvent(EVENT_SEND_DEMOLISHERS, 2100);
                        break;

                    case 16: // Wave 2 killed.
                        events.ScheduleEvent(EVENT_SEND_SWARMERS_WARRIOR, 2100);
                        break;

                    case 23: // Wave 3 killed.
                        events.ScheduleEvent(EVENT_SEND_DEMOLISHERS_WARRIOR, 2100);
                        break;

                    case 34: // Wave 4 killed - Phase 2 entry.
                        Talk(SAY_ADDS_DEAD);
                        me->TextEmote(ANN_PHASE_2, NULL, true);
                        me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                        events.ScheduleEvent(EVENT_BOSS_MOVE_STAIR, 2100);
                        break;

                    default: break;
                }
            }

            void MovementInform(uint32 type, uint32 id)
            {
                if (!me->IsAlive() || type != POINT_MOTION_TYPE)
                    return;

                // Handle Stair movement / Phase 2 entrance.
                if (id < POINT_STAIR_LAST)
                    events.ScheduleEvent(EVENT_BOSS_MOVE_STAIR, 100);
				else
                    EnterSecondPhase();
            }

            void UpdateAI(uint32 const diff)
            {
                if (!me->IsInCombat() || me->HasUnitState(UNIT_STATE_CASTING)) // !UpdateVictim() || 
                    return;

                if (instance && instance->IsWipe())
                {
                    _EnterEvadeMode();
                    return;
                }

                // Handle Dashing Strike.
                if (isDashing && dashingTarget)
                {
                    if (me->GetDistance(dashingTarget) <= 6.0f)
                    {
                        isDashing = false;
                        DoCast(dashingTarget, SPELL_DASHING_STRIKE_TD, true);
                        dashingTarget = NULL;
                    }
                }

                events.Update(diff);

                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        // Adds
                        case EVENT_SEND_SWARMERS:
                            Talk(SAY_SWARMERS);
                            me->TextEmote(ANN_SWARMERS, NULL, true);
                            if (Creature* Yang = me->FindNearestCreature(NPC_YANG_IRONCLAW, 500.0f, true))
                                Yang->AI()->Talk(SAY_YANG_SWARMERS);
                            if (!wave1Adds.empty())
                                for (auto swarmers : wave1Adds)
                                    if (swarmers) swarmers->AI()->DoAction(ACTION_MOVE_STAIR);
                            break;

                        case EVENT_SEND_DEMOLISHERS:
                            Talk(SAY_DEMOLISHERS);
                            me->TextEmote(ANN_DEMOLISHERS, NULL, true);
                            if (Creature* Yang = me->FindNearestCreature(NPC_YANG_IRONCLAW, 500.0f, true))
                                Yang->AI()->Talk(SAY_YANG_DEMOLISHERS);
                            if (!wave2Adds.empty())
                                for (auto demolishers : wave2Adds)
                                    if (demolishers) demolishers->AI()->DoAction(ACTION_MOVE_STAIR);
                            break;

                        case EVENT_SEND_SWARMERS_WARRIOR:
                            Talk(SAY_WARRIORS);
                            me->TextEmote(ANN_SWARMERS_WARRIOR, NULL, true);
                            if (Creature* Yang = me->FindNearestCreature(NPC_YANG_IRONCLAW, 500.0f, true))
                                Yang->AI()->Talk(SAY_YANG_SWARMERS_WARRIOR);
                            if (!wave3Adds.empty())
                                for (auto swarmersWarrior : wave3Adds)
                                    if (swarmersWarrior) swarmersWarrior->AI()->DoAction(ACTION_MOVE_STAIR);
                            break;

                        case EVENT_SEND_DEMOLISHERS_WARRIOR:
                            Talk(SAY_SEND_ALL_ADDS);
                            me->TextEmote(ANN_DEMOLISHERS_WARRIOR, NULL, true);
                            if (!wave4Adds.empty())
                                for (auto demolishersWarrior : wave4Adds)
                                    if (demolishersWarrior) demolishersWarrior->AI()->DoAction(ACTION_MOVE_STAIR);
                            break;

                        case EVENT_SEND_AMBERWING:
							me->SummonCreature(NPC_SIKTHIK_AMBERWING, amberwingSummonPosition, TEMPSUMMON_CORPSE_DESPAWN, 1000);
                            break;

                        // Boss
                        case EVENT_BOSS_MOVE_STAIR:
                            pointReached++;
                            me->GetMotionMaster()->MovePoint(pointReached, stairPlace[pointReached - 1].GetPositionX(), stairPlace[pointReached - 1].GetPositionY(), stairPlace[pointReached - 1].GetPositionZ());
                            break;

                        case EVENT_RISING_SPEED:
                            DoCast(me, SPELL_RISING_SPEED);
                            events.ScheduleEvent(EVENT_RISING_SPEED, 2000);
                            break;

                        case EVENT_THOUSAND_BLADES:
                            if (me->HasAura(SPELL_SLOWED))
                                me->RemoveAurasDueToSpell(SPELL_SLOWED);
                            if (me->HasAura(SPELL_CAUSTIC_TAR))
                                me->TextEmote(ANN_CAUSTIC_SHAKE, NULL, true);
                            DoCast(me, SPELL_THOUSAND_BLADES);
                            events.ScheduleEvent(EVENT_THOUSAND_BLADES, urand(15000, 17000));
                            break;

                        case EVENT_DASHING_STRIKE:
                            if (Unit* target = SelectTarget(SELECT_TARGET_FARTHEST, 0, 100.0f, true))
                            {
                                DoCast(target, SPELL_DASHING_STRIKE);
                                dashingTarget = target;
                                isDashing = true;
                            }
                            events.ScheduleEvent(EVENT_DASHING_STRIKE, urand(14000, 16000));
                            break;

                        default: break;
                    }
                }

                DoMeleeAttackIfReady();
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_commander_vojakAI(creature);
        }
};

// Sik'thik Amberwing 61699.
class npc_sikthik_amberwing : public CreatureScript
{
    public:
        npc_sikthik_amberwing() : CreatureScript("npc_sikthik_amberwing") { }

        struct npc_sikthik_amberwingAI : public ScriptedAI
        {
            npc_sikthik_amberwingAI(Creature* creature) : ScriptedAI(creature)
            {
                instance = creature->GetInstanceScript();
            }

            InstanceScript* instance;
            EventMap events;
            uint8 flyPointReached;
            bool ammoFinished;

            void IsSummonedBy(Unit* summoner)
            {
                Reset();
                me->SetInCombatWithZone();
                me->SetReactState(REACT_PASSIVE);
                me->SetDisableGravity(true);
                me->SetByteFlag(UNIT_FIELD_BYTES_1, 3, UNIT_BYTE1_FLAG_HOVER);
                me->AddUnitMovementFlag(MOVEMENTFLAG_CAN_FLY | MOVEMENTFLAG_FLYING);
                me->SetHomePosition(amberwingSummonPosition.GetPositionX(), amberwingSummonPosition.GetPositionY(), amberwingSummonPosition.GetPositionZ(), 0);
                me->ApplySpellImmune(0, IMMUNITY_ID, SPELL_BOMBARD_DMG, true);

                events.ScheduleEvent(EVENT_MOVE_BOMBARD_POSITION, 1000);
            }

            void Reset()
            {
                events.Reset();
                flyPointReached = 0;
                ammoFinished = false;
            }

            void JustReachedHome()
            {
                if (ammoFinished)
                {
                    flyPointReached = 0;
                    events.ScheduleEvent(EVENT_MOVE_BOMBARD_POSITION, 5000);
                    ammoFinished = false;
                }
            }

            void MovementInform(uint32 type, uint32 id)
            {
                if (!me->IsAlive() || type != POINT_MOTION_TYPE)
                    return;

                // Handle Bombard movement and cast.
                if (id < POINT_AMBERWING_LAST)
                    events.ScheduleEvent(EVENT_MOVE_BOMBARD_POSITION, 100);
				else
                    events.ScheduleEvent(EVENT_START_BOMBARDING, 100);
            }

            void UpdateAI(uint32 const diff)
            {
                events.Update(diff);

                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_MOVE_BOMBARD_POSITION:
                            if (flyPointReached == 0)
                            {
                                if (Creature* Vojak = me->FindNearestCreature(BOSS_COMMANDER_VOJAK, 500.0f, true))
                                {
                                    Vojak->AI()->Talk(SAY_AMBERWING);
                                    Vojak->TextEmote(ANN_AMBERWING, NULL, true);
                                }

                                if (Creature* Yang = me->FindNearestCreature(NPC_YANG_IRONCLAW, 500.0f, true))
                                    Yang->AI()->Talk(SAY_YANG_AMBERWING);
                            }
                            flyPointReached++;
                            me->GetMotionMaster()->MovePoint(flyPointReached, amberwingPath[flyPointReached - 1].GetPositionX(), amberwingPath[flyPointReached - 1].GetPositionY(), amberwingPath[flyPointReached - 1].GetPositionZ());
                            break;

                        case EVENT_START_BOMBARDING:
                            DoCast(me, SPELL_BOMBARD);
                            events.ScheduleEvent(EVENT_BOMBARDING_DONE, 16000);
                            break;

                        case EVENT_BOMBARDING_DONE:
                            me->TextEmote(ANN_AMBERWING_AMMUNITION, NULL, true);
                            ammoFinished = true;
                            me->GetMotionMaster()->MoveTargetedHome();
                            break;

                        default: break;
                    }
                }
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new npc_sikthik_amberwingAI(creature);
        }
};

// Sik'thik Swarmer 63106, Demolisher 61670, Warrior 61701.
class npc_sikthik_add_vojak : public CreatureScript
{
    public:
        npc_sikthik_add_vojak() : CreatureScript("npc_sikthik_add_vojak") { }

        struct npc_sikthik_add_vojakAI : public ScriptedAI
        {
            npc_sikthik_add_vojakAI(Creature* creature) : ScriptedAI(creature)
            {
                instance = creature->GetInstanceScript();
            }

            InstanceScript* instance;
            EventMap events;
            uint8 pointReached;

            void IsSummonedBy(Unit* summoner)
            {
                Reset();

                me->SetSpeed(MOVE_WALK, 9.8f);
                me->SetSpeed(MOVE_RUN, 4.85f);

				me->SetWalk(false); // Run.
                me->SetReactState(REACT_PASSIVE);
                me->ApplySpellImmune(0, IMMUNITY_ID, SPELL_BOMBARD_DMG, true);
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);

                if (me->GetEntry() == NPC_SIKTHIK_DEMOLISHER)
                    me->AddAura(SPELL_CARRY_EXPLOSIVES, me);
            }

            void Reset()
			{
			    events.Reset();
                pointReached = 0;
			}

            void DoAction(int32 const action)
            {
                switch (action)
                {
                    case ACTION_MOVE_STAIR:
                        events.ScheduleEvent(EVENT_MOVE_STAIR, 1000);
                        break;

                    default: break;
                }
            };

            // Second phase entrance handling (After reaching stair top).
            void EnterSecondPhase()
			{
				me->GetMotionMaster()->MovementExpired();
                me->SetReactState(REACT_AGGRESSIVE);
				DoZoneInCombat(me, 100.0f);
			}

            void MovementInform(uint32 type, uint32 id)
            {
                if (!me->IsAlive() || type != POINT_MOTION_TYPE)
                    return;

                // Handle Stair movement / Phase 2 entrance.
                if (id < POINT_STAIR_LAST)
                    events.ScheduleEvent(EVENT_MOVE_STAIR, 100);
				else
                    EnterSecondPhase();
            }

            void UpdateAI(uint32 const diff)
            {
                events.Update(diff);

                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_MOVE_STAIR:
                            if (me->HasFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE))
                                me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);

                            pointReached++;
                            me->GetMotionMaster()->MovePoint(pointReached, stairPlace[pointReached - 1].GetPositionX(), stairPlace[pointReached - 1].GetPositionY(), stairPlace[pointReached - 1].GetPositionZ());
                            break;

                        default: break;
                    }
                }

                DoMeleeAttackIfReady();
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new npc_sikthik_add_vojakAI(creature);
        }
};

// Mantid Tar Keg 61817.
class npc_mantid_tar_keg_vojak : public CreatureScript
{
    public:
        npc_mantid_tar_keg_vojak() : CreatureScript("npc_mantid_tar_keg_vojak") { }

        struct npc_mantid_tar_keg_vojakAI : public ScriptedAI
        {
            npc_mantid_tar_keg_vojakAI(Creature* creature) : ScriptedAI(creature)
            {
                instance = creature->GetInstanceScript();
            }

            InstanceScript* instance;

            void IsSummonedBy(Unit* summoner)
            {
                me->ApplySpellImmune(0, IMMUNITY_ID, SPELL_BOMBARD_DMG, true);
                //me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE);
                me->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_SPELLCLICK);
                me->SetReactState(REACT_PASSIVE);
            }

            void OnSpellClick(Unit* clicker, bool& result)
            {
                // Handle Player pickup.
                clicker->CastSpell(clicker, SPELL_CARRYING_TAR_A, true);
                me->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_SPELLCLICK);
                me->DespawnOrUnsummon();
            }

            void UpdateAI(uint32 const diff)
            {
                // No melee.
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new npc_mantid_tar_keg_vojakAI(creature);
        }
};

// Tar Puddle 61579.
class npc_tar_puddle_vojak : public CreatureScript
{
    public:
        npc_tar_puddle_vojak() : CreatureScript("npc_tar_puddle_vojak") { }

        struct npc_tar_puddle_vojakAI : public ScriptedAI
        {
            npc_tar_puddle_vojakAI(Creature* creature) : ScriptedAI(creature)
            {
                instance = creature->GetInstanceScript();
            }

            InstanceScript* instance;
            EventMap events;

            void IsSummonedBy(Unit* summoner)
            {
                Reset();
                me->AddAura(SPELL_TAR_PUDDLE_VISUAL, me);

                events.ScheduleEvent(EVENT_CHECK_TAR_ADDS, 500);
            }

            void Reset()
            {
                events.Reset();
                me->SetReactState(REACT_PASSIVE);
                //me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_DISABLE_MOVE);
            }

            void UpdateAI(uint32 const diff)
            {
                events.Update(diff);

                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_CHECK_TAR_ADDS:
                        {
                            std::list<Creature*> tarList;
                            GetCreatureListWithEntryInGrid(tarList, me, NPC_SIKTHIK_SWARMER, 6.0f);
                            GetCreatureListWithEntryInGrid(tarList, me, NPC_SIKTHIK_DEMOLISHER, 6.0f);
                            GetCreatureListWithEntryInGrid(tarList, me, NPC_SIKTHIK_WARRIOR, 6.0f);
                            GetCreatureListWithEntryInGrid(tarList, me, BOSS_COMMANDER_VOJAK, 6.0f);
                            if (!tarList.empty())
                                for (auto tarAdd : tarList)
                                    if (!tarAdd->HasAura(SPELL_SLOWED))
                                        me->AddAura(SPELL_SLOWED, tarAdd);
                            events.ScheduleEvent(EVENT_CHECK_TAR_ADDS, 250);
                            break;
                        }

                        default: break;
                    }
                }

                // No melee.			
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new npc_tar_puddle_vojakAI(creature);
        }
};

// Event NPC's

// Sik'thik Warden 62795.
class npc_sikthik_warden : public CreatureScript
{
    public:
        npc_sikthik_warden() : CreatureScript("npc_sikthik_warden") { }

        struct npc_sikthik_wardenAI : public ScriptedAI
        {
            npc_sikthik_wardenAI(Creature* creature) : ScriptedAI(creature)
            {
                instance = creature->GetInstanceScript();
            }

            InstanceScript* instance;

            void Reset()
			{
                // Attack Li and Lo.
                if (Creature* Li = me->FindNearestCreature(NPC_LI_CHU, 50.0f, true))
                    me->AI()->AttackStart(Li);
                if (Creature* Lo = me->FindNearestCreature(NPC_LO_CHU, 50.0f, true))
                    me->AI()->AttackStart(Lo);
                // Lastly, pull Yang in combat.
                if (Creature* Yang = me->FindNearestCreature(NPC_YANG_IRONCLAW, 50.0f, true))
                    me->AI()->AttackStart(Yang);
			}

            void DamageDealt(Unit* target, uint32& damage, DamageEffectType damageType)
            {
                if (target->ToCreature())
                    if (target->ToCreature()->GetEntry() == NPC_YANG_IRONCLAW || target->ToCreature()->GetEntry() == NPC_LI_CHU  || target->ToCreature()->GetEntry() == NPC_LO_CHU)
                        if (target->HealthBelowPct(100))
                            damage = 0;
            }

            void DamageTaken(Unit* who, uint32& damage)
            {
                if (who->GetTypeId() == TYPEID_PLAYER || who->IsPet())
                {
                    me->getThreatManager().resetAllAggro();
                    me->AddThreat(who, 100.0f);
                    me->AI()->AttackStart(who);
                }
            }

            void JustDied(Unit* /*killer*/)
            {
                if (Creature* Yang = me->FindNearestCreature(NPC_YANG_IRONCLAW, 50.0f, true))
					{
                    Yang->AI()->DoAction(ACTION_START_INTRO);
					
                    Yang->GetScheduler().Schedule(7s, [Yang](TaskContext context)
                { 
                        Yang->AI()->Talk(1);
                });
					}
            }

            void UpdateAI(uint32 const diff)
            {
                if (!UpdateVictim())
                    return;

                DoMeleeAttackIfReady();
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new npc_sikthik_wardenAI(creature);
        }
};

// Yang Ironclaw 61620.
class npc_yang_ironclaw : public CreatureScript
{
    public:
        npc_yang_ironclaw() : CreatureScript("npc_yang_ironclaw") { }

        bool OnGossipHello(Player* player, Creature* creature)
        {
            if (!player || !creature)
                return false;

            player->PrepareGossipMenu(creature, creature->GetCreatureTemplate()->GossipMenuId, false);
            SendGossipMenuFor(player, DEFAULT_GOSSIP_MESSAGE, creature->GetGUID());
            return true;
        }

        bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action)
        {
            player->PlayerTalkClass->ClearMenus();

            // Start the event.
            if (!player)
                return false;

            if (action == GOSSIP_ACTION_INFO_DEF + 1)
                return false;
            {
                creature->AI()->DoAction(ACTION_START_EVENT);
                CloseGossipMenuFor(player);
            }

            return true;
        }

        struct npc_yang_ironclawAI : public ScriptedAI
        {
            npc_yang_ironclawAI(Creature* creature) : ScriptedAI(creature)
            {
                instance = creature->GetInstanceScript();
            }

            InstanceScript* instance;
            bool introStarted, introSaid, introDone;
            bool outroStarted, outroDone;
            uint8 outroPointReached;

            // Used to add UNIT_FLAG_NOT_SELECTABLE to Mantid Tar Kegs.
            void AddKegNotSelectableFlag()
            {
                std::list<Creature*> tarKegList;
                GetCreatureListWithEntryInGrid(tarKegList, me, NPC_MANTID_TAR_KEG, 200.0f);
                if (!tarKegList.empty())
                {
                    for (auto mantidTarKeg : tarKegList)
                    {
                        mantidTarKeg->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                        mantidTarKeg->SetReactState(REACT_PASSIVE);
                    }
                }
            }

            void Reset()
			{
                introStarted = false;
                introSaid    = false;
                introDone    = false;

                outroStarted = false;
                outroDone    = false;
                outroPointReached = 3; // Where intro points end.

                AddKegNotSelectableFlag();

                if (me->HasFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP))
                    me->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);

                if (GameObject* door = me->FindNearestGameObject(GO_VOJAK_DOOR, 500.0f))
                if (GameObject* wall = me->FindNearestGameObject(GO_VOJAK_PATH_WALL, 500.0f))
                {
                    door->ResetDoorOrButton();
                    door->SetLootState(GO_READY);
                    wall->ResetDoorOrButton();
                    wall->SetLootState(GO_READY);
                }

                if (Creature* Warden = me->FindNearestCreature(NPC_SIKTHIK_WARDEN, 50.0f, true))
                    me->AI()->AttackStart(Warden);
			}

            void DamageDealt(Unit* target, uint32& damage, DamageEffectType damageType)
            {
                if (target->ToCreature())
                    if (target->ToCreature()->GetEntry() == NPC_SIKTHIK_WARDEN)
                        if (target->HealthBelowPct(100))
                            damage = 0;
            }

            void DoAction(int32 const action)
            {
                if (action < ACTION_START_INTRO)
                    return;

                switch (action)
                {
                    case ACTION_START_INTRO:
                        events.ScheduleEvent(EVENT_START_INTRO, 1000);
                        break;

                    case ACTION_START_EVENT:
                        me->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
                        events.ScheduleEvent(EVENT_START_ENCOUNTER, 1000);
                        break;

                    case ACTION_START_OUTRO:
                        events.ScheduleEvent(EVENT_START_OUTRO, 1000);
                        break;

                    case ACTION_YANG_EVADE:
                        events.ScheduleEvent(EVENT_YANG_EVADE, 100);
                        break;

                    default: break;
                }
            };

            void JustSummoned(Creature* summon)
            {
                summons.Summon(summon);
                summon->setActive(true);

		        if (summon->GetEntry() == NPC_MAKESHIFT_CHARGE)
                {
                    summon->SetReactState(REACT_PASSIVE);
                   // summon->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_DISABLE_MOVE);
                }
            }

            void EnterEvadeMode(EvadeReason /*why*/) { } // Override.

            void UpdateAI(uint32 const diff)
            {
                events.Update(diff);

                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        // INTRO

                        case EVENT_START_INTRO:
                            introStarted = true;
                            me->GetMotionMaster()->MoveTargetedHome();
                            break;

                        case EVENT_MOVE_INTRO_1:
                            me->GetMotionMaster()->MovePoint(1, 1526.71f, 5306.95f, 184.65f);
                            break;

                        case EVENT_MOVE_INTRO_2:
                            me->GetMotionMaster()->MovePoint(2, 1525.85f, 5309.02f, 185.227f);
                            break;

                        case EVENT_TALK_INTRO_2:
                            Talk(SAY_INTRO_2);
                            events.ScheduleEvent(EVENT_TALK_INTRO_3, 4000);
                            break;

                        case EVENT_TALK_INTRO_3:
                            Talk(SAY_INTRO_3);
                            me->SetFacingTo(4.789f);
                            events.ScheduleEvent(EVENT_TALK_INTRO_4, 6000);
                            break;

                        case EVENT_TALK_INTRO_4:
                            Talk(SAY_INTRO_4);
                            me->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
                            introDone = true;
                            break;

                        // EVENT

                        case EVENT_START_ENCOUNTER:
                            Talk(SAY_ENCOUNTER_1);
                            me->ApplySpellImmune(0, IMMUNITY_ID, SPELL_BOMBARD_DMG, true);
                            if (Creature* LiChu = me->FindNearestCreature(NPC_LI_CHU, 50.0f, true))
                                LiChu->AI()->DoAction(ACTION_START_LEFT);
                            if (Creature* LoChu = me->FindNearestCreature(NPC_LO_CHU, 50.0f, true))
                                LoChu->AI()->DoAction(ACTION_START_RIGHT);
                            events.ScheduleEvent(EVENT_ENCOUNTER_2, 4000);
                            break;

                        case EVENT_ENCOUNTER_2:
                            Talk(SAY_ENCOUNTER_2);
                            events.ScheduleEvent(EVENT_ENCOUNTER_3, 4000);
                            break;

                        case EVENT_ENCOUNTER_3:
                            Talk(SAY_ENCOUNTER_3);
                            me->SetFacingTo(1.81f);
                            events.ScheduleEvent(EVENT_ENCOUNTER_4, 1000);
                            break;

                        case EVENT_ENCOUNTER_4:
                        {
                            if (Creature* Vojak = me->FindNearestCreature(BOSS_COMMANDER_VOJAK, 500.0f, true))
                                Vojak->SetInCombatWithZone();
                            me->GetMotionMaster()->MovePoint(3, 1548.26f, 5312.12f, 184.649f);
                            break;
                        }

                        case EVENT_ENCOUNTER_5:
                            me->GetMotionMaster()->MovementExpired();
                            me->SetFacingTo(1.928f);
                            me->SetReactState(REACT_PASSIVE);
                            break;

                        // OUTRO

                        case EVENT_START_OUTRO:
                            Talk(SAY_OUTRO_1);
                            outroStarted = true;
                            me->GetMotionMaster()->MovementExpired();
                            if (GameObject* wall = me->FindNearestGameObject(GO_VOJAK_PATH_WALL, 50.0f))
                                wall->UseDoorOrButton(0);
                            events.ScheduleEvent(EVENT_OUTRO_2, 3000);
                            break;

                        case EVENT_OUTRO_2:
                            Talk(SAY_OUTRO_2);
                            if (Creature* LiChu = me->FindNearestCreature(NPC_LI_CHU, 50.0f, true))
                                LiChu->AI()->DoAction(ACTION_LI_LO_CHU_OUTRO);
                            if (Creature* LoChu = me->FindNearestCreature(NPC_LO_CHU, 50.0f, true))
                                LoChu->AI()->DoAction(ACTION_LI_LO_CHU_OUTRO);
                            events.ScheduleEvent(EVENT_OUTRO_MOVE_NEXT, 500);
                            break;

                        case EVENT_OUTRO_MOVE_NEXT:
                            outroPointReached++;
                            me->GetMotionMaster()->MovePoint(outroPointReached, outroPoints[outroPointReached - 4].GetPositionX(), outroPoints[outroPointReached - 4].GetPositionY(), outroPoints[outroPointReached - 4].GetPositionZ());
                            break;

                        case EVENT_OUTRO_3:
                            Talk(SAY_OUTRO_3);
                            events.ScheduleEvent(EVENT_OUTRO_4, 6000);
                            break;

                        case EVENT_OUTRO_4:
                            Talk(SAY_OUTRO_4);
                            for (uint8 i = 0; i < 3; i++)
                                me->SummonCreature(NPC_MAKESHIFT_CHARGE, chargePositions[i], TEMPSUMMON_CORPSE_DESPAWN, 1000);
                            events.ScheduleEvent(EVENT_OUTRO_5, 5000);
                            break;

                        case EVENT_OUTRO_5:
                            Talk(SAY_OUTRO_5);
                            events.ScheduleEvent(EVENT_OUTRO_6, 4000);
                            break;

                        case EVENT_OUTRO_6:
                        {
                            Talk(SAY_OUTRO_6);
                            me->SetFacingTo(3.176f);

                            std::list<Creature*> chargesList;
                            GetCreatureListWithEntryInGrid(chargesList, me, NPC_MAKESHIFT_CHARGE, 50.0f);
                            if (!chargesList.empty())
                            {
                                for (auto charge : chargesList)
                                {
                                    charge->CastSpell(charge, SPELL_DOOR_BREACH, true);
                                    charge->DespawnOrUnsummon(500);
                                }
                            }

                            if (GameObject* gate = me->FindNearestGameObject(GO_VOJAK_DOOR, 50.0f))
                                gate->UseDoorOrButton();
                            outroDone = true;
                            break;
                        }

                        case EVENT_YANG_EVADE:
                            events.ScheduleEvent(EVENT_START_INTRO, 1000);
                            if (Creature* LiChu = me->FindNearestCreature(NPC_LI_CHU, 50.0f, true))
                                LiChu->AI()->DoAction(ACTION_LI_LO_CHU_EVADE);
                            if (Creature* LoChu = me->FindNearestCreature(NPC_LO_CHU, 50.0f, true))
                                LoChu->AI()->DoAction(ACTION_LI_LO_CHU_EVADE);
                            break;

                        default: break;
                    }
                }

                if (!UpdateVictim())
                    return;

                DoMeleeAttackIfReady();
            }

            void MovementInform(uint32 type, uint32 id)
            {
                if (!me->IsAlive() || type != POINT_MOTION_TYPE)
                    return;

                switch(id)
                {
                    // Handle Intro movement.
                    case 1:
                        events.ScheduleEvent(EVENT_MOVE_INTRO_2, 10);
                        break;

                    case 2:
                        events.ScheduleEvent(EVENT_TALK_INTRO_2, 100);
                        break;

                    case 3: // Last Intro point.
                        events.ScheduleEvent(EVENT_ENCOUNTER_5, 100);
                        break;

                    // Handle Outro movement.
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                        events.ScheduleEvent(EVENT_OUTRO_MOVE_NEXT, 100);
                        break;

                    case 27: // Last Outro point.
                        events.ScheduleEvent(EVENT_OUTRO_3, 1000);
                        break;

                    default: break;
                }
            }

            void JustReachedHome()
            {
                if (introStarted && !introSaid)
                {
                    Talk(SAY_INTRO_1);
                    events.ScheduleEvent(EVENT_MOVE_INTRO_1, 5500);
                    introSaid = true;
                }
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new npc_yang_ironclawAI(creature);
        }
};

// Li Chu 61812.
class npc_li_chu : public CreatureScript
{
    public:
        npc_li_chu() : CreatureScript("npc_li_chu") { }

        struct npc_li_chuAI : public ScriptedAI
        {
            npc_li_chuAI(Creature* creature) : ScriptedAI(creature), summons(me)
            {
                instance = creature->GetInstanceScript();
            }

            InstanceScript* instance;
            SummonList summons;
            EventMap events;
            uint8 kegsMoved;

            void Reset()
			{
			    events.Reset();
                summons.DespawnAll();

                kegsMoved = 0;

                if (Creature* Warden = me->FindNearestCreature(NPC_SIKTHIK_WARDEN, 50.0f, true))
                    me->AI()->AttackStart(Warden);
			}

            void DamageDealt(Unit* target, uint32& damage, DamageEffectType damageType)
            {
                if (target->ToCreature())
                    if (target->ToCreature()->GetEntry() == NPC_SIKTHIK_WARDEN)
                        if (target->HealthBelowPct(100))
                            damage = 0;
            }

            void EnterEvadeMode(EvadeReason /*why*/) { } // Override.

            void JustSummoned(Creature* summon)
            {
                summons.Summon(summon);
                summon->setActive(true);
            }

            void DoAction(int32 const action)
            {
                switch (action)
                {
                    case ACTION_START_LEFT:
                        me->ApplySpellImmune(0, IMMUNITY_ID, SPELL_BOMBARD_DMG, true);
                        me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_IMMUNE_TO_NPC);
                        me->SetReactState(REACT_PASSIVE);
                        events.ScheduleEvent(EVENT_START_LEFT, 100);
                        break;

                    case ACTION_LI_LO_CHU_OUTRO:
                        events.ScheduleEvent(EVENT_LI_LO_CHU_OUTRO, 100);
                        break;

                    case ACTION_LI_LO_CHU_EVADE:
                        events.ScheduleEvent(EVENT_LI_LO_CHU_EVADE, 100);
                        break;

                    default: break;
                }
            };

            void MovementInform(uint32 type, uint32 id)
            {
                if (!me->IsAlive() || type != POINT_MOTION_TYPE)
                    return;

                // Handle Mantid Tar Keg pickup / drop.
                switch(id)
                {
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                        events.ScheduleEvent(EVENT_DROP_KEG, 100);
                        break;

                    case 22: // Pickup point.
                        events.ScheduleEvent(EVENT_PICKUP_KEG, 100);
                        break;

                    default: break;
                }
            }

            void UpdateAI(uint32 const diff)
            {
                events.Update(diff);

                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_START_LEFT:
                            me->GetMotionMaster()->MovePoint(22, 1488.50f, 5299.22f, 184.649f);
                            break;

                        case EVENT_PICKUP_KEG:
                            if (Creature* keg = me->FindNearestCreature(NPC_MANTID_TAR_KEG, 10.0f, true))
                                keg->DespawnOrUnsummon();
                            me->AddAura(SPELL_CARRYING_TAR_A, me);
                            events.ScheduleEvent(EVENT_MOVE_DROP_KEG, 100);
                            break;

                        case EVENT_MOVE_DROP_KEG:
                            kegsMoved++;
                            me->GetMotionMaster()->MovePoint(kegsMoved, liKegPositions[kegsMoved - 1].GetPositionX(), liKegPositions[kegsMoved - 1].GetPositionY(), liKegPositions[kegsMoved - 1].GetPositionZ());
                            break;

                        case EVENT_DROP_KEG:
                            me->RemoveAurasDueToSpell(SPELL_CARRYING_TAR_A);
                            me->SummonCreature(NPC_MANTID_TAR_KEG, liKegPositions[kegsMoved - 1], TEMPSUMMON_CORPSE_DESPAWN, 1000);
                            if (kegsMoved < 21)
                                events.ScheduleEvent(EVENT_START_LEFT, 100);
                            else
                            {
                                me->GetMotionMaster()->MovementExpired();
                                me->GetMotionMaster()->MoveTargetedHome();
                            }
                            break;

                        case EVENT_LI_LO_CHU_OUTRO:
                            summons.DespawnAll();
                            me->RemoveAllAuras();
                            me->GetMotionMaster()->MovePoint(23, outroPoints[0].GetPositionX(), outroPoints[0].GetPositionY(), outroPoints[0].GetPositionZ());
                            me->DespawnOrUnsummon(5000);
                            break;

                        case EVENT_LI_LO_CHU_EVADE:
                            me->RemoveAllAuras();
                            Reset();
                            me->DeleteThreatList();
                            me->CombatStop(true);
                            me->GetMotionMaster()->MoveTargetedHome();
                            break;

                        default: break;
                    }
                }

                if (!UpdateVictim())
                    return;

                DoMeleeAttackIfReady();
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new npc_li_chuAI(creature);
        }
};

// Lo Chu 62794.
class npc_lo_chu : public CreatureScript
{
    public:
        npc_lo_chu() : CreatureScript("npc_lo_chu") { }

        struct npc_lo_chuAI : public ScriptedAI
        {
            npc_lo_chuAI(Creature* creature) : ScriptedAI(creature), summons(me)
            {
                instance = creature->GetInstanceScript();
            }

            InstanceScript* instance;
            SummonList summons;
            EventMap events;
            uint8 kegsMoved;

            void Reset()
			{
			    events.Reset();
                summons.DespawnAll();

                kegsMoved = 0;

                if (Creature* Warden = me->FindNearestCreature(NPC_SIKTHIK_WARDEN, 50.0f, true))
                    me->AI()->AttackStart(Warden);
			}

            void DamageDealt(Unit* target, uint32& damage, DamageEffectType damageType)
            {
                if (target->ToCreature())
                    if (target->ToCreature()->GetEntry() == NPC_SIKTHIK_WARDEN)
                        if (target->HealthBelowPct(100))
                            damage = 0;
            }

            void EnterEvadeMode(EvadeReason /*why*/) { } // Override.

            void JustSummoned(Creature* summon)
            {
                summons.Summon(summon);
                summon->setActive(true);
            }

            void DoAction(int32 const action)
            {
                switch (action)
                {
                    case ACTION_START_RIGHT:
                        me->ApplySpellImmune(0, IMMUNITY_ID, SPELL_BOMBARD_DMG, true);
                        me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_IMMUNE_TO_NPC);
                        me->SetReactState(REACT_PASSIVE);
                        events.ScheduleEvent(EVENT_START_RIGHT, 100);
                        break;

                    case ACTION_LI_LO_CHU_OUTRO:
                        events.ScheduleEvent(EVENT_LI_LO_CHU_OUTRO, 100);
                        break;

                    case ACTION_LI_LO_CHU_EVADE:
                        events.ScheduleEvent(EVENT_LI_LO_CHU_EVADE, 100);
                        break;

                    default: break;
                }
            };

            void MovementInform(uint32 type, uint32 id)
            {
                if (!me->IsAlive() || type != POINT_MOTION_TYPE)
                    return;

                // Handle Mantid Tar Keg pickup / drop.
                switch(id)
                {
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                        events.ScheduleEvent(EVENT_DROP_KEG, 100);
                        break;

                    case 22: // Pickup point.
                        events.ScheduleEvent(EVENT_PICKUP_KEG, 100);
                        break;

                    default: break;
                }
            }

            void UpdateAI(uint32 const diff)
            {
                events.Update(diff);

                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_START_RIGHT:  // Lo Chu
                            me->GetMotionMaster()->MovePoint(22, 1546.71f, 5288.75f, 184.743f);
                            break;

                        case EVENT_PICKUP_KEG:
                            if (Creature* keg = me->FindNearestCreature(NPC_MANTID_TAR_KEG, 10.0f, true))
                                keg->DespawnOrUnsummon();
                            me->AddAura(SPELL_CARRYING_TAR_A, me);
                            events.ScheduleEvent(EVENT_MOVE_DROP_KEG, 100);
                            break;

                        case EVENT_MOVE_DROP_KEG:
                            kegsMoved++;
                            me->GetMotionMaster()->MovePoint(kegsMoved, loKegPositions[kegsMoved - 1].GetPositionX(), loKegPositions[kegsMoved - 1].GetPositionY(), loKegPositions[kegsMoved - 1].GetPositionZ());
                            break;

                        case EVENT_DROP_KEG:
                            me->RemoveAurasDueToSpell(SPELL_CARRYING_TAR_A);
                            me->SummonCreature(NPC_MANTID_TAR_KEG, loKegPositions[kegsMoved - 1], TEMPSUMMON_CORPSE_DESPAWN, 1000);
                            if (kegsMoved < 21)
                                events.ScheduleEvent(EVENT_START_RIGHT, 100);
                            else
                            {
                                me->GetMotionMaster()->MovementExpired();
                                me->GetMotionMaster()->MoveTargetedHome();
                            }
                            break;

                        case EVENT_LI_LO_CHU_OUTRO:
                            summons.DespawnAll();
                            me->RemoveAllAuras();
                            me->GetMotionMaster()->MovePoint(23, outroPoints[0].GetPositionX(), outroPoints[0].GetPositionY(), outroPoints[0].GetPositionZ());
                            me->DespawnOrUnsummon(5000);
                            break;

                        case EVENT_LI_LO_CHU_EVADE:
                            me->RemoveAllAuras();
                            Reset();
                            me->DeleteThreatList();
                            me->CombatStop(true);
                            me->GetMotionMaster()->MoveTargetedHome();
                            break;

                        default: break;
                    }
                }

                if (!UpdateVictim())
                    return;

                DoMeleeAttackIfReady();
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new npc_lo_chuAI(creature);
        }
};

// Bombard (Dummy) 120202.
class spell_amberwing_bombard_vojak : public SpellScriptLoader
{
    public:
        spell_amberwing_bombard_vojak() : SpellScriptLoader("spell_amberwing_bombard_vojak") { }

        class spell_amberwing_bombard_vojak_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_amberwing_bombard_vojak_SpellScript);

            void HandleDummy(SpellEffIndex /*effIndex*/)
            {
                Unit* caster = GetCaster();

                if (!caster)
                    return;

                if (!caster->ToCreature())
                    return;

                if (Unit* target = caster->ToCreature()->AI()->SelectTarget(SELECT_TARGET_RANDOM, 0, 100.0f, true))
                    caster->CastSpell(target, SPELL_BOMBARD_PROTECTION, true);
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_amberwing_bombard_vojak_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_amberwing_bombard_vojak_SpellScript();
        }
};

void AddSC_boss_commander_vojak()
{
    new boss_commander_vojak();
    new npc_sikthik_amberwing();
    new npc_sikthik_add_vojak();
    new npc_mantid_tar_keg_vojak();
    new npc_tar_puddle_vojak();
    new npc_sikthik_warden();
    new npc_yang_ironclaw();
    new npc_li_chu();
    new npc_lo_chu();
    new spell_amberwing_bombard_vojak();
}
