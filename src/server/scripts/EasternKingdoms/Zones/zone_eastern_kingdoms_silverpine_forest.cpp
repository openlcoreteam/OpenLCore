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
SDName: Silverpine_Forest
SD%Complete: 100
SDComment: Quest support: 435
SDCategory: Silverpine Forest
EndScriptData */

/* ContentData
npc_deathstalker_erland
EndContentData */

#include "ScriptMgr.h"
#include "Player.h"
#include "ScriptedEscortAI.h"
#include "Vehicle.h"
#include "CombatAI.h"
#include "Log.h"
#include "ScriptedGossip.h"

/*######
## npc_deathstalker_erland
######*/

enum eErland
{
    SAY_QUESTACCEPT     = 0,
    SAY_START           = 1,
    SAY_AGGRO           = 2,
    SAY_PROGRESS        = 3,
    SAY_LAST            = 4,

    SAY_RANE            = 0,
    SAY_RANE_ANSWER     = 5,
    SAY_MOVE_QUINN      = 6,

    SAY_QUINN           = 7,
    SAY_QUINN_ANSWER    = 0,
    SAY_BYE             = 8,

    QUEST_ESCORTING     = 435,
    NPC_RANE            = 1950,
    NPC_QUINN           = 1951
};

class npc_deathstalker_erland : public CreatureScript
{
public:
    npc_deathstalker_erland() : CreatureScript("npc_deathstalker_erland") { }

    struct npc_deathstalker_erlandAI : public npc_escortAI
    {
        npc_deathstalker_erlandAI(Creature* creature) : npc_escortAI(creature) { }

        void WaypointReached(uint32 waypointId) override
        {
            Player* player = GetPlayerForEscort();
            if (!player)
                return;

            switch (waypointId)
            {
                case 1:
                    Talk(SAY_START, player);
                    break;
                case 10:
                    Talk(SAY_PROGRESS);
                    break;
                case 13:
                    Talk(SAY_LAST, player);
                    player->GroupEventHappens(QUEST_ESCORTING, me);
                    break;
                case 15:
                    if (Creature* rane = me->FindNearestCreature(NPC_RANE, 20.0f))
                        rane->AI()->Talk(SAY_RANE);
                    break;
                case 16:
                    Talk(SAY_RANE_ANSWER);
                    break;
                case 17:
                    Talk(SAY_MOVE_QUINN);
                    break;
                case 24:
                    Talk(SAY_QUINN);
                    break;
                case 25:
                    if (Creature* quinn = me->FindNearestCreature(NPC_QUINN, 20.0f))
                        quinn->AI()->Talk(SAY_QUINN_ANSWER);
                    break;
                case 26:
                    Talk(SAY_BYE);
                    break;
            }
        }

        void Reset() override { }

        void EnterCombat(Unit* who) override
        {
            Talk(SAY_AGGRO, who);
        }
    };

    bool OnQuestAccept(Player* player, Creature* creature, Quest const* quest) override
    {
        if (quest->GetQuestId() == QUEST_ESCORTING)
        {
            creature->AI()->Talk(SAY_QUESTACCEPT, player);

            if (npc_escortAI* pEscortAI = CAST_AI(npc_deathstalker_erland::npc_deathstalker_erlandAI, creature->AI()))
                pEscortAI->Start(true, false, player->GetGUID());
        }

        return true;
    }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_deathstalker_erlandAI(creature);
    }
};

/*######
## AddSC
######*/

// entry: 44615, quest: 26965 'The Warchief Cometh'
class npc_grand_executor_mortuus : public CreatureScript
{
public:
    npc_grand_executor_mortuus() : CreatureScript("npc_grand_executor_mortuus") { }

    enum eNPC
    {
        QUEST_THE_WARCHIEF_COMETH = 26965,
        NPC_GARROSH_HELLSCREAM = 44629,
        NPC_HIGH_WARLORD_CROMUSH = 44640,
        NPC_LADY_SYLVANAS_WINDRUNNER = 44365,
        NPC_HELLSCREEMS_ELITE = 44636,
        NPC_AGATHA = 44608,
        NPC_PORTAL_FROM_ORGRIMMAR = 44630,
        PLAYER_GUID = 99999,
        MOVE_CROMUSH_TO_SYLVANAS = 5405701,
        MOVE_CROMUSH_TO_HOME = 5405702,
        SPELL_RAISE_FORSAKEN = 83173,
        SPELL_AIR_REVENANT_ENTRANCE = 55761,
        SPELL_SIMPLE_TELEPORT = 12980,
        ACTION_START_ANIM = 101,
        EVENT_START_ANIM = 11,
        EVENT_AGATHA_RAISE_FORSAKEN = 201,
        EVENT_TALK_SEQUENCE = 301,
        EVENT_SUMMON_PORTAL = 401,
        EVENT_SUMMON_GARROSH = 12,
        CROMUSH_PATH_TO_GARROSH = 5405701,
        CROMUSH_PATH_TO_HOME = 5405702,
    };

    bool OnQuestAccept(Player* player, Creature* creature, const Quest* quest) override
    {
        if (quest->GetQuestId() == QUEST_THE_WARCHIEF_COMETH)
        {
            creature->GetAI()->SetGUID(player->GetGUID(), PLAYER_GUID);
            creature->GetAI()->DoAction(ACTION_START_ANIM);
            return true;
        }

        return false;
    }

    struct npc_grand_executor_mortuus_AI : public ScriptedAI
    {
        npc_grand_executor_mortuus_AI(Creature* creature) : ScriptedAI(creature) { }

        void Initialize() { }

        void Reset() override
        {
            _events.Reset();
            _playerGUID = ObjectGuid::Empty;
            _garroshGUID = ObjectGuid::Empty;
            _cromushGUID = ObjectGuid::Empty;
            _sylvanasGUID = ObjectGuid::Empty;
            _agathaGUID = ObjectGuid::Empty;
            _animPhase = 0;
            spawnedList.clear();
            portalList.clear();
        }

        void JustSummoned(Creature* summon) override
        {
            spawnedList.push_back(summon->GetGUID());

            switch (summon->GetEntry())
            {
                case NPC_GARROSH_HELLSCREAM:
                {
                    summon->CastSpell(summon, SPELL_SIMPLE_TELEPORT);
                    _garroshGUID = summon->GetGUID();
                    break;
                }
                case NPC_HELLSCREEMS_ELITE:
                {
                    summon->CastSpell(summon, SPELL_SIMPLE_TELEPORT);
                    break;
                }
                case NPC_PORTAL_FROM_ORGRIMMAR:
                {
                    portalList.push_back(summon->GetGUID());
                    break;
                }
                default:
                    break;
            }
        }

        void SetGUID(ObjectGuid guid, int32 id)
        {
            switch (id)
            {
                case PLAYER_GUID:
                {
                    _playerGUID = guid;
                    break;
                }
            }
        }

        void DoAction(int32 param) override
        {
            switch (param)
            {
            case ACTION_START_ANIM:
            {
                if (!_animPhase)
                {
                    if (Creature* cromush = me->FindNearestCreature(NPC_HIGH_WARLORD_CROMUSH, 50.0f))
                        if (Creature* sylvanas = me->FindNearestCreature(NPC_LADY_SYLVANAS_WINDRUNNER, 10.0f))
                            if (Creature* agatha = me->FindNearestCreature(NPC_AGATHA, 25.0f))
                            {
                                _animPhase = 1;
                                _cromushGUID = cromush->GetGUID();
                                _sylvanasGUID = sylvanas->GetGUID();
                                _agathaGUID = agatha->GetGUID();
                                _events.ScheduleEvent(EVENT_START_ANIM, 2000);
                            }
                }
                break;
            }
            }
        }

        void UpdateAI(uint32 diff) override
        {
            UpdateVictim();
            _events.Update(diff);

            while (uint32 eventId = _events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_START_ANIM:
                    _events.ScheduleEvent(EVENT_TALK_SEQUENCE, 1000);
                    _events.ScheduleEvent(EVENT_SUMMON_PORTAL, 4000);
                    _events.ScheduleEvent(EVENT_SUMMON_GARROSH, 5500);
                    break;
                case EVENT_SUMMON_PORTAL:
                    SummonPortalsFromOrgrimmar();
                    break;
                case EVENT_SUMMON_GARROSH:
                    SummonGarroshAndHisEliteGuards();
                    break;
                case EVENT_TALK_SEQUENCE:
                    if (Creature* sylvanas = ObjectAccessor::GetCreature(*me, _sylvanasGUID))
                        sylvanas->AI()->Talk(0);
                    _events.ScheduleEvent(EVENT_TALK_SEQUENCE + 1, 6000);
                    break;
                case EVENT_TALK_SEQUENCE + 1:
                {
                    if (Creature* sylvanas = ObjectAccessor::GetCreature(*me, _sylvanasGUID)) {
                        sylvanas->SetFacingTo(0.808979f);
                        sylvanas->AI()->Talk(1);
                    }
                    if (Creature* garrosh = ObjectAccessor::GetCreature(*me, _garroshGUID))
                        garrosh->GetMotionMaster()->MoveJump(1378.65f, 1044.23f, 53.8389f, 5.251f, 15.0f, 10.0f);
                    if (Creature* cromush = ObjectAccessor::GetCreature(*me, _cromushGUID))
                        cromush->GetMotionMaster()->MovePath(CROMUSH_PATH_TO_GARROSH, false);
                    _events.ScheduleEvent(EVENT_TALK_SEQUENCE + 2, 5000);
                    break;
                }
                case EVENT_TALK_SEQUENCE + 2:
                {
                    if (Creature* sylvanas = ObjectAccessor::GetCreature(*me, _sylvanasGUID))
                        sylvanas->SetFacingTo(3.924652f);
                    if (Creature* garrosh = ObjectAccessor::GetCreature(*me, _garroshGUID))
                        garrosh->AI()->Talk(0);
                    _events.ScheduleEvent(EVENT_TALK_SEQUENCE + 3, 12000);
                    break;
                }
                case EVENT_TALK_SEQUENCE + 3:
                {
                    if (Creature* garrosh = ObjectAccessor::GetCreature(*me, _garroshGUID)) {
                        garrosh->SetFacingTo(3.9670f);
                        garrosh->AI()->Talk(1);
                    }
                    _events.ScheduleEvent(EVENT_TALK_SEQUENCE + 4, 7000);
                    break;
                }
                case EVENT_TALK_SEQUENCE + 4:
                {
                    if (Creature* sylvanas = ObjectAccessor::GetCreature(*me, _sylvanasGUID)) {
                        sylvanas->SetFacingTo(2.426115f);
                        sylvanas->AI()->Talk(2);
                    }
                    _events.ScheduleEvent(EVENT_TALK_SEQUENCE + 5, 5000);
                    break;
                }
                case EVENT_TALK_SEQUENCE + 5:
                {
                    if (Creature* sylvanas = ObjectAccessor::GetCreature(*me, _sylvanasGUID)) {
                        sylvanas->SetFacingTo(3.924652f);
                        sylvanas->AI()->Talk(3);
                    }
                    _events.ScheduleEvent(EVENT_TALK_SEQUENCE + 6, 14000);
                    break;
                }
                case EVENT_TALK_SEQUENCE + 6:
                {
                    if (Creature* sylvanas = ObjectAccessor::GetCreature(*me, _sylvanasGUID))
                        sylvanas->AI()->Talk(4);
                    _events.ScheduleEvent(EVENT_TALK_SEQUENCE + 7, 5000);
                    break;
                }
                case EVENT_TALK_SEQUENCE + 7:
                {
                    if (Creature* garrosh = ObjectAccessor::GetCreature(*me, _garroshGUID))
                        garrosh->AI()->Talk(2);
                    _events.ScheduleEvent(EVENT_TALK_SEQUENCE + 8, 5000);
                    break;
                }
                case EVENT_TALK_SEQUENCE + 8:
                {
                    if (Creature* sylvanas = ObjectAccessor::GetCreature(*me, _sylvanasGUID))
                        sylvanas->AI()->Talk(5);
                    _events.ScheduleEvent(EVENT_TALK_SEQUENCE + 9, 6000);
                    break;
                }
                case EVENT_TALK_SEQUENCE + 9:
                {
                    if (Creature* sylvanas = ObjectAccessor::GetCreature(*me, _sylvanasGUID))
                        sylvanas->AI()->Talk(6);
                    _events.ScheduleEvent(EVENT_TALK_SEQUENCE + 10, 6000);
                    break;
                }
                case EVENT_TALK_SEQUENCE + 10:
                {
                    if (Creature* sylvanas = ObjectAccessor::GetCreature(*me, _sylvanasGUID))
                        sylvanas->AI()->Talk(7);
                    _events.ScheduleEvent(EVENT_TALK_SEQUENCE + 11, 8000);
                    break;
                }
                case EVENT_TALK_SEQUENCE + 11:
                {
                    if (Creature* sylvanas = ObjectAccessor::GetCreature(*me, _sylvanasGUID))
                        sylvanas->AI()->Talk(8);
                    _events.ScheduleEvent(EVENT_AGATHA_RAISE_FORSAKEN, 2000);
                    break;
                }
                case EVENT_TALK_SEQUENCE + 12:
                {
                    if (Creature* cromush = ObjectAccessor::GetCreature(*me, _cromushGUID))
                        cromush->AI()->Talk(0);
                    _events.ScheduleEvent(EVENT_TALK_SEQUENCE + 13, 6000);
                    break;
                }
                case EVENT_TALK_SEQUENCE + 13:
                {
                    if (Creature* garrosh = ObjectAccessor::GetCreature(*me, _garroshGUID))
                        garrosh->AI()->Talk(3);
                    _events.ScheduleEvent(EVENT_TALK_SEQUENCE + 14, 14000);
                    break;
                }
                case EVENT_TALK_SEQUENCE + 14:
                {
                    if (Creature* agatha = ObjectAccessor::GetCreature(*me, _agathaGUID))
                        agatha->GetMotionMaster()->MovePoint(1236, agatha->GetHomePosition());
                    if (Creature* sylvanas = ObjectAccessor::GetCreature(*me, _sylvanasGUID))
                        sylvanas->AI()->Talk(9);
                    _events.ScheduleEvent(EVENT_TALK_SEQUENCE + 15, 10000);
                    break;
                }
                case EVENT_TALK_SEQUENCE + 15:
                {
                    if (Creature* agatha = ObjectAccessor::GetCreature(*me, _agathaGUID))
                        agatha->SetFacingTo(0.855211f);
                    if (Creature* garrosh = ObjectAccessor::GetCreature(*me, _garroshGUID))
                        garrosh->AI()->Talk(4);
                    _events.ScheduleEvent(EVENT_TALK_SEQUENCE + 16, 6000);
                    break;
                }
                case EVENT_TALK_SEQUENCE + 16:
                {
                    if (Creature* garrosh = ObjectAccessor::GetCreature(*me, _garroshGUID))
                        garrosh->AI()->Talk(5);
                    _events.ScheduleEvent(EVENT_TALK_SEQUENCE + 17, 6000);
                    break;
                }
                case EVENT_TALK_SEQUENCE + 17:
                {
                    if (Creature* sylvanas = ObjectAccessor::GetCreature(*me, _sylvanasGUID))
                        sylvanas->AI()->Talk(10);
                    _events.ScheduleEvent(EVENT_TALK_SEQUENCE + 18, 6000);
                    break;
                }
                case EVENT_TALK_SEQUENCE + 18:
                {
                    if (Creature* garrosh = ObjectAccessor::GetCreature(*me, _garroshGUID)) {
                        garrosh->SetFacingTo(5.251188f);
                        garrosh->AI()->Talk(6);
                    }
                    _events.ScheduleEvent(EVENT_TALK_SEQUENCE + 19, 6000);
                    break;
                }
                case EVENT_TALK_SEQUENCE + 19:
                {
                    if (Creature* garrosh = ObjectAccessor::GetCreature(*me, _garroshGUID)) {
                        garrosh->SetFacingTo(2.426115f);
                        garrosh->AI()->Talk(7);
                    }
                    _events.ScheduleEvent(EVENT_TALK_SEQUENCE + 20, 17000);
                    break;
                }
                case EVENT_TALK_SEQUENCE + 20:
                {
                    if (Creature* cromush = ObjectAccessor::GetCreature(*me, _cromushGUID))
                        cromush->AI()->Talk(1);
                    _events.ScheduleEvent(EVENT_TALK_SEQUENCE + 21, 5000);
                    break;
                }
                case EVENT_TALK_SEQUENCE + 21:
                {
                    if (Creature* garrosh = ObjectAccessor::GetCreature(*me, _garroshGUID)) {
                        garrosh->SetFacingTo(5.251188f);
                        garrosh->AI()->Talk(8);
                    }
                    _events.ScheduleEvent(EVENT_TALK_SEQUENCE + 22, 15000);
                    break;
                }
                case EVENT_TALK_SEQUENCE + 22:
                {
                    if (Creature* cromush = ObjectAccessor::GetCreature(*me, _cromushGUID))
                        cromush->GetMotionMaster()->MovePath(CROMUSH_PATH_TO_HOME, false);
                    if (Creature* garrosh = ObjectAccessor::GetCreature(*me, _garroshGUID)) {
                        garrosh->SetFacingTo(3.967066f);
                        garrosh->SetWalk(true);
                        garrosh->GetMotionMaster()->MovePoint(1234, 1357.04f, 1056.93f, 52.95f);
                    }
                    if (Player* player = ObjectAccessor::GetPlayer(*me, _playerGUID))
                        player->KilledMonsterCredit(NPC_GARROSH_HELLSCREAM);
                    _events.ScheduleEvent(EVENT_TALK_SEQUENCE + 23, 8000);
                    break;
                }
                case EVENT_TALK_SEQUENCE + 23:
                {
                    RemoveAllSpawnedCreatures();
                    if (Creature* cromush = ObjectAccessor::GetCreature(*me, _cromushGUID))
                        cromush->GetMotionMaster()->MoveTargetedHome();
                    Reset();
                    break;
                }
                case EVENT_AGATHA_RAISE_FORSAKEN:
                {
                    if (Creature* agatha = ObjectAccessor::GetCreature(*me, _agathaGUID))
                    {
                        agatha->GetMotionMaster()->MovePoint(1235, 1367.02f, 1031.54f, 55.9914f);
                    }
                    _events.ScheduleEvent(EVENT_AGATHA_RAISE_FORSAKEN + 1, 6000);
                    break;
                }
                case EVENT_AGATHA_RAISE_FORSAKEN + 1:
                {
                    if (Creature* agatha = ObjectAccessor::GetCreature(*me, _agathaGUID))
                        agatha->CastSpell(1368.65f, 1032.19f, 63.3033f, SPELL_RAISE_FORSAKEN, true);
                    _events.ScheduleEvent(EVENT_TALK_SEQUENCE + 12, 9000);
                    break;
                }
                default:
                    break;
                }
            }
            // no melee attacks
        }

