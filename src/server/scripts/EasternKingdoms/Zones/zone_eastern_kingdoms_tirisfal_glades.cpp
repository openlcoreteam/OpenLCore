/*
 * Copyright (C) 2008-2018 TrinityCore <https://www.trinitycore.org/>
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
#include "ScriptedGossip.h"

enum eTirisfalGlades
{
    SPELL_RAISE_UNDEAD           = 93446,
    SPELL_SUMMON_RISEN_DEAD      = 93447,
    SPELL_DIRT_EXPLOSION         = 89199,
    SPELL_CHURNING_DIRT          = 92788,
    SPELL_ENRAGE                 = 44427,
    SPELL_RISEN_DEAD_TRANSFORM   = 93460,

    RISEN_DEAD_PATH_01           = 5037400,
    RISEN_DEAD_PATH_02           = 5037401,

    NPC_ARADNE                   = 50372,
    NPC_RISEN_RECRUIT            = 50414,
    NPC_DEATHKNELL_GRAVE_TARGET  = 50373,

    RISEN_RECRUIT_PATH_01        = 5041400,
    RISEN_RECRUIT_PATH_02        = 5041401,

    QUEST_THE_SHADOW_GRAVE       = 28608,
    SPELL_SUMMON_DARNELL         = 91576,

    AREA_THE_DEATHKNELL_GRAVES   = 5692,
    AREA_SHADOW_GRAVE            = 2117,

    ITEM_THICK_EMBALMING_FLUID   = 64582,
    ITEM_CORPSE_STITCHING_TWINE  = 64581,
};

class npc_aradne : public CreatureScript
{
public:
    npc_aradne() : CreatureScript("npc_aradne") { }

    struct npc_aradneAI : public ScriptedAI
    {
        npc_aradneAI(Creature *c) : ScriptedAI(c) { }

        uint32 m_timer;
        uint32 m_phase;

        void Reset()
        {
            m_timer = 0;
            m_phase = 0;
        }

        void MovementInform(uint32 type, uint32 id) override
        {
            if (type == WAYPOINT_MOTION_TYPE)
            switch (id)
            {
                case 4:
                    m_phase = 1;
                    m_timer = 100;
                    break;
                case 12:
                    m_phase = 1;
                    m_timer = 100;
                    break;
                case 15:
                    m_phase = 1;
                    m_timer = 100;
                    break;
                case 20:
                    m_phase = 1;
                    m_timer = 100;
                    break;
                case 26:
                    m_phase = 1;
                    m_timer = 100;
                    break;
                case 31:
                    m_phase = 1;
                    m_timer = 100;
                    break;
                case 33:
                    m_phase = 1;
                    m_timer = 100;
                    break;
                case 37:
                    m_phase = 1;
                    m_timer = 100;
                    break;
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if (m_timer <= diff)
            {
                m_timer = 1000;
                DoWork();
            }
            else m_timer -= diff;
        }

        void DoWork()
        {
            switch (m_phase)
            {
                case 1:
                    if (Creature* npc = me->FindNearestCreature(NPC_DEATHKNELL_GRAVE_TARGET, 15.0f))
                        me->SetFacingToObject(npc);

                    m_timer = 500;
                    m_phase = 2;
                    break;
                case 2:
                    if (Creature* npc = me->FindNearestCreature(NPC_DEATHKNELL_GRAVE_TARGET, 15.0f))
                        me->CastSpell(npc, SPELL_RAISE_UNDEAD, false);

                    m_timer = 2000;
                    m_phase = 3;
                    break;
                case 3:
                    Talk(0);
                    m_timer = 500;
                    m_phase = 4;
                    break;
                default:
                    m_timer = 0;
                    m_phase = 0;
                    break;
            }
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_aradneAI(pCreature);
    }
};

class npc_deathknell_grave_target : public CreatureScript
{
public:
    npc_deathknell_grave_target() : CreatureScript("npc_deathknell_grave_target") { }

    struct npc_deathknell_grave_targetAI : public ScriptedAI
    {
        npc_deathknell_grave_targetAI(Creature *c) : ScriptedAI(c) { }

        uint32 m_timer;
        uint32 m_phase;

        void Reset()
        {
            m_timer = 0;
            m_phase = 0;
        }

        void SpellHit(Unit* caster, SpellInfo const* spell)
        {
            if (spell->Id == SPELL_RAISE_UNDEAD)
            {
                m_timer = 100;
                m_phase = 1;
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if (m_timer <= diff)
            {
                m_timer = 1000;
                DoWork();
            }
            else m_timer -= diff;
        }

        void DoWork()
        {
            switch (m_phase)
            {
                case 1:
                    DoCast(me, SPELL_DIRT_EXPLOSION);
                    DoCast(me, SPELL_CHURNING_DIRT);
                    m_phase = 2;
                    break;
                case 2:
                    me->CastSpell(me, SPELL_SUMMON_RISEN_DEAD, true);
                    m_phase = 3;
                    m_timer = 3000;
                    break;
                case 3:
                    me->RemoveAllAuras();
                    m_phase = 4;
                    break;
                case 4:
                    m_timer = 0;
                    m_phase = 0;
                    break;
            }
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_deathknell_grave_targetAI(pCreature);
    }
};

class npc_risen_dead : public CreatureScript
{
public:
    npc_risen_dead() : CreatureScript("npc_risen_dead") { }

    struct npc_risen_deadAI : public ScriptedAI
    {
        npc_risen_deadAI(Creature *c) : ScriptedAI(c) { }

        uint32 m_timer;
        uint32 m_phase;
        uint32 m_WishToBeDead;

        void Reset()
        {
            m_timer = 2000;
            m_phase = 0;
            m_WishToBeDead = urand(0, 100);
        }

        void UpdateAI(const uint32 diff)
        {
            if (m_timer <= diff)
            {
                m_timer = 1000;
                DoWork();
            }
            else m_timer -= diff;
        }

        void DoWork()
        {
            if (m_WishToBeDead < 33)
                ShowDead();
            else if (m_WishToBeDead < 66)
                ShowLife();
            else
                ShowRunning();
        }

        void ShowDead()
        {
            switch (m_phase)
            {
                case 0:
                    me->HandleEmoteCommand(EMOTE_ONESHOT_QUESTION);
                    m_timer = 200;
                    m_phase = 1;
                    break;
                case 1:
                    if (Creature* aradne = me->FindNearestCreature(NPC_ARADNE, 20.0f))
                        Talk(7, aradne);
                    m_timer = 5000;
                    m_phase = 2;
                    break;
                case 2:
                    Talk(2);
                    m_timer = 5000;
                    m_phase = 3;
                    break;
                case 3:
                    Talk(1);
                    me->Kill(me);
                    m_timer = 5000;
                    m_phase = 4;
                    break;
                case 4:
                    m_timer = 0;
                    m_phase = 5;
                    break;
            }
        }

        void ShowRunning()
        {
            switch (m_phase)
            {
                case 0:
                    me->HandleEmoteCommand(EMOTE_ONESHOT_QUESTION);
                    m_timer = 200;
                    m_phase = 1;
                    break;
                case 1:
                    Talk(0);
                    m_timer = 5000;
                    m_phase = 2;
                    break;
                case 2:
                    Talk(3);
                    m_timer = 5000;
                    m_phase = 3;
                    break;
                case 3:
                    Talk(6);
                    me->CastSpell(me, SPELL_ENRAGE, true);
                    Talk(8);
                    me->GetMotionMaster()->MovePath(RISEN_DEAD_PATH_01, false);
                    m_timer = 5000;
                    m_phase = 4;
                    break;
                case 4:
                    m_timer = 0;
                    m_phase = 5;
                    break;
            }
        }

        void ShowLife()
        {
            switch (m_phase)
            {
                case 0:
                    me->HandleEmoteCommand(EMOTE_ONESHOT_QUESTION);
                    m_timer = 200;
                    m_phase = 1;
                    break;
                case 1:
                    Talk(0);
                    m_timer = 5000;
                    m_phase = 2;
                    break;
                case 2:
                    Talk(5);
                    m_timer = 5000;
                    m_phase = 3;
                    break;
                case 3:
                    Talk(4);
                    SetEquipmentSlots(false, 10614, 1984);
                    me->GetMotionMaster()->MovePath(RISEN_DEAD_PATH_02, false);
                    m_timer = 20000;
                    m_phase = 4;
                    break;
                case 4:
                    m_timer = 0;
                    m_phase = 5;
                    break;
            }
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const override
    {
        return new npc_risen_deadAI(pCreature);
    }
};

class npc_undertaker_mordo : public CreatureScript
{
public:
    npc_undertaker_mordo() : CreatureScript("npc_undertaker_mordo") { }

    struct npc_undertaker_mordoAI : public ScriptedAI
    {
        npc_undertaker_mordoAI(Creature *c) : ScriptedAI(c) { }

        uint32 m_timer;
        uint32 m_phase;
        Creature* m_npc;

        void Reset()
        {
            m_timer = urand(30, 45) * IN_MILLISECONDS;
            m_phase = 0;
            m_npc = nullptr;
        }

        void UpdateAI(const uint32 diff)
        {
            if (m_timer <= diff)
            {
                m_timer = 1000;
                DoWork();
            }
            else m_timer -= diff;
        }

        void DoWork()
        {
            switch (m_phase)
            {
                case 0:
                    if (Creature* npc_trigger = me->FindNearestCreature(NPC_DEATHKNELL_GRAVE_TARGET, 20.0f))
                        if (m_npc = me->SummonCreature(NPC_RISEN_RECRUIT, npc_trigger->GetPositionX(), npc_trigger->GetPositionY(), npc_trigger->GetPositionZ(), 1.0f, TEMPSUMMON_TIMED_DESPAWN, 46000))
                            m_npc->GetMotionMaster()->MovePath(RISEN_RECRUIT_PATH_01, false);
                    m_phase = 1;
                    break;
                case 1:
                    Talk(0);
                    m_timer = 3000;
                    m_phase = 2;
                    break;
                case 2:
                    if (m_npc && m_npc->IsAlive())
                    {
                        m_npc->SetUInt32Value(UNIT_FIELD_BYTES_1, UNIT_STAND_STATE_KNEEL);
                        m_npc->SetFacingToObject(me);
                    }
                    m_timer = 750;
                    m_phase = 3;
                    break;
                case 3:
                    me->EmoteWithDelay(6000, EMOTE_STATE_USE_STANDING);
                    m_timer = 7000;
                    m_phase = 4;
                    break;
                case 4:
                    me->HandleEmoteCommand(EMOTE_ONESHOT_POINT);
                    m_timer = 2500;
                    m_phase = 5;
                    break;
                case 5:
                    Talk(1);
                    m_timer = 250;
                    m_phase = 6;
                    break;
                case 6:
                    if (m_npc && m_npc->IsAlive())
                    {
                        m_npc->AddAura(SPELL_RISEN_DEAD_TRANSFORM, m_npc);
                        m_npc->CastSpell(m_npc, SPELL_RISEN_DEAD_TRANSFORM);
                        m_npc->SetDisplayId(36775);
                        m_npc->SetUInt32Value(UNIT_FIELD_BYTES_1, UNIT_STAND_STATE_STAND);
                    }
                    m_timer = 2500;
                    m_phase = 7;
                    break;
                case 7:
                    if (m_npc && m_npc->IsAlive())
                    {
                        m_npc->HandleEmoteCommand(EMOTE_ONESHOT_TALK);
                        m_npc->AI()->Talk(0);
                    }
                    m_timer = 3750;
                    m_phase = 8;
                    break;
                case 8:
                    if (m_npc && m_npc->IsAlive())
                        m_npc->HandleEmoteCommand(EMOTE_ONESHOT_SALUTE);
                    m_timer = 2500;
                    m_phase = 9;
                    break;
                case 9:
                    if (m_npc && m_npc->IsAlive())
                        m_npc->GetMotionMaster()->MovePath(RISEN_RECRUIT_PATH_02, false);
                    m_timer = urand(15, 45) * IN_MILLISECONDS;
                    m_phase = 0;
                    break;
            }
        }

        /*void sQuestAccept(Player* player, Quest const* quest) override
        {
            if (quest->GetQuestId() == QUEST_THE_SHADOW_GRAVE)
                player->CastSpell(player, SPELL_SUMMON_DARNELL);
        }*/
    };

    CreatureAI* GetAI(Creature* pCreature) const override
    {
        return new npc_undertaker_mordoAI(pCreature);
    }
};

