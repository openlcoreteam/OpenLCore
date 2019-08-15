/*
 * Copyright (C) 2017-2018 AshamaneProject <https://github.com/AshamaneProject>
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

#include "Conversation.h"
#include "GameObject.h"
#include "MapManager.h"
#include "ObjectMgr.h"
#include "PhasingHandler.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "SpellMgr.h"
#include "ScriptedCreature.h"
#include "SpellScript.h"

/*
 * Dalaran above Karazhan
 *
 * Legion Intro
 */

enum
{
    PHASE_DALARAN_KARAZHAN  = 5829,
    QUEST_BLINK_OF_AN_EYE   = 44663,
};

// TODO : All this script is temp fix,
// remove it when legion start quests are properly fixed
class OnLegionArrival : public PlayerScript
{
public:
    OnLegionArrival() : PlayerScript("OnLegionArrival") { }

    enum
    {
        SPELL_MAGE_LEARN_GUARDIAN_HALL_TP   = 204287,
        SPELL_WAR_LEARN_JUMP_TO_SKYHOLD     = 192084,
        SPELL_DRUID_CLASS_HALL_TP           = 204874,
        SPELL_CREATE_CLASS_HALL_ALLIANCE    = 185506,
        SPELL_CREATE_CLASS_HALL_HORDE       = 192191,

        CONVERSATION_KHADGAR_BLINK_OF_EYE   = 3827,
    };

    void OnLogin(Player* player, bool firstLogin) override
    {
        // Can happen in recovery cases
        if (player->getLevel() >= 100 && firstLogin)
            HandleLegionArrival(player);
    }

    void OnLevelChanged(Player* player, uint8 oldLevel) override
    {
        if (oldLevel < 100 && player->getLevel() >= 100)
            HandleLegionArrival(player);
    }

    void HandleLegionArrival(Player* player)
    {
        switch (player->getClass())
        {
            case CLASS_MAGE:
                player->CastSpell(player, SPELL_MAGE_LEARN_GUARDIAN_HALL_TP, true);
                break;
            case CLASS_WARRIOR:
                player->CastSpell(player, SPELL_WAR_LEARN_JUMP_TO_SKYHOLD, true);
                break;
            case CLASS_DRUID:
                player->CastSpell(player, SPELL_DRUID_CLASS_HALL_TP, true);
                break;
            case CLASS_HUNTER:
                player->m_taxi.SetTaximaskNode(1848); // Hunter Class Hall
                break;
            default:
                break;
        }

        player->CastSpell(player, player->IsInAlliance() ? SPELL_CREATE_CLASS_HALL_ALLIANCE : SPELL_CREATE_CLASS_HALL_HORDE, true);

        if (player->GetQuestStatus(QUEST_BLINK_OF_AN_EYE) == QUEST_STATUS_NONE)
        {
            Conversation::CreateConversation(CONVERSATION_KHADGAR_BLINK_OF_EYE, player, player->GetPosition(), { player->GetGUID() });

            if (const Quest* quest = sObjectMgr->GetQuestTemplate(QUEST_BLINK_OF_AN_EYE))
                player->AddQuest(quest, nullptr);
        }
    }
};

class On110Arrival : public PlayerScript
{
public:
    On110Arrival() : PlayerScript("On110Arrival") { }

    enum
    {
        QUEST_UNITING_THE_ISLES     = 43341,
    };

    void OnLogin(Player* player, bool firstLogin) override
    {
        // Can happen in recovery cases
        if (player->getLevel() >= 110 && firstLogin)
            Handle110Arrival(player);
    }

    void OnLevelChanged(Player* player, uint8 oldLevel) override
    {
        if (oldLevel < 110 && player->getLevel() >= 110)
            Handle110Arrival(player);
    }

    void Handle110Arrival(Player* player)
    {
        if (player->GetQuestStatus(QUEST_UNITING_THE_ISLES) == QUEST_STATUS_NONE)
            if (const Quest* quest = sObjectMgr->GetQuestTemplate(QUEST_UNITING_THE_ISLES))
                player->AddQuest(quest, nullptr);
    }
};

