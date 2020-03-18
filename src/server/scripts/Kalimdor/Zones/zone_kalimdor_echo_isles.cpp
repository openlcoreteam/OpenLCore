#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "ScriptedEscortAI.h"
#include "ScriptedFollowerAI.h"
#include "Vehicle.h"
#include "Player.h"
#include "GameObjectAI.h"


//Quest Class Chain: Proving Pit


enum TrollCreatures
{
    NPC_SPITESCALE_SCOUT        = 38142,
    NPC_DARKSPEAR_JAILOR        = 39062,
    NPC_CAPTIVE_SPIESCALE_SCOUT = 38142,
    NPC_LEGATI_ROGUE_TRAINER    = 38244,
};

Position const TrollwayPos[8] =
{
    // First Darkspear Jailor 
    { -1159.222f, -5519.436f, 12.128f, 0.000f }, // pos on side
    { -1152.798f, -5519.026f, 11.984f, 0.000f }, // pos on cage
    { -1150.308f, -5521.526f, 11.307f, 4.760f }, // pos summit scout
    { -1146.754f, -5530.905f, 08.106f, 2.982f }, // pos center place
    // Second Darkspear Jailor 
    { -1137.437f, -5430.574f, 13.640f, 0.000f }, // pos on side
    { -1136.318f, -5417.105f, 13.270f, 0.000f }, // pos on cage
    { -1137.858f, -5414.610f, 13.038f, 3.252f }, // pos summit scout
    { -1148.483f, -5417.083f, 10.598f, 5.067f }, // pos center place
};

class npc_captive_spitescale_scout : public CreatureScript
{
public:
    npc_captive_spitescale_scout() : CreatureScript("npc_captive_spitescale_scout") { }

    enum Events
    {
        EVENT_GO_TO_CENTER      = 1,
        EVENT_WAIT_ON_FIGHT     = 2,
        EVENT_FIGHT_UNTIL_DEATH = 3,
    };

    struct npc_captive_spitescale_scoutAI : public ScriptedAI
    {
        npc_captive_spitescale_scoutAI(Creature* creature) : ScriptedAI(creature) { }

        uint8 m_ScoutIndex;
        EventMap events;

        void Reset() override
        {
            m_ScoutIndex = 0;
        }

        void StartEvents(uint8 index)
        {
            m_ScoutIndex = index;
            events.ScheduleEvent(EVENT_GO_TO_CENTER, 100);
        }

        void JustDied(Unit* killer) override
        {
            Talk(1, killer);
        }

        void UpdateAI(uint32 diff) override
        {
            events.Update(diff);
            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_GO_TO_CENTER:
                {
                    Talk(0);
                    me->GetMotionMaster()->MovePoint(7, TrollwayPos[m_ScoutIndex + 3]);
                    events.ScheduleEvent(EVENT_WAIT_ON_FIGHT, 6000);
                    break;
                }
                case EVENT_WAIT_ON_FIGHT:
                {
                    if (me->IsInCombat())
                    {
                        events.ScheduleEvent(EVENT_FIGHT_UNTIL_DEATH, 1000);
                        return;
                    }
                    if (Player* player = me->FindNearestPlayer(25.0f))
                    {
                        Talk(0, player);
                        me->setFaction(2224);
                        me->Attack(player, true);
                        player->Attack(me, true);
                        events.ScheduleEvent(EVENT_WAIT_ON_FIGHT, 8000);
                        return;
                    }
                    me->DespawnOrUnsummon();
                    break;
                }
                case EVENT_FIGHT_UNTIL_DEATH:
                {
                    if (me->GetDistance2d(TrollwayPos[m_ScoutIndex + 3].m_positionX, TrollwayPos[m_ScoutIndex + 3].m_positionY) > 20.0f)
                        me->DespawnOrUnsummon();

                    if (!me->IsInCombat())
                        me->DespawnOrUnsummon();

                    if (Unit* unit = me->GetVictim())
                        if (Player* player = unit->ToPlayer())
                        {
                            events.ScheduleEvent(EVENT_FIGHT_UNTIL_DEATH, 1000);
                            return;
                        }
                    break;
                }
                default:
                    printf("Event default %u \n", eventId);
                    break;
                }
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_captive_spitescale_scoutAI(creature);
    }
};

class npc_darkspear_jailor : public CreatureScript
{
public:
    npc_darkspear_jailor() : CreatureScript("npc_darkspear_jailor"){ }

