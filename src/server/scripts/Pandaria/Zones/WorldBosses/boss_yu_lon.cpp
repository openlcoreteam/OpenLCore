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
#include "../../scripts/Pandaria/Zones/zone_pandaria_timeless_isle.h"

#define INITIAL_HEALTH_POINTS 92300000
#define MAX_HEALTH_POINTS 371000000
#define INCREMENTAL 3000000
#define WALLS_MAX 6
#define WALLS_Y_M 145

enum YuLonSpells
{
    SPELL_JADEFIRE_BREATH                   = 144530,

    SPELL_JADEFLAME_BUFFET                  = 144630,

    SPELL_JADEFIRE_BOLT_SUMMON              = 144541,
    SPELL_JADEFIRE_BOLT_AOE                 = 144545,
    SPELL_JADEFIRE_BOLT_MISSILE             = 144532,

    SPELL_JADEFIRE_BLAZE_AURA               = 144537,
    SPELL_JADEFIRE_BLAZE_DMG                = 144538,

    SPELL_JADEFIRE_WALL_VISUAL              = 144533,
    SPELL_JADEFIRE_WALL_DMG                 = 144539
};

enum YuLonEvents
{
    EVENT_TIMER_HEALTH_POOL                 = 1,
    EVENT_TIMER_JADE_BREATH                 = 2,
    EVENT_TIMER_JADEFIRE_WALL               = 3,
    EVENT_TIMER_JADEFIRE_BOLT               = 4,
    EVENT_TIMER_JADEFLAME_BUFFET            = 5,
    EVENT_TIMER_SHAO_DO_INTRO               = 6,
    EVENT_TIMER_SHAO_DO_INTRO_ATTACKABLE    = 7,
    EVENT_TIMER_SHAO_DO_OUTRO               = 8,
    EVENT_TIMER_DEATH                       = 9
};

enum YuLonCreatures
{
    NPC_JADEFIRE_WALL                       = 72020,
    NPC_JADEFIRE_BLAZE                      = 72016
};

enum YuLonTexts
{
    SAY_AGGRO                               = 0,
    SAY_INTRO                               = 1,
    SAY_DEATH                               = 2,
    SAY_KILL                                = 3,
    SAY_WALL                                = 4,
    SAY_WALL_2                              = 5,
    SAY_WALL_3                              = 6,
    SAY_WALL_ANN                            = 7
};

enum YuLonActions
{
    ACTION_JADEFIRE_WALL                    = 1,
    ACTION_JADEFIRE_BLAZE                   = 2
};

enum wallEvent
{
    WALL_EVENT_TIMER_DESPAWN                = 1,
    WALL_EVENT_TIMER_GO                     = 2,
    WALL_EVENT_TIMER_DAMAGE                 = 3
};

enum wallAction
{
    WALL_ACTION_GO                          = 1,
    WALL_ACTION_RETURN                      = 2
};

enum wallMovement
{
    WALL_MOVEMENT_FORWARD                   = 1
};

Position wallStartPos = { -561.17f, -5091.70f, -6.277f, MIDDLE_FACING_ANGLE };

class PlayerCheck
{
public:
    bool operator()(Unit* target) const
    {
        return !target->ToPlayer();
    }
};

class boss_yu_lon_celestial : public CreatureScript
{
    public:
        boss_yu_lon_celestial() : CreatureScript("boss_yu_lon_celestial") { }

        struct boss_yu_lon_celestialAI : public BossAI
        {
            boss_yu_lon_celestialAI(Creature* creature) : BossAI(creature, BOSS_YU_LON) { }

            void Reset()
            {
                events.Reset();
                _Reset();

                for (auto itr : _wallList)
                    itr->AI()->DoAction(WALL_ACTION_RETURN);

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
                death = false;
                me->SetWalk(false);
                Talk(SAY_AGGRO);
                events.ScheduleEvent(EVENT_TIMER_HEALTH_POOL, 10s);
                events.ScheduleEvent(EVENT_TIMER_JADE_BREATH, 6s);
                events.ScheduleEvent(EVENT_TIMER_JADEFIRE_WALL, 40s);
                events.ScheduleEvent(EVENT_TIMER_JADEFIRE_BOLT, 15s);
                events.ScheduleEvent(EVENT_TIMER_JADEFLAME_BUFFET, 30s);
            }

