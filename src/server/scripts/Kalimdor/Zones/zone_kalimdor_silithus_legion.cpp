#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "Player.h"
#include "ObjectMgr.h"
#include "Conversation.h"
#include "Log.h"
#include "Util.h"
#include "PhasingHandler.h"

enum Quests
{
    QUEST_UNITING_THE_ISLES                                   = 43341,
    QUEST_ANTORUS_THE_BURNING_THRONE_THE_DEATH_OF_A_TITAN     = 49015,

    /// Alliance
    QUEST_SUMMONS_TO_STORMWIND                                = 50371,
    QUEST_GIFTS_OF_THE_FALLEN                                 = 49976,
    QUEST_WITNESS_TO_THE_WOUND                                = 49981,
    QUEST_FREE_SAMPLES                                        = 50047,
    QUEST_ITS_A_SABOTAGE                                      = 50046,
    QUEST_THE_TWILIGHT_SURVIVOR                               = 50228,
    QUEST_LARVAE_BY_THE_DOZEN                                 = 50227,
    QUEST_A_THE_BLOOD_OF_AZEROTH                              = 50364,
    QUEST_A_THE_SPEAKERS_PERSPECTIVE                          = 50049,
    QUEST_A_THE_SPEAKERS_CALL                                 = 50056,
    QUEST_THE_POWER_IN_OUR_HANDS                              = 50057,

    /// Horde
    QUEST_SUMMONS_TO_ORGRIMMAR                                = 49977,
    QUEST_A_RECENT_DISCOVERY                                  = 50341,
    QUEST_H_WITNESS_TO_THE_WOUND                              = 49982,
    QUEST_H_THE_BLOOD_OF_AZEROTH                              = 50364,
    QUEST_H_THE_SPEAKERS_PERSPECTIVE                          = 50055,
    QUEST_LAZY_PROSPECTORS                                    = 50053,
    QUEST_H_THE_TWILIGHT_SURVIVOR                             = 50232,
    QUEST_GIZMAX_GREASEBOLT                                   = 132045,
    QUEST_THE_SOURCE_OF_POWER                                 = 50230,
    QUEST_H_LARVAE_BY_THE_DOZEN                               = 50231,
    QUEST_KHADGARS_REQUEST                                    = 50360,
    QUEST_THE_SPEAKERS_PERSPECTIVE                            = 50055
};

enum Creatures
{
    NPC_MASTER_MATHIAS_SHAW_132255                            = 132255,
    NPC_ZIDORMI_128607                                        = 128607,
    NPC_NOLAN_SPEED_131963                                    = 131963,
    NPC_KELSEY_STEELSPARK_130030                              = 130030,
    NPC_TAMMY_TINKSPINNER_132606                              = 132606,
    NPC_KHARGUS_STONEMANTLE_132192                            = 132192,
    NPC_ARCHMAGE_KHADGAR_130032                               = 130032,
    NPC_MAGNI_BRONZEBEARD_130216                              = 130216,
    NPC_NATHANOS_BLIGHTCALLER_132254                          = 132254,
    NPC_PIXNI_RUSTBOMB_132040                                 = 132040,
    NPC_GIZMAX_GREASEBOLT_132045                              = 132045,
    NPC_GROL_WARBLADE_132147                                  = 132147,
    NPC_LAZY_PROSPECTOR_133019                                = 133019,
    NPC_ARCHMAGE_KHADGAR_130033                               = 130033
};

enum Misc
{
    SCENE_GIFTS_OF_THE_FALLEN                                 = 260706,
    KILLED_MONSTER_CREDIT_QUEST_GIFTS_OF_THE_FALLEN           = 132274, // KILLED_MONSTER_CREDIT_QUEST_GIFTS_OF_THE_FALLEN
    SCENE_A_RECENT_DISCOVERY                                  = 260707,
    KILLED_MONSTER_CREDIT_A_RECENT_DISCOVERY                  = 132290, // KILLED_MONSTER_CREDIT_A_RECENT_DISCOVERY
    PHASE_AFTER_QUEST                                         = 10186,
    SCENE_THE_POWER_IN_OUR_HANDS                              = 263099
};