// 228329 & 228330 - T?l?portation
class spell_dalaran_teleportation : public SpellScript
{
    PrepareSpellScript(spell_dalaran_teleportation);

    void EffectTeleportDalaranKarazhan(SpellEffIndex effIndex)
    {
        if (Player* player = GetCaster()->ToPlayer())
        {
            if (player->getLevel() < 100 || player->GetQuestStatus(QUEST_BLINK_OF_AN_EYE) != QUEST_STATUS_INCOMPLETE)
                PreventHitEffect(effIndex);
            else
            {
                if (SpellTargetPosition const* targetPosition = sSpellMgr->GetSpellTargetPosition(GetSpellInfo()->Id, effIndex))
                    if (Map* map = sMapMgr->FindMap(targetPosition->target_mapId, 0))
                        map->LoadGrid(targetPosition->target_X, targetPosition->target_Y);
            }
        }
    }

    void EffectTeleportDalaranLegion(SpellEffIndex effIndex)
    {
        if (Player* player = GetCaster()->ToPlayer())
            if (player->getLevel() < 100 || player->GetQuestStatus(QUEST_BLINK_OF_AN_EYE) == QUEST_STATUS_INCOMPLETE)
                PreventHitEffect(effIndex);
    }

    void Register() override
    {
        OnEffectLaunch += SpellEffectFn(spell_dalaran_teleportation::EffectTeleportDalaranKarazhan, EFFECT_0, SPELL_EFFECT_TRIGGER_SPELL);
        OnEffectLaunch += SpellEffectFn(spell_dalaran_teleportation::EffectTeleportDalaranLegion, EFFECT_1, SPELL_EFFECT_TRIGGER_SPELL);
    }
};

// 113986 - Khadgar
class npc_dalaran_karazhan_khadgar : public CreatureScript
{
public:
    npc_dalaran_karazhan_khadgar() : CreatureScript("npc_dalaran_karazhan_khadgar") { }

    enum
    {
        SPELL_PLAY_DALARAN_TELEPORTATION_SCENE = 227861
    };

    bool OnGossipSelect(Player* player, Creature* /*creature*/, uint32 /*uiSender*/, uint32 /*uiAction*/) override
    {
        player->CastSpell(player, SPELL_PLAY_DALARAN_TELEPORTATION_SCENE, true);
        return true;
    }
};

class scene_dalaran_kharazan_teleportion : public SceneScript
{
public:
    scene_dalaran_kharazan_teleportion() : SceneScript("scene_dalaran_kharazan_teleportion") { }

    void OnSceneTriggerEvent(Player* player, uint32 /*sceneInstanceID*/, SceneTemplate const* /*sceneTemplate*/, std::string const& triggerName) override
    {
        if (triggerName == "invisibledalaran")
            PhasingHandler::AddPhase(player, PHASE_DALARAN_KARAZHAN);
    }

    void OnSceneEnd(Player* player, uint32 /*sceneInstanceID*/, SceneTemplate const* /*sceneTemplate*/) override
    {
        player->KilledMonsterCredit(114506);
        player->TeleportTo(1220, -827.82f, 4369.25f, 738.64f, 1.893364f);
    }
};

/*
 * Legion Dalaran
 */

// Zone 8392
class zone_legion_dalaran_underbelly : public ZoneScript
{
public:
    zone_legion_dalaran_underbelly() : ZoneScript("zone_legion_dalaran_underbelly") { }

    void OnPlayerEnter(Player* player) override
    {
        player->SeamlessTeleportToMap(MAP_DALARAN_UNDERBELLY);
    }

    void OnPlayerExit(Player* player) override
    {
        if (player->GetMapId() == MAP_DALARAN_UNDERBELLY)
            player->SeamlessTeleportToMap(MAP_BROKEN_ISLANDS);
    }
};

