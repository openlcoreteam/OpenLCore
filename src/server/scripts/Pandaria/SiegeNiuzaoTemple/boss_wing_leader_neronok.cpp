/*
 * Trinity Core and update by Corporation ElisGrimm
 *
 * www.elisgrimm.ru
 *
 * Dungeon: Siege of Niuzao Temple.
 */

#include "ObjectMgr.h"
#include "ScriptMgr.h"
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

enum Yells
{
    // Boss
    SAY_AGGRO                = 0, // You may have come this far. You may carved a path through my army, but I...will kill you, and I will build the bridge.
    SAY_TREACHEROUS_WINDS,        // I will do what Pa'valak could not!
    SAY_KILL,                     // Out of my way!
    SAY_WIPE,                     // Get back to work! I want this bridge finished by first light!
    SAY_DEATH                     // The...bridge...
};

#define ANN_GUSTING_WINDS "Wing Leader Ner'onok lifts off and flies to the other end of the bridge!"

enum Spells
{
    // Boss
    SPELL_HURL_BRICK         = 121762,

    SPELL_CAUSTIC_PITCH      = 121442, // Missile for SPELL_CAUSTIC_PITCH_POOL.
    SPELL_CAUSTIC_PITCH_POOL = 121443,

    SPELL_QUICK_DRY_RESIN    = 121447,
    SPELL_QUICK_DRY_RESIN_SE = 122063, // Screen effect.
    SPELL_INVIGORATED        = 121449, // If player jumps and breaks out of resin.
    SPELL_ENCASED_IN_RESIN   = 121448, // If 100 power reached - 6 sec. stun.

    SPELL_GUSTING_WINDS      = 121284, // From him.
    SPELL_GUSTING_WINDS_AURA = 121282, // Towards him.
    SPELL_KNOCKBACK          = 70966   // Usable with Gusting Winds.
};

enum Events
{
    // Boss
    EVENT_HURL_BRICK         = 1,
    EVENT_CAUSTIC_PITCH,
    EVENT_QUICK_DRY_RESIN,
    EVENT_GUSTING_WINDS,
    EVENT_GUSTING_WINDS_KNOCKBACK,     // Player knockback.

    EVENT_MOVE_SOUTH_UP,
    EVENT_MOVE_SOUTH_DOWN,
    EVENT_MOVE_NORTH_UP,
    EVENT_MOVE_NORTH_DOWN
};

enum MovePoints
{
    // Boss
    POINT_FIRST_WINDS_UP            = 1, // Southern end.
    POINT_FIRST_WINDS_DOWN,

    POINT_SECOND_WINDS_UP,               // Northern end.
    POINT_SECOND_WINDS_DOWN
};

// Bridge positions.
Position const bridgePos[4] = 
{
    { 1805.47f, 5250.33f, 145.17f },     // Southern end.
    { 1805.47f, 5250.33f, 131.17f },     // O: 5.54f.

    { 1885.54f, 5180.00f, 145.17f },     // Northern end.
    { 1885.54f, 5180.00f, 131.17f },     // O: 2.47f.
};

// Bridge ends orientations.
float bridgeOrientations[2] =
{
    5.54f,
    2.47f
};

// Wind Leader Ner'onok 62205.
class boss_wing_leader_neronok : public CreatureScript
{
    public:
        boss_wing_leader_neronok() : CreatureScript("boss_wing_leader_neronok") { }

        struct boss_wing_leader_neronokAI : public BossAI
        {
            boss_wing_leader_neronokAI(Creature* creature) : BossAI(creature, DATA_WING_LEADER_NERONOK_EVENT), summons(me)
            {
                instance = creature->GetInstanceScript();
            }

            InstanceScript* instance;
            SummonList summons;
            EventMap events;
			bool windsCasted, windsCasted2, shouldWinds;
            uint8 knockbacksCount;

            // Particular functions for taking off / landing.
            void SetFlight()
            {
                me->SetReactState(REACT_PASSIVE);
                me->HandleEmoteCommand(EMOTE_ONESHOT_LIFTOFF);
                me->SetDisableGravity(true);
                me->SetByteFlag(UNIT_FIELD_BYTES_1, 3, UNIT_BYTE1_FLAG_HOVER);
                me->AddUnitMovementFlag(MOVEMENTFLAG_CAN_FLY | MOVEMENTFLAG_FLYING);
            }