class On110Silithus : public PlayerScript
{
public:
    On110Silithus() : PlayerScript("On110Silithus") { }

    void OnLogin(Player* player, bool firstLogin) override
    {
        // Can happen in recovery cases
        if (player->getLevel() >= 110)
            HandleSilithus(player);
    }

    void OnUpdateZone(Player* player, Area* newArea, Area* oldArea)
    {
        HandlePhase(player);
    }

    void OnPlayerUpdateAreaAlternate(Player* player, uint32 /*newArea*/, uint32 /*oldArea*/)
    {
        HandlePhase(player);
    }

    void HandleSilithus(Player* player)
    {
        if ((player->GetQuestStatus(QUEST_ANTORUS_THE_BURNING_THRONE_THE_DEATH_OF_A_TITAN) == QUEST_STATUS_COMPLETE) || (player->GetQuestStatus(QUEST_ANTORUS_THE_BURNING_THRONE_THE_DEATH_OF_A_TITAN) == QUEST_STATUS_REWARDED))
        {
            if (player->IsInAlliance())
            {
                /// Alliance
                if (player->GetQuestStatus(QUEST_SUMMONS_TO_STORMWIND) == QUEST_STATUS_NONE)
                    if (const Quest* quest = sObjectMgr->GetQuestTemplate(QUEST_SUMMONS_TO_STORMWIND))
                    {
                        Conversation::CreateConversation(6607, player, player->GetPosition(), { player->GetGUID() });
                        player->AddQuest(quest, nullptr);
                    }
                if ((player->GetQuestStatus(QUEST_A_THE_SPEAKERS_PERSPECTIVE) == QUEST_STATUS_REWARDED && player->GetQuestStatus(QUEST_A_THE_SPEAKERS_CALL) == QUEST_STATUS_NONE) || player->IsGameMaster())
                    if (const Quest* quest = sObjectMgr->GetQuestTemplate(QUEST_A_THE_SPEAKERS_CALL))
                    {
                        Conversation::CreateConversation(6615, player, player->GetPosition(), { player->GetGUID() });
                        player->AddQuest(quest, nullptr);
                    }
            }
            else
            {
                /// Horde
                if (player->GetQuestStatus(QUEST_SUMMONS_TO_ORGRIMMAR) == QUEST_STATUS_NONE)
                    if (const Quest* quest = sObjectMgr->GetQuestTemplate(QUEST_SUMMONS_TO_ORGRIMMAR))
                    {
                        Conversation::CreateConversation(6609, player, player->GetPosition(), { player->GetGUID() });
                        player->AddQuest(quest, nullptr);
                    }
            }
        }

        HandlePhase(player);
    }

    void HandlePhase(Player* player)
    {
        if (player->GetQuestStatus(QUEST_A_THE_SPEAKERS_PERSPECTIVE) == QUEST_STATUS_REWARDED || player->GetQuestStatus(QUEST_H_THE_SPEAKERS_PERSPECTIVE) == QUEST_STATUS_REWARDED || !player->IsGameMaster())
        {
            if(player->GetZoneId()== 1377 && player->GetAreaId() == 9310)
                PhasingHandler::AddPhase(player, PHASE_AFTER_QUEST, true);
        }
    }
};

#define GOSSIP_MASTER_MATHIAS_SHAW "Tell me about the lion's sleep."

struct npc_master_mathias_shaw_132255 : public ScriptedAI
{
    npc_master_mathias_shaw_132255(Creature* creature) : ScriptedAI(creature)
    {
        Initialize();
    }

    bool Intr;
    std::set<ObjectGuid> pList;
    ObjectGuid m_playerGUID;

    void Initialize()
    {
        Intr = false;
        m_playerGUID = ObjectGuid::Empty;
    }

    void AddPlayer()
    {
        if (!HasPlayer(m_playerGUID))
            pList.insert(m_playerGUID);
    }

