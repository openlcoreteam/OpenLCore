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
SDName: Item_Scripts
SD%Complete: 100
SDComment: Items for a range of different items. See content below (in script)
SDCategory: Items
EndScriptData */

/* ContentData
item_nether_wraith_beacon(i31742)   Summons creatures for quest Becoming a Spellfire Tailor (q10832)
item_flying_machine(i34060, i34061)  Engineering crafted flying machines
item_gor_dreks_ointment(i30175)     Protecting Our Own(q10488)
item_only_for_flight                Items which should only useable while flying
EndContentData */

#include "ScriptMgr.h"
#include "GameObject.h"
#include "Item.h"
#include "Player.h"
#include "ScriptedCreature.h"
#include "Spell.h"
#include "SpellMgr.h"
#include "TemporarySummon.h"
#include "LootMgr.h"
#include "ObjectMgr.h"
#include "Formulas.h"
#include "SharedDefines.h"

/*#####
# item_only_for_flight
#####*/

enum OnlyForFlight
{
    SPELL_ARCANE_CHARGES    = 45072
};

class item_only_for_flight : public ItemScript
{
public:
    item_only_for_flight() : ItemScript("item_only_for_flight") { }

    bool OnUse(Player* player, Item* item, SpellCastTargets const& /*targets*/, ObjectGuid castId) override
    {
        uint32 itemId = item->GetEntry();
        bool disabled = false;

        //for special scripts
        switch (itemId)
        {
            case 24538:
                if (player->GetAreaId() != 3628)
                    disabled = true;
                break;
            case 34489:
                if (player->GetZoneId() != 4080)
                    disabled = true;
                break;
            case 34475:
                if (SpellInfo const* spellInfo = sSpellMgr->GetSpellInfo(SPELL_ARCANE_CHARGES))
                    Spell::SendCastResult(player, spellInfo, 0, castId, SPELL_FAILED_NOT_ON_GROUND);
                break;
        }

        // allow use in flight only
        if (player->IsInFlight() && !disabled)
            return false;

        // error
        player->SendEquipError(EQUIP_ERR_CLIENT_LOCKED_OUT, item, NULL);
        return true;
    }
};

/*#####
# item_nether_wraith_beacon
#####*/

class item_nether_wraith_beacon : public ItemScript
{
public:
    item_nether_wraith_beacon() : ItemScript("item_nether_wraith_beacon") { }

    bool OnUse(Player* player, Item* /*item*/, SpellCastTargets const& /*targets*/, ObjectGuid /*castId*/) override
    {
        if (player->GetQuestStatus(10832) == QUEST_STATUS_INCOMPLETE)
        {
            if (Creature* nether = player->SummonCreature(22408, player->GetPositionX(), player->GetPositionY()+20, player->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN, 180000))
                nether->AI()->AttackStart(player);

            if (Creature* nether = player->SummonCreature(22408, player->GetPositionX(), player->GetPositionY()-20, player->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN, 180000))
                nether->AI()->AttackStart(player);
        }
        return false;
    }
};

/*#####
# item_gor_dreks_ointment
#####*/

class item_gor_dreks_ointment : public ItemScript
{
public:
    item_gor_dreks_ointment() : ItemScript("item_gor_dreks_ointment") { }

    bool OnUse(Player* player, Item* item, SpellCastTargets const& targets, ObjectGuid /*castId*/) override
    {
        if (targets.GetUnitTarget() && targets.GetUnitTarget()->GetTypeId() == TYPEID_UNIT &&
            targets.GetUnitTarget()->GetEntry() == 20748 && !targets.GetUnitTarget()->HasAura(32578))
            return false;

        player->SendEquipError(EQUIP_ERR_CLIENT_LOCKED_OUT, item, NULL);
        return true;
    }
};

/*#####
# item_incendiary_explosives
#####*/

class item_incendiary_explosives : public ItemScript
{
public:
    item_incendiary_explosives() : ItemScript("item_incendiary_explosives") { }

    bool OnUse(Player* player, Item* item, SpellCastTargets const& /*targets*/, ObjectGuid /*castId*/) override
    {
        if (player->FindNearestCreature(26248, 15) || player->FindNearestCreature(26249, 15))
            return false;
        else
        {
            player->SendEquipError(EQUIP_ERR_OUT_OF_RANGE, item, NULL);
            return true;
        }
    }
};

/*#####
# item_mysterious_egg
#####*/

class item_mysterious_egg : public ItemScript
{
public:
    item_mysterious_egg() : ItemScript("item_mysterious_egg") { }

    bool OnExpire(Player* player, ItemTemplate const* /*pItemProto*/) override
    {
        ItemPosCountVec dest;
        uint8 msg = player->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, 39883, 1); // Cracked Egg
        if (msg == EQUIP_ERR_OK)
            player->StoreNewItem(dest, 39883, true, GenerateItemRandomPropertyId(39883));

        return true;
    }
};

/*#####
# item_disgusting_jar
#####*/

class item_disgusting_jar : public ItemScript
{
public:
    item_disgusting_jar() : ItemScript("item_disgusting_jar") { }

    bool OnExpire(Player* player, ItemTemplate const* /*pItemProto*/) override
    {
        ItemPosCountVec dest;
        uint8 msg = player->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, 44718, 1); // Ripe Disgusting Jar
        if (msg == EQUIP_ERR_OK)
            player->StoreNewItem(dest, 44718, true, GenerateItemRandomPropertyId(44718));

        return true;
    }
};

/*#####
# item_pile_fake_furs
#####*/

enum PileFakeFur
{
    GO_CARIBOU_TRAP_1                                      = 187982,
    GO_CARIBOU_TRAP_2                                      = 187995,
    GO_CARIBOU_TRAP_3                                      = 187996,
    GO_CARIBOU_TRAP_4                                      = 187997,
    GO_CARIBOU_TRAP_5                                      = 187998,
    GO_CARIBOU_TRAP_6                                      = 187999,
    GO_CARIBOU_TRAP_7                                      = 188000,
    GO_CARIBOU_TRAP_8                                      = 188001,
    GO_CARIBOU_TRAP_9                                      = 188002,
    GO_CARIBOU_TRAP_10                                     = 188003,
    GO_CARIBOU_TRAP_11                                     = 188004,
    GO_CARIBOU_TRAP_12                                     = 188005,
    GO_CARIBOU_TRAP_13                                     = 188006,
    GO_CARIBOU_TRAP_14                                     = 188007,
    GO_CARIBOU_TRAP_15                                     = 188008,
    GO_HIGH_QUALITY_FUR                                    = 187983,
    NPC_NESINGWARY_TRAPPER                                 = 25835
};