            void SetLand()
            {
                me->TextEmote(EMOTE_ONESHOT_LAND);
                me->SetDisableGravity(false);
                me->RemoveByteFlag(UNIT_FIELD_BYTES_1, 3, UNIT_BYTE1_FLAG_HOVER);
                me->RemoveUnitMovementFlag(MOVEMENTFLAG_CAN_FLY | MOVEMENTFLAG_FLYING);
                me->SetReactState(REACT_DEFENSIVE);
            }

            void Reset()
            {
                events.Reset();
                summons.DespawnAll();

                windsCasted   = false;
                windsCasted2  = false;
                shouldWinds   = false;

                if (instance)
                    instance->SetData(DATA_WING_LEADER_NERONOK_EVENT, NOT_STARTED);

                _Reset();
            }

            void EnterCombat(Unit* /*who*/)
            {
                Talk(SAY_AGGRO);

                events.ScheduleEvent(EVENT_HURL_BRICK, urand(3000, 5000));
                events.ScheduleEvent(EVENT_CAUSTIC_PITCH, urand(12000, 15000));
                events.ScheduleEvent(EVENT_QUICK_DRY_RESIN, urand(7000, 9000));

                if (instance)
                {
                    instance->SetData(DATA_WING_LEADER_NERONOK_EVENT, IN_PROGRESS);
                    instance->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me); // Add
                }
				
				if (Creature* Neronok = me->FindNearestCreature(BOSS_WING_LEADER_NERONOK, 50.0f, true))
					{
						Neronok->GetScheduler().Schedule(4s, [Neronok](TaskContext context)
                { 
                        Neronok->AI()->Talk(0);
                });
					}

                _EnterCombat();
            }

            void KilledUnit(Unit* victim)
            {
                if (victim->GetTypeId() == TYPEID_PLAYER)
                    Talk(SAY_KILL);
            }

            void EnterEvadeMode(EvadeReason why) override
            {
                Talk(SAY_WIPE);
                me->AddUnitState(UNIT_STATE_EVADE);

                me->RemoveAllAuras();
                Reset();
                me->DeleteThreatList();
                me->CombatStop(true);
                me->GetMotionMaster()->MoveTargetedHome();

                if (instance)
                {
                    instance->SetData(DATA_WING_LEADER_NERONOK_EVENT, FAIL);
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
                summons.DespawnAll();

                if (instance)
                {
                    instance->SetData(DATA_WING_LEADER_NERONOK_EVENT, DONE);
                    instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me); // Remove
                }

                _JustDied();
            }

            void JustSummoned(Creature* summon)
            {
                summons.Summon(summon);
                summon->setActive(true);

		        if (me->IsInCombat())
                    summon->AI()->DoZoneInCombat(summon, 150.0f);
            }

            void MovementInform(uint32 type, uint32 pointId)
            {
                if (!me->IsAlive() || type != POINT_MOTION_TYPE)
                    return;
            
                switch (pointId)
                {
                    case POINT_FIRST_WINDS_UP:
						events.ScheduleEvent(EVENT_MOVE_SOUTH_DOWN, 10);
                        break;

                    case POINT_FIRST_WINDS_DOWN:
                        SetLand();
                        me->GetMotionMaster()->MovementExpired();
                        me->SetFacingTo(bridgeOrientations[0]);
						events.ScheduleEvent(EVENT_GUSTING_WINDS, 1500);
                        break;

                    case POINT_SECOND_WINDS_UP:
						events.ScheduleEvent(EVENT_MOVE_NORTH_DOWN, 10);
                        break;

                    case POINT_SECOND_WINDS_DOWN:
                        SetLand();
                        me->GetMotionMaster()->MovementExpired();
                        me->SetFacingTo(bridgeOrientations[1]);
						events.ScheduleEvent(EVENT_GUSTING_WINDS, 1500);
                        break;

                    default: break;
                }
            }

