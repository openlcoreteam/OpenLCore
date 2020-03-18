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
    SAY_INTRO               = 0, // Niuzao's forces attack from the rear!
    SAY_AGGRO,                   // The temple will fall! You cannot stop my forces!
    SAY_GROUND_ASSAULT,          // 0 - My army will crush you! ; 1 - Stop them! Mantid attack! ; 2 - Put down your weapons or die!
    SAY_KILL,                    // 0 - The empress demands it! ; 1 - The forces of Niuzao are weak!
    SAY_DEATH                    // I have failed you, empress...
};

#define ANN_REINFORCEMENTS "General Pa'valak calls for reinforcements!"

enum Spells
{
    // Boss
    SPELL_BLADE_RUSH        = 124283, // Missile SPELL_BLADE_RUSH_DUMMY - eff 0, Disarm - eff 1.
    SPELL_BLADE_RUSH_DUMMY  = 124291, // Dummy on eff 0 for SPELL_BLADE_RUSH_SUMMON.
    SPELL_BLADE_RUSH_SUMMON = 124278, // Summons NPC_BLADE_RUSH.
    SPELL_BLADE_RUSH_DAMAGE = 124290, // Damage for sword throw land.
    SPELL_BLADE_RUSH_T_DMG  = 124317, // Damage for players between boss and sword.
    SPELL_BLADE_RUSH_CHARGE = 124312, // Charge to sword.

    SPELL_TEMPEST           = 119875,
    SPELL_BULWARK           = 119476, // At 65 and 35%.

    // Sik'thik Amber-Sapper
    SPELL_SIEGE_EXPLOSION_M = 119376, // Missile (cast by adds). Summons NPC_SIEGE_EXPLOSIVES.
    SPELL_SIEGE_EXPLOSIVE_P = 119388, // Player throw spell, triggers visual + target + Detonate on adds.

    // Sik'thik Soldier
    SPELL_SERRATED_BLADE    = 119840,

    // Siege Explosive - 3 sec arm, 6 explode.
    SPELL_EXPLOS_VISUAL     = 119380, // Visual.
    SPELL_EXPLOS_DETONATE   = 119703
};

enum Events
{
    // Boss
    EVENT_BLADE_RUSH        = 1,
    EVENT_BLADE_RUSH_CHARGE,
    EVENT_BLADE_RUSH_CHARGE_DMG,
    EVENT_TEMPEST,
    EVENT_BULWARK,
    EVENT_SUMMON_ADD_WAVE,

    // Sik'thik Amber-Sapper
    EVENT_SIEGE_EXPLOSIVE,

    // Sik'thik Soldier
    EVENT_SERRATED_BLADE,

    // Siege Explosives
    EVENT_EXPLOSIVE_VISUAL,
    EVENT_EXPLOSIVE_DETONATE
};

// Adds summon position.
Position const summonPos        = { 1741.77f, 5312.19f, 129.53f };

// General Pa'valak 61485.
class boss_general_pavalak : public CreatureScript
{
    public:
        boss_general_pavalak() : CreatureScript("boss_general_pavalak") { }

        struct boss_general_pavalakAI : public BossAI
        {
            boss_general_pavalakAI(Creature* creature) : BossAI(creature, DATA_GENERAL_PAVALAK_EVENT), summons(me)
            {
                instance = creature->GetInstanceScript();
                introDone = false;
            }

            InstanceScript* instance;
            SummonList summons;
            EventMap events;
            bool introDone, isBulwarked, isSecondBulwarked, hasBulwark, swordCharged;

            void Reset()
            {
                events.Reset();
                summons.DespawnAll();

                isBulwarked       = false;
                isSecondBulwarked = false;
                hasBulwark        = false;
                swordCharged      = false;

                if (instance)
                    instance->SetData(DATA_GENERAL_PAVALAK_EVENT, NOT_STARTED);

                _Reset();
            }