            void DamageTaken(Unit* caster, uint32 &dmg) override
            {
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
                    events.ScheduleEvent(EVENT_TIMER_SHAO_DO_OUTRO, 20s);
                    events.ScheduleEvent(EVENT_TIMER_DEATH, 13s);
                    death = true;
                }
            }

            void MovementInform(uint32 type, uint32 point) override
            {
                if (type != POINT_MOTION_TYPE)
                    return;

                if (point == 1)
                {
                    events.ScheduleEvent(EVENT_TIMER_SHAO_DO_INTRO, CELESTIAL_COURT_BOSS_INTRO_TIMER_1);
                    me->SetFacingTo(MIDDLE_FACING_ANGLE);
                    me->setFaction(FACTION_HOSTILE_NEUTRAL);
                    me->GetCreatureListWithEntryInGrid(_wallList, NPC_JADEFIRE_WALL, 250.0f);
                    me->SetHomePosition(_timelessIsleMiddle);
                    me->SetMaxHealth(INITIAL_HEALTH_POINTS);
                    me->SetHealth(me->GetMaxHealth());
                }
            }

            void KilledUnit(Unit* who) override
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

            void DoAction(const int32 id) override
            {
                switch (id)
                {
                    case ACTION_JADEFIRE_WALL:
                    {
                        uint8 _random = urand(0, WALLS_MAX-1);
                        uint8 _count = 0;

                        for (auto wall : _wallList)
                        {
                            wall->SetFacingTo(MIDDLE_FACING_ANGLE);

                            if (_count != _random)
                                wall->AddAura(SPELL_JADEFIRE_WALL_VISUAL, wall);

                            wall->AI()->DoAction(WALL_ACTION_GO);
                            _count++;
                        }

                        Talk(urand(SAY_WALL, SAY_WALL_3));
                        break;
                    }
                    case ACTION_JADEFIRE_BLAZE:
                    {
                        std::list<Unit*> _targets;
                        me->GetAttackableUnitListInRange(_targets, 50.0f);
                        _targets.remove_if(PlayerCheck());

                        if (!_targets.empty())
                            if (auto target = Trinity::Containers::SelectRandomContainerElement(_targets))
                                if (target->GetTypeId() == TYPEID_PLAYER)
                                    me->CastSpell(target, SPELL_JADEFIRE_BOLT_MISSILE, true);
                        break;
                    }
                    default: break;
                }
            };

            void UpdateAI(const uint32 diff)
            {
                events.Update(diff);

                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_TIMER_SHAO_DO_INTRO:
                        {
                            Talk(SAY_INTRO);
                            events.ScheduleEvent(EVENT_TIMER_SHAO_DO_INTRO_ATTACKABLE, CELESTIAL_COURT_BOSS_INTRO_TIMER_2);
                            break;
                        }
                        case EVENT_TIMER_SHAO_DO_INTRO_ATTACKABLE:
                        {
                            me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PC);
                            break;
                        }
                        case EVENT_TIMER_JADEFLAME_BUFFET:
                        {
                            DoCastToAllHostilePlayers(SPELL_JADEFLAME_BUFFET);
                            events.ScheduleEvent(EVENT_TIMER_JADEFLAME_BUFFET, 30s);
                            break;
                        }
                        case EVENT_TIMER_JADEFIRE_BOLT:
                        {
                            if (me->HasUnitState(UNIT_STATE_CASTING))
                            {
                                events.ScheduleEvent(EVENT_TIMER_JADEFIRE_BOLT, 1s + 500ms);
                                return;
                            }

                            DoAction(ACTION_JADEFIRE_BLAZE);
                            events.ScheduleEvent(EVENT_TIMER_JADEFIRE_BOLT, 15s);
                            break;
                        }
                        case EVENT_TIMER_JADEFIRE_WALL:
                        {
                            DoAction(ACTION_JADEFIRE_WALL);
                            events.ScheduleEvent(EVENT_TIMER_JADEFIRE_WALL, 60s);
                            break;
                        }
                        case EVENT_TIMER_JADE_BREATH:
                        {
                            if (me->HasUnitState(UNIT_STATE_CASTING))
                                return;

                            DoCast(SPELL_JADEFIRE_BREATH);
                            events.ScheduleEvent(EVENT_TIMER_JADE_BREATH, 10s);
                            break;
                        }
                        case EVENT_TIMER_SHAO_DO_OUTRO:
                        {
                            if (Creature* shao = me->FindNearestCreature(NPC_EMPEROR_SHAOHAO_TI, 300.0f, true))
                                shao->AI()->Talk(EMPEROR_TALK_OUTRO_CHIJI);
                            break;
                        }
                        case EVENT_TIMER_DEATH:
                        {
                            if (death)
                            {
                                if (Creature* shao = me->FindNearestCreature(NPC_EMPEROR_SHAOHAO_TI, 300.0f, true))
                                    shao->AI()->DoAction(ACTION_XUEN);

                                me->DisappearAndDie();
                                death = false;
                            }
                            break;
                        }
                        case EVENT_TIMER_HEALTH_POOL:
                        {
                            UpdateHealth();
                            events.ScheduleEvent(EVENT_TIMER_HEALTH_POOL, 10s);
                            break;
                        }
                        default:
                            break;
                    }
                }

                if (!death)
                {
                    if (!UpdateVictim())
                        return;
                }

                DoMeleeAttackIfReady();
            }

            private:
                bool death = false;
                EventMap events;
                std::list<Creature*> _wallList;
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_yu_lon_celestialAI(creature);
        }
};

