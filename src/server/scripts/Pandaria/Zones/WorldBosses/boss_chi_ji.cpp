/*
 * Copyright (C) 2017-2018 AshamaneProject <https://github.com/AshamaneProject>
 * Copyright (C) 2016 Firestorm Servers <https://firestorm-servers.com>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ObjectMgr.h"
#include "MapManager.h"
#include "../../scripts/Pandaria/Zones/zone_pandaria_timeless_isle.h"

#define MAX_HEALTH_POINTS 349000000
#define INITIAL_HEALTH_POINTS 87250000
#define INCREMENTAL 2800000

enum ChiJiSpells
{
    SPELL_INSPIRING_SONG                    = 144468,

    SPELL_FIRESTORM_SUMMON                  = 144461,
    SPELL_FIRESTORM_DMG                     = 144462,
    SPELL_FIRESTORM_AURA                    = 144463,

    SPELL_BEACON_OF_HOPE_SUMMON             = 144473,
    SPELL_BEACON_OF_HOPE_AURA               = 144474,
    SPELL_BEACON_OF_HOPE_BUFF               = 144475,

    SPELL_BLAZING_SONG                      = 144471,
    SPELL_BLAZING_SONG_DMG                  = 144472,

    SPELL_CRANE_RUSH                        = 144470,
    SPELL_CRANE_RUSH_SUMMON                 = 144495,

    SPELL_BLAZING_NOVA_AURA                 = 144493,
    SPELL_BLAZING_NOVA                      = 144494
};

enum ChiJiEvents
{
    EVENT_FIRESTORM                         = 1,
    EVENT_INSPIRING_SONG                    = 2,
    EVENT_BEACON_OF_HOPE                    = 3,
    EVENT_HEALTH_66_PERCENT                 = 4,
    EVENT_HEALTH_33_PERCENT                 = 5,
    EVENT_SHAO_DO_OUTRO                     = 6,
    EVENT_DEATH                             = 7,
    EVENT_SHAO_DO_INTRO                     = 8,
    EVENT_SHAO_DO_INTRO_ATTACKABLE          = 9,
    EVENT_HEALTH_POOL_TIMER                 = 10
};

enum ChiJiTexts
{
    SAY_AGGRO                               = 0,
    SAY_INTRO                               = 1,
    SAY_DEATH                               = 2,
    SAY_KILL                                = 3,
    SAY_SPELL                               = 4,
    SAY_SPELL_2                             = 5,
    SAY_SPELL_3                             = 6
};

enum ChiJiActions
{
    ACTION_CHILDREN_OF_CHIJI_33             = 1,
    ACTION_CHILDREN_OF_CHIJI_66             = 2
};

enum ChiJiChildEvents
{
    CHILD_EVENT_RUN                         = 1
};

enum ChiJiChildMovement
{
    CHILD_MOVEMENT                          = 1
};

enum ChiJiChildAction
{
    CHILD_ACTION_RUN_FORWARD                = 1
};

class boss_chi_ji_celestial : public CreatureScript
{
    public:
        boss_chi_ji_celestial() : CreatureScript("boss_chi_ji_celestial") { }

        struct boss_chi_ji_celestialAI : public BossAI
        {
            boss_chi_ji_celestialAI(Creature* creature) : BossAI(creature, BOSS_CHI_JI) { }

            void Reset()
            {
                events.Reset();
                _Reset();

                if (me->getFaction() == FACTION_HOSTILE_NEUTRAL)
                {
                    me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PC);
                    me->SetFacingTo(MIDDLE_FACING_ANGLE);
                }

                summons.DespawnAll();
                me->SetWalk(true);
                me->setActive(true);
            }

            void EnterCombat(Unit* /*target*/) override
            {
                me->SetWalk(false);
                death = false;
                Talk(SAY_AGGRO);
                events.ScheduleEvent(urand(EVENT_FIRESTORM, EVENT_INSPIRING_SONG), 10s, 15s);
                events.ScheduleEvent(EVENT_BEACON_OF_HOPE, 50s);
            }

            void DoAction(const int32 action)
            {
                switch (action)
                {
                    case ACTION_CHILDREN_OF_CHIJI_66:
                    {
                        DoCast(SPELL_CRANE_RUSH);
                        Talk(SAY_SPELL_3);
                        break;
                    }
                    case ACTION_CHILDREN_OF_CHIJI_33:
                    {
                        DoCast(SPELL_CRANE_RUSH);
                        Talk(SAY_SPELL_2);
                        break;
                    }
                    default: break;
                };
            }

            void DamageTaken(Unit* caster, uint32 &dmg) override
            {
                if (me->GetHealthPct() > 66.6f)
                {
                    _children66 = false;
                    _children33 = false;
                }

                if (me->GetHealthPct() < 66.6f && !_children66)
                {
                    _children66 = true;
                    events.ScheduleEvent(EVENT_HEALTH_66_PERCENT, 500ms);
                }

                if (me->GetHealthPct() < 33.3f && !_children33)
                {
                    _children33 = true;
                    events.ScheduleEvent(EVENT_HEALTH_33_PERCENT, 500ms);
                }

                if (dmg >= me->GetHealth())
                {
                    if (death)
                        return;

                    ThreatContainer::StorageType threatlist = me->getThreatManager().getThreatList();

                    for (auto itr = threatlist.begin(); itr != threatlist.end(); ++itr)
                        if (Unit* unit = ObjectAccessor::GetUnit(*me, (*itr)->getUnitGuid()))
                            if (unit->IsWithinDist(me, 100.0f))
                                if (unit->ToPlayer())
                                    unit->ToPlayer()->KilledMonsterCredit(me->GetEntry(), me->GetGUID());

                    dmg = 0;
                    Talk(SAY_DEATH);
                    
                    me->setFaction(FACTION_FRIENDLY);
                   
                    me->StopMoving();
                    me->RemoveAllAuras();
                    me->GetMotionMaster()->Clear();
                    me->CombatStop(true);
                    me->SetHealth(me->GetMaxHealth());

                    me->SetFacingTo(MIDDLE_FACING_ANGLE);
                    me->DeleteThreatList();

                    events.Reset();
                    summons.DespawnAll();
                    events.ScheduleEvent(EVENT_SHAO_DO_OUTRO, 20s);
                    events.ScheduleEvent(EVENT_DEATH, 13s);
                    death = true;
                }
            }

            void MovementInform(uint32 type, uint32 point) override
            {
                if (type != POINT_MOTION_TYPE)
                    return;

                if (point == 1)
                {
                    events.ScheduleEvent(EVENT_SHAO_DO_INTRO, CELESTIAL_COURT_BOSS_INTRO_TIMER_1);
                    me->SetFacingTo(MIDDLE_FACING_ANGLE);
                    me->setFaction(FACTION_HOSTILE_NEUTRAL);
                    me->SetHomePosition(_timelessIsleMiddle);
                    me->SetMaxHealth(INITIAL_HEALTH_POINTS);
                    me->SetHealth(me->GetMaxHealth());
                }
            }

            void KilledUnit(Unit* who)
            {
                if (who->GetTypeId() == TYPEID_PLAYER)
                    Talk(SAY_KILL);
                        return;
            }

            void UpdateHealth()
            {
                if (!me->IsInCombat())
                    return;

                ThreatContainer::StorageType threatlist = me->getThreatManager().getThreatList();

                if (threatlist.empty())
                    return;

                uint8 count = 0;

                for (auto itr = threatlist.begin(); itr != threatlist.end(); ++itr)
                    if (Unit* unit = ObjectAccessor::GetUnit(*me, (*itr)->getUnitGuid()))
                        if (unit->IsWithinDist(me, 100.0f))
                            count++;

                uint32 hp = me->GetMaxHealth() - me->GetHealth();
                uint32 newhp = std::min<uint32>((INCREMENTAL * count), MAX_HEALTH_POINTS);

                if (newhp != me->GetMaxHealth() && newhp > INITIAL_HEALTH_POINTS)
                {
                    me->SetMaxHealth(std::min<uint32>((me->GetMaxHealth() * count), MAX_HEALTH_POINTS));
                    me->SetHealth(newhp - hp);
                }
            }; 

            void UpdateAI(const uint32 diff)
            {
                events.Update(diff);

                if (me->HasUnitState(UNIT_STATE_CASTING))
                    return;

                switch (events.ExecuteEvent())
                {
                    case EVENT_SHAO_DO_INTRO:
                    {
                        Talk(SAY_INTRO);
                        events.ScheduleEvent(EVENT_SHAO_DO_INTRO_ATTACKABLE, CELESTIAL_COURT_BOSS_INTRO_TIMER_2);
                        break;
                    }
                    case EVENT_SHAO_DO_INTRO_ATTACKABLE:
                    {
                        me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PC);
                        break;
                    }
                    case EVENT_INSPIRING_SONG:
                    {
                        DoCastSelf(SPELL_INSPIRING_SONG);
                        events.ScheduleEvent(urand(EVENT_FIRESTORM, EVENT_INSPIRING_SONG), 8s, 12s);
                        break;
                    }
                    case EVENT_FIRESTORM:
                    {
                        if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 15.0f, true))
                            DoCast(target, SPELL_FIRESTORM_SUMMON);

                        events.ScheduleEvent(urand(EVENT_FIRESTORM, EVENT_INSPIRING_SONG), 8s, 12s);
                        break;
                    }
                    case EVENT_BEACON_OF_HOPE:
                    {
                        if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 15.0f, true))
                        {
                            DoCast(target, SPELL_BEACON_OF_HOPE_SUMMON, true);

                            DoCast(SPELL_BLAZING_SONG);
                            Talk(SAY_SPELL);
                        }
                        events.ScheduleEvent(EVENT_BEACON_OF_HOPE, 50s);
                        break;
                    }
                    case EVENT_HEALTH_66_PERCENT:
                    {
                        DoAction(ACTION_CHILDREN_OF_CHIJI_66);
                        break;
                    }
                    case EVENT_HEALTH_33_PERCENT:
                    {
                        DoAction(ACTION_CHILDREN_OF_CHIJI_33);
                        break;
                    }
                    case EVENT_SHAO_DO_OUTRO:
                    {
                        if (Creature* shao = me->FindNearestCreature(NPC_EMPEROR_SHAOHAO_TI, 300.0f, true))
                            shao->AI()->Talk(EMPEROR_TALK_OUTRO_CHIJI);
                        break;
                    }
                    case EVENT_DEATH:
                    {
                        if (death)
                        {
                            if (Creature* shao = me->FindNearestCreature(NPC_EMPEROR_SHAOHAO_TI, 300.0f, true))
                                shao->AI()->DoAction(ACTION_NIUZAO);

                            me->DisappearAndDie();
                            death = false;
                        }
                        break;
                    }
                    default:
                        break;
                }

                if (!death)
                    if (!UpdateVictim())
                        return;

                DoMeleeAttackIfReady();
            }

            private:
                bool _children66, _children33 = false;
                bool death = false;
                EventMap events;
        };

        CreatureAI* GetAI(Creature* creature) const override
        {
            return new boss_chi_ji_celestialAI(creature);
        }
};