#define CaribouTrapsNum 15
const uint32 CaribouTraps[CaribouTrapsNum] =
{
    GO_CARIBOU_TRAP_1, GO_CARIBOU_TRAP_2, GO_CARIBOU_TRAP_3, GO_CARIBOU_TRAP_4, GO_CARIBOU_TRAP_5,
    GO_CARIBOU_TRAP_6, GO_CARIBOU_TRAP_7, GO_CARIBOU_TRAP_8, GO_CARIBOU_TRAP_9, GO_CARIBOU_TRAP_10,
    GO_CARIBOU_TRAP_11, GO_CARIBOU_TRAP_12, GO_CARIBOU_TRAP_13, GO_CARIBOU_TRAP_14, GO_CARIBOU_TRAP_15,
};

class item_pile_fake_furs : public ItemScript
{
public:
    item_pile_fake_furs() : ItemScript("item_pile_fake_furs") { }

    bool OnUse(Player* player, Item* /*item*/, SpellCastTargets const& /*targets*/, ObjectGuid /*castId*/) override
    {
        GameObject* go = NULL;
        for (uint8 i = 0; i < CaribouTrapsNum; ++i)
        {
            go = player->FindNearestGameObject(CaribouTraps[i], 5.0f);
            if (go)
                break;
        }

        if (!go)
            return false;

        if (go->FindNearestCreature(NPC_NESINGWARY_TRAPPER, 10.0f, true) || go->FindNearestCreature(NPC_NESINGWARY_TRAPPER, 10.0f, false) || go->FindNearestGameObject(GO_HIGH_QUALITY_FUR, 2.0f))
            return true;

        float x, y, z;
        go->GetClosePoint(x, y, z, go->GetObjectSize() / 3, 7.0f);
        go->SummonGameObject(GO_HIGH_QUALITY_FUR, *go, QuaternionData::fromEulerAnglesZYX(go->GetOrientation(), 0.0f, 0.0f), 1);
        if (TempSummon* summon = player->SummonCreature(NPC_NESINGWARY_TRAPPER, x, y, z, go->GetOrientation(), TEMPSUMMON_DEAD_DESPAWN, 1000))
        {
            summon->SetVisible(false);
            summon->SetReactState(REACT_PASSIVE);
            summon->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PC);
        }
        return false;
    }
};

/*#####
# item_petrov_cluster_bombs
#####*/

enum PetrovClusterBombs
{
    SPELL_PETROV_BOMB           = 42406,
    AREA_ID_SHATTERED_STRAITS   = 4064,
    ZONE_ID_HOWLING             = 495
};

class item_petrov_cluster_bombs : public ItemScript
{
public:
    item_petrov_cluster_bombs() : ItemScript("item_petrov_cluster_bombs") { }

    bool OnUse(Player* player, Item* /*item*/, SpellCastTargets const& /*targets*/, ObjectGuid castId) override
    {
        if (player->GetZoneId() != ZONE_ID_HOWLING)
            return false;

        if (!player->GetTransport() || player->GetAreaId() != AREA_ID_SHATTERED_STRAITS)
        {
            if (SpellInfo const* spellInfo = sSpellMgr->GetSpellInfo(SPELL_PETROV_BOMB))
                Spell::SendCastResult(player, spellInfo, 0, castId, SPELL_FAILED_NOT_HERE);

            return true;
        }

        return false;
    }
};

/*######
# item_dehta_trap_smasher
# For quest 11876, Help Those That Cannot Help Themselves
######*/
enum HelpThemselves
{
    QUEST_CANNOT_HELP_THEMSELVES                  =  11876,
    NPC_TRAPPED_MAMMOTH_CALF                      =  25850,
    GO_MAMMOTH_TRAP_1                             = 188022,
    GO_MAMMOTH_TRAP_2                             = 188024,
    GO_MAMMOTH_TRAP_3                             = 188025,
    GO_MAMMOTH_TRAP_4                             = 188026,
    GO_MAMMOTH_TRAP_5                             = 188027,
    GO_MAMMOTH_TRAP_6                             = 188028,
    GO_MAMMOTH_TRAP_7                             = 188029,
    GO_MAMMOTH_TRAP_8                             = 188030,
    GO_MAMMOTH_TRAP_9                             = 188031,
    GO_MAMMOTH_TRAP_10                            = 188032,
    GO_MAMMOTH_TRAP_11                            = 188033,
    GO_MAMMOTH_TRAP_12                            = 188034,
    GO_MAMMOTH_TRAP_13                            = 188035,
    GO_MAMMOTH_TRAP_14                            = 188036,
    GO_MAMMOTH_TRAP_15                            = 188037,
    GO_MAMMOTH_TRAP_16                            = 188038,
    GO_MAMMOTH_TRAP_17                            = 188039,
    GO_MAMMOTH_TRAP_18                            = 188040,
    GO_MAMMOTH_TRAP_19                            = 188041,
    GO_MAMMOTH_TRAP_20                            = 188042,
    GO_MAMMOTH_TRAP_21                            = 188043,
    GO_MAMMOTH_TRAP_22                            = 188044,
};

#define MammothTrapsNum 22
const uint32 MammothTraps[MammothTrapsNum] =
{
    GO_MAMMOTH_TRAP_1, GO_MAMMOTH_TRAP_2, GO_MAMMOTH_TRAP_3, GO_MAMMOTH_TRAP_4, GO_MAMMOTH_TRAP_5,
    GO_MAMMOTH_TRAP_6, GO_MAMMOTH_TRAP_7, GO_MAMMOTH_TRAP_8, GO_MAMMOTH_TRAP_9, GO_MAMMOTH_TRAP_10,
    GO_MAMMOTH_TRAP_11, GO_MAMMOTH_TRAP_12, GO_MAMMOTH_TRAP_13, GO_MAMMOTH_TRAP_14, GO_MAMMOTH_TRAP_15,
    GO_MAMMOTH_TRAP_16, GO_MAMMOTH_TRAP_17, GO_MAMMOTH_TRAP_18, GO_MAMMOTH_TRAP_19, GO_MAMMOTH_TRAP_20,
    GO_MAMMOTH_TRAP_21, GO_MAMMOTH_TRAP_22
};

class item_dehta_trap_smasher : public ItemScript
{
public:
    item_dehta_trap_smasher() : ItemScript("item_dehta_trap_smasher") { }