        void SummonPortalsFromOrgrimmar()
        {
            me->SummonCreature(NPC_PORTAL_FROM_ORGRIMMAR, 1358.62f, 1054.72f, 53.1200f, 0, TEMPSUMMON_TIMED_DESPAWN, 300000);
            me->SummonCreature(NPC_PORTAL_FROM_ORGRIMMAR, 1393.27f, 1021.20f, 53.2225f, 0, TEMPSUMMON_TIMED_DESPAWN, 300000);
            me->SummonCreature(NPC_PORTAL_FROM_ORGRIMMAR, 1404.71f, 1063.73f, 60.5617f, 0, TEMPSUMMON_TIMED_DESPAWN, 300000);
        }

        void SummonGarroshAndHisEliteGuards()
        {
            for (std::list<ObjectGuid>::const_iterator itr = portalList.begin(); itr != portalList.end(); itr++)
                if (Creature* portal = ObjectAccessor::GetCreature(*me, (*itr)))
                    portal->CastSpell(portal, SPELL_AIR_REVENANT_ENTRANCE);

            // one side
            me->SummonCreature(NPC_HELLSCREEMS_ELITE, 1387.90f, 1029.71f, 53.21853f, 2.827433f, TEMPSUMMON_TIMED_DESPAWN, 300000);
            me->SummonCreature(NPC_HELLSCREEMS_ELITE, 1389.79f, 1024.51f, 53.20833f, 2.827433f, TEMPSUMMON_TIMED_DESPAWN, 300000);
            me->SummonCreature(NPC_HELLSCREEMS_ELITE, 1388.05f, 1026.91f, 53.20833f, 2.827433f, TEMPSUMMON_TIMED_DESPAWN, 300000);
            me->SummonCreature(NPC_HELLSCREEMS_ELITE, 1388.16f, 1020.88f, 53.25523f, 2.827433f, TEMPSUMMON_TIMED_DESPAWN, 300000);
            me->SummonCreature(NPC_HELLSCREEMS_ELITE, 1385.79f, 1025.99f, 53.22593f, 2.827433f, TEMPSUMMON_TIMED_DESPAWN, 300000);
            me->SummonCreature(NPC_HELLSCREEMS_ELITE, 1386.69f, 1023.26f, 53.24393f, 2.827433f, TEMPSUMMON_TIMED_DESPAWN, 300000);
            me->SummonCreature(NPC_HELLSCREEMS_ELITE, 1384.33f, 1022.04f, 53.28123f, 2.827433f, TEMPSUMMON_TIMED_DESPAWN, 300000);
            me->SummonCreature(NPC_HELLSCREEMS_ELITE, 1391.10f, 1027.73f, 53.20483f, 2.827433f, TEMPSUMMON_TIMED_DESPAWN, 300000);
            // other side
            me->SummonCreature(NPC_HELLSCREEMS_ELITE, 1359.10f, 1046.55f, 52.97053f, 5.253441f, TEMPSUMMON_TIMED_DESPAWN, 300000);
            me->SummonCreature(NPC_HELLSCREEMS_ELITE, 1360.89f, 1051.81f, 53.19793f, 5.253441f, TEMPSUMMON_TIMED_DESPAWN, 300000);
            me->SummonCreature(NPC_HELLSCREEMS_ELITE, 1360.75f, 1048.84f, 53.12893f, 5.253441f, TEMPSUMMON_TIMED_DESPAWN, 300000);
            me->SummonCreature(NPC_HELLSCREEMS_ELITE, 1364.43f, 1053.62f, 53.29343f, 5.253441f, TEMPSUMMON_TIMED_DESPAWN, 300000);
            me->SummonCreature(NPC_HELLSCREEMS_ELITE, 1363.08f, 1048.15f, 53.22223f, 5.253441f, TEMPSUMMON_TIMED_DESPAWN, 300000);
            me->SummonCreature(NPC_HELLSCREEMS_ELITE, 1364.08f, 1050.84f, 53.29163f, 5.253441f, TEMPSUMMON_TIMED_DESPAWN, 300000);
            me->SummonCreature(NPC_HELLSCREEMS_ELITE, 1366.69f, 1050.31f, 53.34203f, 5.253441f, TEMPSUMMON_TIMED_DESPAWN, 300000);
            me->SummonCreature(NPC_HELLSCREEMS_ELITE, 1357.85f, 1050.12f, 52.99823f, 5.253441f, TEMPSUMMON_TIMED_DESPAWN, 300000);
            // Garrosh
            me->SummonCreature(NPC_GARROSH_HELLSCREAM, 1402.45f, 1061.62f, 60.56173f, 3.926991f, TEMPSUMMON_TIMED_DESPAWN, 300000);
        }

        void RemoveAllSpawnedCreatures()
        {
            for (std::list<ObjectGuid>::const_iterator itr = spawnedList.begin(); itr != spawnedList.end(); itr++)
                if (Creature* npc = ObjectAccessor::GetCreature(*me, (*itr)))
                    npc->DespawnOrUnsummon(1);
        }

    private:
        EventMap _events;
        ObjectGuid _playerGUID;
        ObjectGuid _garroshGUID;
        ObjectGuid _cromushGUID;
        ObjectGuid _sylvanasGUID;
        ObjectGuid _agathaGUID;
        uint8 _animPhase;
        std::list<ObjectGuid>spawnedList;
        std::list<ObjectGuid>portalList;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_grand_executor_mortuus_AI(creature);
    }
};

// 44592 44593 // quest 26965
class npc_fallen_human : public CreatureScript
{
public:
    npc_fallen_human() : CreatureScript("npc_fallen_human") { }

    enum eSpell
    {
        SPELL_FEIGNED = 80636,
    };

    struct npc_fallen_human_AI : public ScriptedAI
    {
        npc_fallen_human_AI(Creature* creature) : ScriptedAI(creature) { }

        void Reset() override
        {
            me->AddAura(SPELL_FEIGNED, me);
            me->SetFlag(UNIT_FIELD_FLAGS_2, UNIT_FLAG2_FEIGN_DEATH);
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_fallen_human_AI(creature);
    }
};

// spell 83149 'Forsaken Trooper Master Script' for the quest 26965 'The Warchief Cometh'
class spell_forsaken_trooper_master_script : public SpellScriptLoader
{
public:
    spell_forsaken_trooper_master_script() : SpellScriptLoader("spell_forsaken_trooper_master_script") { }

    enum eSpell
    {
        SPELL_FORSAKEN_TROOPER_MALE_01 = 83150,
        SPELL_FORSAKEN_TROOPER_MALE_02 = 83163,
        SPELL_FORSAKEN_TROOPER_MALE_03 = 83164,
        SPELL_FORSAKEN_TROOPER_MALE_04 = 83165,
        SPELL_FORSAKEN_TROOPER_FEMALE_01 = 83152,
        SPELL_FORSAKEN_TROOPER_FEMALE_02 = 83166,
        SPELL_FORSAKEN_TROOPER_FEMALE_03 = 83167,
        SPELL_FORSAKEN_TROOPER_FEMALE_04 = 83168,

    };

    class spell_forsaken_trooper_master_script_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_forsaken_trooper_master_script_SpellScript);

        void HandleScriptEffect(SpellEffIndex /*effIndex*/)
        {
            if (Unit* unit = GetCaster())
                if (Creature* fallenHuman = unit->ToCreature())
                {
                    uint32 roll = RAND(83150, 83163, 83164, 83165, 83152, 83166, 83167, 83168);
                    fallenHuman->CastSpell(fallenHuman, roll, true);
                    fallenHuman->DespawnOrUnsummon(100000);
                }
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_forsaken_trooper_master_script_SpellScript::HandleScriptEffect, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_forsaken_trooper_master_script_SpellScript();
    }
};

// spell 83173 'Raise Forsaken' for the quest 26965 'The Warchief Cometh'
class spell_raise_forsaken : public SpellScriptLoader
{
public:
    spell_raise_forsaken() : SpellScriptLoader("spell_raise_forsaken") { }

    enum eSpell
    {
        NPC_FALLEN_HUMAN_MALE = 44592,
        NPC_FALLEN_HUMAN_FEMALE = 44593,
        SPELL_FEIGNED = 80636,
    };

    class IsNotInEntryList
    {
    public:
        explicit IsNotInEntryList(std::list<uint32>entrys) : _entrys(entrys) { }

        bool operator()(WorldObject* obj) const
        {
            if (Creature* target = obj->ToCreature())
                for (std::list<uint32>::const_iterator itr = _entrys.begin(); itr != _entrys.end(); ++itr)
                    if (target->GetEntry() == *itr)
                        return false;

            return true;
        }

    private:
        std::list<uint32> _entrys;
    };

    class spell_raise_forsaken_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_raise_forsaken_SpellScript);

        void FilterTargets(std::list<WorldObject*>& targets)
        {
            std::list<uint32>entrys;
            entrys.push_back(NPC_FALLEN_HUMAN_MALE);
            entrys.push_back(NPC_FALLEN_HUMAN_FEMALE);
            targets.remove_if(IsNotInEntryList(entrys));
        }

        void Register()
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_raise_forsaken_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENTRY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_raise_forsaken_SpellScript();
    }

    class spell_raise_forsaken_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_raise_forsaken_AuraScript);

        void OnApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            if (Unit* unit = GetTarget())
                if (Creature* fallenHuman = unit->ToCreature())
                {
                    fallenHuman->SetHover(true);
                    fallenHuman->SetFloatValue(UNIT_FIELD_HOVERHEIGHT, frand(1.8f, 2.2f));
                }
        }

        void OnRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            if (Unit* unit = GetTarget())
                if (Creature* fallenHuman = unit->ToCreature())
                {
                    fallenHuman->SetHover(false);
                    fallenHuman->RemoveFlag(UNIT_FIELD_FLAGS_2, UNIT_FLAG2_FEIGN_DEATH);
                    fallenHuman->RemoveAura(SPELL_FEIGNED);
                    fallenHuman->CastSpell(fallenHuman, 83149, true);
                }
        }

        void Register() override
        {
            OnEffectApply += AuraEffectApplyFn(spell_raise_forsaken_AuraScript::OnApply, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
            AfterEffectRemove += AuraEffectRemoveFn(spell_raise_forsaken_AuraScript::OnRemove, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_raise_forsaken_AuraScript();
    }
};

// npc 44825 for the quest 26998 'Iterating upon success'
#define GOSSIP_TAXI_TEXT "Show me where I can fly."
#define GOSSIP_OPTION_TEXT "I need to take a bat to the Dawning Isles."
class npc_bat_handler_maggotbreath : public CreatureScript
{
public:
    npc_bat_handler_maggotbreath() : CreatureScript("npc_bat_handler_maggotbreath") { }

    enum eNPC
    {
        QUEST_ITERATING_UPON_SUCCESS = 26998,
        SPELL_SUMMON_BAT = 83584,
        GOSSIP_ACTION_ID = 1,
    };

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action) override
    {
        player->PlayerTalkClass->ClearMenus();

        if (action == GOSSIP_ACTION_ID)
        {
            if (player->GetQuestStatus(QUEST_ITERATING_UPON_SUCCESS) == QUEST_STATUS_INCOMPLETE)
            {
                CloseGossipMenuFor(player);
                player->CastSpell(player, SPELL_SUMMON_BAT);
                creature->HandleEmoteCommand(EMOTE_ONESHOT_POINT);
                creature->AI()->Talk(0);
            }
        }

        return true;
    }
};

static const Position ForsakenBatLandInstance[32] =
{
    {1413.167f, 1020.025f, 56.2354f},
    {1379.672f, 1021.698f, 59.9887f},
    {1249.737f, 1001.905f, 66.9924f},
    {1212.133f, 981.977f, 65.3913f},
    {1180.250f, 927.461f, 60.3111f},
    {1149.332f, 766.078f, 57.3167f},
    {1192.427f, 475.569f, 62.4255f},
    {1204.811f, 329.134f, 50.3452f},
    {1197.199f, 295.636f, 47.8965f},
    {1119.129f, 234.839f, 46.6181f},
    {989.850f, 180.368f, 52.3217f},
    {904.214f, 168.247f, 53.1545f},
    {736.523f, 178.213f, 52.4740f},
    {721.224f, 213.371f, 53.8464f},
    {720.123f, 256.447f, 55.9538f},
    {790.195f, 289.270f, 52.1988f},
    {1058.381f, 312.523f, 51.4779f},
    {1078.933f, 313.845f, 51.2958f},
    {1174.250f, 330.960f, 51.4075f},
    {1186.853f, 345.036f, 50.4988f},
    {1209.858f, 406.546f, 54.7870f},
    {1300.053f, 659.114f, 70.2942f},
    {1361.854f, 853.952f, 70.2904f},
    {1408.335f, 1010.895f, 60.1401f},
    {1419.274f, 1020.781f, 54.8617f},

    {1009.702f, 353.118f, 57.484f},
    {994.671f, 465.943f, 80.597f},
    {972.181f, 656.085f, 119.203f},
    {986.189f, 699.040f, 122.876f},
    {1097.166f, 790.282f, 103.229f},
    {1338.653f, 979.091f, 68.574f},
    {1418.537f, 1019.482f, 53.918f},
};

// npc 44821 for the quest 26998 'Iterating upon success'
class npc_forsaken_bat : public CreatureScript
{
public:
    npc_forsaken_bat() : CreatureScript("npc_forsaken_bat") { }

    enum eNPC
    {
        QUEST_ITERATING_UPON_SUCCESS = 26998,
        NPC_VILE_FIN_ORACLE = 1908,
        NPC_BAT_HANDLER_MAGGOTBREATH = 44825,
        SPELL_GO_HOME = 83594,
    };

    struct npc_forsaken_bat_AI : public VehicleAI
    {
        npc_forsaken_bat_AI(Creature *c) : VehicleAI(c) { }

        uint8 uiPoint = 0;
        ObjectGuid _playerGUID = ObjectGuid::Empty;
        bool FlyDisabled;
        bool Fly;
        bool FlyAway;
        bool boarded;
        bool returning;

        void Reset() override
        {
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            _playerGUID = ObjectGuid::Empty;
            Fly = false;
            FlyDisabled = false;
            boarded = false;
            returning = false;
        }

        void IsSummonedBy(Unit* summoner) override
        {
            if (Player* player = summoner->ToPlayer())
                if (player->GetQuestStatus(QUEST_ITERATING_UPON_SUCCESS) == QUEST_STATUS_INCOMPLETE)
                    if (Vehicle* vehicle = me->GetVehicleKit())
                        _playerGUID = player->GetGUID();
        }

        void PassengerBoarded(Unit* who, int8 /*seatId*/, bool apply) override
        {
            if (who->GetTypeId() == TYPEID_PLAYER)
            {
                if (apply)
                {
                    if (who->ToPlayer()->GetQuestStatus(QUEST_ITERATING_UPON_SUCCESS) == QUEST_STATUS_INCOMPLETE)
                    {
                        me->SetCanFly(true);
                        me->SetDisableGravity(true);
                        me->SetSpeed(MOVE_FLIGHT, 9.9f);
                        me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                        me->GetMotionMaster()->MoveTakeoff(uiPoint, ForsakenBatLandInstance[uiPoint]);
                        boarded = true;
                        returning = false;
                    }
                }
            }
        }