class npc_child_of_chi_ji : public CreatureScript
{
    public:
        npc_child_of_chi_ji() : CreatureScript("npc_child_of_chi_ji") { }

        struct npc_child_of_chi_jiAI : public ScriptedAI
        {
            npc_child_of_chi_jiAI(Creature* creature) : ScriptedAI(creature) { }

            void Reset()
            {
                me->setActive(true);
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_PACIFIED);

                events.ScheduleEvent(CHILD_EVENT_RUN, 1s);
                DoCast(SPELL_BLAZING_NOVA_AURA);
                _runCount = 1;
            }

            void EnterCombat(Unit* target) override { }

            void MovementInform(uint32 type, uint32 point) override
            {
                if (type != POINT_MOTION_TYPE)
                    return;

                if (point == CHILD_MOVEMENT)
                {
                    if (_runCount > 3)
                        me->DisappearAndDie();
                    else
                        events.ScheduleEvent(CHILD_EVENT_RUN, 1s);
                }
            }

            void DoAction(const int32 action)
            {
                switch (action)
                {
                    case CHILD_ACTION_RUN_FORWARD:
                    {
                        Position pos;
                        float x, y;
                        GetPositionWithDistInOrientation(me, 15.0f, me->GetOrientation(), x, y);

                        if (MapManager::IsValidMapCoord(me->GetMapId(), x, y))
                        {
                            if (me->IsWithinLOS(x, y, me->GetPositionZ()))
                            {
                                ++_runCount;
                                pos.Relocate(x, y, me->GetPositionZ());
                                me->GetMotionMaster()->MovePoint(CHILD_MOVEMENT, pos);
                                return;
                            }
                        }

                        me->DisappearAndDie();
                        break;
                    }
                    default:
                        break;
                }
            };

