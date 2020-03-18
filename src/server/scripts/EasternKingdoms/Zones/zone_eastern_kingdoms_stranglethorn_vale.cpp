/*
 * Copyright (C) 2008-2018 TrinityCore <https://www.trinitycore.org/>
 * Copyright (C) 2006-2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
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

/* ScriptData
SDName: Stranglethorn_Vale
SD%Complete: 100
SDComment: Quest support: 592
SDCategory: Stranglethorn Vale
EndScriptData */

/* ContentData
npc_yenniku
EndContentData */

#include "GameObjectAI.h"
#include "GameObject.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "Player.h"
#include "SpellInfo.h"

/*######
## npc_yenniku
######*/

enum Yenniku
{
    SPELL_YENNIKUS_RELEASE   = 3607,
    QUEST_SAVING_YENNIKU     = 592,
    FACTION_HORDE_GENERIC    = 83,
    FACTION_TROLL_BLOODSCALP = 28
};

enum eStrangleThorn
{
    NPC_ZANZIL_THE_OUTCAST = 43245,
    NPC_SHADE_OF_THE_HEXER = 43246, // Jin'do

    SPELL_WINGS_OF_HIREEK = 80789,                          // (28) Summon (43241) (90) Kill Credit(43252)
    SPELL_FORCE_SUMON_WINGS_OF_HIREEK_AND_CREDIT = 80814,   // (77) Script Effect Value: 80789  (134) Kill Credit 2 (43252) 
    SPELL_BD_RIDE_BAT = 80791,                              // (6) Apply Aura #236: Control Vehicle 
    SPELL_BD_FORCECAST_SUMMON_TROLLS = 80813,               // (140) Force Cast (Summon Zanzil (43245) (64) Trigger Spell (Summon Jin'do))
    SPELL_BD_REVERSE_CAST_RIDE_BAT = 80792,                 // (77) Script Effect  Value: 80791
    SPELL_BD_WINGS_OF_HIREEK_COSMETIC_1 = 80802,
    SPELL_BD_WINGS_OF_HIREEK_COSMETIC_2 = 80805,

    PLAYER_GUID = 99991,
    EVENT_MASTER_RESET = 101,
    EVENT_TALK_PART_00,
    EVENT_TALK_PART_01,
    EVENT_TALK_PART_02,
    EVENT_TALK_PART_03,
    EVENT_TALK_PART_04,
    EVENT_TALK_PART_05,
    EVENT_TALK_PART_06,
    EVENT_TALK_PART_07,
    EVENT_TALK_PART_08,
    EVENT_TALK_PART_09,
    EVENT_TALK_PART_10,
    EVENT_START_ANIM,
    EVENT_END_ANIM,
};