        //Called at waypoint reached or PointMovement end
        void MovementInform(uint32 /*type*/, uint32 id) override
        {
            if (id == uiPoint && !FlyDisabled)
            {
                ++uiPoint;
                Fly = true;
            }
            if (id == uiPoint && id == 6)
            {
                // attempt to reduce the speed like in one time call handler
                me->SetSpeed(MOVE_FLIGHT, 3.5f);
                ++uiPoint;
                Fly = true;
            }
            if (id == uiPoint && id == 15)
            {
                // attempt to increase the speed like in one time call handler
                me->SetSpeed(MOVE_FLIGHT, 9.9f);
                ++uiPoint;
                Fly = true;
            }
        }

        void GoToTheNextPoint()
        {   
            me->GetMotionMaster()->MovePoint(uiPoint, ForsakenBatLandInstance[uiPoint]);
        }

        void UpdateAI(uint32 /*diff*/) override
        {
            // if player jumps off while flying there is no need to continue
            if (boarded && !FlyDisabled && !me->GetVehicleKit()->IsVehicleInUse())
            {
                me->DespawnOrUnsummon();
                return;
            }
            if (Player* player = ObjectAccessor::GetPlayer(*me, _playerGUID))
            {
                if (Fly && !FlyDisabled)
                {
                    Fly = false;
                    GoToTheNextPoint();
                    if (uiPoint == 1)
                    {
                        player->KilledMonsterCredit(NPC_BAT_HANDLER_MAGGOTBREATH);
                    }
                    if (uiPoint == 7)
                    {
                        // we are ready to kill the murlocks
                        Talk(0, player);
                    }
                    if (uiPoint >= 25 && !returning)
                    {
                        // we returned but the job is not done
                        if (Unit *player = me->GetVehicleKit()->GetPassenger(0))
                        {
                            player->ExitVehicle(me);
                            me->DespawnOrUnsummon();
                        }
                        FlyDisabled = true;
                        Fly = true;
                        boarded = false;
                    }
                    if (uiPoint >= 32)
                    {
                        // All is done! Finishing the staff.
                        if (Unit *player = me->GetVehicleKit()->GetPassenger(0))
                        {
                            player->ExitVehicle(me);
                            me->DespawnOrUnsummon();
                        }
                        FlyDisabled = true;
                        Fly = false;
                        boarded = false;
                    }
                }
                if (player->GetReqKillOrCastCurrentCount(QUEST_ITERATING_UPON_SUCCESS, NPC_VILE_FIN_ORACLE) >= 50 && !returning)
                {
                    // Coming home.
                    Talk(1, player);
                    me->CastSpell(me, SPELL_GO_HOME, true);
                    me->GetMotionMaster()->Clear();
                    uiPoint = 26;
                    returning = true;
                    me->SetSpeed(MOVE_FLIGHT, 9.9f);
                    GoToTheNextPoint();
                    Fly = false;
                }
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_forsaken_bat_AI(creature);
    }
};

// gameobject 205143 for the quest 27045 'Waiting to Exsanguinate'
class go_abandoned_outhouse : public GameObjectScript
{
public:
    go_abandoned_outhouse() : GameObjectScript("go_abandoned_outhouse") { }

    enum eGameObject
    {
        QUEST_WAITING_TO_EXSANGUINATE = 27045,
        SPELL_SUMMON_DEATHSTALKER_YORICK = 83751,
    };

    bool OnQuestAccept(Player* player, GameObject* go, Quest const* quest) override
    {
        if (quest->GetQuestId() == QUEST_WAITING_TO_EXSANGUINATE)
            player->CastSpell(1301.87f, 1189.36f, 52.1045f, SPELL_SUMMON_DEATHSTALKER_YORICK, true, 0, 0, player->GetGUID());

        return false;
    }
};

// npc 44882 for the quest 27045 'Waiting to exsanguinate'
class npc_deathstalker_rane_yorick : public CreatureScript
{
public:
    npc_deathstalker_rane_yorick() : CreatureScript("npc_deathstalker_rane_yorick") { }

    enum eNPC
    {
        NPC_DEATHSTALKER_RANE_YORICK = 44882,
        NPC_ARMOIRE_IN_ROOM = 44894,
        NPC_ARMOIRE_SUMMONED = 44893,
        NPC_PACKLEADER_IVAR_BLOODFANG = 44884,
        SPELL_STEALTH = 34189,
        SPELL_PERMANENT_FEIGN_DEATH = 29266,
        WAYPOINTS_UP = 4488201,
        MOVEPOINT_HIDDEN_PLACE = 1234,
        EVENT_START_ANIM = 101,
        EVENT_WAIT_ON_PLAYER,
        EVENT_TALK_TO_PLAYER,
        EVENT_HIDE,
        EVENT_SET_FACE_TO_BLOODFANG,
        EVENT_RANE_LAST_MOVE,
        ACTION_RANE_JUMP_DEATH = 2,
    };

    struct npc_deathstalker_rane_yorick_AI : public ScriptedAI
    {
        npc_deathstalker_rane_yorick_AI(Creature* creature) : ScriptedAI(creature)
        {
            Initialize();
        }

        void Initialize()
        {
            _playerGUID = ObjectGuid::Empty;
            _bloodfangGUID = ObjectGuid::Empty;
            _playerArrived = false;
            _events.Reset();
        }

        void IsSummonedBy(Unit* who) override
        {
            if (Player* player = who->ToPlayer())
                _playerGUID = player->GetGUID();
            _events.ScheduleEvent(EVENT_START_ANIM, 1000);
        }

        void MovementInform(uint32 type, uint32 id) override
        {
            if (type == WAYPOINT_MOTION_TYPE)
                switch (id)
                {
                    case 1:
                        Talk(0);
                        break;
                    case 15:
                        _events.ScheduleEvent(EVENT_WAIT_ON_PLAYER, 1000);
                        break;
                }
            if (type == POINT_MOTION_TYPE)
                switch (id)
                {
                    case MOVEPOINT_HIDDEN_PLACE:
                        me->SetFacingTo(4.8f);
                        break;
                }
        }

        void DoAction(int32 param) override
        {
            switch (param)
            {
                case ACTION_RANE_JUMP_DEATH:
                    _events.ScheduleEvent(EVENT_RANE_LAST_MOVE, 10);
                    break;
            }
        }

        void UpdateAI(uint32 diff) override
        {
            UpdateVictim();
            _events.Update(diff);

            while (uint32 eventId = _events.ExecuteEvent())
            {
                switch (eventId)
                {
                    case EVENT_START_ANIM:
                    {
                        me->GetMotionMaster()->MovePath(WAYPOINTS_UP, false);
                        break;
                    }
                    case EVENT_WAIT_ON_PLAYER:
                    {
                        if (Player* player = ObjectAccessor::GetPlayer(*me, _playerGUID))
                            if (abs(player->GetPositionZ() - me->GetPositionZ()) < 0.1f && player->GetDistance2d(me) < 5.0f && !_playerArrived)
                            {
                                _events.ScheduleEvent(EVENT_TALK_TO_PLAYER, 1000);
                                _playerArrived = true;
                            }
                            else
                                _events.ScheduleEvent(EVENT_WAIT_ON_PLAYER, 1000);
                        break;
                    }
                    case EVENT_TALK_TO_PLAYER:
                    {
                        Talk(1);
                        _events.ScheduleEvent(EVENT_HIDE, 3000);
                        _events.ScheduleEvent(EVENT_SET_FACE_TO_BLOODFANG, 5000);
                        break;
                    }
                    case EVENT_HIDE:
                    {
                        me->GetMotionMaster()->MovePoint(MOVEPOINT_HIDDEN_PLACE, 1313.515f, 1212.22f, 58.4988f);
                        me->CastSpell(me, SPELL_STEALTH);
                        break;
                    }
                    case EVENT_SET_FACE_TO_BLOODFANG:
                    {
                        if (!_bloodfangGUID)
                            if (Creature* ivar = me->FindNearestCreature(NPC_PACKLEADER_IVAR_BLOODFANG, 25.0f))
                                _bloodfangGUID = ivar->GetGUID();

                        if (Creature* ivar = ObjectAccessor::GetCreature(*me, _bloodfangGUID))
                            me->SetFacingToObject(ivar);

                        _events.ScheduleEvent(EVENT_SET_FACE_TO_BLOODFANG, 1000);
                        break;
                    }
                    case EVENT_RANE_LAST_MOVE:
                    {
                        me->MonsterMoveWithSpeed(1299.025f, 1206.724f, 59.64236f, 5.0f);
                        _events.ScheduleEvent(EVENT_RANE_LAST_MOVE + 1, 1000);
                        break;
                    }
                    case EVENT_RANE_LAST_MOVE + 1:
                    {
                        me->SetDisableGravity(false);
                        me->AddAura(SPELL_PERMANENT_FEIGN_DEATH, me);
                        me->DespawnOrUnsummon(60000);
                        break;
                    }
                    default:
                        break;
                }
            }
            DoMeleeAttackIfReady();
        }
        private:
            EventMap _events;
            ObjectGuid _playerGUID;
            ObjectGuid _bloodfangGUID;
            bool _playerArrived;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_deathstalker_rane_yorick_AI(creature);
    }
};

// npc armoire 44893 for quest 27045
class npc_armoire : public CreatureScript
{
public:
    npc_armoire() : CreatureScript("npc_armoire") { }

    enum eNPC
    {
        NPC_RANE_YORICK = 44882,
        NPC_LORD_DARIUS_CROWLEY = 44883,
        NPC_PACKLEADER_IVAR_BLOODFANG = 44884,
        PLAYER_GUID = 99999,
        MOVEPATH_DARIUS = 4488301,
        MOVEPATH_IVAR = 4488401,
        QUEST_WAITING_TO_EXSANGUINATE = 27045,
        SPELL_STEALTH = 34189,
        SPELL_PERMANENT_FEIGN_DEATH = 29266,
        SPELL_EJECT_PASSENGER_1 = 80743,
        SPELL_SUMMON_CROWLEY = 83752,
        SPELL_SUMMON_BLOODFANG = 83753,
        SPELL_SUMMON_CROWLEY_BLOODFANG_MASTER = 83762, // for spell effect 160 is no handler written in core
        SPELL_ARMOIRE_CAMERA_A = 83763,
        SPELL_ARMOIRE_CAMERA_B = 83764,
        SPELL_ARMOIRE_CAMERA_C = 83768,
        SPELL_ARMOIRE_CAMERA_D = 83769,
        SPELL_CONVERSATION_TRIGGER_01A = 83773,
        SPELL_CONVERSATION_TRIGGER_01B = 83774,
        SPELL_CONVERSATION_TRIGGER_01C = 83782,
        SPELL_CONVERSATION_TRIGGER_02A = 83775,
        SPELL_CONVERSATION_TRIGGER_02B = 83777,
        SPELL_CONVERSATION_TRIGGER_02C = 83779,
        SPELL_CONVERSATION_TRIGGER_02D = 83955,
        SPELL_CONVERSATION_TRIGGER_03 = 83787,
        SPELL_CONVERSATION_TRIGGER_04 = 83784,
        SPELL_REVERSE_RIDE_VEHICLE = 83781,
        SPELL_KILL_CREDIT_YORICK = 83786,
        SPELL_HIDE_IN_ARMOIRE = 83788,
        SPELL_DESPAWN_ALL = 83770,
        ACTION_MOVE_TO_RANA = 500,
        ACTION_RANE_JUMP_DEATH = 2,
        EVENT_START_ANIMATION = 101,
        EVENT_CAMERA_STEP = 200,
        EVENT_TEXT_STEP = 300,
    };

    struct npc_armoire_AI : public VehicleAI
    {
        npc_armoire_AI(Creature* creature) : VehicleAI(creature)
        {
            Initialize();
        }

        void Initialize()
        {
            m_playerGUID = ObjectGuid::Empty;
            m_raneGUID = ObjectGuid::Empty;
            m_crowleyGUID = ObjectGuid::Empty;
            m_bloodfangGUID = ObjectGuid::Empty;
            m_events.Reset();
        }

        void IsSummonedBy(Unit* who) override
        {
            if (Player* player = who->ToPlayer())
                if (player->GetQuestStatus(QUEST_WAITING_TO_EXSANGUINATE) == QUEST_STATUS_INCOMPLETE)
                    if (Vehicle* vehicle = me->GetVehicleKit())
                        m_playerGUID = player->GetGUID();
        }

        void PassengerBoarded(Unit* passenger, int8 seatId, bool apply) override
        {
            if (apply)
            {
                if (Player* player = passenger->ToPlayer())
                    if (player->GetQuestStatus(QUEST_WAITING_TO_EXSANGUINATE) == QUEST_STATUS_INCOMPLETE)
                    {
                        m_playerGUID = player->GetGUID();
                        m_events.ScheduleEvent(EVENT_START_ANIMATION, 2000);
                        return;
                    }
            }
            else
            {
                if (Creature* darius = ObjectAccessor::GetCreature(*me, m_crowleyGUID))
                    darius->DespawnOrUnsummon(1000);
                if (Creature* ivar = ObjectAccessor::GetCreature(*me, m_bloodfangGUID))
                    ivar->DespawnOrUnsummon(1000);
                if (Creature* rane = ObjectAccessor::GetCreature(*me, m_raneGUID))
                    rane->DespawnOrUnsummon(1000);
                me->DespawnOrUnsummon(1000);
            }

            m_playerGUID = ObjectGuid::Empty;
        }