            void UpdateAI(const uint32 diff)
            {
                events.Update(diff);

                switch (events.ExecuteEvent())
                {
                    case CHILD_EVENT_RUN:
                    {
                        DoAction(CHILD_ACTION_RUN_FORWARD);
                        break;
                    }
                    default: break;
                }
            }

            private:
                uint8 _runCount;
                EventMap events;
        };

        CreatureAI* GetAI(Creature* creature) const override
        {
            return new npc_child_of_chi_jiAI(creature);
        }
};

struct npc_chi_ji_firestorm : public ScriptedAI
{
    npc_chi_ji_firestorm(Creature* pCreature) : ScriptedAI(pCreature)
    {
        me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_IMMUNE_TO_PC);
        me->SetReactState(REACT_PASSIVE);
    }

    void Reset()
    {
        me->AddAura(SPELL_FIRESTORM_AURA, me);
    }

    void IsSummonedBy(Unit* owner)
    {
        me->GetMotionMaster()->MoveRandom(5.0f);
    }
};

struct npc_chi_ji_becon_of_hope : public Scripted_NoMovementAI
{
    npc_chi_ji_becon_of_hope(Creature* pCreature) : Scripted_NoMovementAI(pCreature)
    {
        me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_IMMUNE_TO_PC);
        me->SetReactState(REACT_PASSIVE);
    }

    void Reset()
    {
        me->AddAura(SPELL_BEACON_OF_HOPE_AURA, me);
    }

    void EnterEvadeMode(EvadeReason /*why*/) override { }
};

