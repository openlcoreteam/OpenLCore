/*
 * Copyright (C) 2017-2018 AshamaneProject <https://github.com/AshamaneProject>
 * Copyright (C) 2008-2017 TrinityCore <http://www.trinitycore.org/>
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
#include "Player.h"
#include "Creature.h"
#include "GameObject.h"
#include "SceneMgr.h"
#include "ScriptedGossip.h"
#include "PhasingHandler.h"
#include "Log.h"
#include "ObjectMgr.h"
#include "Spell.h"

enum
{
	QUEST_THE_DREAMWAY = 40644,
	QUEST_TO_THE_DREAMGROVE = 40645,
	SPELL_DRUID_ORDER_FORMATION = 204538,
	SPELL_ASSIGN_DRUID_SPELL_BAR = 204543,
	KILLED_MONSTER_CREDIT_40644 = 103346,
	NPC_KEEPER_REMULOS_101065 = 101065,
    NPC_KEEPER_REMULOS_103488 = 103488,
};

class npc_class_hall_druid_gatewarden : public CreatureScript
{
public:
    npc_class_hall_druid_gatewarden(const char* name, uint32 teleportSpell) : CreatureScript(name), _teleportSpell(teleportSpell) { }

    struct npc_class_hall_druid_gatewardenAI : public ScriptedAI
    {
        npc_class_hall_druid_gatewardenAI(Creature* creature, uint32 teleportSpell) : ScriptedAI(creature), _teleportSpell(teleportSpell)
        {
        }

        void MoveInLineOfSight(Unit* who) override
        {
            if (!who->ToPlayer())
                return;

            if (me->isInBackInMap(who, 12.0f))   // In my line of sight, "outdoors", and behind me
                who->CastSpell(who, _teleportSpell, true);
        }

        uint32 _teleportSpell;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_class_hall_druid_gatewardenAI(creature, _teleportSpell);
    }

    uint32 _teleportSpell;
};

// 103875 Malfurion Stormrage
    struct npc_malfurion_stormrage_103875 : public ScriptedAI
    {
        npc_malfurion_stormrage_103875(Creature* creature) : ScriptedAI(creature)  {}

        void MoveInLineOfSight(Unit* who) override
        {
            if (!who || !who->IsInWorld())
                return;
            if (!me->IsWithinDist(who, 15.0f, false))
                return;

            Player* player = who->GetCharmerOrOwnerPlayerOrPlayerItself();

            if (!player)
                return;

            if (player->HasQuest(QUEST_THE_DREAMWAY) && player->GetQuestStatus(QUEST_THE_DREAMWAY) == QUEST_STATUS_INCOMPLETE)
            {
                if (!player->GetQuestObjectiveData(QUEST_THE_DREAMWAY, 1))
                {
                    
                    player->CastSpell(player, SPELL_DRUID_ORDER_FORMATION, true);
                    _scheduler.Schedule(Milliseconds(5000), [this, player](TaskContext context)
                    {
                        player->CastSpell(player, SPELL_ASSIGN_DRUID_SPELL_BAR, true);
                    });

                }
                else if (!player->GetQuestObjectiveData(QUEST_THE_DREAMWAY, 2))
                {
                    player->KilledMonsterCredit(KILLED_MONSTER_CREDIT_40644); // QUEST_THE_DREAMWAY storageIndex 2 KillCredit
                }
            }
            if(player->GetQuestStatus(QUEST_THE_DREAMWAY) == QUEST_STATUS_COMPLETE || player->GetQuestStatus(QUEST_THE_DREAMWAY)== QUEST_STATUS_REWARDED)
                player->RemoveAurasDueToSpell(SPELL_ASSIGN_DRUID_SPELL_BAR);

        }

        void UpdateAI(uint32 diff) override
        {
            _scheduler.Update(diff);
        }

        void sQuestAccept(Player* player, Quest const* quest) override
        {
            if (quest->GetQuestId() == QUEST_TO_THE_DREAMGROVE)
                if(Creature * keeper_remulos= me->FindNearestCreature(NPC_KEEPER_REMULOS_101065,25.0f,true))
                    keeper_remulos->AI()->Talk(0);
        }

        void sQuestReward(Player* player, Quest const* quest, uint32 /*opt*/)  override
        {
            if (quest->GetQuestId() == QUEST_THE_DREAMWAY)
                player->RemoveAurasDueToSpell(SPELL_ASSIGN_DRUID_SPELL_BAR);
        }
    private:
        TaskScheduler _scheduler;
    };
	