class npc_mindless_zombie : public CreatureScript
{
public:
    npc_mindless_zombie() : CreatureScript("npc_mindless_zombie") { }

    struct npc_mindless_zombieAI : public ScriptedAI
    {
        npc_mindless_zombieAI(Creature *c) : ScriptedAI(c) { }

        EventMap events;
        bool _crazed;

        void Reset()
        {
            me->RemoveAllAuras();
            _crazed = false;

            if (!_crazed && roll_chance_i(20))
            {
                _crazed = true;
                events.ScheduleEvent(1, 28s, 57s);
            }
        }

        void UpdateAI(const uint32 diff)
        {
            events.Update(diff);

            if (!me->IsInCombat())
            {
                if (Player* player = me->SelectNearestPlayer(15.0f))
                {
                    if (!player->IsInCombat())
                    {
                        while (uint32 eventId = events.ExecuteEvent())
                        {
                            switch (eventId)
                            {
                                case 1:
                                {
                                    me->SetFacingToObject(player);
                                    me->CastSpell(me, SPELL_ENRAGE, true);
                                    me->SetWalk(false);
                                    me->GetMotionMaster()->MoveFollow(player, 1.0f, 0.0f);
                                    events.ScheduleEvent(2, 4s, 6s);
                                    break;
                                }
                                case 2:
                                {
                                    me->GetMotionMaster()->Clear();
                                    me->RemoveAllAuras();
                                    break;
                                }
                            }
                        }
                    }
                }
            }

            DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const override
    {
        return new npc_mindless_zombieAI(pCreature);
    }
};

class npc_darnell : public CreatureScript
{
public:
    npc_darnell() : CreatureScript("npc_darnell") { }