            void MoveInLineOfSight(Unit* who)
            {
                if (!introDone && me->IsWithinDistInMap(who, 40) && who->GetTypeId() == TYPEID_PLAYER)
                {
                    Talk(SAY_INTRO);
                    introDone = true;
                }
            }

            void EnterCombat(Unit* /*who*/)
            {
                Talk(SAY_AGGRO);

                events.ScheduleEvent(EVENT_BLADE_RUSH, urand(12000, 20000));
                events.ScheduleEvent(EVENT_TEMPEST, urand(38000, 43000));

                if (instance)
                {
                    instance->SetData(DATA_GENERAL_PAVALAK_EVENT, IN_PROGRESS);
                    instance->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me); // Add
                }
				
				if (Creature* Pavalak = me->FindNearestCreature(BOSS_GENERAL_PAVALAK, 50.0f, true))
					{
						Pavalak->GetScheduler().Schedule(4s, [Pavalak](TaskContext context)
                { 
                        Pavalak->AI()->Talk(0);
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
                me->AddUnitState(UNIT_STATE_EVADE);

                me->RemoveAllAuras();
                Reset();
                me->DeleteThreatList();
                me->CombatStop(true);
                me->GetMotionMaster()->MoveTargetedHome();

                if (instance)
                {
                    instance->SetData(DATA_GENERAL_PAVALAK_EVENT, FAIL);
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
                    instance->SetData(DATA_GENERAL_PAVALAK_EVENT, DONE);
                    instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me); // Remove
                }

                _JustDied();
            }

            void JustSummoned(Creature* summon)
            {
                summons.Summon(summon);
                summon->setActive(true);

		        if (me->IsInCombat() && summon->GetEntry() != NPC_SIEGE_EXPLOSIVES)
                    summon->AI()->DoZoneInCombat(summon, 150.0f);
            }

            void SpellHit(Unit* caster, SpellInfo const* spell)
            {
                if (!instance)
                    return;

                if (instance->GetData(DATA_GENERAL_PAVALAK_EVENT) == DONE)
                    return;

                // Handle checking Bulwark aura.
                if (spell->Id == SPELL_BULWARK)
                    hasBulwark = true;
            }

            void UpdateAI(uint32 const diff)
            {
                if (!UpdateVictim() || me->HasUnitState(UNIT_STATE_CASTING) && !me->GetCurrentSpell(CURRENT_CHANNELED_SPELL))
                    return;

                events.Update(diff);

                // Handle Bulwark phase entrance.
                if (!isBulwarked && me->HealthBelowPct(66) || isBulwarked && !isSecondBulwarked && me->HealthBelowPct(36))
                {
                    if (!isBulwarked)       // First entrance.
                        isBulwarked = true;
                    else                    // Second entrance.
                        isSecondBulwarked = true;

                    Talk(SAY_GROUND_ASSAULT);
                    me->TextEmote(ANN_REINFORCEMENTS, NULL, true);

                    events.CancelEvent(EVENT_BLADE_RUSH);
                    events.CancelEvent(EVENT_TEMPEST);
                    events.ScheduleEvent(EVENT_BULWARK, 500);
                    events.ScheduleEvent(EVENT_SUMMON_ADD_WAVE, urand(3000, 5000));
                }

                // Handle Blade Rush damage check.
                if (swordCharged && me->FindNearestCreature(NPC_BLADE_RUSH, 6.0f, true))
                {
                    events.ScheduleEvent(EVENT_BLADE_RUSH_CHARGE_DMG, 10);
                    swordCharged = false;
                }

                // Handle Bulwark phase exit (aura removal).
                if (hasBulwark && !me->HasAura(SPELL_BULWARK))
                {
                    events.CancelEvent(EVENT_SUMMON_ADD_WAVE);
                    events.ScheduleEvent(EVENT_BLADE_RUSH, urand(2000, 7000));
                    events.ScheduleEvent(EVENT_TEMPEST, urand(18000, 23000));
                    hasBulwark  = false;
                }

                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_BLADE_RUSH:
                            DoCast(me, SPELL_BLADE_RUSH);
                            events.ScheduleEvent(EVENT_BLADE_RUSH_CHARGE, 1500);
                            events.ScheduleEvent(EVENT_BLADE_RUSH, urand(22000, 32000));
                            break;

                        case EVENT_BLADE_RUSH_CHARGE:
                            if (Creature* sword = me->FindNearestCreature(NPC_BLADE_RUSH, 100.0f, true))
                                DoCast(sword, SPELL_BLADE_RUSH_CHARGE);
                            swordCharged = true;
                            break;

                        case EVENT_BLADE_RUSH_CHARGE_DMG:
                            DoCast(me, SPELL_BLADE_RUSH_T_DMG);
                            if (Creature* sword = me->FindNearestCreature(NPC_BLADE_RUSH, 100.0f, true))
                                sword->DespawnOrUnsummon(200);
                            break;

                        case EVENT_TEMPEST:
                            DoCast(me, SPELL_TEMPEST);
                            events.ScheduleEvent(EVENT_TEMPEST, urand(40000, 45000));
                            break;

                        case EVENT_BULWARK:
                            DoCast(me, SPELL_BULWARK);
                            break;

                        case EVENT_SUMMON_ADD_WAVE:
                            for (uint8 i = 0; i < 7; i++)
                                me->SummonCreature(NPC_SIKTHIK_SOLDIER, summonPos, TEMPSUMMON_CORPSE_DESPAWN, 1000);
                            for (uint8 i = 0; i < 3; i++)
                                me->SummonCreature(NPC_SIKTHIK_AMBER_SAPPER, summonPos, TEMPSUMMON_CORPSE_DESPAWN, 1000);
                            break;

                        default: break;
                    }
                }