            void SpellHit(Unit* caster, SpellInfo const* spell)
            {
                // Handle Gusting Winds mechanics.
                if (spell->Id == SPELL_GUSTING_WINDS)
                {
                    shouldWinds = true;
                    me->AddAura(SPELL_GUSTING_WINDS_AURA, me);
                    events.ScheduleEvent(EVENT_GUSTING_WINDS_KNOCKBACK, 10);
                    events.ScheduleEvent(EVENT_GUSTING_WINDS, 6000);
                }
            }

            void DamageTaken(Unit* who, uint32& damage)
            {
                // Handle Gusting Winds phase end on taking melee damage.
                if (shouldWinds && who->GetDistance(me) <= 6.0f)
                {
                    shouldWinds = false;
                    events.CancelEvent(EVENT_GUSTING_WINDS);
                    events.CancelEvent(EVENT_GUSTING_WINDS_KNOCKBACK);
                    knockbacksCount = 0;
                    me->RemoveAurasDueToSpell(SPELL_GUSTING_WINDS);
                    me->RemoveAurasDueToSpell(SPELL_GUSTING_WINDS_AURA);
                    me->GetMotionMaster()->MovementExpired();
                    me->SetReactState(REACT_AGGRESSIVE);
                    me->GetMotionMaster()->MoveChase(me->GetVictim());

                    events.ScheduleEvent(EVENT_HURL_BRICK, urand(3000, 5000));
                    events.ScheduleEvent(EVENT_CAUSTIC_PITCH, urand(12000, 15000));
                    events.ScheduleEvent(EVENT_QUICK_DRY_RESIN, urand(7000, 9000));
                }
            }

            void UpdateAI(uint32 const diff)
            {
                if (!UpdateVictim() || me->HasUnitState(UNIT_STATE_CASTING) && !me->GetCurrentSpell(CURRENT_CHANNELED_SPELL))
                    return;

                events.Update(diff);

                // Handle Gusting Winds phase entrance.
                if (!windsCasted && me->HealthBelowPct(67) || windsCasted && !windsCasted2 && me->HealthBelowPct(34))
                {
                    // Schedule correct Phase events.
                    events.CancelEvent(EVENT_HURL_BRICK);
                    events.CancelEvent(EVENT_CAUSTIC_PITCH);
                    events.CancelEvent(EVENT_QUICK_DRY_RESIN);

                    me->TextEmote(ANN_GUSTING_WINDS, NULL, true);
                    events.ScheduleEvent(windsCasted ? EVENT_MOVE_NORTH_UP : EVENT_MOVE_SOUTH_UP, 500);

                    if (!windsCasted)        // First Gusting Winds.
                        windsCasted = true;
                    else
                        windsCasted2 = true; // Second Gusting Winds.
                }

                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_HURL_BRICK:
                            if (!me->IsWithinDistInMap(me->GetVictim(), me->GetAttackDistance(me->GetVictim())))
                                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100.0f, true))
                                    DoCast(target, SPELL_HURL_BRICK);
                            events.ScheduleEvent(EVENT_HURL_BRICK, 2000);
                            break;

                        case EVENT_CAUSTIC_PITCH:
                            if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100.0f, true))
                                DoCast(target, SPELL_CAUSTIC_PITCH_POOL);
                            events.ScheduleEvent(EVENT_CAUSTIC_PITCH, urand(30000, 35000));
                            break;

                        case EVENT_QUICK_DRY_RESIN:
                            DoCast(me, SPELL_QUICK_DRY_RESIN);
                            events.ScheduleEvent(EVENT_QUICK_DRY_RESIN, urand(20000, 25000));
                            break;

                        case EVENT_MOVE_SOUTH_UP:
                            Talk(SAY_TREACHEROUS_WINDS);
                            SetFlight();
							me->GetMotionMaster()->MovePoint(POINT_FIRST_WINDS_UP, bridgePos[0]);
                            break;

                        case EVENT_MOVE_SOUTH_DOWN:
							me->GetMotionMaster()->MovePoint(POINT_FIRST_WINDS_DOWN, bridgePos[1]);
                            break;

                        case EVENT_MOVE_NORTH_UP:
                            Talk(SAY_TREACHEROUS_WINDS);
                            SetFlight();
							me->GetMotionMaster()->MovePoint(POINT_SECOND_WINDS_UP, bridgePos[2]);
                            break;

                        case EVENT_MOVE_NORTH_DOWN:
							me->GetMotionMaster()->MovePoint(POINT_SECOND_WINDS_DOWN, bridgePos[3]);
                            break;

                        case EVENT_GUSTING_WINDS:
                            DoCast(me, SPELL_GUSTING_WINDS);
                            break;

                        case EVENT_GUSTING_WINDS_KNOCKBACK:
                            if (me->HasAura(SPELL_GUSTING_WINDS) && knockbacksCount < 4)
                            {
                                knockbacksCount++;
                                DoCast(me, SPELL_KNOCKBACK, true);
                                events.ScheduleEvent (EVENT_GUSTING_WINDS_KNOCKBACK, 900);
                            }
                            else knockbacksCount = 0;
                            break;

                        default: break;
                    }
                }

                DoMeleeAttackIfReady();
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_wing_leader_neronokAI(creature);
        }
};