        void SetGUID(ObjectGuid guid, int32 id)
        {
            switch (id)
            {
            case PLAYER_GUID:
                m_playerGUID = guid;
                break;
            case NPC_LORD_DARIUS_CROWLEY:
                m_crowleyGUID = guid;
                break;
            case NPC_PACKLEADER_IVAR_BLOODFANG:
                m_bloodfangGUID = guid;
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
                case EVENT_START_ANIMATION:
                {
                    if (Player* player = ObjectAccessor::GetPlayer(*me, m_playerGUID))
                    {
                        player->CastSpell(player, SPELL_SUMMON_CROWLEY_BLOODFANG_MASTER, true);
                        m_events.ScheduleEvent(EVENT_START_ANIMATION + 1, 2000);
                        m_events.ScheduleEvent(EVENT_CAMERA_STEP + 1, 4000);
                    }
                    break;
                }
                case EVENT_START_ANIMATION + 1:
                {
                    if (Creature* darius = ObjectAccessor::GetCreature(*me, m_crowleyGUID))
                        darius->GetMotionMaster()->MovePath(MOVEPATH_DARIUS, false);
                    if (Creature* ivar = ObjectAccessor::GetCreature(*me, m_bloodfangGUID))
                        ivar->GetMotionMaster()->MovePath(MOVEPATH_IVAR, false);
                    if (Creature* rane = me->FindNearestCreature(NPC_RANE_YORICK, 15.0f))
                        m_raneGUID = rane->GetGUID();
                    break;
                }
                case EVENT_CAMERA_STEP + 1:
                {
                    if (Creature* rane = ObjectAccessor::GetCreature(*me, m_raneGUID))
                        me->CastSpell(rane->GetPositionX(), rane->GetPositionY(), rane->GetPositionZ(), SPELL_CONVERSATION_TRIGGER_02D, true);
                    if (Creature* darius = ObjectAccessor::GetCreature(*me, m_crowleyGUID))
                        darius->SetOrientation(3.1577f);

                    m_events.ScheduleEvent(EVENT_CAMERA_STEP + 2, 16250);
                    m_events.ScheduleEvent(EVENT_TEXT_STEP + 1, 11500);
                    break;
                }
                case EVENT_CAMERA_STEP + 2:
                {
                    if (Creature* darius = ObjectAccessor::GetCreature(*me, m_crowleyGUID))
                        if (Creature* ivar = ObjectAccessor::GetCreature(*me, m_bloodfangGUID))
                            darius->CastSpell(ivar->GetPositionX(), ivar->GetPositionY(), ivar->GetPositionZ(), SPELL_CONVERSATION_TRIGGER_01A, true);

                    m_events.ScheduleEvent(EVENT_CAMERA_STEP + 3, 12000);
                    m_events.ScheduleEvent(EVENT_TEXT_STEP + 2, 3700);
                    break;
                }
                case EVENT_CAMERA_STEP + 3:
                {
                    if (Creature* darius = ObjectAccessor::GetCreature(*me, m_crowleyGUID))
                        if (Creature* ivar = ObjectAccessor::GetCreature(*me, m_bloodfangGUID))
                            ivar->CastSpell(darius->GetPositionX(), darius->GetPositionY(), darius->GetPositionZ(), SPELL_CONVERSATION_TRIGGER_01B, true);

                    m_events.ScheduleEvent(EVENT_CAMERA_STEP + 4, 19250);
                    m_events.ScheduleEvent(EVENT_TEXT_STEP + 3, 3700);
                    m_events.ScheduleEvent(EVENT_TEXT_STEP + 4, 12000);
                    break;
                }
                case EVENT_CAMERA_STEP + 4:
                {
                    if (Creature* darius = ObjectAccessor::GetCreature(*me, m_crowleyGUID))
                        if (Creature* ivar = ObjectAccessor::GetCreature(*me, m_bloodfangGUID))
                            darius->CastSpell(ivar->GetPositionX(), ivar->GetPositionY(), ivar->GetPositionZ(), SPELL_CONVERSATION_TRIGGER_02A, true);

                    m_events.ScheduleEvent(EVENT_CAMERA_STEP + 5, 18100);
                    m_events.ScheduleEvent(EVENT_TEXT_STEP + 5, 3700);
                    m_events.ScheduleEvent(EVENT_TEXT_STEP + 6, 7300);
                    m_events.ScheduleEvent(EVENT_TEXT_STEP + 7, 9800);
                    break;
                }
                case EVENT_CAMERA_STEP + 5:
                {
                    if (Creature* darius = ObjectAccessor::GetCreature(*me, m_crowleyGUID))
                        if (Creature* ivar = ObjectAccessor::GetCreature(*me, m_bloodfangGUID))
                            ivar->CastSpell(darius->GetPositionX(), darius->GetPositionY(), darius->GetPositionZ(), SPELL_CONVERSATION_TRIGGER_02B, true);

                    m_events.ScheduleEvent(EVENT_CAMERA_STEP + 6, 4800);
                    m_events.ScheduleEvent(EVENT_TEXT_STEP + 8, 2500);
                    break;
                }
                case EVENT_CAMERA_STEP + 6:
                {
                    if (Creature* darius = ObjectAccessor::GetCreature(*me, m_crowleyGUID))
                        if (Creature* ivar = ObjectAccessor::GetCreature(*me, m_bloodfangGUID))
                            darius->CastSpell(ivar->GetPositionX(), ivar->GetPositionY(), ivar->GetPositionZ(), SPELL_CONVERSATION_TRIGGER_02C, true);

                    m_events.ScheduleEvent(EVENT_CAMERA_STEP + 7, 30000);
                    m_events.ScheduleEvent(EVENT_TEXT_STEP + 9, 3700);
                    m_events.ScheduleEvent(EVENT_TEXT_STEP + 10, 7300);
                    // m_events.ScheduleEvent(EVENT_TEXT_STEP + 11, 12100);
                    m_events.ScheduleEvent(EVENT_TEXT_STEP + 12, 12500); // 20500
                    m_events.ScheduleEvent(EVENT_TEXT_STEP + 13, 20600); // 26600
                    break;
                }
                case EVENT_CAMERA_STEP + 7:
                {
                    if (Creature* rane = ObjectAccessor::GetCreature(*me, m_raneGUID))
                        if (Creature* ivar = ObjectAccessor::GetCreature(*me, m_bloodfangGUID))
                        {
                            ivar->CastSpell(rane->GetPositionX(), rane->GetPositionY(), rane->GetPositionZ(), SPELL_CONVERSATION_TRIGGER_01C, true);
                            rane->RemoveAura(SPELL_STEALTH);
                            rane->SetDisableGravity(true);
                            rane->EnterVehicle(ivar, 0);
                        }

                    m_events.ScheduleEvent(EVENT_CAMERA_STEP + 8, 3600);
                    m_events.ScheduleEvent(EVENT_TEXT_STEP + 14, 500);
                    break;
                }
                case EVENT_CAMERA_STEP + 8:
                {
                    if (Creature* rane = ObjectAccessor::GetCreature(*me, m_raneGUID))
                        if (Creature* ivar = ObjectAccessor::GetCreature(*me, m_bloodfangGUID))
                        {
                            rane->CastSpell(ivar->GetPositionX(), ivar->GetPositionY(), ivar->GetPositionZ(), SPELL_CONVERSATION_TRIGGER_04, true);
                            //ivar->CastSpell(ivar, SPELL_EJECT_PASSENGER_1);
                            rane->ExitVehicle(0);
                            rane->GetAI()->DoAction(ACTION_RANE_JUMP_DEATH);
                        }

                    m_events.ScheduleEvent(EVENT_CAMERA_STEP + 9, 14500);
                    m_events.ScheduleEvent(EVENT_TEXT_STEP + 15, 1500);
                    m_events.ScheduleEvent(EVENT_TEXT_STEP + 16, 7400);
                    break;
                }
                case EVENT_CAMERA_STEP + 9:
                {
                    if (Creature* darius = ObjectAccessor::GetCreature(*me, m_crowleyGUID))
                        if (Creature* ivar = ObjectAccessor::GetCreature(*me, m_bloodfangGUID))
                            ivar->CastSpell(darius->GetPositionX(), darius->GetPositionY(), darius->GetPositionZ(), SPELL_CONVERSATION_TRIGGER_03, true);

                    m_events.ScheduleEvent(EVENT_CAMERA_STEP + 10, 6000);
                    break;
                }
                case EVENT_CAMERA_STEP + 10:
                {
                    if (Player* player = ObjectAccessor::GetPlayer(*me, m_playerGUID))
                    {
                        if (Creature* darius = ObjectAccessor::GetCreature(*me, m_crowleyGUID))
                            darius->GetAI()->DoAction(ACTION_MOVE_TO_RANA);
                        if (Creature* ivar = ObjectAccessor::GetCreature(*me, m_bloodfangGUID))
                            ivar->GetAI()->DoAction(ACTION_MOVE_TO_RANA);

                        player->RemoveAura(SPELL_HIDE_IN_ARMOIRE);
                        player->GetMotionMaster()->Clear();
                        //player->GetMotionMaster()->MovePoint(1231, 1313.48f, 1206.09f, 58.5119f);
                    }

                    m_events.ScheduleEvent(EVENT_CAMERA_STEP + 11, 1000);
                    break;
                }
                case EVENT_CAMERA_STEP + 11:
                {
                    if (Player* player = ObjectAccessor::GetPlayer(*me, m_playerGUID))
                        if (player->GetQuestStatus(QUEST_WAITING_TO_EXSANGUINATE) == QUEST_STATUS_INCOMPLETE)
                            player->KilledMonsterCredit(44882, ObjectGuid::Empty);
                    me->CastSpell(me, SPELL_DESPAWN_ALL);
                    me->DespawnOrUnsummon(10);
                    break;
                }
                case EVENT_TEXT_STEP + 1:
                    if (Creature* crowley = ObjectAccessor::GetCreature(*me, m_crowleyGUID))
                        crowley->AI()->Talk(0);
                    break;
                case EVENT_TEXT_STEP + 2:
                    if (Creature* ivar = ObjectAccessor::GetCreature(*me, m_bloodfangGUID))
                        ivar->AI()->Talk(0);
                    break;
                case EVENT_TEXT_STEP + 3:
                    if (Creature* crowley = ObjectAccessor::GetCreature(*me, m_crowleyGUID))
                        crowley->AI()->Talk(1);
                    break;
                case EVENT_TEXT_STEP + 4:
                    if (Creature* crowley = ObjectAccessor::GetCreature(*me, m_crowleyGUID))
                        crowley->AI()->Talk(2);
                    break;
                case EVENT_TEXT_STEP + 5:
                    if (Creature* ivar = ObjectAccessor::GetCreature(*me, m_bloodfangGUID))
                        ivar->AI()->Talk(1);
                    break;
                case EVENT_TEXT_STEP + 6:
                    if (Creature* ivar = ObjectAccessor::GetCreature(*me, m_bloodfangGUID))
                        ivar->AI()->Talk(2);
                    break;
                case EVENT_TEXT_STEP + 7:
                    if (Creature* ivar = ObjectAccessor::GetCreature(*me, m_bloodfangGUID))
                        ivar->AI()->Talk(3);
                    break;
                case EVENT_TEXT_STEP + 8:
                    if (Creature* crowley = ObjectAccessor::GetCreature(*me, m_crowleyGUID))
                        crowley->AI()->Talk(3);
                    break;
                case EVENT_TEXT_STEP + 9:
                    if (Creature* ivar = ObjectAccessor::GetCreature(*me, m_bloodfangGUID))
                        ivar->AI()->Talk(4);
                    break;
                case EVENT_TEXT_STEP + 10:
                    if (Creature* ivar = ObjectAccessor::GetCreature(*me, m_bloodfangGUID))
                        ivar->AI()->Talk(5);
                    break;
                /*case EVENT_TEXT_STEP + 11:
                    if (Creature* ivar = ObjectAccessor::GetCreature(*me, m_bloodfangGUID))
                        ivar->AI()->Talk(6);
                    break;*/
                case EVENT_TEXT_STEP + 12:
                    if (Creature* ivar = ObjectAccessor::GetCreature(*me, m_bloodfangGUID))
                        ivar->AI()->Talk(6);
                    break;
                case EVENT_TEXT_STEP + 13:
                    if (Creature* ivar = ObjectAccessor::GetCreature(*me, m_bloodfangGUID))
                        ivar->AI()->Talk(7);
                    break;
                case EVENT_TEXT_STEP + 14:
                    if (Creature* rane = ObjectAccessor::GetCreature(*me, m_raneGUID))
                        rane->AI()->Talk(2);
                    break;
                case EVENT_TEXT_STEP + 15:
                    if (Creature* ivar = ObjectAccessor::GetCreature(*me, m_bloodfangGUID))
                        ivar->AI()->Talk(8);
                    break;
                case EVENT_TEXT_STEP + 16:
                    if (Creature* ivar = ObjectAccessor::GetCreature(*me, m_bloodfangGUID))
                        ivar->AI()->Talk(9);
                    break;
                }
            }
            // no melee attack
        }

        private:
            EventMap m_events;
            ObjectGuid m_playerGUID;
            ObjectGuid m_raneGUID;
            ObjectGuid m_crowleyGUID;
            ObjectGuid m_bloodfangGUID;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_armoire_AI(creature);
    }
};

// npc armoire 44894 for quest 27045
class npc_armoire_next : public CreatureScript
{
public:
    npc_armoire_next() : CreatureScript("npc_armoire_next") { }

    enum eNPC
    {
        NPC_DEATHSTALKER_RANE_YORICK = 44882,
        QUEST_WAITING_TO_EXSANGUINATE = 27045,
        SPELL_HIDE_IN_ARMOIRE = 83788,
        SPELL_SUMMON_HIDING_SPOT = 83756,
    };

    struct npc_armoire_next_AI : public ScriptedAI
    {
        npc_armoire_next_AI(Creature* creature) : ScriptedAI(creature) { }

        void OnSpellClick(Unit* clicker, bool& result) override
        {
            if (Player* player = clicker->ToPlayer())
                if (player->GetQuestStatus(QUEST_WAITING_TO_EXSANGUINATE) == QUEST_STATUS_INCOMPLETE)
                    if (Creature* rane = me->FindNearestCreature(NPC_DEATHSTALKER_RANE_YORICK, 5.0f))
                    {
                        player->CastSpell(me, SPELL_HIDE_IN_ARMOIRE, true);
                        player->CastSpell(1314.91f, 1211.39f, 58.49675f, SPELL_SUMMON_HIDING_SPOT, true);
                        return;
                    }

            result = false;
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_armoire_next_AI(creature);
    }
};

// npc 44883 Lord Darius Crowley for quest 27045 "Waiting to Exsanguinate"
class npc_lord_darius_crowley : public CreatureScript
{
public:
    npc_lord_darius_crowley() : CreatureScript("npc_lord_darius_crowley") { }

    enum eNPC
    {
        NPC_ARMOIRE = 44893,
        NPC_PACKLEADER_IVAR_BLOODFANG = 44884,
        EVENTS_TURN_FACE,
        ACTION_MOVE_TO_RANA = 500,
    };

    struct npc_lord_darius_crowley_AI : public ScriptedAI
    {
        npc_lord_darius_crowley_AI(Creature* creature) : ScriptedAI(creature)
        {
            Initialize();
        }

        void Initialize()
        {   
            _playerGUID = ObjectGuid::Empty;
            _armoireGUID = ObjectGuid::Empty;
            _bloodfangGUID = ObjectGuid::Empty;
            _events.Reset();
        }

        void Reset() override
        {
            me->SetReactState(REACT_PASSIVE);
        }

        void IsSummonedBy(Unit* summoner) override
        {
            if (Player* player = summoner->ToPlayer())
                _playerGUID = player->GetGUID();

            FindAllGuid();
        }

        void MovementInform(uint32 type, uint32 id) override
        {
            FindAllGuid();
            if (type == WAYPOINT_MOTION_TYPE)
                if (id == 5)
                    _events.ScheduleEvent(EVENTS_TURN_FACE, 250);

            if (type == POINT_MOTION_TYPE && id == 1230)
                me->DespawnOrUnsummon(1000);
        }

        void DoAction(int32 param) override
        {
            switch (param)
            {
                case ACTION_MOVE_TO_RANA:
                {
                    me->SetSpeed(MOVE_WALK, 1.0f);
                    me->GetMotionMaster()->MovePoint(1230, 1299.025f, 1206.724f, 59.64236f);
                    break;
                }
            }
        }

        void UpdateAI(uint32 diff) override
        {
            _events.Update(diff);

            while (uint32 eventId = _events.ExecuteEvent())
            {
                switch (eventId)
                {
                    case EVENTS_TURN_FACE:
                    {
                        if (Creature* ivar = ObjectAccessor::GetCreature(*me, _bloodfangGUID))
                            me->SetFacingToObject(ivar);
                        break;
                    }
                }
            }
            // no melee attack
        }

        void FindAllGuid()
        {
            if (!_bloodfangGUID)
                if (Creature* ivar = me->FindNearestCreature(NPC_PACKLEADER_IVAR_BLOODFANG, 30.0f))
                    _bloodfangGUID = ivar->GetGUID();

            if (!_armoireGUID)
                if (Creature* armoire = me->FindNearestCreature(NPC_ARMOIRE, 30.0f))
                {
                    _armoireGUID = armoire->GetGUID();
                    armoire->GetAI()->SetGUID(me->GetGUID(), me->GetEntry());
                }
        }
    private:
        EventMap _events;
        ObjectGuid _playerGUID;
        ObjectGuid _armoireGUID;
        ObjectGuid _bloodfangGUID;

    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_lord_darius_crowley_AI(creature);
    }
};

// npc 44884 Packleader Ivar Bloodfang for quest 27045 "Waiting to Exsanguinate"
class npc_packleader_ivar_bloodfang : public CreatureScript
{
public:
    npc_packleader_ivar_bloodfang() : CreatureScript("npc_packleader_ivar_bloodfang") { }

    enum eNPC
    {
        NPC_ARMOIRE = 44893,
        ACTION_MOVE_TO_RANA = 500,
    };

    struct npc_packleader_ivar_bloodfang_AI : public ScriptedAI
    {
        npc_packleader_ivar_bloodfang_AI(Creature* creature) : ScriptedAI(creature)
        {
            Initialize();
        }

        void Initialize()
        {
            _playerGUID = ObjectGuid::Empty;
            _armoireGUID = ObjectGuid::Empty;
        }

        void Reset() override
        {
            me->SetReactState(REACT_PASSIVE);
        }

        void IsSummonedBy(Unit* who) override
        {
            if (Player* player = who->ToPlayer())
                _playerGUID = player->GetGUID();
            if (Creature* armoire = me->FindNearestCreature(NPC_ARMOIRE, 30.0f))
            {
                _armoireGUID = armoire->GetGUID();
                armoire->GetAI()->SetGUID(me->GetGUID(), me->GetEntry());
            }
        }

        void MovementInform(uint32 type, uint32 id) override
        {
            if (type == POINT_MOTION_TYPE && id == 1230)
                me->DespawnOrUnsummon(1000);
        }

        void DoAction(int32 param) override
        {
            switch (param)
            {
                case ACTION_MOVE_TO_RANA:
                {
                    me->SetSpeed(MOVE_WALK, 1.0f);
                    me->GetMotionMaster()->MovePoint(1230, 1299.025f, 1206.724f, 59.64236f);
                    break;
                }
            }
        }
    private:
        EventMap _events;
        ObjectGuid _playerGUID;
        ObjectGuid _armoireGUID;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_packleader_ivar_bloodfang_AI(creature);
    }
};

// npc 44365 Lady Sylvanas Windrunner for quests 27065, 27096, 27097, 27099
class npc_44365_lady_sylvanas_windrunner : public CreatureScript
{
public:
    npc_44365_lady_sylvanas_windrunner() : CreatureScript("npc_44365_lady_sylvanas_windrunner") { }

    enum eNPC
    {
        QUEST_THE_WARCHIEFS_FLEET_27065 = 27065,
        QUEST_ORCS_ARE_IN_ORDER = 27096,
        QUEST_RISE_FORSAKEN = 27097,
        QUEST_NO_ESCAPE = 27099,
        QUEST_LARDAERON = 27098,
        SPELL_SUMMON_AGATHA = 83982,
        SPELL_SEE_QUEST_INVIS_5 = 84241,
        SPELL_DEATH_WALK = 85451,
        SPELL_SUMMON_SYLVANAS_HORSE = 84128,
    };

    bool OnQuestAccept(Player* player, Creature* creature, Quest const* quest) override
    {
        if (quest->GetQuestId() == QUEST_THE_WARCHIEFS_FLEET_27065)
            player->AddAura(SPELL_SEE_QUEST_INVIS_5, player);
        else if (quest->GetQuestId() == QUEST_RISE_FORSAKEN)
            player->CastSpell(1380.69f, 1037.616f, 53.046f, SPELL_SUMMON_AGATHA, true);
        else if (quest->GetQuestId() == QUEST_NO_ESCAPE)
            player->CastSpell(1380.69f, 1037.616f, 53.046f, SPELL_SUMMON_AGATHA, true);
        else if (quest->GetQuestId() == QUEST_LARDAERON)
            player->CastSpell(1377.98f, 1039.329f, 52.260f, SPELL_SUMMON_SYLVANAS_HORSE, true);
        return false;
    }