    bool HasPlayer(ObjectGuid guid)
    {
        return (pList.find(guid) != pList.end());
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

        if (!HasPlayer(player->GetGUID()) && player->HasQuest(QUEST_SUMMONS_TO_STORMWIND))
        {
            m_playerGUID = player->GetGUID();
            AddPlayer();
            me->AI()->Talk(0, player);
            m_playerGUID = ObjectGuid::Empty;
        }
    }

    void sQuestAccept(Player* player, Quest const* quest) override
    {
        if (quest->GetQuestId() == QUEST_WITNESS_TO_THE_WOUND)
            player->AddConversationDelayedTeleport(5000, 6608, 1817, -6467.526f, -219.9097f, 5.90872f, 2.209932f);
    }

    void sQuestReward(Player* player, Quest const* quest, uint32 /*opt*/)  override
    {
        if (quest->GetQuestId() == QUEST_SUMMONS_TO_STORMWIND)
            if (const Quest* quest_gift = sObjectMgr->GetQuestTemplate(QUEST_GIFTS_OF_THE_FALLEN))
                player->AddQuest(quest_gift, me);
    }

    ///22009  33712  0  ClientToServer: CMSG_TALK_TO_GOSSIP (0x3495)
    void sGossipHello(Player* player)
    {
        if (player->HasQuest(QUEST_SUMMONS_TO_STORMWIND))
        {
            player->ForceCompleteQuest(QUEST_SUMMONS_TO_STORMWIND);
            ClearGossipMenuFor(player);

            if (me->IsQuestGiver())
                player->PrepareQuestMenu(me->GetGUID()); /* return true*/

            SendGossipMenuFor(player, 33712, me->GetGUID());
        }
        else if (player->GetQuestStatus(QUEST_GIFTS_OF_THE_FALLEN) == QUEST_STATUS_INCOMPLETE)
        {
            //player->GetQuestStatus(QUEST_SUMMONS_TO_STORMWIND)==QUEST_STATUS_REWARDED &&
            //TC_LOG_ERROR("server.worldserver", "QUEST_GIFTS_OF_THE_FALLEN OnGossipHello ");
            //if (creature->IsQuestGiver())
            //    player->PrepareQuestMenu(creature->GetGUID()); /* return true*/
            //SendGossipMenuFor(player, player->GetGossipTextId(creature), creature->GetGUID());
            ClearGossipMenuFor(player);
            AddGossipItemFor(player, GOSSIP_ICON_CHAT,(GOSSIP_MASTER_MATHIAS_SHAW), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
            SendGossipMenuFor(player, 33712, me->GetGUID());
        }
        else
        {
            ClearGossipMenuFor(player);

            if (me->IsQuestGiver())
                player->PrepareQuestMenu(me->GetGUID()); /* return true*/

            SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());
        }
    }

    void sGossipSelect(Player* player, uint32 /*menuId*/, uint32 gossipListId)
    {
        CloseGossipMenuFor(player);

        if (player->HasQuest(QUEST_GIFTS_OF_THE_FALLEN))
        {
            player->CastSpell(player, SCENE_GIFTS_OF_THE_FALLEN, true);
            player->KilledMonsterCredit(296253);
            player->KilledMonsterCredit(KILLED_MONSTER_CREDIT_QUEST_GIFTS_OF_THE_FALLEN); // KILLED_MONSTER_CREDIT_QUEST_GIFTS_OF_THE_FALLEN
            player->ForceCompleteQuest(QUEST_GIFTS_OF_THE_FALLEN);
        }
    }
};

enum Zidormi
{
    AURA_TIME_TRAVELLING                                      = 255152, /// 262016
    SPELL_BLACK                                               = 129809
};

#define GOSSIP_ZIDORMI_1 "Can you show me what it's like to be helissus before the trauma of the world?"
#define GOSSIP_ZIDORMI_2 "Can you take me back now?"

struct npc_zidormi_128607 : public ScriptedAI
{
    npc_zidormi_128607(Creature* creature) : ScriptedAI(creature)
    {
        Initialize();
    }

    std::set<ObjectGuid> pList;
    ObjectGuid m_playerGUID;