// Quick - Dry Resin 121447
class spell_neronok_quick_dry_resin : public SpellScriptLoader
{
    public:
        spell_neronok_quick_dry_resin() : SpellScriptLoader("spell_neronok_quick_dry_resin") { }

        class spell_neronok_quick_dry_resin_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_neronok_quick_dry_resin_AuraScript);

            void OnApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                Unit* caster = GetCaster();
                Unit* target = GetTarget();
                if (!caster || !target)
                    return;

                target->AddAura(SPELL_QUICK_DRY_RESIN_SE, target);
            }

            void OnRemove(AuraEffect const*, AuraEffectHandleModes /*mode*/)
            {
                Unit* caster = GetCaster();
                Unit* target = GetTarget();
                if (!caster || !target)
                    return;

                target->RemoveAurasDueToSpell(SPELL_QUICK_DRY_RESIN_SE);
            }

            void OnTick(AuraEffect const* aurEff)
            {
                Unit* caster = GetCaster();
                Unit* target = GetTarget();

                if (!caster || !target)
                    return;

                int32 resinPower = target->GetPower(POWER_ALTERNATE_POWER);

                // Add or remove power depending on player jumping or not. Handle margins.
                if (resinPower > 0 && resinPower < 100)
                {
                    if (target->HasUnitMovementFlag(MOVEMENTFLAG_FALLING) || target->GetPositionZ() > GetCaster()->GetPositionZ() + 0.1f)
                        target->SetPower(POWER_ALTERNATE_POWER, target->GetPower(POWER_ALTERNATE_POWER) - 10);
                    else
                        target->SetPower(POWER_ALTERNATE_POWER, target->GetPower(POWER_ALTERNATE_POWER) + 10);
                }
                else if (resinPower == 0)
                {
                    caster->AddAura(SPELL_INVIGORATED, target);
                    target->RemoveAurasDueToSpell(SPELL_QUICK_DRY_RESIN);
                }
                else // 100 resinPower.
                {
                    caster->AddAura(SPELL_ENCASED_IN_RESIN, target);
                    target->RemoveAurasDueToSpell(SPELL_QUICK_DRY_RESIN);
                }
            }

            void Register() override
            {
                OnEffectApply += AuraEffectApplyFn(spell_neronok_quick_dry_resin_AuraScript::OnApply, EFFECT_0, SPELL_AURA_PERIODIC_DAMAGE, AURA_EFFECT_HANDLE_REAL);
                OnEffectRemove += AuraEffectRemoveFn(spell_neronok_quick_dry_resin_AuraScript::OnRemove, EFFECT_0, SPELL_AURA_PERIODIC_DAMAGE, AURA_EFFECT_HANDLE_REAL);
                OnEffectPeriodic += AuraEffectPeriodicFn(spell_neronok_quick_dry_resin_AuraScript::OnTick, EFFECT_0, SPELL_AURA_PERIODIC_DAMAGE);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_neronok_quick_dry_resin_AuraScript();
        }
};

void AddSC_boss_wing_leader_neronok()
{
    new boss_wing_leader_neronok();
    new spell_neronok_quick_dry_resin();
}
