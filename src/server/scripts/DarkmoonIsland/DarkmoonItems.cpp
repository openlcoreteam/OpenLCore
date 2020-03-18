/*
 * Copyright (C) 2019 MagicStorm.
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
#include "Cell.h"
#include "CellImpl.h"
#include "GridNotifiers.h"
#include "GridNotifiersImpl.h"
#include "SpellScript.h"
#include "SpellAuras.h"
#include "ScriptedGossip.h"
#include "MotionMaster.h"
#include <G3D/Quat.h>
#include "DarkmoonIsland.h"

//
// BRUTAL HACK - Put up until the achievementcriteria is fixed, that I have fought with him and I can not fix it.
//

class item_darkmoon_faire_fireworks : public ItemScript
{
public:
    item_darkmoon_faire_fireworks() : ItemScript("item_darkmoon_faire_fireworks") { }

    bool OnUse(Player* player, Item* /*item*/, SpellCastTargets const& /*targets*/, ObjectGuid /*castId*/) override
    {
        AchievementEntry const *AchievFireworksAlliance = sAchievementStore.LookupEntry(6030);
        AchievementEntry const *AchievFireworksHorde = sAchievementStore.LookupEntry(6031);

        if (player->GetTeam() == ALLIANCE)
        {
            player->CompletedAchievement(AchievFireworksAlliance);
            player->CastSpell(player, 103740, false);
        }
        else
        {
            player->CompletedAchievement(AchievFireworksHorde);
            player->CastSpell(player, 103740, false);
        }

        return true;
    }
};

void AddSC_darkmoon_items()
{
    new item_darkmoon_faire_fireworks();
};