    bool OnUse(Player* player, Item* /*item*/, SpellCastTargets const& /*targets*/, ObjectGuid /*castId*/) override
    {
        if (player->GetQuestStatus(QUEST_CANNOT_HELP_THEMSELVES) != QUEST_STATUS_INCOMPLETE)
            return false;

        Creature* pMammoth = player->FindNearestCreature(NPC_TRAPPED_MAMMOTH_CALF, 5.0f);
        if (!pMammoth)
            return false;

        GameObject* pTrap = NULL;
        for (uint8 i = 0; i < MammothTrapsNum; ++i)
        {
            pTrap = player->FindNearestGameObject(MammothTraps[i], 11.0f);
            if (pTrap)
            {
                pMammoth->AI()->DoAction(1);
                pTrap->SetGoState(GO_STATE_READY);
                player->KilledMonsterCredit(NPC_TRAPPED_MAMMOTH_CALF);
                return true;
            }
        }
        return false;
    }
};

enum TheEmissary
{
    QUEST_THE_EMISSARY      =   11626,
    NPC_LEVIROTH            =   26452
};

class item_trident_of_nazjan : public ItemScript
{
public:
    item_trident_of_nazjan() : ItemScript("item_Trident_of_Nazjan") { }

    bool OnUse(Player* player, Item* item, SpellCastTargets const& /*targets*/, ObjectGuid /*castId*/) override
    {
        if (player->GetQuestStatus(QUEST_THE_EMISSARY) == QUEST_STATUS_INCOMPLETE)
        {
            if (Creature* pLeviroth = player->FindNearestCreature(NPC_LEVIROTH, 10.0f)) // spell range
            {
                pLeviroth->AI()->AttackStart(player);
                return false;
            } else
                player->SendEquipError(EQUIP_ERR_OUT_OF_RANGE, item, NULL);
        } else
            player->SendEquipError(EQUIP_ERR_CLIENT_LOCKED_OUT, item, NULL);
        return true;
    }
};

enum CapturedFrog
{
    QUEST_THE_PERFECT_SPIES      = 25444,
    NPC_VANIRAS_SENTRY_TOTEM     = 40187
};

class item_captured_frog : public ItemScript
{
public:
    item_captured_frog() : ItemScript("item_captured_frog") { }

    bool OnUse(Player* player, Item* item, SpellCastTargets const& /*targets*/, ObjectGuid /*castId*/) override
    {
        if (player->GetQuestStatus(QUEST_THE_PERFECT_SPIES) == QUEST_STATUS_INCOMPLETE)
        {
            if (player->FindNearestCreature(NPC_VANIRAS_SENTRY_TOTEM, 10.0f))
                return false;
            else
                player->SendEquipError(EQUIP_ERR_OUT_OF_RANGE, item, NULL);
        }
        else
            player->SendEquipError(EQUIP_ERR_CLIENT_LOCKED_OUT, item, NULL);
        return true;
    }
};

/*#####
# item_primal_egg
#####*/

class item_primal_egg : public ItemScript
{
public:
    item_primal_egg() : ItemScript("item_primal_egg") { }

    bool OnExpire(Player* player, ItemTemplate const* /*pItemProto*/) override
    {
        ItemPosCountVec dest;
        uint8 msg = player->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, 94296, 1); // Cracked Primal Egg
        if (msg == EQUIP_ERR_OK)
            player->StoreNewItem(dest, 94296, true, GenerateItemRandomPropertyId(94296));

        return true;
    }
};

/*#####
# item_pulsating_sac
#####*/

class item_pulsating_sac : public ItemScript
{
public:
    item_pulsating_sac() : ItemScript("item_pulsating_sac") { }

    bool OnExpire(Player* player, ItemTemplate const* /*pItemProto*/) override
    {
        ItemPosCountVec dest;
        uint8 msg = player->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, 137608, 1); // Growling Sac
        if (msg == EQUIP_ERR_OK)
            player->StoreNewItem(dest, 137608, true, GenerateItemRandomPropertyId(137608));

        return true;
    }
};

// Leggings of the foregone 240719
// 7.3.5
class loot_item_leggings_of_the_foregone : public ItemScript
{
public:
    loot_item_leggings_of_the_foregone() : ItemScript("loot_item_leggings_of_the_foregone") { }

    bool OnUse(Player* player, Item* item, SpellCastTargets const& /*targets*/, ObjectGuid castId) override
    {
        uint32 itemId = item->GetEntry();

        std::vector<uint32> items;

        items.push_back(147173);
        items.push_back(147125);
        items.push_back(147148);
        items.push_back(147137);
        items.push_back(147161);
        items.push_back(147166);
        items.push_back(147184);
        items.push_back(147131);
        items.push_back(147191);
        items.push_back(147143);
        items.push_back(147179);
        items.push_back(147155);

        // Process items
        Trinity::Containers::RandomShuffle(items);
        for (auto itemId : items)
        {
            // Safe! Item rewards always have an item template
            ItemTemplate const* proto = sObjectMgr->GetItemTemplate(itemId);

            bool allowRace = proto->GetAllowableRace() && (proto->GetAllowableRace() & player->getRaceMask());
            bool allowSpec = !proto->HasSpec() || proto->IsUsableByLootSpecialization(player, false);
            if (!allowRace || !allowSpec)
                continue;

            // Generate bonuses for selected item
            uint32 itemLevel = ITEM_LEVEL_LEGION_T20;
            uint32 epicbonus = BONUS_ITEM_T20_EPIC;
            for (uint32 bonusListID : item->GetDynamicValues(ITEM_DYNAMIC_FIELD_BONUSLIST_IDS))
            {
                if (bonusListID == BONUS_CACHE_HEROIC)
                {
                    itemLevel = 915;
                    epicbonus = BONUS_ITEM_T20_HEROIC;
                }
                if (bonusListID == BONUS_CACHE_MYTHIC)
                {
                    itemLevel = 930;
                    epicbonus = BONUS_ITEM_T20_MYTHIC;
                }

            }

            std::vector<int32> bonusLists;

            int32 diff = itemLevel - ITEM_LEVEL_LEGION_T20;

            bonusLists.push_back(epicbonus);

            bonusLists.push_back(int32(BONUS_ITEM_T20_LEVEL_START + diff));

            ItemPosCountVec dest;
            bool mailed = player->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, itemId, 1) != EQUIP_ERR_OK;
            player->SendDisplayToast(itemId, 0, 1, DISPLAY_TOAST_METHOD_CURRENCY_OR_ITEM, TOAST_TYPE_ITEM, false, mailed, bonusLists);
            if (mailed)
                player->SendItemRetrievalMail(itemId, 1, GenerateItemRandomPropertyId(itemId), bonusLists);
            else
                player->StoreNewItem(dest, itemId, true, GenerateItemRandomPropertyId(itemId), GuidSet(), 0, bonusLists);

            break;
        }

