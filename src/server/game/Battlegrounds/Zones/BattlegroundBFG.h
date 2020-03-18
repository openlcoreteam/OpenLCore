/*
 * Copyright (C) 2008-2019 MagicStorm
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

#ifndef __BATTLEGROUNDBFG_H
#define __BATTLEGROUNDBFG_H

#include "Battleground.h"
#include "BattlegroundScore.h"
#include "Object.h"

enum BG_BFG_WorldStates
{
    BG_BFG_OP_OCCUPIED_BASES_HORDE          = 1778,
    BG_BFG_OP_OCCUPIED_BASES_ALLY           = 1779,
    BG_BFG_OP_RESOURCES_ALLY                = 1776,
    BG_BFG_OP_RESOURCES_HORDE               = 1777,
    BG_BFG_OP_RESOURCES_MAX                 = 1780,
    BG_BFG_OP_RESOURCES_WARNING             = 1955
};

const uint32 BG_BFG_OP_NODESTATES[3] = { 1767, 1772, 1782 };

const uint32 BG_BFG_OP_NODEICONS[3] = { 1842, 1845, 1846 };

enum BG_BFG_NodeObjectId
{
    BG_BFG_OBJECTID_NODE_BANNER_0 = 228050,       // Lighthouse banner
    BG_BFG_OBJECTID_NODE_BANNER_1 = 228052,       // Waterworks banner
    BG_BFG_OBJECTID_NODE_BANNER_2 = 228053        // Mines banner
};

enum BG_BFG_ObjectType
{
    //BANNERS
    BG_BFG_OBJECT_BANNER_NEUTRAL            = 0,
    BG_BFG_OBJECT_BANNER_CONT_A             = 1,
    BG_BFG_OBJECT_BANNER_CONT_H             = 2,
    BG_BFG_OBJECT_BANNER_ALLY               = 3,
    BG_BFG_OBJECT_BANNER_HORDE              = 4,
    //AURAS
    BG_BFG_OBJECT_AURA_ALLY                 = 5,
    BG_BFG_OBJECT_AURA_HORDE                = 6,
    BG_BFG_OBJECT_AURA_CONTESTED            = 7,
    //GATES
    BG_BFG_OBJECT_GATE_A_1                  = 24,
    BG_BFG_OBJECT_GATE_A_2                  = 25,
    BG_BFG_OBJECT_GATE_H_1                  = 26,
    BG_BFG_OBJECT_GATE_H_2                  = 27,
    //BUFFS
    BG_BFG_OBJECT_SPEEDBUFF_LIGHTHOUSE      = 28,
    BG_BFG_OBJECT_REGENBUFF_LIGHTHOUSE      = 29,
    BG_BFG_OBJECT_BERSERKBUFF_LIGHTHOUSE    = 30,
    BG_BFG_OBJECT_SPEEDBUFF_MINE            = 31,
    BG_BFG_OBJECT_REGENBUFF_MINE            = 32,
    BG_BFG_OBJECT_BERSERKBUFF_MINE          = 33,
    BG_BFG_OBJECT_SPEEDBUFF_WATERWORKS      = 34,
    BG_BFG_OBJECT_REGENBUFF_WATERWORKS      = 35,
    BG_BFG_OBJECT_BERSERKBUFF_WATERWORKS    = 36,
    BG_BFG_OBJECT_MAX                       = 37
};

/*Object id templates from DB*/
enum BG_BFG_ObjectTypes
{
    //BANNERS
    BG_BFG_OBJECTID_BANNER_A                = 180058,
    BG_BFG_OBJECTID_BANNER_CONT_A           = 180059,
    BG_BFG_OBJECTID_BANNER_H                = 180060,
    BG_BFG_OBJECTID_BANNER_CONT_H           = 180061,

    //AURAS
    BG_BFG_OBJECTID_AURA_A                  = 180100,
    BG_BFG_OBJECTID_AURA_H                  = 180101,
    BG_BFG_OBJECTID_AURA_C                  = 180102,

    //GATES
    BG_BFG_OBJECTID_GATE_A_1                = 207177,
    BG_BFG_OBJECTID_GATE_A_2                = 180322,
    BG_BFG_OBJECTID_GATE_H_1                = 207178,
    BG_BFG_OBJECTID_GATE_H_2                = 180322
};

enum BG_BFG_Timers
{
    BG_BFG_FLAG_CAPTURING_TIME              = 60000
};

enum BG_BFG_Score
{
    BG_BFG_WARNING_NEAR_VICTORY_SCORE       = 1200,
    BG_BFG_MAX_TEAM_SCORE                   = 1500
};

enum BG_BFG_BattlegroundNodes
{
    //NODES
    BG_BFG_NODE_LIGHTHOUSE                  = 0,
    BG_BFG_NODE_WATERWORKS                  = 1,
    BG_BFG_NODE_MINE                        = 2,

    BG_BFG_DYNAMIC_NODES_COUNT              = 3,    // Dynamic nodes that can be captured (it's normally 4)

    //SPIRIT
    BG_BFG_SPIRIT_ALIANCE                   = 3,
    BG_BFG_SPIRIT_HORDE                     = 4,