class CastEventTP : public BasicEvent
{
public:
    CastEventTP(Unit* caster, uint32 spellId, bool trigger) :
        _caster(caster), _spellId(spellId), _trigger(trigger) { }

    bool Execute(uint64 /*time*/, uint32 /*diff*/)
    {
        if (_caster)
            _caster->CastSpell(_caster, _spellId, _trigger);
        return true;
    }

private:
    Unit * _caster;
    uint32 _spellId;
    bool _trigger;
};

// 108868 7.x.x
class npc_hunter_talua : public CreatureScript
{
public:
    npc_hunter_talua() : CreatureScript("npc_hunter_talua") { }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 /*action*/) override
    {
        if (player->getLevel() < 98 || player->getClass() != CLASS_HUNTER)
            return true;

        if (Pet* pet = player->GetPet())
            player->RemovePet(nullptr, PET_SAVE_DISMISS, false);

        player->CastSpell(player, 216213, true);
        player->m_Events.AddEvent(new CastEventTP(player, 216216, true), player->m_Events.CalculateTime(10000));

        return true;
    }
};

class npc_great_eagle : public CreatureScript
{
public:
    npc_great_eagle() : CreatureScript("npc_great_eagle") { }

    struct npc_great_eagleAI : public ScriptedAI
    {
        npc_great_eagleAI(Creature* creature) : ScriptedAI(creature) { }

        uint8 curID;
        void Reset()
        {
        }

        void SpellHit(Unit* caster, SpellInfo const* spell) override
        {
            me->GetMotionMaster()->MoveDistract(1000);
            me->GetMotionMaster()->MovePoint(1, -854.9718f, 4185.322f, 754.1122f);
        }

        void MovementInform(uint32 type, uint32 id)
        {
            if (type != POINT_MOTION_TYPE)
                return;

            switch (id)
            {
            case 1:
                me->DespawnOrUnsummon(0);
                break;
            }
        }
    };
    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_great_eagleAI(creature);
    }
};

enum ChoicesAndKillcredits
{
    DRUID_CHOICE                            = 247,
    DRUID_ARTIFACT_QUEST_KILLCREDIT         = 101296,
    HUNTER_CHOICE                           = 240,
    HUNTER_ARTIFACT_QUEST_KILLCREDIT        = 104634,
    ROGUE_CHOICE                            = 280,
    ROGUE_ARTIFACT_QUEST_KILLCREDIT         = 105953,
    PALADIN_CHOICE                          = 235,
    PALADIN_ARTIFACT_QUEST_KILLCREDIT       = 90369,
    DEATH_KNIGHT_CHOICE                     = 253,
    DEATH_KNIGHT_ARTIFACT_QUEST_KILLCREDIT  = 101441,
    PRIEST_CHOICE                           = 248,
    PRIEST_ARTIFACT_QUEST_KILLCREDIT        = 100583,
    DEMON_HUNTER_CHOICE                     = 255,
    DEMON_HUNTER_ARTIFACT_QUEST_KILLCREDIT  = 105177,
    MAGE_CHOICE                             = 265,
    MAGE_ARTIFACT_QUEST_KILLCREDIT          = 103037,
    WARLOCK_CHOICE                          = 245,
    WARLOCK_ARTIFACT_QUEST_KILLCREDIT       = 101095,
    WARRIOR_CHOICE                          = 236,
    WARRIOR_ARTIFACT_QUEST_KILLCREDIT       = 100583,
    SHAMAN_CHOICE                           = 266,
    SHAMAN_ARTIFACT_QUEST_KILLCREDIT        = 96527,
    MONK_CHOICE                             = 242,
    MONK_ARTIFACT_QUEST_KILLCREDIT          = 100438,
};

class player_artifact_choice : public PlayerScript
{
public:
    player_artifact_choice() : PlayerScript("player_artifact_choice") { }
 