    void Initialize()
    {
        m_playerGUID = ObjectGuid::Empty;
    }

    void AddPlayer()
    {
        if (!HasPlayer(m_playerGUID))
            pList.insert(m_playerGUID);
    }

    bool HasPlayer(ObjectGuid guid)
    {
        return (pList.find(guid) != pList.end());
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

        if (!HasPlayer(player->GetGUID()) && me->GetMapId() == 1)
        {
            m_playerGUID = player->GetGUID();
            AddPlayer();
            me->AI()->Talk(0, player); 
            m_playerGUID = ObjectGuid::Empty;
        }
    }

    void sGossipHello(Player* player)
    {
        ClearGossipMenuFor(player);

        if (player->GetMapId() == 1)
        {
            /// GossipID: 21720  TextID: 33094  GossipOptions: 1  GossipText: 0
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, (GOSSIP_ZIDORMI_2), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            SendGossipMenuFor(player, 33094, me->GetGUID());
        }
        else
        {
            ///GossipID: 21720  TextID: 33093  GossipOptions: 1  GossipText: 0
            AddGossipItemFor(player, GOSSIP_ICON_CHAT,(GOSSIP_ZIDORMI_1), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            SendGossipMenuFor(player, 33093, me->GetGUID());
        }
    }

    void sGossipSelect(Player* player, uint32 /*menuId*/, uint32 gossipListId)
    {
        CloseGossipMenuFor(player);

        if (player->GetMapId() == 1)
        {
            player->RemoveAurasDueToSpell(AURA_TIME_TRAVELLING);
            player->CastSpell(player, SPELL_BLACK);
            player->SeamlessTeleportToMap(1817);
        }
        else
        {
            player->CastSpell(player, AURA_TIME_TRAVELLING, true);
            player->TeleportTo(1, -6467.526f, -219.9097f, 5.90872f, 2.209932f);
        }
    }
};

struct npc_nolan_speed_131963 : public ScriptedAI
{
    npc_nolan_speed_131963(Creature* creature) : ScriptedAI(creature) { }

    enum Texts
    {
        SAY_FIRST_LINE                                        = 0,
        SAY_SECOND_LINE                                       = 1,
        SAY_THIRD_LINE                                        = 2
    };

    void sQuestAccept(Player* player, Quest const* quest) override
    {
        if (quest->GetQuestId() == QUEST_FREE_SAMPLES)
            Talk(SAY_FIRST_LINE, player);

        if (quest->GetQuestId() == QUEST_THE_TWILIGHT_SURVIVOR)
            Talk(SAY_SECOND_LINE, player);
    }

    void sQuestReward(Player* player, Quest const* quest, uint32 /*opt*/)  override
    {
        if (quest->GetQuestId() == QUEST_A_THE_BLOOD_OF_AZEROTH)
            Talk(SAY_THIRD_LINE, player);
    }
};

struct npc_kelsey_steelspark_130030 : public ScriptedAI
{
    npc_kelsey_steelspark_130030(Creature* creature) : ScriptedAI(creature) { }

    enum Texts
    {
        SAY_FIRST_LINE                                        = 0
    };

    void sQuestAccept(Player* player, Quest const* quest) override
    {
        if (quest->GetQuestId() == QUEST_ITS_A_SABOTAGE)
            Talk(SAY_FIRST_LINE, player);
    }
};

struct npc_tammy_tinkspinner_132606 : public ScriptedAI
{
    npc_tammy_tinkspinner_132606(Creature* creature) : ScriptedAI(creature) { }

    enum Texts
    {
        SAY_FIRST_LINE                                        = 0,
        SAY_SECOND_LINE                                       = 1
    };

    void sQuestAccept(Player* player, Quest const* quest) override
    {
        if (quest->GetQuestId() == QUEST_LARVAE_BY_THE_DOZEN)
            Talk(SAY_FIRST_LINE, player);
    }