struct npc_jadefire_wall : public ScriptedAI
{
    npc_jadefire_wall(Creature* creature) : ScriptedAI(creature) { }

    void Reset()
    {
        me->setActive(true);
        me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_PACIFIED);
    }

    void EnterCombat(Unit* target) override { }

    void MovementInform(uint32 type, uint32 point) override
    {
        if (type != POINT_MOTION_TYPE)
            return;

        if (point == WALL_MOVEMENT_FORWARD)
            DoAction(WALL_ACTION_RETURN);
    }

    void DoAction(const int32 action) override
    {
        switch (action)
        {
            case WALL_ACTION_GO:
            {
                events.ScheduleEvent(WALL_EVENT_TIMER_GO, 1s + 500ms);
                break;
            }
            case WALL_ACTION_RETURN:
            {
                events.ScheduleEvent(WALL_EVENT_TIMER_DESPAWN, 5s);
                hitPlayers.clear();
                me->RemoveAura(SPELL_JADEFIRE_WALL_VISUAL);
                shouldTele = true;
                break;
            }
            default:
                break;
        };
    };

    void UpdateAI(const uint32 diff)
    {
        events.Update(diff);

        switch (events.ExecuteEvent())
        {
            case WALL_EVENT_TIMER_GO:
            {
                me->GetMotionMaster()->MovePoint(WALL_MOVEMENT_FORWARD, me->GetPositionX(), me->GetPositionY() + WALLS_Y_M, me->GetPositionZ());
                events.ScheduleEvent(WALL_EVENT_TIMER_DAMAGE, 500ms);
                break;
            }
            case WALL_EVENT_TIMER_DESPAWN:
            {
                if (!shouldTele)
                    return;

                Position home = me->GetHomePosition();
                me->NearTeleportTo(home.GetPositionX(), home.GetPositionY(), home.GetPositionZ(), home.GetOrientation());
                shouldTele = false;
                break;
            }
            case WALL_EVENT_TIMER_DAMAGE:
            {
                if (!me->HasAura(SPELL_JADEFIRE_WALL_VISUAL))
                    return;

                std::list<Player*> plrs;
                me->GetPlayerListInGrid(plrs, 15.0f);
                for (auto plr : hitPlayers)
                    plrs.remove(plr);

                for (auto plr : plrs)
                {
                    if (!plr->isInFront(me))
                        continue;

                    plr->CastSpell(plr, SPELL_JADEFIRE_WALL_DMG, true, NULL, NULL, me->GetGUID());
                    hitPlayers.push_back(plr);
                }

                events.ScheduleEvent(WALL_EVENT_TIMER_DAMAGE, 500ms);
            }
            default: break;
        }
    }

    private:
        bool shouldTele = false;
        EventMap events;
        std::list<Player*> hitPlayers;
};

void AddSC_boss_yu_lon()
{
    new boss_yu_lon_celestial();
    RegisterCreatureAI(npc_jadefire_wall);
}