    enum TrollQuests
    {
        // Proving Pit
        QUEST_PROVING_PIT_ROGU = 24774,
        QUEST_PROVING_PIT_MAGE = 24754,
        QUEST_PROVING_PIT_SHAM = 24762,
        QUEST_PROVING_PIT_HUNT = 24780,
        QUEST_PROVING_PIT_PRIE = 24786,
        QUEST_PROVING_PIT_WARR = 24642,
        QUEST_PROVING_PIT_DRUI = 24768,
        QUEST_PROVING_PIT_WARL = 26276,
    };

    enum Events
    {
        // Darkspear Jailor
        EVENT_MOVE_TO_CAGE_1 = 1,
        EVENT_MOVE_TO_CAGE_2,
        EVENT_OPEN_CAGE,
        EVENT_MOVE_BACK_1,
        EVENT_MOVE_BACK_2,
        EVENT_SUMMON_SPITESCALE_SCOUT,
        EVENT_RESET_POS,
    };

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if (player->GetQuestStatus(QUEST_PROVING_PIT_ROGU) == QUEST_STATUS_INCOMPLETE ||
            player->GetQuestStatus(QUEST_PROVING_PIT_MAGE) == QUEST_STATUS_INCOMPLETE ||
            player->GetQuestStatus(QUEST_PROVING_PIT_SHAM) == QUEST_STATUS_INCOMPLETE ||
            player->GetQuestStatus(QUEST_PROVING_PIT_HUNT) == QUEST_STATUS_INCOMPLETE ||
            player->GetQuestStatus(QUEST_PROVING_PIT_PRIE) == QUEST_STATUS_INCOMPLETE ||
            player->GetQuestStatus(QUEST_PROVING_PIT_WARR) == QUEST_STATUS_INCOMPLETE ||
            player->GetQuestStatus(QUEST_PROVING_PIT_DRUI) == QUEST_STATUS_INCOMPLETE ||
            player->GetQuestStatus(QUEST_PROVING_PIT_WARL) == QUEST_STATUS_INCOMPLETE)
        {
            //player->ADD_GOSSIP_ITEM_DB(10974, 0, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        }
        //player->SEND_GOSSIP_MENU(15251, creature->GetGUID());
        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action)
    {
        printf("OnGossipSelect: action %u \n", action);
        if (action == GOSSIP_ACTION_INFO_DEF + 1)
        {
            player->PlayerTalkClass->ClearMenus();
            player->KilledMonsterCredit(NPC_DARKSPEAR_JAILOR);
            CAST_AI(npc_darkspear_jailorAI, creature->GetAI())->StartEvents();
        }

        return true;
    }

struct npc_darkspear_jailorAI : public ScriptedAI
    {
        npc_darkspear_jailorAI(Creature* creature) : ScriptedAI(creature) { }

        uint8 m_JailorIndex;
        bool m_activated;
        EventMap events;

        void Reset() override
        {
            me->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
            m_JailorIndex = 0;
            m_activated = false;
        }

        void StartEvents()
        {
            if (Creature* npc = me->FindNearestCreature(NPC_LEGATI_ROGUE_TRAINER, 30.0f, true))
                m_JailorIndex = 4;

            if (!m_activated)
            {
                Talk(0);
                me->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
                m_activated = true;
                events.ScheduleEvent(EVENT_MOVE_TO_CAGE_1, 100);
            }
        }

        void UpdateAI(uint32 diff) override
        {
            events.Update(diff);
            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_MOVE_TO_CAGE_1:
                    me->GetMotionMaster()->MovePoint(20, TrollwayPos[m_JailorIndex + 0]);
                    events.ScheduleEvent(EVENT_MOVE_TO_CAGE_2, 4000);
                    break;
                case EVENT_MOVE_TO_CAGE_2:
                    me->GetMotionMaster()->MovePoint(21, TrollwayPos[m_JailorIndex + 1]);
                    events.ScheduleEvent(EVENT_OPEN_CAGE, 6000);
                    break;
                case EVENT_OPEN_CAGE:
                    events.ScheduleEvent(EVENT_SUMMON_SPITESCALE_SCOUT, 500);
                    events.ScheduleEvent(EVENT_MOVE_BACK_1, 2500);
                    break;
                case EVENT_MOVE_BACK_1:
                    me->GetMotionMaster()->MovePoint(22, TrollwayPos[m_JailorIndex + 0]);
                    events.ScheduleEvent(EVENT_MOVE_BACK_2, 6000);
                    break;
                case EVENT_MOVE_BACK_2:
                    me->GetMotionMaster()->MoveTargetedHome();
                    events.ScheduleEvent(EVENT_RESET_POS, 3000);
                    break;
                case EVENT_RESET_POS:
                    me->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
                    Reset();
                    break;
                case EVENT_SUMMON_SPITESCALE_SCOUT:
                    if (Creature* creature = me->SummonCreature(NPC_SPITESCALE_SCOUT, TrollwayPos[m_JailorIndex + 2], TEMPSUMMON_CORPSE_DESPAWN))
                    {
                        CAST_AI(npc_captive_spitescale_scout::npc_captive_spitescale_scoutAI, creature->AI())->StartEvents(m_JailorIndex);
                    }
                    break;
                }
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_darkspear_jailorAI(creature);
    }
};