    bool OnQuestReward(Player* player, Creature* /*creature*/, Quest const* quest, uint32 /*opt*/) override
    {
        if (quest->GetQuestId() == QUEST_ORCS_ARE_IN_ORDER)
            player->RemoveAura(SPELL_SEE_QUEST_INVIS_5);
        if (quest->GetQuestId() == QUEST_RISE_FORSAKEN)
            player->RemoveAura(SPELL_DEATH_WALK);
        if (quest->GetQuestId() == QUEST_NO_ESCAPE)
            player->RemoveAura(SPELL_DEATH_WALK);
        return false;
    }
};

Position const forsakenHorsePath[] =
{
    { 1382.02f, 1036.77f, 53.5615f },
    { 1378.62f, 1034.99f, 51.4415f },
    { 1376.69f, 1033.92f, 50.8203f },
    { 1370.16f ,1030.3f, 51.1979f  },
    { 1365.76f, 1027.85f, 52.9575f },
    { 1353.93f, 1021.29f, 52.3865f },
    { 1342.01f, 1012.71f, 54.5486f },
    { 1331.81f, 1006.42f, 54.5993f },
    { 1323.18f, 1004.4f, 54.5993f  },
    { 1320.6f, 1007.71f, 54.5993f  },
    { 1314.92f, 1018.28f, 54.5993f },
    { 1304.12f, 1038.56f, 54.5993f },
    { 1291.96f, 1057.64f, 54.0229f },
    { 1266.43f, 1087.83f, 52.3095f },
    { 1240.92f, 1112.1f, 50.9396f  },
    { 1186.92f, 1151.85f, 49.2966f },
    { 1103.56f, 1205.04f, 46.405f  },
    { 1087.08f, 1220.02f, 46.3391f },
    { 1027.13f, 1273.88f, 46.0058f },
    { 1006.07f, 1289.54f, 45.9183f },
    { 958.819f, 1319.75f, 46.3413f },
    { 937.089f, 1333.16f, 46.8987f },
    { 901.874f, 1348.65f, 49.0243f },
    { 882.262f, 1353.33f, 51.6486f },
    { 864.572f, 1357.55f, 54.6863f },
    { 845.214f, 1358.95f, 55.5383f },
    { 747.317f, 1358.59f, 69.6343f },
    { 720.427f, 1349.57f, 73.8387f },
    { 699.874f, 1333.29f, 77.7755f },
    { 667.782f, 1305.19f, 81.7202f },
    { 643.957f, 1296.31f, 85.2994f },
    { 638.748f, 1296.82f, 85.6868f },
    { 634.856f, 1301.78f, 85.909f  },
    { 626.351f, 1319.04f, 84.3054f },
    { 587.723f, 1393.71f, 92.1448f },
    { 560.69f, 1441.25f, 101.771f  },
    { 537.474f, 1465.67f, 110.813f },
    { 517.445f, 1482.97f, 119.81f  },
    { 507.389f, 1491.66f, 124.016f },
    { 500.267f, 1505.83f, 127.459f },
    { 495.328f, 1528.53f, 129.898f },
    { 494.859f, 1549.98f, 128.962f },
};
size_t const pathSize = std::extent<decltype(forsakenHorsePath)>::value;

// npc 45057 Forsaken Warhorse for the quest 27098 'Lordaeron'
class npc_forsaken_warhorse_45057 : public CreatureScript
{
public:
    npc_forsaken_warhorse_45057() : CreatureScript("npc_forsaken_warhorse_45057") { }

    enum eNPC
    {
        QUEST_LORDAERON = 27098,
        DATA_LORDAERON_RIDE = 54,
        EVENT_START_PATH = 545,
        EVENT_WARHORSE_DESPAWN = 546,
        EVENT_CAST_CAMERA = 547,
        EVENT_RIDE_WARHORSE = 548,
        SYLVANAS_ACCOMPANIED_TO_THE_SEPULCHER = 45051,
        SPELL_RIDE_VEHICLE = 84109,
        SPELL_CAMERA = 84112,
        SPELL_RIDE_VEHICLE_HARD_CODED = 46598,
        SPELL_EJECT_ALL_PASSENGERS = 50630,
        NPC_SYLVANAS = 45051,
    };

    struct npc_forsaken_warhorse_AI : public VehicleAI
    {
        /*npc_forsaken_warhorse_AI(Creature* creature) : ScriptedAI(creature) {
            Initialize();
        }*/
        npc_forsaken_warhorse_AI(Creature* creature) : VehicleAI(creature) { }

        void Reset() override
        {
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PC | UNIT_FLAG_IMMUNE_TO_NPC);
            me->SetReactState(REACT_PASSIVE);
            _playerGUID = ObjectGuid::Empty;
            _events.Reset();
        }

        void IsSummonedBy(Unit* summoner) override
        {
            if (Player* player = summoner->ToPlayer())
                if (player->GetQuestStatus(QUEST_LORDAERON) == QUEST_STATUS_INCOMPLETE)
                    if (Vehicle* vehicle = me->GetVehicleKit()) {
                        _playerGUID = player->GetGUID();
                        _events.ScheduleEvent(EVENT_CAST_CAMERA, 300);
                    }   
        }

        void MovementInform(uint32 type, uint32 pointId) override
        {
            if (type == EFFECT_MOTION_TYPE && pointId == pathSize)
                _events.ScheduleEvent(EVENT_WARHORSE_DESPAWN, Seconds(1));
        }

        void JustDied(Unit* /*killer*/) override
        {
            if (Player* player = ObjectAccessor::GetPlayer(*me, _playerGUID))
                if (player->GetQuestStatus(QUEST_LORDAERON) == QUEST_STATUS_INCOMPLETE)
                {
                    player->FailQuest(QUEST_LORDAERON);
                    player->NearTeleportTo(1382.9f, 1038.3f, 54.31f, 3.7848f);
                }
        }

        void PassengerBoarded(Unit* passenger, int8 /*seatId*/, bool apply) override
        {
            if (apply && passenger->GetTypeId() == TYPEID_PLAYER)
            {   
                /*if (Creature* sylvanas = me->FindNearestCreature(NPC_SYLVANAS, 2.0f, true)) {
                    sylvanas->GetAI()->SetGUID(me->GetGUID(), me->GetEntry());
                    sylvanas->AI()->SetData(54, 54);
                }*/
                _events.ScheduleEvent(EVENT_START_PATH, 300);
            }
        }

        void UpdateAI(uint32 diff) override
        {
            _events.Update(diff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            while (uint32 eventId = _events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_START_PATH:
                    me->GetMotionMaster()->MoveSmoothPath(uint32(pathSize), forsakenHorsePath, pathSize, true, false);
                    break;
                case EVENT_CAST_CAMERA:
                    if (Player* player = ObjectAccessor::GetPlayer(*me, _playerGUID))
                    {
                        player->ExitVehicle();
                        me->CastSpell(player, SPELL_CAMERA, true); // camera spell
                    }
                    _events.ScheduleEvent(EVENT_RIDE_WARHORSE, 1500);
                    break;
                case EVENT_RIDE_WARHORSE:
                    if (Player* player = ObjectAccessor::GetPlayer(*me, _playerGUID))
                    {
                        me->CastSpell(player, SPELL_RIDE_VEHICLE); // ride vehicle, script_effect
                        player->EnterVehicle(me);
                    }
                    break;
                case EVENT_WARHORSE_DESPAWN:
                    me->RemoveAllAuras();
                    me->GetVehicleKit()->RemoveAllPassengers();
                    me->DespawnOrUnsummon();
                    if (Player* player = ObjectAccessor::GetPlayer(*me, _playerGUID))
                        player->KilledMonsterCredit(SYLVANAS_ACCOMPANIED_TO_THE_SEPULCHER);
                    break;
                default:
                    break;
                }
            }
        }

    private:
        EventMap _events;
        ObjectGuid _playerGUID;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_forsaken_warhorse_AI(creature);
    }
};

// npc 45051 Sylvanas Windrunner for the quest 27098 'Lordaeron'
class npc_sylvanas_windrunner_45051 : public CreatureScript
{
public:
    npc_sylvanas_windrunner_45051() : CreatureScript("npc_sylvanas_windrunner_45051") { }

    enum eNPC
    {
        QUEST_LORDAERON = 27098,
        DATA_LORDAERON_RIDE = 54,
        EVENT_CHAT_TO_PLAYER = 544,
        EVENT_CHECK_PLAYER_STATUS = 543,
        EVENT_START_FOLLOW = 542,
        NPC_FORSAKEN_WARHORSE = 45057,
        SYLVANAS_PATH_ID = 4505101,
    };

    struct npc_sylvanas_windrunner_45051_AI : public ScriptedAI
    {
        npc_sylvanas_windrunner_45051_AI(Creature* creature) : ScriptedAI(creature)
        {
            Initialize();
        }

        void Initialize()
        {
            _playerGUID = ObjectGuid::Empty;
            _horseGUID = ObjectGuid::Empty;
            _events.Reset();
        }

        void IsSummonedBy(Unit* who) override
        {
            if (Player* player = who->ToPlayer())
                _playerGUID = player->GetGUID();
            _events.ScheduleEvent(EVENT_CHAT_TO_PLAYER, 60000);
        }

        void SetData(uint32 id, uint32 /*value*/) override
        {
            switch (id)
            {
            case DATA_LORDAERON_RIDE:
                _events.ScheduleEvent(EVENT_START_FOLLOW, 100);
                break;
            }
        }

        void SetGUID(ObjectGuid guid, int32 id) override
        {
            switch (id)
            {
            case NPC_FORSAKEN_WARHORSE:
            {
                _horseGUID = guid;
                break;
            }
            }
        }

        void UpdateAI(uint32 diff) override
        {
            _events.Update(diff);

            while (uint32 eventId = _events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_CHAT_TO_PLAYER:
                {
                    if (Player* player = ObjectAccessor::GetPlayer(*me, _playerGUID))
                        me->AI()->Talk(0);
                    _events.ScheduleEvent(EVENT_CHAT_TO_PLAYER, 60000);
                    break;
                }
                case EVENT_START_FOLLOW:
                {
                    if (Player* player = ObjectAccessor::GetPlayer(*me, _playerGUID))
                        me->GetMotionMaster()->MovePoint(1231, 1360.59f, 1028.24f, 52.75f);
                    _events.ScheduleEvent(EVENT_START_FOLLOW + 1, 1500);
                    break;
                }
                case EVENT_START_FOLLOW + 1:
                {
                    me->GetMotionMaster()->MovePath(SYLVANAS_PATH_ID, false);
                    break;
                }
                }
            }
            UpdateVictim();
        }
    private:
        EventMap _events;
        ObjectGuid _playerGUID;
        ObjectGuid _horseGUID;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_sylvanas_windrunner_45051_AI(creature);
    }
};

// npc 44914 Orc Sea Pup for the quest 27069 "Steel Thunder"
class npc_orc_sea_pup : public CreatureScript
{
public:
    npc_orc_sea_pup() : CreatureScript("npc_orc_sea_pup") { }

    enum eNPC
    {
        QUEST_STEEL_THUNDER = 27069,
        NPC_ORC_CRATE = 44915,
        SPELL_SUMMON_ORC_CRATE = 83835,
        SPELL_PICK_UP_ORC_CRATE = 83838,
        SPELL_DESPAWN_ALL = 83840,
        SPELL_CREDIT = 83843,
        EVENT_TALK_TO_PLAYER = 100,
        EVENT_CHECK_PLAYER_ALIVE,
    };

    struct npc_orc_sea_pup_AI : public VehicleAI
    {
        npc_orc_sea_pup_AI(Creature* creature) : VehicleAI(creature)
        {
            Initialize();
        }

        void Initialize()
        {
            _playerGUID = ObjectGuid::Empty;
            _IsFull = false;
        }

        void Reset() override
        {
            _playerGUID = ObjectGuid::Empty;
            _IsFull = false;
            _events.Reset();
        }

        void IsSummonedBy(Unit* who) override
        {
            if (Player* player = who->ToPlayer())
                if (player->GetQuestStatus(QUEST_STEEL_THUNDER) == QUEST_STATUS_INCOMPLETE)
                {
                    Talk(0);
                    _playerGUID = player->GetGUID();
                    me->GetMotionMaster()->MoveFollow(player, 3.0f, (float)M_PI);
                    _events.ScheduleEvent(EVENT_CHECK_PLAYER_ALIVE, 1000);
                    int c = player->GetReqKillOrCastCurrentCount(QUEST_STEEL_THUNDER, NPC_ORC_CRATE);
                    for (int i = 0; i < c; i++)
                        me->CastSpell(me, SPELL_SUMMON_ORC_CRATE, true);
                }
        }

        void PassengerBoarded(Unit* passenger, int8 seatId, bool apply) override
        {
            if (passenger->GetEntry() == NPC_ORC_CRATE)
                if (apply)
                {
                    Talk(seatId + 1);
                    if (seatId == 5)
                    {
                        _IsFull = true;
                        _events.ScheduleEvent(EVENT_TALK_TO_PLAYER, 1000);
                    }
                }
                else
                {
                    if (Creature* crate = passenger->ToCreature())
                        crate->DespawnOrUnsummon(6000);
                }
        }

        void JustSummoned(Creature* summon) override
        {
            if (summon->GetEntry() == NPC_ORC_CRATE)
                if (Player* player = ObjectAccessor::GetPlayer(*me, _playerGUID))
                    summon->EnterVehicle(me, -1);
        }

        void SpellHit(Unit* caster, SpellInfo const* spell) override
        {
            if (Player* player = ObjectAccessor::GetPlayer(*me, _playerGUID))
                if (spell->Id == SPELL_PICK_UP_ORC_CRATE)
                {
                    me->CastSpell(me, SPELL_SUMMON_ORC_CRATE, true);
                    me->CastSpell(player, SPELL_CREDIT);
                }
        }

        void DoAction(int32 param) override
        {
            if (param == 2)
            {
                _events.CancelEvent(EVENT_TALK_TO_PLAYER);
                Talk(6);
                me->GetVehicleKit()->RemoveAllPassengers();
                me->DespawnOrUnsummon(6000);
            }
            else if (param == 3)
                if (Player* player = ObjectAccessor::GetPlayer(*me, _playerGUID))
                    player->CastSpell(player, SPELL_DESPAWN_ALL);
        }

        void UpdateAI(uint32 diff) override
        {
            _events.Update(diff);

            while (uint32 eventId = _events.ExecuteEvent())
            {
                switch (eventId)
                {
                    case EVENT_TALK_TO_PLAYER:
                    {
                        Talk(7);
                        _events.ScheduleEvent(EVENT_TALK_TO_PLAYER, urand(10000, 20000));
                        break;
                    }
                    case EVENT_CHECK_PLAYER_ALIVE:
                    {
                        if (Player* player = ObjectAccessor::GetPlayer(*me, _playerGUID))
                            if (player->IsAlive() && player->IsInWorld())
                            {
                                _events.ScheduleEvent(EVENT_CHECK_PLAYER_ALIVE, 1000);
                                break;
                            }

                        me->GetVehicleKit()->RemoveAllPassengers();
                        me->DespawnOrUnsummon(10);
                        break;
                    }
                }
            }

            if (!UpdateVictim())
                return;
            else
                DoMeleeAttackIfReady();
        }
        private:
            EventMap _events;
            ObjectGuid _playerGUID;
            bool _IsFull;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_orc_sea_pup_AI(creature);
    }
};

// npc 44916 Admiral Hatchet for the quest 27069 "Steel Thunder"
class npc_admiral_hatchet : public CreatureScript
{
public:
    npc_admiral_hatchet() : CreatureScript("npc_admiral_hatchet") { }

    enum eNPC
    {
        QUEST_STEEL_THUNDER = 27069,
        NPC_WARLORD_TOROK = 44917,
        NPC_SEA_PUP = 44914,
        SPELL_SUMMON_SEA_PUP = 83839,
        SPELL_SEA_PUP_TRIGGER = 83865,
        EVENT_CHECK_TALK = 100,
        EVENT_TALK_COOLDOWN = 101,
        EVENT_TALK = 200,
    };

    bool OnGossipSelect(Player* player, Creature* creature, uint32 sender, uint32 action) override
    {
        if (player->GetQuestStatus(QUEST_STEEL_THUNDER) == QUEST_STATUS_INCOMPLETE)
            if (creature->FindNearestCreature(NPC_SEA_PUP, 10.0f) == 0)
                if (action == 1)
                {
                    player->CastSpell(player, SPELL_SEA_PUP_TRIGGER);
                    CloseGossipMenuFor(player);
                    return true;
                }

        return false;
    }

    bool OnQuestReward(Player* /*player*/, Creature* creature, Quest const* quest, uint32 /*opt*/) override
    {
        if (quest->GetQuestId() == QUEST_STEEL_THUNDER)
            if (Creature* pup = creature->FindNearestCreature(NPC_SEA_PUP, 10.0f))
                pup->GetAI()->DoAction(2);

        return false;
    }

    struct npc_admiral_hatchet_AI : public ScriptedAI
    {
        npc_admiral_hatchet_AI(Creature* creature) : ScriptedAI(creature)
        {
            Initialize();
        }