class spell_chi_ji_beacon_of_hope : public SpellScriptLoader
{
    public:
        spell_chi_ji_beacon_of_hope() : SpellScriptLoader("spell_chi_ji_beacon_of_hope") { }

        class spell_chi_ji_beacon_of_hope_Spellcript : public SpellScript
        {
            PrepareSpellScript(spell_chi_ji_beacon_of_hope_Spellcript);

            void DeselectNonPlayer(std::list<WorldObject*>& targets)
            {
                targets.remove(GetCaster());

                for (auto itr : targets)
                {
                    if (itr->GetTypeId() == TYPEID_UNIT)
                    {
                        if (itr->GetEntry() == BOSS_CHI_JI)
                        {
                            targets.remove(itr);
                            continue;
                        }

                        if (Creature* unit = ObjectAccessor::GetCreature(*GetCaster(), itr->ToUnit()->GetOwnerGUID()))
                            if (unit->GetEntry() == BOSS_CHI_JI || unit->GetEntry() == BOSS_CHI_JI)
                                targets.remove(itr);
                    }
                }
            }

            void Register()
            {
                OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_chi_ji_beacon_of_hope_Spellcript::DeselectNonPlayer, EFFECT_0, TARGET_UNIT_SRC_AREA_ENTRY);
            }
        };

        SpellScript* GetSpellScript() const override
        {
            return new spell_chi_ji_beacon_of_hope_Spellcript();
        }
};

void AddSC_boss_chi_ji()
{
    new boss_chi_ji_celestial();
    new npc_child_of_chi_ji();
    RegisterCreatureAI(npc_chi_ji_firestorm);
    RegisterCreatureAI(npc_chi_ji_becon_of_hope);
    new spell_chi_ji_beacon_of_hope();
}