    BG_BFG_ALL_NODES_COUNT                  = 5
};

enum BG_BFG_BroadcastTexts
{
    BG_BFG_TEXT_ALLIANCE_NEAR_VICTORY       = 10598,
    BG_BFG_TEXT_HORDE_NEAR_VICTORY          = 10599,
    BG_BFG_TEXT_START_TWO_MINUTE            = 13123,
    BG_BFG_TEXT_START_ONE_MINUTE            = 1059,
    BG_BFG_TEXT_START_HALF_MINUTE           = 1123,
    BG_BFG_TEXT_BATTLE_HAS_BEGUN            = 1234
};

struct BFGNodeInfo
{
    uint32 NodeId;
    uint32 TextAllianceAssaulted;
    uint32 TextHordeAssaulted;
    uint32 TextAllianceTaken;
    uint32 TextHordeTaken;
    uint32 TextAllianceDefended;
    uint32 TextHordeDefended;
    uint32 TextAllianceClaims;
    uint32 TextHordeClaims;
};

BFGNodeInfo const BFGNodes[BG_BFG_DYNAMIC_NODES_COUNT] =
{
    { BG_BFG_NODE_LIGHTHOUSE, 45903, 45904, 45905, 45906, 45907, 45908, 45909, 45910 },
    { BG_BFG_NODE_WATERWORKS, 45887, 45888, 45889, 45890, 45891, 45892, 45893, 45894 },
    { BG_BFG_NODE_MINE, 10230, 10231, 10232, 10233, 10234, 10235, 10282, 10283 }
};

enum BG_BFG_NodeStatus
{
    BG_BFG_NODE_TYPE_NEUTRAL            = 0,
    BG_BFG_NODE_TYPE_CONTESTED          = 1,
    BG_BFG_NODE_STATUS_ALLY_CONTESTED   = 1,
    BG_BFG_NODE_STATUS_HORDE_CONTESTED  = 2,
    BG_BFG_NODE_TYPE_OCCUPIED           = 3,
    BG_BFG_NODE_STATUS_ALLY_OCCUPIED    = 3,
    BG_BFG_NODE_STATUS_HORDE_OCCUPIED   = 4
};

enum BG_BFG_Sounds
{
    BG_BFG_SOUND_NODE_CLAIMED               = 8192,
    BG_BFG_SOUND_NODE_CAPTURED_ALLIANCE     = 8173,
    BG_BFG_SOUND_NODE_CAPTURED_HORDE        = 8213,
    BG_BFG_SOUND_NODE_ASSAULTED_ALLIANCE    = 8212,
    BG_BFG_SOUND_NODE_ASSAULTED_HORDE       = 8174,
    BG_BFG_SOUND_NEAR_VICTORY               = 8456
};

enum BG_BFG_Objetives
{
    BG_OBJECTIVE_ASSAULT_BASE               = 370,
    BG_OBJECTIVE_DEFEND_BASE                = 371
};

enum BG_BFG_ExploitTeleportLocations
{
    BFG_EXPLOIT_TELEPORT_LOCATION_ALLIANCE = 3705,
    BFG_EXPLOIT_TELEPORT_LOCATION_HORDE    = 3706
};

#define BG_BG_NotBGBGWeekendHonorTicks      330
#define BG_BG_BGBGWeekendHonorTicks         200
#define BG_BG_NotBGBGWeekendReputationTicks 200
#define BG_BG_BGBGWeekendReputationTicks    150

// x, y, z, o
Position const BG_BFG_NodePositions[BG_BFG_DYNAMIC_NODES_COUNT] =
{
    { 1057.7800f, 1278.260010f, 3.192400f, 1.864820f },  // Lighthouse
    { 980.08f, 948.707f, 12.7478f, 2.74016f },           // Waterwork
    { 1251.010f, 958.3939f, 5.680f, 2.7698f }            // mine
};

// x, y, z, o, rot0, rot1, rot2, rot3
const float BG_BFG_DoorPositions[2][8] =
{
    { 918.876f, 1336.56f, 27.6195f, 2.77481f, 0.0f, 0.0f, 0.983231f, 0.182367f },
    { 1396.15f, 977.014f, 7.43169f, 6.27043f, 0.0f, 0.0f, 0.006378f, -0.99998f }
};

const uint32 BG_BFG_TickIntervals[4] = { 0, 12000, 6000, 1000 };
const uint32 BG_BFG_TickPoints[4] = { 0, 10, 10, 30 };

// WorldSafeLocs ids for 3 nodes, and for ally, and horde starting location
const uint32 BG_BFG_GraveyardIds[BG_BFG_ALL_NODES_COUNT] = { 1736, 1738, 1735, 1740, 1739 };

// x, y, z, o
const float BG_BFG_BuffPositions[BG_BFG_DYNAMIC_NODES_COUNT][4] =
{
    { 1063.39f, 1309.09f, 4.91f, 3.98f }, // Lighthouse
    { 990.95f, 984.46f, 13.01f, 4.57f },  // Waterworks
    { 1196.65f, 1020.01f, 7.97f, 5.74f }, // Mine
                                      //    { 1107.57f, 912.18f, 27.54f, 5.53f } To be named
};