    bool OnGossipHello(Player* player, Creature* creature)
    {
        CloseGossipMenuFor(player);
        player->KilledMonsterCredit(creature->GetEntry());
        return true;
    }

    enum ePlaceDescription
    {
        Unknown = 0,
        Outsite,
        Entrance,
        Stairs1,
        Stairs2,
        Ground,
    };

    struct npc_darnellAI : public ScriptedAI
    {
        npc_darnellAI(Creature *c) : ScriptedAI(c) { }

        void Reset()
        {
            m_timer = urand(30, 45) * IN_MILLISECONDS;
            m_phase = 0;
            m_modus = 0;

            if (Unit* npc = me->GetCharmerOrOwner())
            {
                if (m_player = npc->ToPlayer())
                {
                    if (m_player->GetQuestStatus(QUEST_THE_SHADOW_GRAVE) == QUEST_STATUS_INCOMPLETE)
                    {
                        m_modus = 1;
                        m_phase = 1;
                        m_timer = 1000;
                        m_counter = 0;
                        m_path = 0;
                        m_FoundGround = false;
                        m_ItemsFound = false;
                        m_OldPosition = m_player->GetPositionAlternate();
                        m_player_pos = m_player->GetPositionAlternate();
                        m_player_area = m_player->GetAreaId();
                        Talk(0, m_player);
                    }
                }
            }
        }

