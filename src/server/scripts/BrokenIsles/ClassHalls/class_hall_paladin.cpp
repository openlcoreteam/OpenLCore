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

 // 92909 LORD_MAXWELL_TYROSUS
enum
{
    QUEST_AN_URGENT_GATHERING = 38710,
    NPC_LORD_MAXWELL_TYROSUS = 92909,
};

struct npc_npc_lord_maxwell_tyrosus_92909 : public ScriptedAI
{
    npc_npc_lord_maxwell_tyrosus_92909(Creature* creature) : ScriptedAI(creature) { Casting = false; }

    void Reset() override { }

    void MoveInLineOfSight(Unit* who) override
    {
        if (!who || !who->IsInWorld())
            return;
        if (!me->IsWithinDist(who, 25.0f, false))
            return;

        Player* player = who->GetCharmerOrOwnerPlayerOrPlayerItself();

        if (!player)
            return;
        me->GetMotionMaster()->MoveFollow(player, PET_FOLLOW_DIST, me->GetFollowAngle());

        if (!Casting)
        {
            if (player->HasQuest(QUEST_AN_URGENT_GATHERING)) {
                Casting = true;
                me->DespawnOrUnsummon(5000);
            }
        }
    }
    void UpdateAI(uint32 /*diff*/) override { }
    bool Casting;
};


void AddSC_class_hall_paladin()
{
    RegisterCreatureAI(npc_npc_lord_maxwell_tyrosus_92909);
}