///GUID 448291
    struct npc_generic_bunny_quest_to_the_dreamgrove_59115 : public ScriptedAI
    {
        npc_generic_bunny_quest_to_the_dreamgrove_59115(Creature* creature) : ScriptedAI(creature) {  }

        void MoveInLineOfSight(Unit* who) override
        {
            if (!who || !who->IsInWorld())
                return;
            if (!me->IsWithinDist(who, 5.0f, false))
                return;

            Player* player = who->GetCharmerOrOwnerPlayerOrPlayerItself();
            if (!player)
                return;
            if (player->HasQuest(QUEST_TO_THE_DREAMGROVE) )
            {
                player->CastSpell(player, 200083, true);
                player->TeleportTo(1540, 1508.42f, 1650.51f, 31.54f, 5.910209f);
            }
        }
    };

    /*
    --  .go xyz 1695.939 1545.063 2.556631 1540
   1700.725 1547.835  2.549316
    Position: X: 1700.725 Y: 1547.835 Z: 2.549316
    [10] MoverGUID: Full: 0x203D14C080651040007B8B00004FA6EB Creature/0 R3909/S31627 Map: 1540 Entry: 103489 (Keeper Remulos) Low: 5220075
    [10] MoveTime: 52693017
    [10] Position: X: 1496.786 Y: 1650.879 Z: 30.98652   1496.786 1650.879 30.98652
    [10] Orientation: 5.588914
    npc_keeper_remulos_103489 talk 3 ???????????????,$n,?????????????!
    cast ID - 204836 ??????  => Entry: 103488 (Keeper Remulos) spell 204842
    */
    
    class quest_to_the_dreamgrove : public PlayerScript {
    public:
        quest_to_the_dreamgrove() : PlayerScript("quest_to_the_dreamgrove") {}

        void OnMapChanged(Player *player) override {
            if (player->HasQuest(QUEST_TO_THE_DREAMGROVE)&& player->GetMapId()==1540)
            {
                PhasingHandler::AddPhase(player, 6122, true);
                ///summon keeper_remulos_103489
                if (!player->GetQuestObjectiveData(QUEST_TO_THE_DREAMGROVE, 4))
                {                  
                    player->CastSpell(player, 204836, true);
                    PhasingHandler::AddPhase(player, 6122, true);
                }
                else if (!player->GetQuestObjectiveData(QUEST_TO_THE_DREAMGROVE, 3))
                {
                    PhasingHandler::AddPhase(player, 5953, true);
                    PhasingHandler::AddPhase(player, 6122, true);
                }
                    
                if (player->GetQuestObjectiveData(QUEST_TO_THE_DREAMGROVE, 3)|| player->GetQuestStatus(QUEST_TO_THE_DREAMGROVE)== QUEST_STATUS_COMPLETE || player->GetQuestStatus(QUEST_TO_THE_DREAMGROVE) == QUEST_STATUS_REWARDED)
                {
                    PhasingHandler::RemovePhase(player, 6122, true);
                }
            }
        }
    };
	
	///phase 5924 - 5953 - 6122
    ///ID - 204836 ??????
    struct npc_keeper_remulos_103489 : public ScriptedAI
    {
        npc_keeper_remulos_103489(Creature* creature) : ScriptedAI(creature) { Initialize(); }

        void DoAction(int32 param)
        {
            switch (param)
            {
            case 1:
                break;
            }
        }

        void UpdateAI(uint32 diff) override
        {
            _scheduler.Update(diff);
        }

        void MovementInform(uint32 /*type*/, uint32 id) override
        {
            switch (id)
            {
            case 3:
                if (Player* player = ObjectAccessor::GetPlayer(*me, m_playerGUID))
                {
                    player->KilledMonsterCredit(me->GetEntry());
                    Talk(3);
                    me->GetMotionMaster()->MovePoint(4, Position(1695.87f, 1545.05f, 2.6423f, 5.735f), true);
                    PhasingHandler::AddPhase(player, 5953, true);
                    //PhasingHandler::RemovePhase(player, 5954, true);
                }
            case 4:
                me->DespawnOrUnsummon(2000);
                break;
            default:
                break;
            }
        }
        void Initialize()
        {
            m_playerGUID = ObjectGuid::Empty;
            SayFirst = false;
        }

        void MoveInLineOfSight(Unit* who) override
        {
            if (!who || !who->IsInWorld())
                return;
            if (!me->IsWithinDist(who, 15.0f, false))
            {
                //RemovePlayer();
                return;
            }
            Player* player = who->GetCharmerOrOwnerPlayerOrPlayerItself();
            if (!player)
                return;
            if (!SayFirst && (player->HasQuest(QUEST_TO_THE_DREAMGROVE)) )// to do
            {
                player->KilledMonsterCredit(73451);
                m_playerGUID = player->GetGUID();
                SayFirst = true;
                Talk(0);
                me->SetWalk(false);
                me->GetMotionMaster()->MovePoint(1, Position(7391.678f, -2343.4f, 478.5645f), true);
                DoAction(1);
                _scheduler.Schedule(Milliseconds(1000), [this, player](TaskContext context)
                {
                    me->GetMotionMaster()->MovePoint(1, Position(1536.2015f, 1622.9069f, 25.22f, 6.209f), true);
                });
                _scheduler.Schedule(Milliseconds(6000), [this, player](TaskContext context)
                {
                    Talk(1);
                    me->GetMotionMaster()->MovePoint(2, Position(1582.712646f, 1618.0842f, 15.145f, 5.721f), true);
                });
                _scheduler.Schedule(Milliseconds(11000), [this, player](TaskContext context)
                {
                    Talk(2);
                });
                _scheduler.Schedule(Milliseconds(20000), [this, player](TaskContext context)
                {   
                    me->GetMotionMaster()->MovePoint(3, Position(1700.725f, 1547.835f, 2.549316f, 5.72f), true);
                });
            }
        }
    private:
   
        TaskScheduler _scheduler;
        std::set<ObjectGuid> pList;
        ObjectGuid   m_playerGUID;
        bool SayFirst;
    };
	