        void Initialize()
        {
            _playerGUID = ObjectGuid::Empty;
            _torokGUID = ObjectGuid::Empty;
            _playerNear = false;
        }

        void Reset() override
        {   
            _events.Reset();
            Initialize();
            _events.ScheduleEvent(EVENT_CHECK_TALK, 1000);
        }

        void UpdateAI(uint32 diff) override
        {
            _events.Update(diff);

            if (!UpdateVictim())
                return;

            while (uint32 eventId = _events.ExecuteEvent())
            {
                switch (eventId)
                {
                    case EVENT_CHECK_TALK:
                    {
                        CheckForTorok();
                        if (Player* player = ObjectAccessor::GetPlayer(*me, _playerGUID))
                            if (player->GetDistance2d(me) < 20.0f && !_playerNear)
                            {
                                _playerGUID = player->GetGUID();
                                _events.ScheduleEvent(EVENT_TALK + 1, 1000);
                                _events.ScheduleEvent(EVENT_TALK_COOLDOWN, 90000);
                                _playerNear = true;
                            }
                            else
                                _events.ScheduleEvent(EVENT_CHECK_TALK, 1000);
                        break;
                    }
                    case EVENT_TALK_COOLDOWN:
                    {
                        Reset();
                        break;
                    }
                    case EVENT_TALK + 1:
                    {
                        Talk(0);
                        _events.ScheduleEvent(EVENT_TALK + 2, 8000);
                        break;
                    }
                    case EVENT_TALK + 2:
                    {
                        if (Creature* torok = ObjectAccessor::GetCreature(*me, _torokGUID))
                            torok->AI()->Talk(0);
                        _events.ScheduleEvent(EVENT_TALK + 3, 6000);
                        break;
                    }
                    case EVENT_TALK + 3:
                    {
                        Talk(1);
                        _events.ScheduleEvent(EVENT_TALK + 4, 6000);
                        break;
                    }
                    case EVENT_TALK + 4:
                    {
                        if (Creature* torok = ObjectAccessor::GetCreature(*me, _torokGUID))
                            torok->AI()->Talk(1);
                        break;
                    }
                }
            }

            DoMeleeAttackIfReady();
        }

        void CheckForTorok()
        {
            if (!_torokGUID)
                if (Creature* torok = me->FindNearestCreature(NPC_WARLORD_TOROK, 30.0f))
                    _torokGUID = torok->GetGUID();
        }

    private:
        EventMap _events;
        ObjectGuid _playerGUID;
        ObjectGuid _torokGUID;
        bool _playerNear;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_admiral_hatchet_AI(creature);
    }
};

// Spell 83865 "Sea Pup Trigger" for the quest 27069
class spell_sea_pup_trigger_83865 : public SpellScriptLoader
{
public:
    spell_sea_pup_trigger_83865() : SpellScriptLoader("spell_sea_pup_trigger_83865") { }

    enum eSpell
    {
        SPELL_SUMMON_SEA_PUP = 83839,
    };

    class IsNotPlayerGuid
    {
    public:
        explicit IsNotPlayerGuid(ObjectGuid guid) : _guid(guid) { }

        bool operator()(WorldObject* obj) const
        {
            if (Player* player = obj->ToPlayer())
                return player->GetGUID() != _guid;

            return true;
        }

    private:
        ObjectGuid _guid;
    };

    class spell_sea_pup_trigger_83865_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_sea_pup_trigger_83865_SpellScript);

        void FilterTargets(std::list<WorldObject*>& targets)
        {
            targets.remove_if(IsNotPlayerGuid(GetCaster()->GetGUID()));
        }

        void HandleScriptEffect(SpellEffIndex /*effIndex*/)
        {
            if (Unit* unit = GetCaster())
                if (Player* player = unit->ToPlayer())
                    player->CastSpell(player, SPELL_SUMMON_SEA_PUP);
        }
        void Register()
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_sea_pup_trigger_83865_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENTRY);
            OnEffectHitTarget += SpellEffectFn(spell_sea_pup_trigger_83865_SpellScript::HandleScriptEffect, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_sea_pup_trigger_83865_SpellScript();
    }
};

// Spell 83838 "Pick Up Orc Crate" for the quest 27069
class spell_pick_up_orc_crate_83838 : public SpellScriptLoader
{
public:
    spell_pick_up_orc_crate_83838() : SpellScriptLoader("spell_pick_up_orc_crate_83838") { }

    enum eSpell
    {
        NPC_ORC_SEA_PUP = 44914,
    };

    class IsNotEntry
    {
    public:
        explicit IsNotEntry(uint32 entry) : _entry(entry) { }

        bool operator()(WorldObject* obj) const
        {
            if (Creature* target = obj->ToCreature())
                return target->GetEntry() != _entry;

            return true;
        }

    private:
        uint32 _entry;
    };

    class spell_pick_up_orc_crate_83838_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_pick_up_orc_crate_83838_SpellScript);

        void FilterTargets(std::list<WorldObject*>& targets)
        {
            targets.remove_if(IsNotEntry(NPC_ORC_SEA_PUP));
        }

        void Register()
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_pick_up_orc_crate_83838_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENTRY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_pick_up_orc_crate_83838_SpellScript();
    }
};

// Orc Sea Dog
class npc_orc_sea_dog : public CreatureScript
{
public:
    npc_orc_sea_dog() : CreatureScript("npc_orc_sea_dog") { }

    enum eNPC
    {
        QUEST_LOST_IN_THE_DARKNESS = 27093,
        NPC_WEBBED_VICTIM = 44941,
        NPC_ORC_SEA_DOG = 44942,
        SPELL_DESPAWN_ALL_SUMMONS = 83935,
        EVENT_CHECK_PLAYER = 100,
    };

    struct npc_orc_sea_dog_AI : public ScriptedAI
    {
        npc_orc_sea_dog_AI(Creature* creature) : ScriptedAI(creature) {
            Initialize();
        }

        void Initialize()
        {
            _playerGUID = ObjectGuid::Empty;
        }

        void Reset() override
        {
            _events.Reset();
            Initialize();
            me->SetReactState(REACT_PASSIVE);
        }

        void IsSummonedBy(Unit* who) override
        {
            if (Player* player = who->ToPlayer())
            {
                _playerGUID = player->GetGUID();
                me->GetMotionMaster()->MoveFollow(player, 4.0f, frand(1.57f, 4.71f));
                _events.ScheduleEvent(EVENT_CHECK_PLAYER, 1000);
            }
        }

        void UpdateAI(uint32 diff) override
        {
            _events.Update(diff);

            if (!UpdateVictim())
                return;

            while (uint32 eventId = _events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_CHECK_PLAYER:
                {
                    if (Player* player = ObjectAccessor::GetPlayer(*me, _playerGUID))
                        if (player->IsAlive() && player->IsInWorld() && !player->IsQuestRewarded(QUEST_LOST_IN_THE_DARKNESS))
                        {
                            _events.ScheduleEvent(EVENT_CHECK_PLAYER, 1000);
                            break;
                        }

                    me->DespawnOrUnsummon(10);
                    break;
                }
                }
            }
            DoMeleeAttackIfReady();
        }

    private:
        EventMap _events;
        ObjectGuid _playerGUID;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_orc_sea_dog_AI(creature);
    }
};

// Webbed Victim
class npc_webbed_victim_skitterweb : public CreatureScript
{
public:
    npc_webbed_victim_skitterweb() : CreatureScript("npc_webbed_victim_skitterweb") { }

    enum eNPC
    {
        QUEST_LOST_IN_THE_DARKNESS = 27093,
        NPC_ORC_SEA_DOG = 44942,
        SPELL_FREE_WEBBED_VICTIM1 = 83919,
        SPELL_FREE_WEBBED_VICTIM2 = 83921,
        SPELL_FREE_WEBBED_VICTIM3 = 83927,
    };

    struct npc_webbed_victim_skitterweb_AI : public ScriptedAI
    {
        npc_webbed_victim_skitterweb_AI(Creature* creature) : ScriptedAI(creature)
        {
            Initialize();
        }

        void Initialize()
        {
            _playerGUID = ObjectGuid::Empty;
        }

        void Reset() override
        {
            Initialize();
        }

        void JustDied(Unit* killer) override
        {
            if (Player* player = killer->ToPlayer())
                if (player->GetQuestStatus(QUEST_LOST_IN_THE_DARKNESS) == QUEST_STATUS_INCOMPLETE)
                {
                    _playerGUID = player->GetGUID();
                    player->CastSpell(me, SPELL_FREE_WEBBED_VICTIM3, true);
                    player->KilledMonsterCredit(NPC_ORC_SEA_DOG, ObjectGuid::Empty);
                }
        }

    private:
        ObjectGuid _playerGUID;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_webbed_victim_skitterweb_AI(creature);
    }
};

class npc_hillsbrad_refugee_44966 : public CreatureScript
{
public:
    npc_hillsbrad_refugee_44966() : CreatureScript("npc_hillsbrad_refugee_44966") { }

    enum eNPC
    {
        NPC_AGATHA = 44951,
        SPELL_NOTIFY_AGATHA = 83990,
        SPELL_DOOMHOWL = 84012,
        SPELL_UNHOLY_SMITE = 84014,
        QUEST_RISE_FORSAKEN = 27097,
    };

    struct npc_hillsbrad_refugee_44966AI : public ScriptedAI
    {
        npc_hillsbrad_refugee_44966AI(Creature* creature) : ScriptedAI(creature) { }

        void JustSummoned(Creature* summon) override
        {
            uint32 rol = urand(0, 100);
            if (rol < 50)
            {
                summon->AI()->Talk(0);
                summon->DespawnOrUnsummon(10000);
            }
        }

        void JustDied(Unit* killer) override
        {
            if (Creature* agatha = me->FindNearestCreature(NPC_AGATHA, 30.0f))
            {
                me->CastSpell(agatha, SPELL_NOTIFY_AGATHA);
                uint32 m_forsakenSpell;
                if (me->getGender() == GENDER_MALE)
                    m_forsakenSpell = RAND(83998, 83999, 84000, 84001);
                else
                    m_forsakenSpell = RAND(84002, 84003, 84004, 84005);
                me->CastSpell(me, m_forsakenSpell);
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_hillsbrad_refugee_44966AI(creature);
    }
};

// 83904  // quest 27088
class spell_reverse_cast_ride_vehicle_83904 : public SpellScriptLoader
{
public:
    spell_reverse_cast_ride_vehicle_83904() : SpellScriptLoader("spell_reverse_cast_ride_vehicle_83904") { }

    enum eSpell
    {
        NPC_ETTIN = 44367,
        NPC_CHICKEN = 44935,
    };

    class spell_reverse_cast_ride_vehicle_83904_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_reverse_cast_ride_vehicle_83904_SpellScript);

        void HandleScriptEffect(SpellEffIndex /*effIndex*/)
        {
            if (Unit* unit1 = GetHitUnit())
                if (Creature* chicken = unit1->ToCreature())
                    if (Unit* unit2 = GetCaster())
                        if (Creature* ettin = unit2->ToCreature())
                            chicken->EnterVehicle(ettin, 0);
        }
        
        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_reverse_cast_ride_vehicle_83904_SpellScript::HandleScriptEffect, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_reverse_cast_ride_vehicle_83904_SpellScript();
    }
};

enum eQuest27099
{
    QUEST_NO_ESCAPE = 27099,
    NPC_AGATHA = 44951,
    NPC_BLOODFANG = 44990,
    NPC_CROWLEY = 44989,
    NPC_PHIN_ODELIC = 44993,
    NPC_BARTOLO_GINSETTI = 44994,
    NPC_LOREMASTER_DIBBS = 44995,
    NPC_MAGISTRATE_HENRY_MALEB = 44996,
    NPC_CARETAKER_SMITHERS = 44997,
    NPC_SOPHIA_ZWOSKI = 45002,
    SPELL_FORCE_CAST_FENRIS_CAMERA = 84113,
    SPELL_SUMMON_BLOODFANG = 84054,
    SPELL_SUMMON_CROWLEY = 84055,
    SPELL_SUMMON_PHIN_ODELIC = 84056,
    SPELL_SUMMON_BARTOLO_GINSETTI = 84057,
    SPELL_SUMMON_LOREMASTER_DIBBS = 84058,
    SPELL_SUMMON_MAGISTRATE_HENRY_MALEB = 84059,
    SPELL_SUMMON_CARETAKER_SMITHERS = 84060,
    SPELL_SUMMON_SOPHIA = 84061,
    SPELL_SUMMON_AGATHA = 83982,
    SPELL_ARMORE_CAMERA = 84104,
    SPELL_GENERAL_TRIGGER_84102 = 84102,
    SPELL_GENERAL_TRIGGER_84114 = 84114,
    SOUND_WORGEN_HOWLING = 17671,
    EVENT_MASTER_RESET,
    EVENT_MOVE_TO_STARTPOINT,
    EVENT_CHANGE_TO_SEAT_2,
    EVENT_TRIGGER_84102,
    DATA_AGATHA_RUN = 52,
};

// 45032 // quest 27099
class npc_fenris_keep_stalker_45032 : public CreatureScript
{
public:
    npc_fenris_keep_stalker_45032() : CreatureScript("npc_fenris_keep_stalker_45032") { }

    enum eStalker {
        EVENT_STALKER_START_ANIMATION = 146,
    };

    struct npc_fenris_keep_stalker_45032_AI : public ScriptedAI
    {
        npc_fenris_keep_stalker_45032_AI(Creature* creature) : ScriptedAI(creature) { }

        void Reset() override
        {
            _playerGUID = ObjectGuid::Empty;
            _bloodfangGUID = ObjectGuid::Empty;
            _crowleyGUID = ObjectGuid::Empty;
            _phinOdelicGUID = ObjectGuid::Empty;
            _bartoloGinsettiGUID = ObjectGuid::Empty;
            _loremasterDibbsGUID = ObjectGuid::Empty;
            _henryMalebGUID = ObjectGuid::Empty;
            _caretakersSmithersGUID = ObjectGuid::Empty;
            _sophiaGUID = ObjectGuid::Empty;
            _events.Reset();
            _animatonIsStarted = false;
        }

        void JustSummoned(Creature* summon) override
        {
            switch (summon->GetEntry())
            {
            case NPC_BLOODFANG:
                _bloodfangGUID = summon->GetGUID();
                break;
            case NPC_CROWLEY:
                _crowleyGUID = summon->GetGUID();
                break;
            case NPC_PHIN_ODELIC:
                _phinOdelicGUID = summon->GetGUID();
                SetCreatureValues(summon);
                break;
            case NPC_BARTOLO_GINSETTI:
                _bartoloGinsettiGUID = summon->GetGUID();
                SetCreatureValues(summon);
                break;
            case NPC_LOREMASTER_DIBBS:
                _loremasterDibbsGUID = summon->GetGUID();
                SetCreatureValues(summon);
                break;
            case NPC_MAGISTRATE_HENRY_MALEB:
                _henryMalebGUID = summon->GetGUID();
                SetCreatureValues(summon);
                break;
            case NPC_CARETAKER_SMITHERS:
                _caretakersSmithersGUID = summon->GetGUID();
                SetCreatureValues(summon);
                break;
            case NPC_SOPHIA_ZWOSKI:
                _sophiaGUID = summon->GetGUID();
                SetCreatureValues(summon);
                break;
            }
            summon->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PC | UNIT_FLAG_IMMUNE_TO_NPC);
        }

        void MoveInLineOfSight(Unit* unit) override
        {
            if (!unit || !unit->IsInWorld())
                return;
            if (Player* player = unit->ToPlayer())
                if (player->GetDistance(me) < 3.0f)
                    if (player->GetQuestStatus(QUEST_NO_ESCAPE) == QUEST_STATUS_INCOMPLETE && !_animatonIsStarted) {
                        _playerGUID = player->GetGUID();
                        _animatonIsStarted = true;
                        _events.ScheduleEvent(EVENT_STALKER_START_ANIMATION, 100);
                        _events.ScheduleEvent(EVENT_MASTER_RESET, 250000);
                    }
        }

        void SpellHit(Unit* /*caster*/, SpellInfo const* spell) override {}

        void SetData(uint32 id, uint32 /*value*/) override
        {
            switch (id)
            {
            case DATA_AGATHA_RUN:
                _events.ScheduleEvent(EVENT_MASTER_RESET, 30000);
                break;
            }
        }