                DoMeleeAttackIfReady();
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_general_pavalakAI(creature);
        }
};

// Sik'thik Amber Sapper 61484.
class npc_sikthik_amber_sapper_pavalak : public CreatureScript
{
    public:
        npc_sikthik_amber_sapper_pavalak() : CreatureScript("npc_sikthik_amber_sapper_pavalak") { }

        struct npc_sikthik_amber_sapper_pavalakAI : public ScriptedAI
        {
            npc_sikthik_amber_sapper_pavalakAI(Creature* creature) : ScriptedAI(creature)
            {
                instance = creature->GetInstanceScript();
            }

            InstanceScript* instance;
            EventMap events;

            void EnterCombat(Unit* /*who*/)
            {
                events.Reset();
                events.ScheduleEvent(EVENT_SIEGE_EXPLOSIVE, urand(5000, 10000));
            }

            void UpdateAI(uint32 const diff)
            {
                if (!UpdateVictim() || me->HasUnitState(UNIT_STATE_CASTING))
                    return;

                events.Update(diff);

                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_SIEGE_EXPLOSIVE:
                            if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100.0f, true))
                                DoCast(target, SPELL_SIEGE_EXPLOSION_M);
                            events.ScheduleEvent(EVENT_SIEGE_EXPLOSIVE, urand(6000, 10000));
                            break;

                        default: break;
                    }
                }

                DoMeleeAttackIfReady();
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new npc_sikthik_amber_sapper_pavalakAI(creature);
        }
};

// Sik'thik Soldier 62348.
class npc_sikthik_soldier_pavalak : public CreatureScript
{
    public:
        npc_sikthik_soldier_pavalak() : CreatureScript("npc_sikthik_soldier_pavalak") { }

        struct npc_sikthik_soldier_pavalakAI : public ScriptedAI
        {
            npc_sikthik_soldier_pavalakAI(Creature* creature) : ScriptedAI(creature)
            {
                instance = creature->GetInstanceScript();
            }

            InstanceScript* instance;
            EventMap events;