    void sQuestReward(Player* player, Quest const* quest, uint32 /*opt*/)  override
    {
        if (quest->GetQuestId() == QUEST_LARVAE_BY_THE_DOZEN)
            Talk(SAY_SECOND_LINE, player);
    }
};

struct npc_khargus_stonemantle_132192 : public ScriptedAI
{
    npc_khargus_stonemantle_132192(Creature* creature) : ScriptedAI(creature) { }

    enum Texts
    {
        SAY_FIRST_LINE                                        = 0
    };

    void sQuestReward(Player* player, Quest const* quest, uint32 /*opt*/)  override
    {
        if (quest->GetQuestId() == QUEST_FREE_SAMPLES)
            Talk(SAY_FIRST_LINE, player);
    }
};

enum ArchmageKhadgar
{
    POINT_JUMP                                                = 0,
    POINT_DESPAWN                                             = 1,

    CONVERSATION_TALK                                         = 6623
};

struct npc_archmage_khadgar_130032 : public ScriptedAI
{
    npc_archmage_khadgar_130032(Creature* creature) : ScriptedAI(creature) { }

    void UpdateAI(uint32 diff) override
    {
        _scheduler.Update(diff);
    }

    void MovementInform(uint32 /*type*/, uint32 id) override
    {
        switch (id)
        {
            case POINT_JUMP:
                _scheduler.Schedule(250ms, [this](TaskContext /*context*/)
                {
                    // me->GetMotionMaster()->MoveJump({ 1107.84f, 7222.57f, 38.9725f, me->GetOrientation() }, me->GetSpeed(MOVE_RUN), 1.4125f, POINT_DESPAWN);
                });
                break;
            case POINT_DESPAWN:
                me->DisappearAndDie();
                break;
            default:
                break;
        }
    }

    void sQuestAccept(Player* player, Quest const* quest) override
    {
        if (quest->GetQuestId() == QUEST_A_THE_SPEAKERS_PERSPECTIVE)
            Conversation::CreateConversation(CONVERSATION_TALK, player, player->GetPosition(), { player->GetGUID() });
    }

private:
    TaskScheduler _scheduler;
};

enum MagniBronzebeard
{
    CONVERSATION_A_THE_SPEAKERS_PERSPECTIVE                   = 6617,
    KILLMONSTERCREDIT_A_THE_SPEAKERS_PERSPECTIVE              = 130216
};

struct npc_magni_bronzebeard_130216 : public ScriptedAI
{
    npc_magni_bronzebeard_130216(Creature* creature) : ScriptedAI(creature)
    {
        Initialize();
    }

    void Initialize()
    {
        m_playerGUID = ObjectGuid::Empty;
    }

    void AddPlayer()
    {
        if (!HasPlayer(m_playerGUID))
            pList.insert(m_playerGUID);
    }

    bool HasPlayer(ObjectGuid guid)
    {
        return (pList.find(guid) != pList.end());
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

        if (!HasPlayer(player->GetGUID()) && (player->HasQuest(QUEST_A_THE_SPEAKERS_PERSPECTIVE) || player->HasQuest(QUEST_H_THE_SPEAKERS_PERSPECTIVE)) )
        {
            m_playerGUID = player->GetGUID();
            AddPlayer();
            player->KilledMonsterCredit(KILLMONSTERCREDIT_A_THE_SPEAKERS_PERSPECTIVE);
            Conversation::CreateConversation(CONVERSATION_A_THE_SPEAKERS_PERSPECTIVE, player, player->GetPosition(), { player->GetGUID() });
            m_playerGUID = ObjectGuid::Empty;
        }
    }

private:
    std::set<ObjectGuid> pList;
    ObjectGuid   m_playerGUID;
};

enum Other
{
    NPC_ANGUS_STORMBREW                                       = 132684,
    GO_TWILIGHT_OUTHOUSE                                      = 280948,
    QUEST_A_WEE_BIT_O_CLOTH                                   = 50229,
    SPELL_EXPLOSION                                           = 261618,
    SPELL_ON_FIRE                                             = 261604,
    CONVERSATION_ON_QUEST_ACCEPT                              = 6723,
    CONVERSATION_ON_QUEST_COMPLETE                            = 6724
};

class go_twilight_outhouse : public GameObjectScript
{
public:
    go_twilight_outhouse() : GameObjectScript("go_twilight_outhouse") { }