// quest 40645
class npc_tele_q40645 : public CreatureScript
{
public:
    npc_tele_q40645() : CreatureScript("npc_tele_q40645") { }
     struct npc_tele_q40645AI : public ScriptedAI
    {
        npc_tele_q40645AI(Creature* creature) : ScriptedAI(creature) { }
         void MoveInLineOfSight(Unit* who) override
        {
            if (Player* player = who->ToPlayer())
            {
                if (player->GetQuestStatus(40645) == QUEST_STATUS_INCOMPLETE)
                {    
                    if (player->IsInDist(me, 7.5f))
                    {
                       player->KilledMonsterCredit(73451);
                    }
                }
            }
        }
    };
     CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_tele_q40645AI(creature);
    }
};

// quest 40645
class npc_tele_qq40645 : public CreatureScript
{
public:
    npc_tele_qq40645() : CreatureScript("npc_tele_qq40645") { }
     struct npc_tele_qq40645AI : public ScriptedAI
    {
        npc_tele_qq40645AI(Creature* creature) : ScriptedAI(creature) { }
         void MoveInLineOfSight(Unit* who) override
        {
            if (Player* player = who->ToPlayer())
            {
                if (player->GetQuestStatus(40645) == QUEST_STATUS_INCOMPLETE)
                {    
                    if (player->IsInDist(me, 7.5f))
                    {
                       player->KilledMonsterCredit(103489);
                    }
                }
            }
        }
    };
     CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_tele_qq40645AI(creature);
    }
};