// #########################################################  Quest 24626 Young and Vicious

class npc_swiftclaw_38002 : public CreatureScript
{
public:
    npc_swiftclaw_38002() : CreatureScript("npc_swiftclaw_38002") { }

    struct npc_swiftclaw_38002AI : public ScriptedAI
    {
        npc_swiftclaw_38002AI(Creature* creature) : ScriptedAI(creature) { }

        void StartAnim(Player* player, Creature* raptor)
        {
            player->EnterVehicle(me, 1);
            me->SetSpeed(MOVE_RUN, 1.2f);
        }

        void UpdateAI(uint32 diff) override
        {
            if (!UpdateVictim())
                return;
            else
                DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_swiftclaw_38002AI(creature);
    }
};

class npc_swiftclaw_37989 : public CreatureScript
{
public:
    npc_swiftclaw_37989() : CreatureScript("npc_swiftclaw_37989") { }

    enum eAreaTrigger
    {
        QUEST_YOUNG_AND_VICIOUS = 24626,
        NPC_SWIFTCLAW = 37989,
        NPC_SWIFTCLAW_SUMMON = 38002,
        SPELL_RAPTOR_ROPE = 70927,
    };

    struct npc_swiftclaw_37989AI : public ScriptedAI
    {
        npc_swiftclaw_37989AI(Creature* creature) : ScriptedAI(creature) { }

        void SpellHit(Unit* caster, SpellInfo const* spell) override
        {
            if (spell->Id == SPELL_RAPTOR_ROPE)
                if (Player* player = caster->ToPlayer())
                    if (player->GetQuestStatus(QUEST_YOUNG_AND_VICIOUS) == QUEST_STATUS_INCOMPLETE)
                        if (me->GetDistance2d(player) < 2.0f)
                        {
                            player->KilledMonsterCredit(NPC_SWIFTCLAW);
                            if (Creature* npc = player->SummonCreature(NPC_SWIFTCLAW_SUMMON, me->GetNearPosition(1.0f, 0.0f)))
                                CAST_AI(npc_swiftclaw_38002::npc_swiftclaw_38002AI, npc->AI())->StartAnim(player, npc);

                            //me->SetPhaseMask(2, true);
                            me->DespawnOrUnsummon();
                        }
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_swiftclaw_37989AI(creature);
    }
};

// #########################################################  showfight between darkspear and spitescale 

class npc_spitescale_showfight : public CreatureScript // 38300, 38301, 38302
{
public:
    npc_spitescale_showfight() : CreatureScript("npc_spitescale_showfight") { }

    struct npc_spitescale_showfightAI : public ScriptedAI
    {
        npc_spitescale_showfightAI(Creature* creature) : ScriptedAI(creature) { }

        float m_health;

        void Reset() override
        {
            m_health = frand(40.0f, 75.0f);
        }

        void DamageTaken(Unit* attacker, uint32& damage) override
        {
            bool sf = false;
            if (attacker->GetEntry() == 38324) sf = true;
            if (attacker->GetEntry() == 38326) sf = true;
            if (sf)
            {
                if (me->GetHealthPct() < m_health)
                    damage = 0;
                else
                    damage /= 10;
            }
        }

        void UpdateAI(uint32 diff) override
        {
            if (!UpdateVictim())
                return;
            else
                DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_spitescale_showfightAI(creature);
    }
};

class npc_darkspear_showfight : public CreatureScript // 38324, 38326
{
public:
    npc_darkspear_showfight() : CreatureScript("npc_darkspear_showfight") { }

    struct npc_darkspear_showfightAI : public ScriptedAI
    {
        npc_darkspear_showfightAI(Creature* creature) : ScriptedAI(creature) { }

        float m_health;

        void Reset() override
        {
            m_health = frand(40.0f, 75.0f);
        }