        player->DestroyItem(item->GetBagSlot(), item->GetSlot(), true);

        return true;
    }
};

// gloves of the-foregone 240719
// 7.3.5
class loot_item_gloves_of_the_foregone : public ItemScript
{
public:
    loot_item_gloves_of_the_foregone() : ItemScript("loot_item_gloves_of_the_foregone") { }

    bool OnUse(Player* player, Item* item, SpellCastTargets const& /*targets*/, ObjectGuid castId) override
    {
        uint32 itemId = item->GetEntry();

        std::vector<uint32> items;

        items.push_back(147171);
        items.push_back(147123);
        items.push_back(147146);
        items.push_back(147135);

        items.push_back(147159);
        items.push_back(147164);
        items.push_back(147182);
        items.push_back(147129);
        items.push_back(147189);
        items.push_back(147141);
        items.push_back(147177);
        items.push_back(147153);

        // Process items
        Trinity::Containers::RandomShuffle(items);
        for (auto itemId : items)
        {
            // Safe! Item rewards always have an item template
            ItemTemplate const* proto = sObjectMgr->GetItemTemplate(itemId);

            bool allowRace = proto->GetAllowableRace() && (proto->GetAllowableRace() & player->getRaceMask());
            bool allowSpec = !proto->HasSpec() || proto->IsUsableByLootSpecialization(player, false);
            if (!allowRace || !allowSpec)
                continue;

            // Generate bonuses for selected item
            uint32 itemLevel = ITEM_LEVEL_LEGION_T20;
            uint32 epicbonus = BONUS_ITEM_T20_EPIC;
            for (uint32 bonusListID : item->GetDynamicValues(ITEM_DYNAMIC_FIELD_BONUSLIST_IDS))
            {
                if (bonusListID == BONUS_CACHE_HEROIC)
                {
                    itemLevel = 915;
                    epicbonus = BONUS_ITEM_T20_HEROIC;
                }
                if (bonusListID == BONUS_CACHE_MYTHIC)
                {
                    itemLevel = 930;
                    epicbonus = BONUS_ITEM_T20_MYTHIC;
                }

            }

            std::vector<int32> bonusLists;

            int32 diff = itemLevel - ITEM_LEVEL_LEGION_T20;

            bonusLists.push_back(epicbonus);

            bonusLists.push_back(int32(BONUS_ITEM_T20_LEVEL_START + diff));

            ItemPosCountVec dest;
            bool mailed = player->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, itemId, 1) != EQUIP_ERR_OK;
            player->SendDisplayToast(itemId, 0, 1, DISPLAY_TOAST_METHOD_CURRENCY_OR_ITEM, TOAST_TYPE_ITEM, false, mailed, bonusLists);
            if (mailed)
                player->SendItemRetrievalMail(itemId, 1, GenerateItemRandomPropertyId(itemId), bonusLists);
            else
                player->StoreNewItem(dest, itemId, true, GenerateItemRandomPropertyId(itemId), GuidSet(), 0, bonusLists);

            break;
        }
        player->DestroyItem(item->GetBagSlot(), item->GetSlot(), true);

        return true;
    }
};

// Satchel of Battlefield Spoils - 143606,143607
// 7.3.5 147446
class item_satchel_of_battlefield_spoils : public ItemScript
{
public:
    item_satchel_of_battlefield_spoils() : ItemScript("item_satchel_of_battlefield_spoils") { }

    bool OnOpen(Player* player, Item* item) override
    {
        ItemTemplate const* proto = item->GetTemplate();
        LootTemplate const* lootTemplate = LootTemplates_Item.GetLootFor(proto->GetId());
        if (!lootTemplate)
            return true;

        uint32 itemID = 0;
        std::unordered_map<uint32, std::vector<int32>> lootTable;
        std::unordered_map<uint32, std::vector<int32>> items;
        lootTemplate->FillAutoAssignationLoot(lootTable);

        for (auto loot : lootTable)
        {
            ItemTemplate const* itemTemplate = sObjectMgr->GetItemTemplate(loot.first);
            if (!itemTemplate)
                continue;

            if ((itemTemplate->GetAllowableClass() && !(itemTemplate->GetAllowableClass() & player->getClassMask())) ||
                (itemTemplate->GetAllowableRace() && !(itemTemplate->GetAllowableRace() & player->getRaceMask())))
                continue;

            if (itemTemplate->IsUsableByLootSpecialization(player, false) || !itemTemplate->HasSpec())
                items[loot.first] = loot.second;
        }

        if (items.empty())
            return true;

        auto items_random = std::next(std::begin(items), urand(0u, items.size() - 1));
        itemID = items_random->first;
        std::vector<int32> bonuses = items_random->second;

        if (!itemID)
            return true;

        uint32 ilvl = player->GetAverageItemLevelEquipped();
        uint32 bonus = 0;

        if (ItemTemplate const* item = sObjectMgr->GetItemTemplate(itemID))
        {
            uint32 MaxIlvl = 905; // for BG, Skirmish

            if (item->GetSubClass() == ITEM_SUBCLASS_ARMOR_RELIC)
                MaxIlvl = 870;

            uint32 startIlvl = 810;
            uint32 MultipleIlvl = Trinity::GetNumberMultipleOfFive(ilvl); // returns a number that is multiple by five, example: 811 = 810. 813 = 815
            uint32 differenceMaxStartIlvl = MaxIlvl - startIlvl;
            uint32 modificatorIlvl = 0;
            bonus = (ilvl >= MaxIlvl ? differenceMaxStartIlvl : (ilvl >= startIlvl + modificatorIlvl ? (MultipleIlvl + 5 - startIlvl) : modificatorIlvl));
            if (bonus > differenceMaxStartIlvl)
                bonus = differenceMaxStartIlvl;


            if (item->GetSubClass() == ITEM_SUBCLASS_ARMOR_RELIC)
            {
                bonuses.push_back(3427);
                bonuses.push_back(1602 + bonus);
            }
            else
            {
                bonuses.push_back(3460);
                bonuses.push_back(1442 + bonus);
            }
        }

        ItemPosCountVec dest;
        InventoryResult msg = player->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, itemID, 1);
        if (msg != EQUIP_ERR_OK)
        {
            player->SendItemRetrievalMail(itemID, 1, GenerateItemRandomPropertyId(itemID), bonuses);
			player->SendDisplayToast(itemID, 0, 1, DISPLAY_TOAST_METHOD_LOOT, TOAST_TYPE_ITEM, false, true, bonuses);
            player->DestroyItem(item->GetBagSlot(), item->GetSlot(), true);
            return true;
        }