    bool OnQuestAccept(Player* player, GameObject* /*go*/, Quest const* quest) override
    {
        if (quest->GetQuestId() == QUEST_A_WEE_BIT_O_CLOTH)
            Conversation::CreateConversation(CONVERSATION_ON_QUEST_ACCEPT, player, player->GetPosition(), { player->GetGUID() });
            return true;
    }

    bool OnQuestReward(Player* player, GameObject* /*go*/, Quest const* quest, uint32 /*opt*/) override
    {
        if (quest->GetQuestId() == QUEST_A_WEE_BIT_O_CLOTH)
            Conversation::CreateConversation(CONVERSATION_ON_QUEST_COMPLETE, player, player->GetPosition(), { player->GetGUID() });
            return true;
    }
};

struct npc_pixni_rustbomb_132040 : public ScriptedAI
{
    npc_pixni_rustbomb_132040(Creature* creature) : ScriptedAI(creature) { }

    enum Texts
    {
        SAY_FIRST_LINE                                        = 0,
        SAY_SECOND_LINE                                       = 1
    };

    void sQuestAccept(Player* player, Quest const* quest) override
    {
        if (quest->GetQuestId() == QUEST_THE_SOURCE_OF_POWER)
            Talk(SAY_FIRST_LINE, player);
    }

    void sQuestReward(Player* player, Quest const* quest, uint32 /*opt*/)  override
    {
        if (quest->GetQuestId() == QUEST_THE_SOURCE_OF_POWER)
            Talk(SAY_SECOND_LINE, player);
    }
};

struct npc_gizmax_greasebolt_132045 : public ScriptedAI
{
    npc_gizmax_greasebolt_132045(Creature* creature) : ScriptedAI(creature) { }

    enum
    {  
        SAY_FIRST_LINE                                        = 0
    };

    void sQuestAccept(Player* player, Quest const* quest) override
    {
        if (quest->GetQuestId() == QUEST_GIZMAX_GREASEBOLT)
            Talk(SAY_FIRST_LINE, player);
    }
};

struct npc_grol_warblade_132147 : public ScriptedAI
{
    npc_grol_warblade_132147(Creature* creature) : ScriptedAI(creature) { }

    enum Texts
    {
        SAY_FIRST_LINE                                        = 0,
        SAY_SECOND_LINE                                       = 1,
        SAY_THIRD_LINE                                        = 2
    };

    void sQuestAccept(Player* player, Quest const* quest) override
    {
        if (quest->GetQuestId() == QUEST_LAZY_PROSPECTORS)
            Talk(SAY_FIRST_LINE, player);

        if (quest->GetQuestId() == QUEST_H_THE_TWILIGHT_SURVIVOR)
            Talk(SAY_SECOND_LINE, player);
    }

    void sQuestReward(Player* player, Quest const* quest, uint32 /*opt*/) override
    {
        if (quest->GetQuestId() == QUEST_H_THE_BLOOD_OF_AZEROTH)
            Talk(SAY_THIRD_LINE, player);
    }
};

struct npc_lazy_prospector_133019 : public ScriptedAI
{
    npc_lazy_prospector_133019(Creature* creature) : ScriptedAI(creature) { }

    void OnSpellClick(Unit* clicker, bool& /*result*/)
    {
        if (Player* player = clicker->ToPlayer())
        {
            if (player->GetQuestStatus(QUEST_LAZY_PROSPECTORS) == QUEST_STATUS_INCOMPLETE)
            {
                player->KilledMonsterCredit(me->GetEntry());
                me->DespawnOrUnsummon(5000);
                Position runPos = me->GetPosition();
                GetPositionWithDistInFront(me, 15.f, runPos);
                me->SetSpeed(MOVE_RUN,1.8f);
                me->GetMotionMaster()->MovePoint(1, runPos);
                ///TALK RANDOM 0-5
                Talk(urand(0, 5), player);
                me->GetMotionMaster()->Clear();                
            }
        }
    }
};

struct npc_archmage_khadgar_130033 : public ScriptedAI
{
    npc_archmage_khadgar_130033(Creature* creature) : ScriptedAI(creature) { }