struct npc_keeper_remulos_103488 : public ScriptedAI
{
    npc_keeper_remulos_103488(Creature* creature) : ScriptedAI(creature) { action = 0; }

    enum
    {
        SPELL_ATTARK = 204842,
        ACTION_1 = 1,
        ACTION_2 = 2,
        ACTION_3 = 3,
    };

    void DoAction(int32 param)
    {
        switch (param)
        {
        case ACTION_1:
            PhasingHandler::AddPhase(me, 6122, true);
            _scheduler.Schedule(2s, 3s, [this](TaskContext context)
            {
                if (GameObject* go = me->FindNearestGameObject(250363, 20.0f))
                    me->CastSpell(go, SPELL_ATTARK, false);
                context.Repeat(4s);
            });
            break;
        case ACTION_2:
            PhasingHandler::RemovePhase(me, 6122, true);
            break;
        case ACTION_3:
            Talk(1);
            me->SetWalk(false);
            me->GetMotionMaster()->MovePoint(1, Position(1734.642456f, 1381.86731f, 4.024f, 1.6092f), true);
            _scheduler.Schedule(Milliseconds(5000), [this](TaskContext context)
            {
                me->GetMotionMaster()->MovePoint(2, Position(1728.859741f, 1431.163208f, 10.0241f, 1.412877f), true);
            });
            _scheduler.Schedule(Milliseconds(10000), [this](TaskContext context)
            {
                me->GetMotionMaster()->MovePoint(3, Position(1738.126709f, 1474.335815f, 10.189967f, 1.090864f), true);
            });
            _scheduler.Schedule(Milliseconds(18000), [this](TaskContext context)
            {
                me->GetMotionMaster()->MovePoint(4, Position(1758.78125f, 1508.856445f, 6.571756f, 6.237577f), true);
            });
            _scheduler.Schedule(Milliseconds(25000), [this](TaskContext context)
            {
                me->GetMotionMaster()->MovePoint(4, Position(1781.30957f, 1504.709f, 9.361588f, 5.992398f), true);
            });
            _scheduler.Schedule(Milliseconds(30000), [this](TaskContext context)
            {
                me->DespawnOrUnsummon(1000);
            });
            break;
        }
    }

    void MoveInLineOfSight(Unit* who) override
    {
        if (!who || !who->IsInWorld())
            return;
        if (!me->IsWithinDist(who, 15.0f, false))
            return;

        Player* player = who->GetCharmerOrOwnerPlayerOrPlayerItself();
        if (!player)
            return;
        if (!action && player->HasQuest(QUEST_TO_THE_DREAMGROVE))
        {
            if (!player->GetQuestObjectiveData(QUEST_TO_THE_DREAMGROVE, 3))
            {
                action = true;
                DoAction(ACTION_1);
                _scheduler.Schedule(30s, 31s, [this](TaskContext context)
                {
                    DoAction(ACTION_2);
                });
            }
            if (player->GetQuestObjectiveData(QUEST_TO_THE_DREAMGROVE, 3))
            {
                PhasingHandler::RemovePhase(player, 6122, true);
                action = true;
                Talk(0);
                _scheduler.Schedule(2s, 3s, [this](TaskContext context)
                {
                    DoAction(ACTION_3);
                });
            }

        }
    }

    void UpdateAI(uint32 diff) override
    {
        _scheduler.Update(diff);
    }

private:
    TaskScheduler _scheduler;
    uint32 action;
};