        Item* newItem = player->StoreNewItem(dest, itemID, true, GenerateItemRandomPropertyId(itemID), GuidSet(), 0, bonuses);
        if (!newItem)
        {
            player->SendItemRetrievalMail(itemID, 1, GenerateItemRandomPropertyId(itemID), bonuses);
			player->SendDisplayToast(itemID, 0, 1, DISPLAY_TOAST_METHOD_LOOT, TOAST_TYPE_ITEM, false, true, bonuses);
            player->DestroyItem(item->GetBagSlot(), item->GetSlot(), true);
            return true;
        }

        player->SendDisplayToast(itemID, 0, 1, DISPLAY_TOAST_METHOD_LOOT, TOAST_TYPE_ITEM, false, true, bonuses);
		player->SendNewItem(newItem, 1, true, false);
        player->DestroyItem(item->GetBagSlot(), item->GetSlot(), true);

        return true;
    }
};

// item 143579 Cloak of the Foreseen
// item 143577
// item 143578
// 7.3.5
class loot_item_cloak_of_the_foreseen : public ItemScript
{
public:
    loot_item_cloak_of_the_foreseen() : ItemScript("loot_item_cloak_of_the_foreseen") { }

    bool OnUse(Player* player, Item* item, SpellCastTargets const& /*targets*/, ObjectGuid castId) override
    {
        uint32 itemId = item->GetEntry();

        std::vector<uint32> items;

        items.push_back(138374);
        items.push_back(138368);
        items.push_back(138367);
        items.push_back(138372);
        items.push_back(138373);
        items.push_back(138369);
        items.push_back(138370);
        items.push_back(138375);
        items.push_back(138365);
        items.push_back(138366);
        items.push_back(138371);
        items.push_back(138364);

        // Process items
        Trinity::Containers::RandomShuffle(items);
        for (auto itemId : items)
        {

            // Safe! Item rewards always have an item template
            ItemTemplate const* proto = sObjectMgr->GetItemTemplate(itemId);
            bool allowRace = proto->GetAllowableRace() && (proto->GetAllowableRace() & player->getRaceMask());
            bool allowSpec = !proto->HasSpec() || proto->IsUsableByLootSpecialization(player, false);
            if (!allowRace || !allowSpec)
                continue;

            // Generate bonuses for selected item
            uint32 itemLevel = ITEM_LEVEL_LEGION_T19;
            uint32 epicbonus = BONUS_ITEM_T20_EPIC;
            for (uint32 bonusListID : item->GetDynamicValues(ITEM_DYNAMIC_FIELD_BONUSLIST_IDS))
            {
                if (bonusListID == BONUS_CACHE_HEROIC)
                {
                    itemLevel = 895;
                    epicbonus = BONUS_ITEM_T19_HEROIC;
                }
                if (bonusListID == BONUS_CACHE_MYTHIC)
                {
                    itemLevel = 905;
                    epicbonus = BONUS_ITEM_T19_MYTHIC;
                }

            }

            std::vector<int32> bonusLists;

            int32 diff = itemLevel - ITEM_LEVEL_LEGION_T19;
            bonusLists.push_back(epicbonus);

            bonusLists.push_back(int32(BONUS_ITEM_T19_LEVEL_START + diff));

            ItemPosCountVec dest;
            bool mailed = player->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, itemId, 1) != EQUIP_ERR_OK;
            player->SendDisplayToast(itemId, 0, 1, DISPLAY_TOAST_METHOD_CURRENCY_OR_ITEM, TOAST_TYPE_ITEM, false, mailed, bonusLists);
            if (mailed)
                player->SendItemRetrievalMail(itemId, 1, GenerateItemRandomPropertyId(itemId), bonusLists);
            else
                player->StoreNewItem(dest, itemId, true, GenerateItemRandomPropertyId(itemId), GuidSet(), 0, bonusLists);

            break;
        }
        player->DestroyItem(item->GetBagSlot(), item->GetSlot(), true);

        return true;
    }
};

// item 143576 Shoulders-of-the-foreseen
// item 143566
// item 143570
// 7.3.5
class loot_item_shoulders_of_the_foreseen : public ItemScript
{
public:
    loot_item_shoulders_of_the_foreseen() : ItemScript("loot_item_shoulders_of_the_foreseen") { }

    bool OnUse(Player* player, Item* item, SpellCastTargets const& /*targets*/, ObjectGuid castId) override
    {
        uint32 itemId = item->GetEntry();

        std::vector<uint32> items;

        items.push_back(138347);
        items.push_back(138337);
        items.push_back(138363);
        items.push_back(138348);
        items.push_back(138323);
        items.push_back(138362);
        items.push_back(138322);
        items.push_back(138380);
        items.push_back(138321);
        items.push_back(138361);
        items.push_back(138336);
        items.push_back(138338);


        // Process items
        Trinity::Containers::RandomShuffle(items);
        for (auto itemId : items)
        {
            // Safe! Item rewards always have an item template
            ItemTemplate const* proto = sObjectMgr->GetItemTemplate(itemId);

            bool allowRace = proto->GetAllowableRace() && (proto->GetAllowableRace() & player->getRaceMask());
            bool allowSpec = !proto->HasSpec() || proto->IsUsableByLootSpecialization(player, false);
            if (!allowRace || !allowSpec)
                continue;

            // Generate bonuses for selected item
            uint32 itemLevel = ITEM_LEVEL_LEGION_T19;
            uint32 epicbonus = BONUS_ITEM_T20_EPIC;
            for (uint32 bonusListID : item->GetDynamicValues(ITEM_DYNAMIC_FIELD_BONUSLIST_IDS))
            {
                if (bonusListID == BONUS_CACHE_HEROIC)
                {
                    itemLevel = 895;
                    epicbonus = BONUS_ITEM_T19_HEROIC;
                }
                if (bonusListID == BONUS_CACHE_MYTHIC)
                {
                    itemLevel = 905;
                    epicbonus = BONUS_ITEM_T19_MYTHIC;
                }

            }

            std::vector<int32> bonusLists;

            int32 diff = itemLevel - ITEM_LEVEL_LEGION_T19;
            bonusLists.push_back(epicbonus);

            bonusLists.push_back(int32(BONUS_ITEM_T19_LEVEL_START + diff));

            ItemPosCountVec dest;
            bool mailed = player->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, itemId, 1) != EQUIP_ERR_OK;
            player->SendDisplayToast(itemId, 0, 1, DISPLAY_TOAST_METHOD_CURRENCY_OR_ITEM, TOAST_TYPE_ITEM, false, mailed, bonusLists);
            if (mailed)
                player->SendItemRetrievalMail(itemId, 1, GenerateItemRandomPropertyId(itemId), bonusLists);
            else
                player->StoreNewItem(dest, itemId, true, GenerateItemRandomPropertyId(itemId), GuidSet(), 0, bonusLists);

            break;
        }
        player->DestroyItem(item->GetBagSlot(), item->GetSlot(), true);