    void sQuestAccept(Player* player, Quest const* quest) override
    {
        if (quest->GetQuestId() == QUEST_THE_SPEAKERS_PERSPECTIVE)
            Conversation::CreateConversation(CONVERSATION_TALK, player, player->GetPosition(), { player->GetGUID() });
    }
};

#define GOSSIP_NATHANOS_BLIGHTCALLER "Tell me what happened at the party."

struct npc_nathanos_blightcaller_132254 : public ScriptedAI
{
    npc_nathanos_blightcaller_132254(Creature* creature) : ScriptedAI(creature)
    {
        Initialize();
    }

    std::set<ObjectGuid> pList;
    ObjectGuid m_playerGUID;

    void Initialize()
    {
        m_playerGUID = ObjectGuid::Empty;
    }

    void AddPlayer()
    {
        if (!HasPlayer(m_playerGUID))
            pList.insert(m_playerGUID);
    }

    bool HasPlayer(ObjectGuid guid)
    {
        return (pList.find(guid) != pList.end());
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

        if (!HasPlayer(player->GetGUID()) && player->HasQuest(QUEST_SUMMONS_TO_ORGRIMMAR))
        {
            m_playerGUID = player->GetGUID();
            AddPlayer();
            //me->AI()->Talk(0, player);
            m_playerGUID = ObjectGuid::Empty;
        }
    }

    void sGossipHello(Player* player)
    {
        if (player->HasQuest(QUEST_SUMMONS_TO_ORGRIMMAR))
        {
            player->ForceCompleteQuest(QUEST_SUMMONS_TO_ORGRIMMAR);
            ClearGossipMenuFor(player);

            if (me->IsQuestGiver())
                player->PrepareQuestMenu(me->GetGUID()); /* return true*/

            SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());
        }
        else if (player->GetQuestStatus(QUEST_A_RECENT_DISCOVERY) == QUEST_STATUS_INCOMPLETE)
        {
            ClearGossipMenuFor(player);
            AddGossipItemFor(player, GOSSIP_ICON_CHAT,(GOSSIP_NATHANOS_BLIGHTCALLER), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
            SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());
        }
        else
        {
            ClearGossipMenuFor(player);

            if (me->IsQuestGiver())
                player->PrepareQuestMenu(me->GetGUID()); /* return true*/

            SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());
        }
    }

    void sGossipSelect(Player* player, uint32 /*menuId*/, uint32 gossipListId)
    {
        CloseGossipMenuFor(player);

        if (player->HasQuest(QUEST_A_RECENT_DISCOVERY))
        {
            TC_LOG_ERROR("server.worldserver", " sGossipSelect 2");
            player->CastSpell(player, SCENE_A_RECENT_DISCOVERY, true);
        }
    }

    void sQuestAccept(Player* player, Quest const* quest)
    {
        if (quest->GetQuestId() == QUEST_H_WITNESS_TO_THE_WOUND)
            player->AddConversationDelayedTeleport(5000, 6610, 1817, -6467.526f, -219.9097f, 5.90872f, 2.209932f);
    }

    void sQuestReward(Player* player, Quest const* quest, uint32 /*opt*/)
    {
        if (quest->GetQuestId() == QUEST_SUMMONS_TO_ORGRIMMAR)
            if (const Quest* quest_gift = sObjectMgr->GetQuestTemplate(QUEST_A_RECENT_DISCOVERY))
                player->AddQuest(quest_gift, me);
    }
};

struct npc_laurette_royston_132995 : public ScriptedAI
{
    npc_laurette_royston_132995(Creature* creature) : ScriptedAI(creature) { }

