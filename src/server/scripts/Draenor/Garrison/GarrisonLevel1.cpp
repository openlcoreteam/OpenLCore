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

#include "Garrison.h"
#include "GarrisonAI.h"
#include "Player.h"
#include "Vehicle.h"
#include "ScriptedGossip.h"
#include "ScriptMgr.h"

enum Quests
{
    QUEST_BIGGER_IS_BETTER_H    = 36567,
    QUEST_BIGGER_IS_BETTER_A    = 36592,
    QUEST_Keeping_it_Together   = 35176,
};

/*
 * Common scripts for garrison level 1 Alliance & Horde
 */
struct garrison_level_1 : public GarrisonAI
{
    garrison_level_1(Garrison* gar) : GarrisonAI(gar) { }

    bool OnCheckUpgradeable() override
    {
        return garrison->GetOwner()->HasQuest(QUEST_BIGGER_IS_BETTER_H) ||
               garrison->GetOwner()->HasQuest(QUEST_BIGGER_IS_BETTER_A);
    }
};

struct garrison_level_1_alliance : public garrison_level_1
{
    garrison_level_1_alliance(Garrison* gar) : garrison_level_1(gar) { }
};

struct garrison_level_1_horde : public garrison_level_1
{
    garrison_level_1_horde(Garrison* gar) : garrison_level_1(gar) { }
};

struct npc_Brightstone : public ScriptedAI
{
    npc_Brightstone(Creature* creature) : ScriptedAI(creature) {  }

    void sGossipSelect(Player* player, uint32 menuId, uint32 gossipListId)
    {
        if (player->HasQuest(QUEST_Keeping_it_Together))
        {
            if (gossipListId == 0)
            {
                player->KilledMonsterCredit(84455);
                CloseGossipMenuFor(player);
            }
        }
    }
};

struct npc_81441 : public ScriptedAI
{
    npc_81441(Creature* creature) : ScriptedAI(creature) {  }

    void sGossipSelect(Player* player, uint32 menuId, uint32 gossipListId)
    {
        if (player->HasQuest(QUEST_Keeping_it_Together))
        {
            if (gossipListId == 0)
            {
                player->CastSpell(player, 164249);
                Talk(0);
                CloseGossipMenuFor(player);
            }
        }
    }
};

void AddSC_garrison_level_1()
{
    RegisterGarrisonAI(garrison_level_1_alliance);
    RegisterGarrisonAI(garrison_level_1_horde);
    RegisterCreatureAI(npc_Brightstone);
    RegisterCreatureAI(npc_81441);
};