        return true;
    }
};

// Chest of the Foregone 240716
// 7.3.5
class loot_item_chest_of_the_foregone : public ItemScript
{
public:
    loot_item_chest_of_the_foregone() : ItemScript("loot_item_chest_of_the_foregone") { }

    bool OnUse(Player* player, Item* item, SpellCastTargets const& /*targets*/, ObjectGuid castId) override
    {
        uint32 itemId = item->GetEntry();

        std::vector<uint32> items;

        //147316 - 147169, 147121, 147149, 147133
        //147317 - 147157, 147167, 147185, 147127
        //147318 - 147187, 147139, 147175, 147151
        items.push_back(147169);
        items.push_back(147121);
        items.push_back(147149);
        items.push_back(147133);
        items.push_back(147157);
        items.push_back(147167);
        items.push_back(147185);
        items.push_back(147127);
        items.push_back(147187);
        items.push_back(147139);
        items.push_back(147175);
        items.push_back(147151);

        // Process items
        Trinity::Containers::RandomShuffle(items);
        for (auto itemId : items)
        {
            // Safe! Item rewards always have an item template
            ItemTemplate const* proto = sObjectMgr->GetItemTemplate(itemId);

            bool allowRace = proto->GetAllowableRace() && (proto->GetAllowableRace() & player->getRaceMask());
            bool allowSpec = !proto->HasSpec() || proto->IsUsableByLootSpecialization(player, false);
            if (!allowRace || !allowSpec)
                continue;

            // Generate bonuses for selected item
            uint32 itemLevel = ITEM_LEVEL_LEGION_T20;
            uint32 epicbonus = BONUS_ITEM_T20_EPIC;
            for (uint32 bonusListID : item->GetDynamicValues(ITEM_DYNAMIC_FIELD_BONUSLIST_IDS))
            {
                if (bonusListID == BONUS_CACHE_HEROIC)
                {
                    itemLevel = 915;
                    epicbonus = BONUS_ITEM_T20_HEROIC;
                }
                if (bonusListID == BONUS_CACHE_MYTHIC)
                {
                    itemLevel = 930;
                    epicbonus = BONUS_ITEM_T20_MYTHIC;
                }

            }

            std::vector<int32> bonusLists;

            int32 diff = itemLevel - ITEM_LEVEL_LEGION_T20;

            bonusLists.push_back(epicbonus);

            bonusLists.push_back(int32(BONUS_ITEM_T20_LEVEL_START + diff));

            ItemPosCountVec dest;
            bool mailed = player->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, itemId, 1) != EQUIP_ERR_OK;
            player->SendDisplayToast(itemId, 0, 1, DISPLAY_TOAST_METHOD_CURRENCY_OR_ITEM, TOAST_TYPE_ITEM, false, mailed, bonusLists);
            if (mailed)
                player->SendItemRetrievalMail(itemId, 1, GenerateItemRandomPropertyId(itemId), bonusLists);
            else
                player->StoreNewItem(dest, itemId, true, GenerateItemRandomPropertyId(itemId), GuidSet(), 0, bonusLists);

            break;
        }
        player->DestroyItem(item->GetBagSlot(), item->GetSlot(), true);

        return true;
    }
};

// unsullied_plate_helmet 153155
// 7.3.5
class loot_item_unsullied_plate_helmet : public ItemScript
{
public:
    loot_item_unsullied_plate_helmet() : ItemScript("loot_item_unsullied_plate_helmet") { }

    bool OnUse(Player* player, Item* item, SpellCastTargets const& /*targets*/, ObjectGuid castId) override
    {
        uint32 itemId = item->GetEntry();

        std::vector<uint32> itemstwo;

        itemstwo.push_back(152747);

        // Process items
        Trinity::Containers::RandomShuffle(itemstwo);
        for (auto itemId : itemstwo)
        {
            // Safe! Item rewards always have an item template
            ItemTemplate const* proto = sObjectMgr->GetItemTemplate(itemId);

            bool allowRace = proto->GetAllowableRace() && (proto->GetAllowableRace() & player->getRaceMask());
            bool allowSpec = !proto->HasSpec() || proto->IsUsableByLootSpecialization(player, false);
            if (!allowRace || !allowSpec)
                continue;

            // Generate bonuses for selected item
            uint32 itemLevel = ITEM_LEVEL_LEGION_T20;
            uint32 epicbonus = BONUS_ITEM_T20_EPIC;
            for (uint32 bonusListIDTwo : item->GetDynamicValues(ITEM_DYNAMIC_FIELD_BONUSLIST_IDS))
            {
                if (bonusListIDTwo == BONUS_CACHE_HEROIC)
                {
                    itemLevel = 915;
                    epicbonus = BONUS_ITEM_T20_HEROIC;
                }
                if (bonusListIDTwo == BONUS_CACHE_MYTHIC)
                {
                    itemLevel = 930;
                    epicbonus = BONUS_ITEM_T20_MYTHIC;
                }

            }

            std::vector<int32> bonusListsTwo;

            int32 diff = itemLevel - ITEM_LEVEL_LEGION_T20;
            /*if (int32 forgedDiff = Item::GenerateForgedBonus(itemLevel, bonusListsTwo, true))
                diff += forgedDiff;*/

            bonusListsTwo.push_back(epicbonus);

            bonusListsTwo.push_back(int32(BONUS_ITEM_T20_LEVEL_START + diff));

            ItemPosCountVec dest;
            bool mailed = player->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, itemId, 1) != EQUIP_ERR_OK;
            player->SendDisplayToast(itemId, 0, 1, DISPLAY_TOAST_METHOD_CURRENCY_OR_ITEM, TOAST_TYPE_ITEM, false, mailed, bonusListsTwo);
            if (mailed)
                player->SendItemRetrievalMail(itemId, 1, GenerateItemRandomPropertyId(itemId), bonusListsTwo);
            else
                player->StoreNewItem(dest, itemId, true, GenerateItemRandomPropertyId(itemId), GuidSet(), 0, bonusListsTwo);

            break;
        }
        player->DestroyItem(item->GetBagSlot(), item->GetSlot(), true);