// x, y, z, o
Position const BG_BFG_SpiritGuidePos[BG_BFG_ALL_NODES_COUNT] =
{
    { 1036.32f, 1341.61f, 11.55f, 4.78f }, // Lighthouse
	{ 886.44f, 938.06f, 24.13f, 0.53f },   // Waterworks
	{ 1252.39f, 831.77f, 27.78f, 1.59f },  // Mine
	{ 898.15f, 1341.58f, 27.66f, 6.06f },  // alliance starting base
	{ 1408.16f, 977.34f, 7.44f, 3.18f }    // horde starting base
};

struct BG_BFG_BannerTimer
{
    uint32      timer;
    uint8       type;
    uint8       teamIndex;
};

struct BattlegroundBFGScore final : public BattlegroundScore
{
    friend class BattlegroundBFG;
    
    protected:
        BattlegroundBFGScore(ObjectGuid playerGuid, uint32 team) : BattlegroundScore(playerGuid, team), BasesAssaulted(0), BasesDefended(0) { }

        void UpdateScore(uint32 type, uint32 value) override
        {
            switch (type)
            {
                case SCORE_BASES_ASSAULTED:
                    BasesAssaulted += value;
                    break;
                case SCORE_BASES_DEFENDED:
                    BasesDefended += value;
                    break;
                default:
                    BattlegroundScore::UpdateScore(type, value);
                    break;
            }
        }

        void BuildPvPLogPlayerDataPacket(WorldPackets::Battleground::PVPLogData::PlayerData& playerData) const override
        {
            BattlegroundScore::BuildPvPLogPlayerDataPacket(playerData);

            playerData.Stats.push_back(BasesAssaulted);
            playerData.Stats.push_back(BasesDefended);
        }

        uint32 GetAttr1() const final override { return BasesAssaulted; }
        uint32 GetAttr2() const final override { return BasesDefended; }

        uint32 BasesAssaulted;
        uint32 BasesDefended;
};

class BattlegroundBFG : public Battleground
{
    public:
        BattlegroundBFG();
        ~BattlegroundBFG();
        
        void AddPlayer(Player* player) override;
        void StartingEventCloseDoors() override;
        void StartingEventOpenDoors() override;
        void RemovePlayer(Player* player, ObjectGuid guid, uint32 team) override;
        void HandleAreaTrigger(Player* source, uint32 trigger, bool entered) override;
        bool SetupBattleground() override;
        void Reset() override;
        void EndBattleground(uint32 winner) override;
        WorldSafeLocsEntry const* GetClosestGraveYard(Player* player) override;
        WorldSafeLocsEntry const* GetExploitTeleportLocation(Team team) override;

        /* Scorekeeping */
        bool UpdatePlayerScore(Player* player, uint32 type, uint32 value, bool doAddHonor = true) override;

        void FillInitialWorldStates(WorldPackets::WorldState::InitWorldStates& packet) override;

        /* Nodes occupying */
        void EventPlayerClickedOnFlag(Player* source, GameObject* target_obj) override;

        /* Achievement req. */
        bool IsAllNodesControlledByTeam(uint32 team) const override;
        bool CheckAchievementCriteriaMeet(uint32 /*criteriaId*/, Player const* /*player*/, Unit const* /*target*/ = nullptr, uint32 /*miscvaluel*/ = 0) override;

        uint32 GetPrematureWinner() override;
private:
    void PostUpdateImpl(uint32 diff) override;
    /* Gameobject spawnin/despawnig */
    void _CreateBanner(uint8 node, uint8 type, uint8 teamIndex, bool delay);
    void _DelBanner(uint8 node, uint8 type, uint8 teamIndex);
    void _SendNodeUpdate(uint8 node);

    /* Create spawning/despawning */
    /// @todo working, scripted peons spawning
    void _NodeOccupied(uint8 node, Team team);
    void _NodeDeOccupied(uint8 node);

    /* Nodes info:
    0: Neutral
    1: Ally contested
    2: Horde contested
    3: Ally occupied
    4: Horde ocuupied
    */
    uint8                   m_Nodes[BG_BFG_DYNAMIC_NODES_COUNT];
    uint8                   m_prevNodes[BG_BFG_DYNAMIC_NODES_COUNT];
    BG_BFG_BannerTimer      m_BannerTimers[BG_BFG_DYNAMIC_NODES_COUNT];
    uint32                  m_NodeTimers[BG_BFG_DYNAMIC_NODES_COUNT];

    uint32                  m_lastTick[BG_TEAMS_COUNT];
    uint32                  m_HonorScoreTics[BG_TEAMS_COUNT];
    uint32                  m_ReputationScoreTics[BG_TEAMS_COUNT];

    bool                    m_IsInformedNearVictory;
    uint32                  m_HonorTics;
    uint32                  m_ReputationTics;

    //Need for achievements
    bool                    m_TeamScores500Disadvantage[BG_TEAMS_COUNT];
};

#endif