struct npc_nightmare_blight_103246 : public ScriptedAI
    {
        npc_nightmare_blight_103246(Creature* creature) : ScriptedAI(creature) { }

        void JustDied(Unit* killer) override
        {
            if (killer->IsPlayer())
            {
                killer->ToPlayer()->KilledMonsterCredit(me->GetEntry());
                PhasingHandler::AddPhase(killer, 5954, true);
                PhasingHandler::RemovePhase(killer, 5953, true);
                killer->ToPlayer()->SummonCreature(NPC_KEEPER_REMULOS_103488, Position(1720.639f, 1347.214f, 2.08268f, 4.830286f), TEMPSUMMON_TIMED_DESPAWN, 60000, 0, true);

                //PhasingHandler::RemovePhase(killer, 6122, true);
            }
                
        }

        void EnterCombat(Unit* victim)
        {
            ///
        }

        void UpdateAI(uint32 diff) override
        {
            _scheduler.Update(diff);
            
            if (!UpdateVictim())
                return;
            DoSpellAttackIfReady(208292);
            if (!DoSpellAttackIfReady(208292))
            {
                DoMeleeAttackIfReady();
            }

     
        }

    private:
        TaskScheduler _scheduler;
    };


    enum
    {
        AURA_ARCHDRUIDS_LUNARWING_FORM = 231437,
        QUEST_YOU_CANT_TAKE_THE_SKY_FROM_ME = 46319,
        SPELL_UNLEARN_ARCHDRUIDS_LUNARWING_FORM = 243612,
        SPELL_LEARN_ARCHDRUIDS_LUNARWING_FORM = 243616,
        ACTION_UNLEARN_ARCHDRUIDS_LUNARWING_FORM = 1,
        ACTION_LEARN_ARCHDRUIDS_LUNARWING_FORM = 2,
    };
	
// quest 40645
class npc_tele_qqq40645 : public CreatureScript
{
public:
    npc_tele_qqq40645() : CreatureScript("npc_tele_qqq40645") { }
     struct npc_tele_qqq40645AI : public ScriptedAI
    {
        npc_tele_qqq40645AI(Creature* creature) : ScriptedAI(creature) { }
         void MoveInLineOfSight(Unit* who) override
        {
            if (Player* player = who->ToPlayer())
            {
                if (player->GetQuestStatus(40645) == QUEST_STATUS_INCOMPLETE)
                {    
                    if (player->IsInDist(me, 9.5f))
                    {
                       player->KilledMonsterCredit(101215);
                    }
                }
            }
        }
    };
     CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_tele_qqq40645AI(creature);
    }
};

void AddSC_class_hall_druid()
{
    RegisterCreatureAI(npc_malfurion_stormrage_103875);
	RegisterCreatureAI(npc_keeper_remulos_103489);
	RegisterCreatureAI(npc_nightmare_blight_103246);
    RegisterCreatureAI(npc_keeper_remulos_103488);
    RegisterCreatureAI(npc_generic_bunny_quest_to_the_dreamgrove_59115);
    new quest_to_the_dreamgrove();
	new npc_class_hall_druid_gatewarden("npc_class_hall_druid_gatewarden_dreamgrove",   199549);
    new npc_class_hall_druid_gatewarden("npc_class_hall_druid_gatewarden_hyjal",        0);
    new npc_class_hall_druid_gatewarden("npc_class_hall_druid_gatewarden_feralas",      0);
    new npc_class_hall_druid_gatewarden("npc_class_hall_druid_gatewarden_moonglade",    200082);
    new npc_class_hall_druid_gatewarden("npc_class_hall_druid_gatewarden_duskwood",     205013);
    new npc_class_hall_druid_gatewarden("npc_class_hall_druid_gatewarden_hinterlands",  210066);
    new npc_class_hall_druid_gatewarden("npc_class_hall_druid_gatewarden_grizzlyhills", 210066);
	new npc_tele_q40645();
	new npc_tele_qq40645();
	new npc_tele_qqq40645();
}