        return true;
    }
};

namespace ProfessionBookSpells
{
    enum
    {
        Alchemy         = 156614,
        Blacksmithing   = 169923,
        Enchanting      = 161788,
        Engineering     = 161787,
        Inscription     = 161789,
        JewelCrafting   = 169926,
        LeatherWorking  = 169925,
        Tailoring       = 169924
    };
}
namespace ProfessionBookSpellLearnSpells
{
    uint32 AlchemyLearnedRecipes[] =
    {
        156587, ///< Alchemical Catalyst
        156585, ///< Crescent Oil
        175865, ///< Draenic Invisibility Potion
        175867, ///< Draenic Living Action Potion
        156582, ///< Draenic Mana Potion
        175853, ///< Draenic Swiftness Potion
        175866, ///< Draenic Water Breathing Elixir
        175869, ///< Draenic Water Walking Elixir
        175868, ///< Pure Rage Potion
        175880, ///< Secrets of Draenor Alchemy
    };

    uint32 BlacksmithingLearnedRecipes[] =
    {
        171692, ///< Smoldering Breastplate
        171693, ///< Smoldering Greaves
        171691, ///< Smoldering Helm
        171690, ///< Truesteel Ingot
        176090  ///< Secrets of Draenor Blacksmithing
    };

    uint32 EnchantingLearnedRecipes[] =
    {
        158907, ///< Breath of Critical Strike
        158908, ///< Breath of Haste
        158909, ///< Breath of Mastery
        158910, ///< Breath of Multistrike
        158911, ///< Breath of Versatility
        158896, ///< Breath of Versatility
        159236, ///< Mark of the Shattered Hand
        169092, ///< Temporal Crystal
        169091, ///< Luminous Shard
        162948, ///< Enchanted Dust
        177043  ///< Secrets of Draenor Enchanting
    };

    uint32 EngineeringLearnedRecipes[] =
    {
        169080, ///< Gearspring Parts
        162208, ///< Ultimate Gnomish Army Knife
        162204, ///< Goblin Glider Kit
        173308, ///< Mecha-Blast Rocket
        177054, ///< Secrets of Draenor Engineering
        173309, ///< Shieldtronic Shield
        162207  ///< Stealthman 54
    };

    uint32 InscriptionLearnedRecipes[] =
    {
        175390, ///< Laughing Tarot
        175389, ///< Ocean Tarot
        175392, ///< Savage Tarot
        169081, ///< War Paints
        166669, ///< Card of Omens
        167950, ///< Research: Warbinder's Ink
        177045, ///< Secrets of Draenor Inscription
        178497  ///< Warbinder's Ink
    };

    uint32 JewelCraftingLearnedRecipes[] =
    {
        170710, ///< Glowing Blackrock Band
        170704, ///< Glowing Iron Band
        170707, ///< Glowing Iron Choker
        170711, ///< Shifting Blackrock Band
        170705, ///< Shifting Iron Band
        170708, ///< Shifting Iron Choker
        170712, ///< Whispering Blackrock Band
        170706, ///< Whispering Iron Band
        170709, ///< Whispering Iron Choker
        170700, ///< Taladite Crystal
        176087  ///< Secrets of Draenor Jewelcrafting
    };

    uint32 LeatherWorkingLearnedRecipes[] =
    {
        171260, ///< Journeying Helm
        171261, ///< Journeying Robes
        171262, ///< Journeying Slacks
        171263, ///< Traveling Helm
        171265, ///< Traveling Leggings
        171264, ///< Traveling Tunic
        171391, ///< Burnished Leather
        176089  ///< Secrets of Draenor Leatherworking
    };

    uint32 TailoringLearnedRecipes[] =
    {
        168852, ///< Sumptuous Cowl
        168854, ///< Sumptuous Leggings
        168853, ///< Sumptuous Robes
        168835, ///< Hexweave Cloth
        176058  ///< Secrets of Draenor Tailoring
    };

}

class spell_draenor_profession : public SpellScriptLoader
{
    public:
        spell_draenor_profession()
            : SpellScriptLoader("spell_draenor_profession")
        {
        }

        class spell_draenor_profession_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_draenor_profession_SpellScript);

            void HandleAfterHit()
            {
                std::vector<uint32> l_LinkedSpells;

                if (GetCaster() && GetCaster()->ToPlayer())
                {
#define MakeVector(a) std::vector<uint32>(a, a + (sizeof(a) / sizeof(a[0])))
                    switch (GetSpellInfo()->Id)
                    {
                        case ProfessionBookSpells::Alchemy:        l_LinkedSpells = MakeVector(ProfessionBookSpellLearnSpells::AlchemyLearnedRecipes);        break;
                        case ProfessionBookSpells::Blacksmithing:  l_LinkedSpells = MakeVector(ProfessionBookSpellLearnSpells::BlacksmithingLearnedRecipes);  break;
                        case ProfessionBookSpells::Enchanting:     l_LinkedSpells = MakeVector(ProfessionBookSpellLearnSpells::EnchantingLearnedRecipes);     break;
                        case ProfessionBookSpells::Engineering:    l_LinkedSpells = MakeVector(ProfessionBookSpellLearnSpells::EngineeringLearnedRecipes);    break;
                        case ProfessionBookSpells::Inscription:    l_LinkedSpells = MakeVector(ProfessionBookSpellLearnSpells::InscriptionLearnedRecipes);    break;
                        case ProfessionBookSpells::JewelCrafting:  l_LinkedSpells = MakeVector(ProfessionBookSpellLearnSpells::JewelCraftingLearnedRecipes);  break;
                        case ProfessionBookSpells::LeatherWorking: l_LinkedSpells = MakeVector(ProfessionBookSpellLearnSpells::LeatherWorkingLearnedRecipes); break;
                        case ProfessionBookSpells::Tailoring:      l_LinkedSpells = MakeVector(ProfessionBookSpellLearnSpells::TailoringLearnedRecipes);      break;

                        default:
                            break;
                    }
#undef MakeVector
                }

                for (uint32 l_I = 0; l_I < l_LinkedSpells.size(); ++l_I)
                {
                    GetCaster()->ToPlayer()->LearnSpell(l_LinkedSpells[l_I], false);
                }
            }

            void Register() override
            {
                AfterHit += SpellHitFn(spell_draenor_profession_SpellScript::HandleAfterHit);
            }
        };

        SpellScript* GetSpellScript() const override
        {
            return new spell_draenor_profession_SpellScript();
        }

};