        void UpdateAI(uint32 diff) override
        {
            _events.Update(diff);

            while (uint32 eventId = _events.ExecuteEvent())
            {
                switch (eventId)
                {   
                    case EVENT_MASTER_RESET:
                    {   
                        DespawnAllSummons();
                        Reset();
                        break;
                    }
                    case EVENT_STALKER_START_ANIMATION:
                    {   
                        me->CastSpell(994.530f, 687.740f, 74.8984f, SPELL_SUMMON_BLOODFANG, true);
                        me->CastSpell(994.562f, 691.186f, 74.8984f, SPELL_SUMMON_CROWLEY, true);
                        me->CastSpell(1002.520f, 693.027f, 76.1922f, SPELL_SUMMON_PHIN_ODELIC, true);
                        me->CastSpell(1002.760f, 687.195f, 76.1922f, SPELL_SUMMON_BARTOLO_GINSETTI, true);
                        me->CastSpell(1002.800f, 684.256f, 76.1922f, SPELL_SUMMON_LOREMASTER_DIBBS, true);
                        me->CastSpell(1000.670f, 689.759f, 76.1922f, SPELL_SUMMON_MAGISTRATE_HENRY_MALEB, true);
                        me->CastSpell(1002.700f, 695.775f, 76.1922f, SPELL_SUMMON_CARETAKER_SMITHERS, true);
                        me->CastSpell(1004.530f, 688.619f, 76.1922f, SPELL_SUMMON_SOPHIA, true);
                        if (Player* player = ObjectAccessor::GetPlayer(*me, _playerGUID)) {
                            if (Creature* agatha = me->FindNearestCreature(NPC_AGATHA, 30.0f))
                                agatha->DespawnOrUnsummon(10);
                            player->CastSpell(982.57f, 671.04f, 77.298f, SPELL_SUMMON_AGATHA, true);
                            me->CastSpell(player, SPELL_FORCE_CAST_FENRIS_CAMERA, true);
                        }
                        break;
                    }
                }
            }
        }

        void DespawnAllSummons()
        {
            if (Creature* creature = ObjectAccessor::GetCreature(*me, _bloodfangGUID))
                creature->DespawnOrUnsummon(10);
            if (Creature* creature = ObjectAccessor::GetCreature(*me, _crowleyGUID))
                creature->DespawnOrUnsummon(10);
            if (Creature* creature = ObjectAccessor::GetCreature(*me, _phinOdelicGUID))
                creature->DespawnOrUnsummon(10);
            if (Creature* creature = ObjectAccessor::GetCreature(*me, _bartoloGinsettiGUID))
                creature->DespawnOrUnsummon(10);
            if (Creature* creature = ObjectAccessor::GetCreature(*me, _loremasterDibbsGUID))
                creature->DespawnOrUnsummon(10);
            if (Creature* creature = ObjectAccessor::GetCreature(*me, _henryMalebGUID))
                creature->DespawnOrUnsummon(10);
            if (Creature* creature = ObjectAccessor::GetCreature(*me, _caretakersSmithersGUID))
                creature->DespawnOrUnsummon(10);
            if (Creature* creature = ObjectAccessor::GetCreature(*me, _sophiaGUID))
                creature->DespawnOrUnsummon(10);
            if (Creature* creature = me->FindNearestCreature(45003, 30.0f))
                creature->DespawnOrUnsummon(10);
        }

        void SetCreatureValues(Creature* npc)
        {
            Position pos = npc->GetPosition();
            pos.SetOrientation(3.33f);
            npc->SetHomePosition(pos);
            npc->GetMotionMaster()->MoveTargetedHome();
        }

        private:
            EventMap _events;
            ObjectGuid _playerGUID;
            ObjectGuid _bloodfangGUID;
            ObjectGuid _crowleyGUID;
            ObjectGuid _phinOdelicGUID;
            ObjectGuid _bartoloGinsettiGUID;
            ObjectGuid _loremasterDibbsGUID;
            ObjectGuid _henryMalebGUID;
            ObjectGuid _caretakersSmithersGUID;
            ObjectGuid _sophiaGUID;
            bool _animatonIsStarted;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_fenris_keep_stalker_45032_AI(creature);
    }
};

// 44989 // quest 27099
class npc_lord_darius_crowley_44989 : public CreatureScript
{
public:
    npc_lord_darius_crowley_44989() : CreatureScript("npc_lord_darius_crowley_44989") { }

    enum eCrowley {
        EVENT_CROWLEY_ANIMATION = 110,
        DATA_START_CROWLEY_ANIMATION = 53,
    };

    struct npc_lord_darius_crowley_44989_AI : public ScriptedAI
    {
        npc_lord_darius_crowley_44989_AI(Creature* creature) : ScriptedAI(creature) {
            Initialize();
        }

        void Initialize()
        {
            _playerGUID = ObjectGuid::Empty;
        }

        void Reset() override
        {
            _events.Reset();
        }

        void IsSummonedBy(Unit* summoner) override
        {
            if (Player* player = summoner->ToPlayer())
                _playerGUID = player->GetGUID();
        }

        void SpellHit(Unit* /*caster*/, SpellInfo const* spell) override {}

        void SetData(uint32 id, uint32 /*value*/) override
        {
            switch (id)
            {
            case DATA_START_CROWLEY_ANIMATION:
                _events.ScheduleEvent(EVENT_CROWLEY_ANIMATION, 500);
                break;
            }
        }

        void UpdateAI(uint32 diff) override
        {
            _events.Update(diff);

            while (uint32 eventId = _events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_CROWLEY_ANIMATION:
                    Talk(0);
                    _events.ScheduleEvent(EVENT_CROWLEY_ANIMATION + 1, 4700);
                    break;
                case EVENT_CROWLEY_ANIMATION + 1:
                    Talk(1);
                    _events.ScheduleEvent(EVENT_CROWLEY_ANIMATION + 2, 4700);
                    break;
                case EVENT_CROWLEY_ANIMATION + 2:
                    Talk(2);
                    _events.ScheduleEvent(EVENT_CROWLEY_ANIMATION + 3, 4700);
                    break;
                case EVENT_CROWLEY_ANIMATION + 3:
                    Talk(3);
                    _events.ScheduleEvent(EVENT_CROWLEY_ANIMATION + 4, 4700);
                    break;
                case EVENT_CROWLEY_ANIMATION + 4:
                    Talk(4);
                    _events.ScheduleEvent(EVENT_CROWLEY_ANIMATION + 5, 6100);
                    break;
                case EVENT_CROWLEY_ANIMATION + 5:
                    Talk(5);
                    _events.ScheduleEvent(EVENT_CROWLEY_ANIMATION + 6, 9500);
                    break;
                case EVENT_CROWLEY_ANIMATION + 6:
                    if (Creature* creature = me->FindNearestCreature(NPC_MAGISTRATE_HENRY_MALEB, me->GetVisibilityRange(), true))
                        creature->AI()->SetData(49, 49);
                    break;
                }
            }
            // no melee attack
        }

    private:
        EventMap _events;
        ObjectGuid _playerGUID;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_lord_darius_crowley_44989_AI(creature);
    }
};

// 44993 // quest 27099
class npc_phin_odelic_44993 : public CreatureScript
{
public:
    npc_phin_odelic_44993() : CreatureScript("npc_phin_odelic_44993") { }

    enum ePhin {
        EVENT_PHIN_DRINKING = 133,
        EVENT_PHIN_MORPHING = 143,
        DATA_START_DRINKING = 51,
    };

    struct npc_phin_odelic_44993_AI : public ScriptedAI
    {
        npc_phin_odelic_44993_AI(Creature* creature) : ScriptedAI(creature) {
            Initialize();
        }

        void Initialize()
        {
            _playerGUID = ObjectGuid::Empty;
        }

        void Reset() override
        {
            _isWorgen = false;
            _events.Reset();
        }

        void IsSummonedBy(Unit* summoner) override
        {
            if (Player* player = summoner->ToPlayer())
                _playerGUID = player->GetGUID();
        }

        void SpellHit(Unit* /*caster*/, SpellInfo const* spell) override
        {
            if (!_isWorgen)
                if (me->HasAura(84094))
                    me->RemoveAura(84094);
        }

        void SetData(uint32 id, uint32 /*value*/) override
        {
            switch (id)
            {
            case DATA_START_DRINKING:
                _events.ScheduleEvent(EVENT_PHIN_DRINKING, 100);
                break;
            }
        }

        void UpdateAI(uint32 diff) override
        {
            _events.Update(diff);

            while (uint32 eventId = _events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_PHIN_DRINKING:
                    // place for emote
                    _events.ScheduleEvent(EVENT_PHIN_MORPHING, 3000);
                    break;
                case EVENT_PHIN_MORPHING:
                    _isWorgen = true;
                    me->CastSpell(me, 84094);
                    break;
                }
            }
            DoMeleeAttackIfReady();
        }

    private:
        EventMap _events;
        ObjectGuid _playerGUID;
        bool _isWorgen;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_phin_odelic_44993_AI(creature);
    }
};

// 44994 // quest 27099
class npc_bartolo_ginsetti_44994 : public CreatureScript
{
public:
    npc_bartolo_ginsetti_44994() : CreatureScript("npc_bartolo_ginsetti_44994") { }

    enum eBartolo {
        EVENT_BARTOLO_DRINKING = 132,
        EVENT_BARTOLO_MORPHING = 142,
        DATA_START_DRINKING = 51,
    };

    struct npc_bartolo_ginsetti_44994_AI : public ScriptedAI
    {
        npc_bartolo_ginsetti_44994_AI(Creature* creature) : ScriptedAI(creature) {
            Initialize();
        }

        void Initialize()
        {
            _playerGUID = ObjectGuid::Empty;
        }

        void Reset() override
        {
            _isWorgen = false;
            _events.Reset();
        }

        void IsSummonedBy(Unit* summoner) override
        {
            if (Player* player = summoner->ToPlayer())
                _playerGUID = player->GetGUID();
        }

        void SpellHit(Unit* /*caster*/, SpellInfo const* spell) override
        {
            if (!_isWorgen)
                if (me->HasAura(84095))
                    me->RemoveAura(84095);
        }

        void SetData(uint32 id, uint32 /*value*/) override
        {
            switch (id)
            {
            case DATA_START_DRINKING:
                _events.ScheduleEvent(EVENT_BARTOLO_DRINKING, 100);
                break;
            }
        }

        void UpdateAI(uint32 diff) override
        {
            _events.Update(diff);

            while (uint32 eventId = _events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_BARTOLO_DRINKING:
                    // place for emote
                    _events.ScheduleEvent(EVENT_BARTOLO_MORPHING, 3000);
                    break;
                case EVENT_BARTOLO_MORPHING:
                    _isWorgen = true;
                    me->CastSpell(me, 84095);
                    break;
                }
            }
            DoMeleeAttackIfReady();
        }

    private:
        EventMap _events;
        ObjectGuid _playerGUID;
        bool _isWorgen;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_bartolo_ginsetti_44994_AI(creature);
    }
};

// 44995 // quest 27099
class npc_loremaster_dibbs_44995 : public CreatureScript
{
public:
    npc_loremaster_dibbs_44995() : CreatureScript("npc_loremaster_dibbs_44995") { }

    enum eDibbs {
        EVENT_DIBBS_DRINKING = 131,
        EVENT_DIBBS_MORPHING = 141,
        DATA_START_DRINKING = 51,
    };

    struct npc_loremaster_dibbs_44995_AI : public ScriptedAI
    {
        npc_loremaster_dibbs_44995_AI(Creature* creature) : ScriptedAI(creature) {
            Initialize();
        }

        void Initialize()
        {
            _playerGUID = ObjectGuid::Empty;
        }

        void Reset() override
        {
            _isWorgen = false;
            _events.Reset();
        }

        void IsSummonedBy(Unit* summoner) override
        {
            if (Player* player = summoner->ToPlayer())
                _playerGUID = player->GetGUID();
        }

        void SpellHit(Unit* /*caster*/, SpellInfo const* spell) override
        {
            if (!_isWorgen)
                if (me->HasAura(84096))
                    me->RemoveAura(84096);
        }

        void SetData(uint32 id, uint32 /*value*/) override
        {
            switch (id)
            {
            case DATA_START_DRINKING:
                _events.ScheduleEvent(EVENT_DIBBS_DRINKING, 100);
                break;
            }
        }

        void UpdateAI(uint32 diff) override
        {
            _events.Update(diff);

            while (uint32 eventId = _events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_DIBBS_DRINKING:
                    // place for emote
                    _events.ScheduleEvent(EVENT_DIBBS_MORPHING, 3000);
                    break;
                case EVENT_DIBBS_MORPHING:
                    _isWorgen = true;
                    me->CastSpell(me, 84096);
                    break;
                }
            }
            DoMeleeAttackIfReady();
        }

    private:
        EventMap _events;
        ObjectGuid _playerGUID;
        bool _isWorgen;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_loremaster_dibbs_44995_AI(creature);
    }
};

// 44996 // quest 27099
class npc_magistrate_henry_maleb_44996 : public CreatureScript
{
public:
    npc_magistrate_henry_maleb_44996() : CreatureScript("npc_magistrate_henry_maleb_44996") { }

    enum eMagistrate {
        EVENT_HENRY_ANIMATION = 120,
        EVENT_HENRY_DRINKING = 130,
        EVENT_HENRY_MORPHING = 140,
        DATA_HENRY_START_ANIMATION = 49,
        DATA_START_DRINKING = 51,
        DATA_AGATHA_RUN = 52,
        NPC_FENRIS_KEEP_STALKER = 45032,
    };

    struct npc_magistrate_henry_maleb_44996_AI : public ScriptedAI
    {
        npc_magistrate_henry_maleb_44996_AI(Creature* creature) : ScriptedAI(creature) {
            Initialize();
        }

        void Initialize()
        {
            _playerGUID = ObjectGuid::Empty;
        }

        void Reset() override
        {
            _isWorgen = false;
            _events.Reset();
        }

        void IsSummonedBy(Unit* summoner) override
        {
            if (Player* player = summoner->ToPlayer())
                _playerGUID = player->GetGUID();
        }

        void SpellHit(Unit* /*caster*/, SpellInfo const* spell) override
        {
            if (!_isWorgen)
                if (me->HasAura(84097))
                    me->RemoveAura(84097);
        }

        void SetData(uint32 id, uint32 /*value*/) override
        {
            switch (id)
            {
            case DATA_HENRY_START_ANIMATION:
                if (Player* player = ObjectAccessor::GetPlayer(*me, _playerGUID))
                    me->CastSpell(player, SPELL_ARMORE_CAMERA, true);
                _events.ScheduleEvent(EVENT_HENRY_ANIMATION, 500);
                break;
            }
        }

        void UpdateAI(uint32 diff) override
        {
            _events.Update(diff);

            while (uint32 eventId = _events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_HENRY_ANIMATION:
                    Talk(0);
                    _events.ScheduleEvent(EVENT_HENRY_ANIMATION + 1, 10800);
                    break;
                case EVENT_HENRY_ANIMATION + 1:
                    Talk(1);
                    _events.ScheduleEvent(EVENT_HENRY_ANIMATION + 2, 3500);
                    break;
                case EVENT_HENRY_ANIMATION + 2:
                    if (Creature* creature = me->FindNearestCreature(NPC_PHIN_ODELIC, me->GetVisibilityRange(), true))
                        creature->AI()->SetData(DATA_START_DRINKING, DATA_START_DRINKING);
                    if (Creature* creature = me->FindNearestCreature(NPC_BARTOLO_GINSETTI, me->GetVisibilityRange(), true))
                        creature->AI()->SetData(DATA_START_DRINKING, DATA_START_DRINKING);
                    if (Creature* creature = me->FindNearestCreature(NPC_LOREMASTER_DIBBS, me->GetVisibilityRange(), true))
                        creature->AI()->SetData(DATA_START_DRINKING, DATA_START_DRINKING);
                    if (Creature* creature = me->FindNearestCreature(NPC_CARETAKER_SMITHERS, me->GetVisibilityRange(), true))
                        creature->AI()->SetData(DATA_START_DRINKING, DATA_START_DRINKING);
                    if (Creature* creature = me->FindNearestCreature(NPC_SOPHIA_ZWOSKI, me->GetVisibilityRange(), true))
                        creature->AI()->SetData(DATA_START_DRINKING, DATA_START_DRINKING);
                    _events.ScheduleEvent(EVENT_HENRY_DRINKING, 200);
                    break;
                case EVENT_HENRY_DRINKING:
                    _events.ScheduleEvent(EVENT_HENRY_MORPHING, 3000);
                    break;
                case EVENT_HENRY_MORPHING:
                    _isWorgen = true;
                    me->CastSpell(me, 84097);
                    if (Creature* creature = me->FindNearestCreature(NPC_FENRIS_KEEP_STALKER, me->GetVisibilityRange(), true))
                        creature->AI()->SetData(DATA_AGATHA_RUN, DATA_AGATHA_RUN);
                    if (Creature* creature = me->FindNearestCreature(NPC_AGATHA, me->GetVisibilityRange(), true))
                        creature->AI()->SetData(DATA_AGATHA_RUN, DATA_AGATHA_RUN);
                    break;
                }
            }
            // DoMeleeAttackIfReady();
        }
    private:
        EventMap _events;
        ObjectGuid _playerGUID;
        bool _isWorgen;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_magistrate_henry_maleb_44996_AI(creature);
    }
};

// 44997 // quest 27099
class npc_caretaker_smithers_44997 : public CreatureScript
{
public:
    npc_caretaker_smithers_44997() : CreatureScript("npc_caretaker_smithers_44997") { }

    enum eSmithers {
        EVENT_SMITHERS_DRINKING = 134,
        EVENT_SMITHERS_MORPHING = 144,
        DATA_START_DRINKING = 51,
    };

    struct npc_caretaker_smithers_44997_AI : public ScriptedAI
    {
        npc_caretaker_smithers_44997_AI(Creature* creature) : ScriptedAI(creature) {
            Initialize();
        }

        void Initialize()
        {
            _playerGUID = ObjectGuid::Empty;
        }