        void MovementInform(uint32 type, uint32 id) override
        {
            if (!CheckPlayerValid())
                return;

            if (type == POINT_MOTION_TYPE)
                m_arrived = true;
        }

        void MoveInLineOfSight(Unit* who) override
        {
            if (who->GetGUID() != m_player->GetGUID())
                return;

            m_player_pos = who->GetPositionAlternate();
            m_player_area = who->GetAreaId();

            if (m_modus == 1 && me->GetMotionMaster()->GetCurrentMovementGeneratorType() != FOLLOW_MOTION_TYPE)
                if (m_arrived)
                    if (me->GetDistance(m_player) < 4.0f)
                        me->GetMotionMaster()->MoveFollow(m_player, 0.0f, 0.0f);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!CheckPlayerValid())
                return;

            if (m_timer <= diff)
            {
                m_timer = 1000;
                DoWork();
            }
            else m_timer -= diff;
        }

        void DoWork()
        {
            if (m_FoundGround)
            {
                SearchOnGround();
                return;
            }

            switch (GetPlaceDescription())
            {
                case ePlaceDescription::Outsite:
                    InviteToFollow();
                    break;
                case ePlaceDescription::Entrance:
                    InviteToFollowDeeper1();
                    break;
                case ePlaceDescription::Stairs1:
                    InviteToFollowDeeper2();
                    break;
                case ePlaceDescription::Stairs2:
                    InviteToFollowToGround();
                    break;
                case ePlaceDescription::Ground:
                    SearchOnGround();
                    break;
            }
        }