    void sGossipHello(Player* player)
    {
        if (player->GetQuestStatus(QUEST_A_THE_SPEAKERS_CALL) == QUEST_STATUS_INCOMPLETE || player->IsGameMaster())
        {
            ClearGossipMenuFor(player);
            AddGossipItemFor(player, GOSSIP_ICON_CHAT,(GOSSIP_NATHANOS_BLIGHTCALLER), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
            AddGossipItemFor(player, 22129, 0, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
            SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());
        }
    }

    void sGossipSelect(Player* player, uint32 /*menuId*/, uint32 gossipListId)
    {
        CloseGossipMenuFor(player);

        if (player->HasQuest(QUEST_A_THE_SPEAKERS_CALL))
        {
            player->CastSpell(player, 262048, true);
            PhasingHandler::AddPhase(player, PHASE_AFTER_QUEST, true);
            player->TeleportTo(1817, -7482.873f, 1822.149f, 1076.7f, 3.63f);
        }
    }
};

struct npc_magni_bronzebeard_133387 : public ScriptedAI
{
    npc_magni_bronzebeard_133387(Creature* creature) : ScriptedAI(creature) { }

    void sQuestReward(Player* player, Quest const* quest, uint32 /*opt*/)  override
    {
        if (quest->GetQuestId() == QUEST_THE_POWER_IN_OUR_HANDS) { }
    }

    void UpdateAI(uint32 diff) override
    {
        _scheduler.Update(diff);
    }

    void sGossipSelect(Player* player, uint32 /*menuId*/, uint32 gossipListId)
    {
        CloseGossipMenuFor(player);

        if (player->HasQuest(QUEST_THE_POWER_IN_OUR_HANDS))
        {
            player->KilledMonsterCredit(132483);
            player->CastSpell(player, SCENE_THE_POWER_IN_OUR_HANDS, true);
        }
    }

private:
    TaskScheduler _scheduler;
};

class scene_the_power_in_our_hands : public SceneScript
{
public:
    scene_the_power_in_our_hands() : SceneScript("scene_the_power_in_our_hands") { }

    void OnSceneEnd(Player* player, uint32 /*sceneInstanceID*/, SceneTemplate const* /*sceneTemplate*/) override
    {
        player->KilledMonsterCredit(133395);

        // player->ForceCompleteQuest(SCENE_THE_POWER_IN_OUR_HANDS);
        /// AchievementID 12071
        /// TO DO add full power to AP
    }
};

struct npc_kaylie_benson_133254 : public ScriptedAI
{
    npc_kaylie_benson_133254(Creature* creature) : ScriptedAI(creature) { }

    void sGossipSelect(Player* player, uint32 /*menuId*/, uint32 gossipListId)
    {
        CloseGossipMenuFor(player);
        PhasingHandler::RemovePhase(player, PHASE_AFTER_QUEST, true);
        player->TeleportTo(1817, -6419.63f, 180.85f, 8.52f, 4.419f);
    }
};

void AddSC_silithus_legion()
{
    new On110Silithus();
    RegisterCreatureAI(npc_master_mathias_shaw_132255);
    RegisterCreatureAI(npc_zidormi_128607);
    RegisterCreatureAI(npc_nolan_speed_131963);
    RegisterCreatureAI(npc_kelsey_steelspark_130030);
    RegisterCreatureAI(npc_tammy_tinkspinner_132606);
    RegisterCreatureAI(npc_khargus_stonemantle_132192);
    RegisterCreatureAI(npc_archmage_khadgar_130032);
    RegisterCreatureAI(npc_magni_bronzebeard_130216);
    new go_twilight_outhouse();
    RegisterCreatureAI(npc_pixni_rustbomb_132040);
    RegisterCreatureAI(npc_gizmax_greasebolt_132045);
    RegisterCreatureAI(npc_grol_warblade_132147);
    RegisterCreatureAI(npc_lazy_prospector_133019);
    RegisterCreatureAI(npc_archmage_khadgar_130033);
    RegisterCreatureAI(npc_nathanos_blightcaller_132254);
    RegisterCreatureAI(npc_laurette_royston_132995);
    RegisterCreatureAI(npc_magni_bronzebeard_133387);
    new scene_the_power_in_our_hands();
    RegisterCreatureAI(npc_kaylie_benson_133254);
}