class npc_yenniku : public CreatureScript
{
public:
    npc_yenniku() : CreatureScript("npc_yenniku") { }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_yennikuAI(creature);
    }

    struct npc_yennikuAI : public ScriptedAI
    {
        npc_yennikuAI(Creature* creature) : ScriptedAI(creature)
        {
            Initialize();
            bReset = false;
        }

        void Initialize()
        {
            Reset_Timer = 0;
        }

        uint32 Reset_Timer;
        bool bReset;

        void Reset() override
        {
            Initialize();
            me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_NONE);
        }

        void SpellHit(Unit* caster, const SpellInfo* spell) override
        {
            if (bReset || spell->Id != SPELL_YENNIKUS_RELEASE)
                return;

            if (Player* player = caster->ToPlayer())
            {
                if (player->GetQuestStatus(QUEST_SAVING_YENNIKU) == QUEST_STATUS_INCOMPLETE) // Yenniku's Release
                {
                    me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_STUN);
                    me->CombatStop();                      // stop combat
                    me->DeleteThreatList();                // unsure of this
                    me->setFaction(FACTION_HORDE_GENERIC); // horde generic

                    bReset = true;
                    Reset_Timer = 60000;
                }
            }
        }

        void EnterCombat(Unit* /*who*/) override { }

        void UpdateAI(uint32 diff) override
        {
            if (bReset)
            {
                if (Reset_Timer <= diff)
                {
                    EnterEvadeMode();
                    bReset = false;
                    me->setFaction(FACTION_TROLL_BLOODSCALP); // troll, bloodscalp
                    return;
                }

                Reset_Timer -= diff;

                if (me->IsInCombat() && me->GetVictim())
                {
                    if (Player* player = me->EnsureVictim()->ToPlayer())
                    {
                        if (player->GetTeam() == HORDE)
                        {
                            me->CombatStop();
                            me->DeleteThreatList();
                        }
                    }
                }
             }

            //Return since we have no target
            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

// 204361
class go_totem_of_hireek_204361 : public GameObjectScript
{
public:
    go_totem_of_hireek_204361() : GameObjectScript("go_totem_of_hireek_204361") { }

    bool OnGossipSelect(Player* player, GameObject* go, uint32 sender, uint32 action) override
    {
        if (player->GetQuestStatus(26550) == QUEST_STATUS_INCOMPLETE || player->GetQuestStatus(26809) == QUEST_STATUS_INCOMPLETE)
        {
            player->CastSpell(player, SPELL_WINGS_OF_HIREEK, true);
            return true;
        }

        return false;
    }
};

// 43241
/* class npc_wings_of_hireek_43241 : public CreatureScript
{
public:
    npc_wings_of_hireek_43241() : CreatureScript("npc_wings_of_hireek_43241") { }

    enum eNPC
    {
    };

    struct npc_wings_of_hireek_43241AI : public ScriptedAI
    {
        npc_wings_of_hireek_43241AI(Creature* creature) : ScriptedAI(creature) { Initialize(); }

        EventMap m_events;
        uint64   m_playerGUID;
        uint64   m_jindoGUID;
        uint64   m_zanzilGUID;
        Position pos;

        void Initialize()
        {
            m_playerGUID = 0;
            m_jindoGUID = 0;
            m_zanzilGUID = 0;
        }

        void Reset() override
        {
        }

        void IsSummonedBy(Unit* summoner) override 
        { 
            if (Player* player = summoner->ToPlayer())
            {
                pos = player->GetPosition();
                m_playerGUID = player->GetGUID();
                player->CastSpell(me, SPELL_BD_RIDE_BAT, true);
                me->GetMotionMaster()->MovePath(4324101, false);
            }
        }

        void MovementInform(uint32 type, uint32 id) override 
        { 
            if (type == WAYPOINT_MOTION_TYPE)
                switch (id)
                {
                case 14:
                    m_events.ScheduleEvent(EVENT_START_ANIM, 100);
                    break;
                }
        }

        void UpdateAI(uint32 diff) override
        {
            m_events.Update(diff);

            while (uint32 eventId = m_events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_START_ANIM:
                    me->CastSpell(me, SPELL_BD_FORCECAST_SUMMON_TROLLS);
                    m_events.ScheduleEvent(EVENT_TALK_PART_00, 2000);
                    break;
                case EVENT_TALK_PART_00:
                    if (!m_zanzilGUID)
                        if (Creature* zanzil = me->FindNearestCreature(NPC_ZANZIL_THE_OUTCAST, 25.0f))
                            m_zanzilGUID = zanzil->GetGUID();
                    if (!m_jindoGUID)
                        if (Creature* jindo = me->FindNearestCreature(NPC_SHADE_OF_THE_HEXER, 40.0f))
                        {
                            m_jindoGUID = jindo->GetGUID();
                            jindo->GetMotionMaster()->MovePoint(1024, -13665.07f, -307.34f, 8.176f);
                        }

                    if (Creature* zanzil = ObjectAccessor::GetCreature(*me, m_zanzilGUID))
                        zanzil->AI()->Talk(1);
                    m_events.ScheduleEvent(EVENT_TALK_PART_01, 6000);
                    break;
                case EVENT_TALK_PART_01:
                    if (Creature* zanzil = ObjectAccessor::GetCreature(*me, m_zanzilGUID))
                        zanzil->AI()->Talk(2);
                    m_events.ScheduleEvent(EVENT_TALK_PART_02, 6000);
                    break;
                case EVENT_TALK_PART_02:
                    if (Creature* zanzil = ObjectAccessor::GetCreature(*me, m_zanzilGUID))
                        if (Creature* jindo = ObjectAccessor::GetCreature(*me, m_jindoGUID))
                        {
                            jindo->SetFacingToObject(zanzil);
                            jindo->AI()->Talk(1);
                        }
                    m_events.ScheduleEvent(EVENT_TALK_PART_03, 6000);
                    break;
                case EVENT_TALK_PART_03:
                    if (Creature* jindo = ObjectAccessor::GetCreature(*me, m_jindoGUID))
                        jindo->AI()->Talk(2);
                    m_events.ScheduleEvent(EVENT_TALK_PART_04, 6000);
                    break;
                case EVENT_TALK_PART_04:
                    if (Creature* zanzil = ObjectAccessor::GetCreature(*me, m_zanzilGUID))
                        zanzil->AI()->Talk(3);
                    m_events.ScheduleEvent(EVENT_TALK_PART_05, 6000);
                    break;
                case EVENT_TALK_PART_05:
                    if (Creature* jindo = ObjectAccessor::GetCreature(*me, m_jindoGUID))
                        jindo->AI()->Talk(3);
                    m_events.ScheduleEvent(EVENT_TALK_PART_06, 6000);
                    break;
                case EVENT_TALK_PART_06:
                    if (Creature* jindo = ObjectAccessor::GetCreature(*me, m_jindoGUID))
                        jindo->AI()->Talk(4);
                    m_events.ScheduleEvent(EVENT_TALK_PART_07, 6000);
                    break;
                case EVENT_TALK_PART_07:
                    if (Creature* zanzil = ObjectAccessor::GetCreature(*me, m_zanzilGUID))
                        zanzil->AI()->Talk(4);
                    m_events.ScheduleEvent(EVENT_TALK_PART_08, 6000);
                    break;
                case EVENT_TALK_PART_08:
                    if (Creature* zanzil = ObjectAccessor::GetCreature(*me, m_zanzilGUID))
                        zanzil->AI()->Talk(5);
                    if (Player* player = ObjectAccessor::GetPlayer(*me, m_playerGUID))
                        player->KilledMonsterCredit(43245);
                    m_events.ScheduleEvent(EVENT_TALK_PART_09, 3000);
                    break;
                case EVENT_TALK_PART_09:
                    if (Player* player = ObjectAccessor::GetPlayer(*me, m_playerGUID))
                        player->CastSpell(player, SPELL_BD_REVERSE_CAST_RIDE_BAT, true);
                    m_events.ScheduleEvent(EVENT_TALK_PART_10, 3000);
                    break;
                case EVENT_TALK_PART_10:
                    if (Creature* zanzil = ObjectAccessor::GetCreature(*me, m_zanzilGUID))
                        zanzil->DespawnOrUnsummon(100);
                    if (Creature* jindo = ObjectAccessor::GetCreature(*me, m_jindoGUID))
                        jindo->DespawnOrUnsummon(100);
                    m_events.ScheduleEvent(EVENT_END_ANIM, 100);
                    break;
                case EVENT_END_ANIM:
                    if (Player* player = ObjectAccessor::GetPlayer(*me, m_playerGUID))
                        player->NearTeleportTo(pos.m_positionX, pos.m_positionY, pos.m_positionZ, pos.m_orientation);
                    me->DespawnOrUnsummon(10);
                    break;
                }
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_wings_of_hireek_43241AI(creature);
    }
}; */

void AddSC_stranglethorn_vale()
{
    new npc_yenniku();
    new go_totem_of_hireek_204361();
   // new npc_wings_of_hireek_43241();
}