        void InviteToFollow()
        {
            m_counter++;
            if (GetMovedPlayerDistance() > 1.0f)
                m_counter = 0;

            if (m_counter >= 10)
            {
                Talk(1, m_player);
                me->GetMotionMaster()->MovePoint(1, 1665.368896f, 1662.722656f, 141.850983f);
                m_path = 1;
                m_arrived = false;
                m_counter = 0;
            }
        }

        void InviteToFollowDeeper1()
        {
            m_counter++;
            if (GetMovedPlayerDistance() > 1.0f)
                m_counter = 0;

            if (m_counter >= 10)
            {
                Talk(2);
                me->GetMotionMaster()->MovePoint(2, 1642.761963f, 1662.547729f, 132.477753f);
                m_path = 2;
                m_arrived = false;
                m_counter = 0;
            }
        }

        void InviteToFollowDeeper2()
        {
            m_counter++;
            if (GetMovedPlayerDistance() > 1.0f)
                m_counter = 0;

            if (m_counter >= 10)
            {
                Talk(2);
                me->GetMotionMaster()->MovePoint(3, 1642.498779f, 1677.809937f, 126.932129f);
                m_path = 3;
                m_arrived = false;
                m_counter = 0;
            }
        }

        void InviteToFollowToGround()
        {
            m_counter++;
            if (GetMovedPlayerDistance() > 1.0f)
                m_counter = 0;

            if (m_counter >= 10)
            {
                Talk(2);
                me->GetMotionMaster()->MovePoint(4, 1656.714478f, 1678.538330f, 120.718788f);
                m_path = 4;
                m_arrived = false;
                m_counter = 0;
            }
        }

        void SearchOnGround()
        {
            if (CheckPlayerFoundItems())
            {
                if (m_ItemsFound == false)
                {
                    m_ItemsFound = true;
                    Talk(9);
                    m_timer = 10000;
                    return;
                }
                else
                    me->DespawnOrUnsummon();
                    return;
            }

            switch (m_modus)
            {
                case 2:
                    MoveToCenter();
                    break;
                case 3:
                    MoveToRandomCorner();
                    break;
                case 4:
                    SearchingOnCorner();
                    break;
                case 5:
                    break;
                default:
                    m_modus = 2;
                    break;
            }
        }