            void EnterCombat(Unit* /*who*/)
            {
                events.Reset();
                events.ScheduleEvent(EVENT_SERRATED_BLADE, urand(2000, 5000));
            }

            void UpdateAI(uint32 const diff)
            {
                if (!UpdateVictim() || me->HasUnitState(UNIT_STATE_CASTING))
                    return;

                events.Update(diff);

                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_SERRATED_BLADE:
                            DoCastVictim(SPELL_SERRATED_BLADE);
                            events.ScheduleEvent(EVENT_SERRATED_BLADE, urand(9100, 11500));
                            break;

                        default: break;
                    }
                }

                DoMeleeAttackIfReady();
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new npc_sikthik_soldier_pavalakAI(creature);
        }
};

// Siege Explosives 61452.
class npc_siege_explosives_pavalak : public CreatureScript
{
    public:
        npc_siege_explosives_pavalak() : CreatureScript("npc_siege_explosives_pavalak") { }

        struct npc_siege_explosives_pavalakAI : public ScriptedAI
        {
            npc_siege_explosives_pavalakAI(Creature* creature) : ScriptedAI(creature)
            {
                instance = creature->GetInstanceScript();
            }

            InstanceScript* instance;
            EventMap events;

            void IsSummonedBy(Unit* summoner)
            {
                Reset();
                me->setFaction(35);
                me->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_SPELLCLICK);

                events.ScheduleEvent(EVENT_EXPLOSIVE_VISUAL, 3000);
                events.ScheduleEvent(EVENT_EXPLOSIVE_DETONATE, 6000);
            }

            void Reset()
            {
                events.Reset();
                DoCast(me, SPELL_EXPLOS_VISUAL);
            }

            void OnSpellClick(Unit* clicker, bool& result)
            {
                // Handle Player pickup.
                events.CancelEvent(EVENT_EXPLOSIVE_VISUAL);
                events.CancelEvent(EVENT_EXPLOSIVE_DETONATE);
                clicker->CastSpell(clicker, SPELL_SIEGE_EXPLOSIVE_P, true);
                me->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_SPELLCLICK);
                me->DespawnOrUnsummon();
            }

            void UpdateAI(uint32 const diff)
            {
                events.Update(diff);

                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_EXPLOSIVE_VISUAL:
                            me->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_SPELLCLICK);
                            me->setFaction(16);
                            me->SetInCombatWithZone();
                            me->SetReactState(REACT_PASSIVE);
                            break;

                        case EVENT_EXPLOSIVE_DETONATE:
                            DoCast(me, SPELL_EXPLOS_DETONATE, true);
                            me->DespawnOrUnsummon(200);
                            break;

                        default: break;
                    }
                }

                // No melee.
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new npc_siege_explosives_pavalakAI(creature);
        }
};

// Blade Rush 124291.
class spell_pavalak_blade_rush : public SpellScriptLoader
{
    public:
        spell_pavalak_blade_rush() : SpellScriptLoader("spell_pavalak_blade_rush") { }

        class spell_pavalak_blade_rush_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_pavalak_blade_rush_SpellScript);

            void HandleDummy(SpellEffIndex /*effIndex*/)
            {
                Unit* caster = GetCaster();

                if (!caster)
                    return;

                if (!caster->ToCreature())
                    return;

                if (Unit* target = caster->ToCreature()->AI()->SelectTarget(SELECT_TARGET_FARTHEST, 0, 50.0f, true))
                    target->CastSpell(target, SPELL_BLADE_RUSH_SUMMON, false);
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_pavalak_blade_rush_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_pavalak_blade_rush_SpellScript();
        }
};

void AddSC_boss_general_pavalak()
{
    new boss_general_pavalak();
    new npc_sikthik_amber_sapper_pavalak();
    new npc_sikthik_soldier_pavalak();
    new npc_siege_explosives_pavalak();
    new spell_pavalak_blade_rush();
}