        void Reset() override
        {
            _isWorgen = false;
            _events.Reset();
        }

        void IsSummonedBy(Unit* summoner) override
        {
            if (Player* player = summoner->ToPlayer())
                _playerGUID = player->GetGUID();
        }

        void SpellHit(Unit* /*caster*/, SpellInfo const* spell) override
        {
            if (!_isWorgen)
                if (me->HasAura(84098))
                    me->RemoveAura(84098);
        }

        void SetData(uint32 id, uint32 /*value*/) override
        {
            switch (id)
            {
            case DATA_START_DRINKING:
                _events.ScheduleEvent(EVENT_SMITHERS_DRINKING, 100);
                break;
            }
        }

        void UpdateAI(uint32 diff) override
        {

            _events.Update(diff);

            while (uint32 eventId = _events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_SMITHERS_DRINKING:
                    // place for emote
                    _events.ScheduleEvent(EVENT_SMITHERS_MORPHING, 3000);
                    break;
                case EVENT_SMITHERS_MORPHING:
                    _isWorgen = true;
                    me->CastSpell(me, 84098);
                    break;
                }
            }
            DoMeleeAttackIfReady();
        }

    private:
        EventMap _events;
        ObjectGuid _playerGUID;
        bool _isWorgen;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_caretaker_smithers_44997_AI(creature);
    }
};

// 45002 // quest 27099
class npc_sophia_zwoski_45002 : public CreatureScript
{
public:
    npc_sophia_zwoski_45002() : CreatureScript("npc_sophia_zwoski_45002") { }

    enum eSophia {
        EVENT_SOPHIA_DRINKING = 135,
        EVENT_SOPHIA_MORPHING = 145,
        EVENT_SOPHIA_HOWLING = 129,
        DATA_START_DRINKING = 51,
    };

    struct npc_sophia_zwoski_45002_AI : public ScriptedAI
    {
        npc_sophia_zwoski_45002_AI(Creature* creature) : ScriptedAI(creature) {
            Initialize();
        }

        void Initialize()
        {
            _playerGUID = ObjectGuid::Empty;
        }

        void Reset() override
        {
            _isWorgen = false;
            _events.Reset();
        }

        void IsSummonedBy(Unit* summoner) override
        {
            if (Player* player = summoner->ToPlayer())
                _playerGUID = player->GetGUID();
        }

        void SpellHit(Unit* /*caster*/, SpellInfo const* spell) override
        {
            if (!_isWorgen)
                if (me->HasAura(84099))
                    me->RemoveAura(84099);
        }

        void SetData(uint32 id, uint32 /*value*/) override
        {
            switch (id)
            {
            case DATA_START_DRINKING:
                _events.ScheduleEvent(EVENT_SOPHIA_DRINKING, 100);
                break;
            }
        }

        void UpdateAI(uint32 diff) override
        {

            _events.Update(diff);

            while (uint32 eventId = _events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_SOPHIA_DRINKING:
                    // place for emote
                    _events.ScheduleEvent(EVENT_SOPHIA_MORPHING, 3000);
                    break;
                case EVENT_SOPHIA_MORPHING:
                    _isWorgen = true;
                    me->CastSpell(me, 84099);
                    _events.ScheduleEvent(EVENT_SOPHIA_HOWLING, 1500);
                    break;
                case EVENT_SOPHIA_HOWLING:
                    me->PlayDirectSound(SOUND_WORGEN_HOWLING);
                    break;
                }
            }
            DoMeleeAttackIfReady();
        }

    private:
        EventMap _events;
        ObjectGuid _playerGUID;
        bool _isWorgen;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_sophia_zwoski_45002_AI(creature);
    }
};

// 45003 // quest 27099
class npc_camera_45003 : public CreatureScript
{
public:
    npc_camera_45003() : CreatureScript("npc_camera_45003") { }

    struct npc_camera_45003_AI : public VehicleAI
    {
        npc_camera_45003_AI(Creature* creature) : VehicleAI(creature) {
            Initialize();
        }

        void Initialize()
        {
            _playerGUID = ObjectGuid::Empty;
        }

        void Reset() override
        {
            me->SetVisible(false);
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PC | UNIT_FLAG_IMMUNE_TO_NPC);
            me->SetReactState(REACT_PASSIVE);
            _events.Reset();
        }

        void IsSummonedBy(Unit* summoner) override
        {
            if (Player* player = summoner->ToPlayer())
                _playerGUID = player->GetGUID();
        }

        void PassengerBoarded(Unit* passenger, int8 seatId, bool apply) override
        {
            if (apply && seatId == 0)
                _events.ScheduleEvent(EVENT_MOVE_TO_STARTPOINT, 100);
            if (apply && seatId == 1)
                passenger->SetFacingTo(0.0f);
            if (!apply && seatId == 1)
                me->DespawnOrUnsummon(1000);
        }

        void MovementInform(uint32 type, uint32 id) override
        {
            if (type == POINT_MOTION_TYPE && id == 1230)
                _events.ScheduleEvent(EVENT_CHANGE_TO_SEAT_2, 100);
        }

        void UpdateAI(uint32 diff) override
        {
            _events.Update(diff);

            while (uint32 eventId = _events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_MOVE_TO_STARTPOINT:
                    me->GetMotionMaster()->MovePoint(1230, 980.7f, 689.14f, 76.9f);
                    break;
                case EVENT_CHANGE_TO_SEAT_2:
                {
                    if (Player* player = ObjectAccessor::GetPlayer(*me, _playerGUID))
                    {
                        player->EnterVehicle(me, 1);
                        me->CastSpell(player, 84091, true);
                    }
                    _events.ScheduleEvent(EVENT_TRIGGER_84102, 1500);
                    break;
                }
                case EVENT_TRIGGER_84102:
                    me->CastSpell(me, SPELL_GENERAL_TRIGGER_84102, true);
                    if (Creature* creature = me->FindNearestCreature(NPC_CROWLEY, me->GetVisibilityRange(), true))
                        creature->AI()->SetData(53, 53);
                    break;
                }
            }
            // no melee attack
        }

    private:
        EventMap _events;
        ObjectGuid _playerGUID;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_camera_45003_AI(creature);
    }
};

// 44951  // quest 27097 // 27099
class npc_agatha_44951 : public CreatureScript
{
public:
    npc_agatha_44951() : CreatureScript("npc_agatha_44951") { }

    enum eNPC
    {
        NPC_HILLSBRAD_REFUGEE1 = 44954,
        NPC_HILLSBRAD_REFUGEE2 = 44966,
        NPC_FORSAKEN = 44959,
        QUEST_RISE_FORSAKEN = 27097,
        QUEST_NO_ESCAPE = 27099,
        SPELL_DEATH_WALK = 85451,
        SPELL_NOTIFY_AGATHA = 83990,
        SPELL_RISE_FORSAKEN = 83993,
        SPELL_KILL_CREDIT = 83996,
        SPELL_DOOMHOWL = 84012,
        SPELL_UNHOLY_DARKNESS = 84013,
        SPELL_UNHOLY_SMITE = 84014,
        SPELL_GENERAL_TRIGGER_84114 = 84114,
        DATA_AGATHA_RUN = 52,
        EVENT_CHAT_TO_PLAYER = 100,
        EVENT_CHECK_PLAYER,
        EVENT_CAST_AGGRO,
        EVENT_HEAL_COOLDOWN,
        EVENT_27099_RUN,
    };

    struct npc_agatha_44951_AI : public VehicleAI
    {
        npc_agatha_44951_AI(Creature* creature) : VehicleAI(creature) {
            Initialize();
        }

        void Initialize()
        {
            _playerGUID = ObjectGuid::Empty;
            _targetGUID = ObjectGuid::Empty;
            _doomhoulDone = false;
            _events.Reset();
            _events.ScheduleEvent(EVENT_CHAT_TO_PLAYER, 60000);
            _events.ScheduleEvent(EVENT_CHECK_PLAYER, 2000);
            _healCD = false;
        }

        void Reset() override
        {
            me->SetCanFly(true);
            me->SetDisableGravity(true);
            me->SetWaterWalking(true);
        }

        void IsSummonedBy(Unit* summoner) override
        {
            if (Player* player = summoner->ToPlayer()) {
                _playerGUID = player->GetGUID();
                me->SetFacingToObject(player);
                me->GetMotionMaster()->MoveFollow(player, 3.0f, (float)M_PI);
                me->SetReactState(REACT_PASSIVE);
                me->CastSpell(me, SPELL_DEATH_WALK, true);
                me->AddAura(SPELL_DEATH_WALK, player);
            }
            if (Creature* stalker = me->FindNearestCreature(45032, 25.0f))
                SetForQuest27099();
        }

        void SpellHit(Unit* caster, SpellInfo const* spell) override
        {   
            if (spell->Id == SPELL_NOTIFY_AGATHA)
            {
                me->CastSpell(caster, SPELL_RISE_FORSAKEN, true);
                if (Player* player = ObjectAccessor::GetPlayer(*me, _playerGUID))
                    player->CastSpell(player, SPELL_KILL_CREDIT);
            }

            if (spell->Id == SPELL_GENERAL_TRIGGER_84114)
            {
                SetForQuest27099();
            }

            if (spell->Id == 83978)
            {
                // send chat to player..
            }
        }

        void MovementInform(uint32 type, uint32 id) override
        {
            if (type == POINT_MOTION_TYPE && id == 1231)
                _events.ScheduleEvent(EVENT_27099_RUN + 1, 100);
            if (type == WAYPOINT_MOTION_TYPE && id == 42)
                _events.ScheduleEvent(EVENT_27099_RUN + 4, 100);
        }

        void PassengerBoarded(Unit* passenger, int8 seatId, bool apply) override
        {
            if (apply && passenger->ToPlayer())
                _events.ScheduleEvent(EVENT_27099_RUN + 3, 100);
        }

        void DamageTaken(Unit* attacker, uint32& damage) override
        {
            if (attacker->GetGUID() != _targetGUID)
                if (Player* player = ObjectAccessor::GetPlayer(*me, _playerGUID))
                    if (Unit* unit = player->GetVictim())
                        if (unit->GetGUID() != _targetGUID)
                            EnterCombat(unit);
        }

        void EnterCombat(Unit* victim) override
        {
            _doomhoulDone = false;
            _targetGUID = victim->GetGUID();
            me->CastSpell(victim, SPELL_UNHOLY_SMITE);
            _events.RescheduleEvent(EVENT_CAST_AGGRO, urand(1000, 4000));
        }

        void SetData(uint32 id, uint32 /*value*/) override
        {
            switch (id)
            {
            case DATA_AGATHA_RUN:
                _events.ScheduleEvent(EVENT_27099_RUN, 1000);
                break;
            }
        }

        void UpdateAI(uint32 diff) override
        {

            _events.Update(diff);

            while (uint32 eventId = _events.ExecuteEvent())
            {
                switch (eventId)
                {
                case EVENT_CHAT_TO_PLAYER:
                {
                    if (Player* player = ObjectAccessor::GetPlayer(*me, _playerGUID))
                        me->AI()->Talk(0);
                    _events.ScheduleEvent(EVENT_CHAT_TO_PLAYER, 60000);
                    break;
                }
                case EVENT_CHECK_PLAYER:
                {
                    if (Player* player = ObjectAccessor::GetPlayer(*me, _playerGUID))
                        if (player->IsAlive() || player->IsInWorld())
                            if (CheckQuestStatus(player)) {
                                if (!_healCD && player->GetHealthPct() < 90.0f)
                                {
                                    me->CastSpell(player, SPELL_UNHOLY_DARKNESS);
                                    _healCD = true;
                                    _events.ScheduleEvent(EVENT_HEAL_COOLDOWN, 2000);
                                }

                                if (Unit* unit = player->GetVictim())
                                {
                                    if (unit->GetGUID() != _targetGUID)
                                        EnterCombat(unit);
                                }
                                else if (player->IsInCombat())
                                {
                                    if (Unit* unit = player->GetSelectedUnit())
                                        if (unit->GetGUID() != _targetGUID)
                                            EnterCombat(unit);
                                }

                                _events.ScheduleEvent(EVENT_CHECK_PLAYER, 1000);
                                break;
                            }

                    me->DespawnOrUnsummon(10);
                    break;
                }
                case EVENT_CAST_AGGRO:
                {
                    if (Creature* target = ObjectAccessor::GetCreature(*me, _targetGUID))
                        if (target->IsAlive()) {
                            if (target->GetEntry() == NPC_HILLSBRAD_REFUGEE1 || target->GetEntry() == NPC_HILLSBRAD_REFUGEE2)
                                if (!_doomhoulDone)
                                {
                                    _doomhoulDone = true;
                                    me->CastSpell(me, SPELL_DOOMHOWL);
                                    _events.ScheduleEvent(EVENT_CAST_AGGRO, urand(2000, 3000));
                                    break;
                                }
                            me->CastSpell(target, SPELL_UNHOLY_SMITE);
                            _events.ScheduleEvent(EVENT_CAST_AGGRO, urand(1000, 6000));
                        }
                    break;
                }
                case EVENT_HEAL_COOLDOWN:
                {
                    _healCD = false;
                    break;
                }
                case EVENT_27099_RUN:
                {
                    if (Player* player = ObjectAccessor::GetPlayer(*me, _playerGUID))
                        me->GetMotionMaster()->MovePoint(1231, player->GetPosition());
                    break;
                }
                case EVENT_27099_RUN + 1:
                {
                    if (Player* player = ObjectAccessor::GetPlayer(*me, _playerGUID))
                    {
                        player->ExitVehicle();
                        me->CastSpell(player, 84112, true); // camera spell
                        Talk(2, player);
                    }
                    _events.ScheduleEvent(EVENT_27099_RUN + 2, 1500);
                    break;
                }
                case EVENT_27099_RUN + 2:
                {
                    if (Player* player = ObjectAccessor::GetPlayer(*me, _playerGUID))
                    {
                        me->CastSpell(player, 84109); // ride vehicle, script_effect
                        player->EnterVehicle(me);
                        Talk(3, player);
                    }
                    break;
                }
                case EVENT_27099_RUN + 3:
                {
                    if (Player* player = ObjectAccessor::GetPlayer(*me, _playerGUID))
                        player->KilledMonsterCredit(44951);
                    me->GetMotionMaster()->MovePath(4495101, false);
                    break;
                }
                case EVENT_27099_RUN + 4:
                {
                    me->GetVehicleKit()->RemoveAllPassengers();
                    me->DespawnOrUnsummon(1000);
                    break;
                }
                }
            }

            if (!UpdateVictim())
                return;
            else
                DoMeleeAttackIfReady();
        }

        bool CheckQuestStatus(Player* player)
        {
            if (player->GetQuestStatus(QUEST_RISE_FORSAKEN) == QUEST_STATUS_INCOMPLETE || player->GetQuestStatus(QUEST_RISE_FORSAKEN) == QUEST_STATUS_COMPLETE)
                return true;
            else if (player->GetQuestStatus(QUEST_NO_ESCAPE) == QUEST_STATUS_INCOMPLETE || player->GetQuestStatus(QUEST_NO_ESCAPE) == QUEST_STATUS_COMPLETE)
                return true;
            return false;
        }

        void SetForQuest27099()
        {
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PC | UNIT_FLAG_IMMUNE_TO_NPC);
            me->SetReactState(REACT_PASSIVE);
            me->GetMotionMaster()->MovePoint(1234, 982.57f, 671.04f, 77.298f);
            _events.CancelEvent(EVENT_CHAT_TO_PLAYER);
        }

        private:
            EventMap _events;
            ObjectGuid _playerGUID;
            ObjectGuid _targetGUID;
            bool _doomhoulDone;
            bool _healCD;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_agatha_44951_AI(creature);
    }
};

void AddSC_silverpine_forest()
{
    new npc_deathstalker_erland();
    new npc_grand_executor_mortuus();
    new spell_raise_forsaken();
    new spell_forsaken_trooper_master_script();
    new npc_fallen_human();
    new npc_bat_handler_maggotbreath();
    new npc_forsaken_bat();
    new go_abandoned_outhouse();
    new npc_deathstalker_rane_yorick();
    new npc_armoire();
    new npc_armoire_next();
    new npc_lord_darius_crowley();
    new npc_packleader_ivar_bloodfang();
    new npc_44365_lady_sylvanas_windrunner();
    new npc_orc_sea_pup();
    new npc_admiral_hatchet();
    new spell_sea_pup_trigger_83865();
    new spell_pick_up_orc_crate_83838();
    new npc_orc_sea_dog();
    new npc_webbed_victim_skitterweb();
    new spell_reverse_cast_ride_vehicle_83904();
    new npc_hillsbrad_refugee_44966();
    new npc_agatha_44951();
    new npc_fenris_keep_stalker_45032();
    new npc_lord_darius_crowley_44989();
    new npc_phin_odelic_44993();
    new npc_bartolo_ginsetti_44994();
    new npc_loremaster_dibbs_44995();
    new npc_magistrate_henry_maleb_44996();
    new npc_caretaker_smithers_44997();
    new npc_sophia_zwoski_45002();
    new npc_camera_45003();
    new npc_forsaken_warhorse_45057();
    new npc_sylvanas_windrunner_45051();
}