    void OnCompleteQuestChoice(Player* player, uint32 choiceId, uint32 /*responseId*/)
    {
        switch (choiceId)
        {
            case DRUID_CHOICE:
                player->KilledMonsterCredit(DRUID_ARTIFACT_QUEST_KILLCREDIT);
                break;
            case HUNTER_CHOICE:
                player->KilledMonsterCredit(HUNTER_ARTIFACT_QUEST_KILLCREDIT);
                break;
            case ROGUE_CHOICE:
                player->KilledMonsterCredit(ROGUE_ARTIFACT_QUEST_KILLCREDIT);
                break;
            case PALADIN_CHOICE:
                player->KilledMonsterCredit(PALADIN_ARTIFACT_QUEST_KILLCREDIT);
                break;
            case DEATH_KNIGHT_CHOICE:
                player->KilledMonsterCredit(DEATH_KNIGHT_ARTIFACT_QUEST_KILLCREDIT);
                break;
            case PRIEST_CHOICE:
                player->KilledMonsterCredit(PRIEST_ARTIFACT_QUEST_KILLCREDIT);
                break;
            case DEMON_HUNTER_CHOICE:
                player->KilledMonsterCredit(DEMON_HUNTER_ARTIFACT_QUEST_KILLCREDIT);
                break;
            case MAGE_CHOICE:
                player->KilledMonsterCredit(MAGE_ARTIFACT_QUEST_KILLCREDIT);
                break;
            case WARLOCK_CHOICE:
                player->KilledMonsterCredit(WARLOCK_ARTIFACT_QUEST_KILLCREDIT);
                break;
            case WARRIOR_CHOICE:
                player->KilledMonsterCredit(WARRIOR_ARTIFACT_QUEST_KILLCREDIT);
                break;
            case SHAMAN_CHOICE:
                player->KilledMonsterCredit(SHAMAN_ARTIFACT_QUEST_KILLCREDIT);
                break;
            case MONK_CHOICE:
                player->KilledMonsterCredit(MONK_ARTIFACT_QUEST_KILLCREDIT);
                break;
        }
 
    }
};

// quest 38970
class npc_tele_q38970 : public CreatureScript
{
public:
    npc_tele_q38970() : CreatureScript("npc_tele_q38970") { }
     struct npc_tele_q38970AI : public ScriptedAI
    {
        npc_tele_q38970AI(Creature* creature) : ScriptedAI(creature) { }
         void MoveInLineOfSight(Unit* who) override
        {
            if (Player* player = who->ToPlayer())
            {
                if (player->GetQuestStatus(38970) == QUEST_STATUS_INCOMPLETE)
                {    
                    if (player->IsInDist(me, 2.0f))
                    {
                       player->KilledMonsterCredit(94259);
                    }
                }
            }
        }
    };
     CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_tele_q38970AI(creature);
    }
};

class npc_quest_48954 : public CreatureScript
{
public:
    npc_quest_48954() : CreatureScript("npc_quest_48954") { }

    bool OnQuestReward(Player* player, Creature* creature, const Quest *_Quest, uint32 /*slot*/) override
    {
        if (_Quest->GetQuestId() == 48954)
        {
            if (AchievementEntry const *ForgedforBattle = sAchievementStore.LookupEntry(11991))
            {
                player->CompletedAchievement(ForgedforBattle);
            }
        }

        return true;
    }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_quest_48954AI(creature);
    }

    struct npc_quest_48954AI : public ScriptedAI
    {
        npc_quest_48954AI(Creature* creature) : ScriptedAI(creature) { }
    };
};

void AddSC_dalaran_legion()
{
    new OnLegionArrival();
    new On110Arrival();

    RegisterSpellScript(spell_dalaran_teleportation);
    new npc_dalaran_karazhan_khadgar();
    new scene_dalaran_kharazan_teleportion();
    new zone_legion_dalaran_underbelly();
    new npc_hunter_talua();
    new npc_great_eagle();
    new player_artifact_choice();
    new npc_tele_q38970();
    new npc_quest_48954();
}