        void DamageTaken(Unit* attacker, uint32& damage) override
        {
            bool sf = false;
            if (attacker->GetEntry() == 38300) sf = true;
            if (attacker->GetEntry() == 38301) sf = true;
            if (attacker->GetEntry() == 38302) sf = true;
            if (sf)
            {
                if (me->GetHealthPct() < m_health)
                    damage = 0;
                else
                    damage /= 10;
            }
        }

        void UpdateAI(uint32 diff) override
        {
            if (!UpdateVictim())
                return;
            else
                DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_darkspear_showfightAI(creature);
    }
};

// ######################################################### quest 25035 break the lines  
// ToDo: showfight between darkspear and spitescale 
// ToDo: mount raptor summoned by jornun

class npc_jornun_38989 : public CreatureScript
{
public:
    npc_jornun_38989() : CreatureScript("npc_jornun_38989"){ }

    enum eQuest25035
    {
        npc_jornun = 38989,
        npc_morakki = 38442,
        quest_break_the_lines = 25035,
    };

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if (player && player->GetQuestStatus(quest_break_the_lines) == QUEST_STATUS_INCOMPLETE)
        {
            player->KilledMonsterCredit(npc_jornun);
            creature->AI()->Talk(0);
        }

        return false;
    }

};

class npc_morakki_38442 : public CreatureScript
{
public:
    npc_morakki_38442() : CreatureScript("npc_morakki_38442"){ }

    enum eQuest25035
    {
        npc_jornun              = 38989,
        npc_morakki             = 38442,
        quest_break_the_lines   = 25035,
    };

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if (player && player->GetQuestStatus(quest_break_the_lines) == QUEST_STATUS_INCOMPLETE)
        {
            player->KilledMonsterCredit(npc_morakki);
            return true;
        }

        return false;
    }

};

// ######################################################### quest 24814 
// ToDo: videos not ready..i want sniffs..
// ToDo: fight with Sea Witch 

class npc_voljin_38225 : public CreatureScript
{
public:
    npc_voljin_38225() : CreatureScript("npc_voljin_38225"){ }

    enum eQuest25035
    {
        NPC_ZUNI = 38423,
        NPC_VANIRA = 38437,
        NPC_ZARJIRA = 38306,
        NPC_VOLJIN = 38225,
        QUEST_AN_ANCIENT_ENEMY = 24814,
    };

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if (player &&  player->GetQuestStatus(QUEST_AN_ANCIENT_ENEMY) == QUEST_STATUS_INCOMPLETE)
            player->KilledMonsterCredit(NPC_VOLJIN);            

        return false;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 sender, uint32 action) 
    { 
        if (player && player->GetQuestStatus(QUEST_AN_ANCIENT_ENEMY) == QUEST_STATUS_INCOMPLETE)
        {
            player->KilledMonsterCredit(NPC_ZARJIRA);
            player->TeleportTo(1, -1304.986f, -5589.265f, 23.72f, 3.85f);
            return true;
        }

        return false; 
    }

    struct npc_voljin_38225AI : public ScriptedAI
    {
        npc_voljin_38225AI(Creature* creature) : ScriptedAI(creature) { }

        void Reset() override
        {
            
        }

        void UpdateAI(uint32 diff) override
        {
            if (!UpdateVictim())
                return;
            else
                DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_voljin_38225AI(creature);
    }
};

class npc_voljin_38966 : public CreatureScript
{
public:
    npc_voljin_38966() : CreatureScript("npc_voljin_38966"){ }

    enum eQuest25035
    {
      
        QUEST_AN_ANCIENT_ENEMY = 24814,
    };

    bool OnQuestReward(Player* player, Creature* creature, Quest const* quest, uint32 /*opt*/) 
    { 
        
        return false; 
    }

    struct npc_voljin_38966AI : public ScriptedAI
    {
        npc_voljin_38966AI(Creature* creature) : ScriptedAI(creature) { }

        void Reset() override
        {

        }

        void UpdateAI(uint32 diff) override
        {
            if (!UpdateVictim())
                return;
            else
                DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_voljin_38966AI(creature);
    }
};

void AddSC_zone_echo_isles()
{
    new npc_captive_spitescale_scout();
    new npc_darkspear_jailor();
    new npc_swiftclaw_37989();
    new npc_swiftclaw_38002();
    new npc_spitescale_showfight();
    new npc_darkspear_showfight();
    new npc_jornun_38989();
    new npc_morakki_38442();
    new npc_voljin_38225();
    new npc_voljin_38966();
};