        void MoveToCenter()
        {
            if (m_path != 8)
            {
                me->GetMotionMaster()->MovePoint(8, 1664.128052f, 1679.201294f, 120.530205f);
                m_arrived = false;
                m_path = 8;
            }
            else if (m_arrived == false) { }
            else
            {
                m_modus = 3;
            }
        }

        void MoveToRandomCorner()
        {
            if (m_path == 8)
            {
                switch (urand(1, 4))
                {
                    case 1:
                        me->GetMotionMaster()->MovePoint(4, 1663.849609f, 1694.495239f, 120.719284f);
                        m_arrived = false;
                        m_path = 4;
                        break;
                    case 2:
                        me->GetMotionMaster()->MovePoint(5, 1672.939331f, 1668.029541f, 120.719307f);
                        m_arrived = false;
                        m_path = 5;
                        break;
                    case 3:
                        me->GetMotionMaster()->MovePoint(6, 1656.963379f, 1667.456299f, 120.719093f);
                        m_arrived = false;
                        m_path = 6;
                        break;
                    case 4:
                        me->GetMotionMaster()->MovePoint(7, 1656.098999f, 1688.312866f, 120.719093f);
                        m_arrived = false;
                        m_path = 7;
                        break;
                }
            }
            else if (m_arrived == false) { }
            else
            {
                m_modus = 4;
            }
        }

        void SearchingOnCorner()
        {
            Talk(urand(3, 8), m_player);
            m_timer = 6000;
            m_modus = 2;
        }

        bool CheckPlayerFoundItems()
        {
            if (m_player->HasItemCount(ITEM_THICK_EMBALMING_FLUID) && m_player->HasItemCount(ITEM_CORPSE_STITCHING_TWINE))
                return true;

            return false;
        }

        bool CheckPlayerValid()
        {
            if (!m_player->IsInWorld() ||
                m_player->isDead() ||
                m_player->GetQuestStatus(QUEST_THE_SHADOW_GRAVE) != QUEST_STATUS_INCOMPLETE ||
                (m_player->GetAreaId() != AREA_THE_DEATHKNELL_GRAVES && m_player->GetAreaId() != AREA_SHADOW_GRAVE))
            {
                me->DespawnOrUnsummon();
                return false;
            }

            return true;
        }

        ePlaceDescription GetPlaceDescription()
        {
            switch (m_player_area)
            {
                case AREA_THE_DEATHKNELL_GRAVES:
                    return ePlaceDescription::Outsite;
                case AREA_SHADOW_GRAVE:
                {
                    if (m_player_pos.GetPositionZ() < 123.0)
                    {
                        m_FoundGround = true;
                        return ePlaceDescription::Ground;
                    }

                    if (m_player_pos.GetPositionZ() < 127.0)
                        return ePlaceDescription::Stairs2;

                    if (m_player_pos.GetPositionZ() < 133.0)
                        return ePlaceDescription::Stairs1;

                    return ePlaceDescription::Entrance;
                }
                default:
                    return ePlaceDescription::Unknown;
            }
        }

        float GetMovedPlayerDistance()
        {
            float dist = m_player->GetDistance(m_OldPosition);
            m_OldPosition = m_player->GetPositionAlternate();
            return dist;
        }

    private:
        bool m_arrived;
        uint32 m_counter;
        Position m_OldPosition;
        Position m_player_pos;
        uint32 m_player_area;
        uint8 m_path;
        uint8 m_modus;
        uint32 m_timer;
        uint32 m_phase;
        Player* m_player;
        bool m_FoundGround;
        bool m_ItemsFound;
    };

    CreatureAI* GetAI(Creature* pCreature) const override
    {
        return new npc_darnellAI(pCreature);
    }
};

void AddSC_tirisfal_glades()
{
    new npc_aradne();
    new npc_deathknell_grave_target();
    new npc_risen_dead();
    new npc_undertaker_mordo();
    new npc_mindless_zombie();
    new npc_darnell();
}