/// Challenger's Strongbox - 127831
/*class item_script_challengers_strongbox : public ItemScript
{
    public:
        item_script_challengers_strongbox() : ItemScript("item_script_challengers_strongbox") { }

        bool OnOpen(Player* p_Player, Item* p_Item) override
        {
            ItemTemplate const* l_Proto = p_Item->GetTemplate();
            LootTemplate const* l_LootTemplate = LootTemplates_Item.GetLootFor(l_Proto->ItemId);
            if (!l_LootTemplate)
                return false;

            uint32 l_ItemID = 0;
            std::list<ItemTemplate const*> l_LootTable;
            std::vector<uint32> l_Items;
            l_LootTemplate->FillAutoAssignationLoot(l_LootTable);
            uint32 l_SpecID = p_Player->GetLootSpecId() ? p_Player->GetLootSpecId() : p_Player->GetSpecializationId(p_Player->GetActiveSpec());

            for (ItemTemplate const* l_Template : l_LootTable)
            {
                if ((l_Template->AllowableClass && !(l_Template->AllowableClass & p_Player->getClassMask())) ||
                    (l_Template->AllowableRace && !(l_Template->AllowableRace & p_Player->getRaceMask())))
                    continue;

                if (l_Template->HasSpec((SpecIndex)l_SpecID, p_Player->getLevel()))
                    l_Items.push_back(l_Template->ItemId);
            }

            if (l_Items.empty())
                return false;

            l_ItemID = l_Items[urand(0, l_Items.size() - 1)];

            if (!l_ItemID)
                return false;

            if (!p_Player->GetBagsFreeSlots())
                return false;

            p_Player->AddItem(l_ItemID, 1);
            p_Player->SendDisplayToast(l_ItemID, 1, DISPLAY_TOAST_METHOD_LOOT, TOAST_TYPE_NEW_ITEM, false, false);
            p_Player->DestroyItem(p_Item->GetBagSlot(), p_Item->GetSlot(), true);
            return true;
        }
};*/

// item 147330 Shoulders-of-the-foregone-protector
// item 147329
// item 147328
// 7.3.5
class loot_item_shoulders_of_the_foregone_protector : public ItemScript
{
public:
    loot_item_shoulders_of_the_foregone_protector() : ItemScript("loot_item_shoulders_of_the_foregone_protector") { }

    bool OnUse(Player* player, Item* item, SpellCastTargets const& /*targets*/, ObjectGuid castId) override
    {
        uint32 itemId = item->GetEntry();

        std::vector<uint32> items;

        items.push_back(138347);
        items.push_back(138337);
        items.push_back(138363);
        items.push_back(138348);
        items.push_back(138323);
        items.push_back(138362);
        items.push_back(138322);
        items.push_back(138380);
        items.push_back(138321);
        items.push_back(138361);
        items.push_back(138336);
        items.push_back(138338);

        // Process items
        Trinity::Containers::RandomShuffle(items);
        for (auto itemId : items)
        {
            // Safe! Item rewards always have an item template
            ItemTemplate const* proto = sObjectMgr->GetItemTemplate(itemId);

            bool allowRace = proto->GetAllowableRace() && (proto->GetAllowableRace() & player->getRaceMask());
            bool allowSpec = !proto->HasSpec() || proto->IsUsableByLootSpecialization(player, false);
            if (!allowRace || !allowSpec)
                continue;

            // Generate bonuses for selected item
            uint32 itemLevel = ITEM_LEVEL_LEGION_T19;
            uint32 epicbonus = BONUS_ITEM_T20_EPIC;
            for (uint32 bonusListID : item->GetDynamicValues(ITEM_DYNAMIC_FIELD_BONUSLIST_IDS))
            {
                if (bonusListID == BONUS_CACHE_HEROIC)
                {
                    itemLevel = 915;
                    epicbonus = BONUS_ITEM_T19_HEROIC;
                }
                if (bonusListID == BONUS_CACHE_MYTHIC)
                {
                    itemLevel = 930;
                    epicbonus = BONUS_ITEM_T19_MYTHIC;
                }

            }

            std::vector<int32> bonusLists;

            int32 diff = itemLevel - ITEM_LEVEL_LEGION_T19;
            bonusLists.push_back(epicbonus);

            bonusLists.push_back(int32(BONUS_ITEM_T19_LEVEL_START + diff));

            ItemPosCountVec dest;
            bool mailed = player->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, itemId, 1) != EQUIP_ERR_OK;
            player->SendDisplayToast(itemId, 0, 1, DISPLAY_TOAST_METHOD_CURRENCY_OR_ITEM, TOAST_TYPE_ITEM, false, mailed, bonusLists);
            if (mailed)
                player->SendItemRetrievalMail(itemId, 1, GenerateItemRandomPropertyId(itemId), bonusLists);
            else
                player->StoreNewItem(dest, itemId, true, GenerateItemRandomPropertyId(itemId), GuidSet(), 0, bonusLists);

            break;
        }
        player->DestroyItem(item->GetBagSlot(), item->GetSlot(), true);

        return true;
    }
};

void AddSC_item_scripts()
{
    new item_only_for_flight();
    new item_nether_wraith_beacon();
    new item_gor_dreks_ointment();
    new item_incendiary_explosives();
    new item_mysterious_egg();
    new item_disgusting_jar();
    new item_pile_fake_furs();
    new item_petrov_cluster_bombs();
    new item_dehta_trap_smasher();
    new item_trident_of_nazjan();
    new item_captured_frog();
    new item_satchel_of_battlefield_spoils();
    new item_primal_egg();
    new item_pulsating_sac();
    new loot_item_leggings_of_the_foregone();
    new loot_item_gloves_of_the_foregone();
    new loot_item_cloak_of_the_foreseen();
    new loot_item_shoulders_of_the_foreseen();
    new loot_item_chest_of_the_foregone();
    new loot_item_unsullied_plate_helmet();
    new spell_draenor_profession();
    //new item_script_challengers_strongbox();
    new loot_item_shoulders_of_the_foregone_protector();
}
