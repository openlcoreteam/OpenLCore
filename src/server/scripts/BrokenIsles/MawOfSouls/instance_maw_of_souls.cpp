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

#include "ScriptMgr.h"
#include "InstanceScript.h"
#include "Player.h"
#include "GameObject.h"
#include "PassiveAI.h"
#include "maw_of_souls.h"

DoorData const doorData[] =
{ 
    { GOB_DOOR_HARBARON_DOOR,           DATA_HARBARON_MAW,      DOOR_TYPE_ROOM },
    { GOB_DOOR_HARBARON_WALL_SOUL_1,    DATA_HARBARON_MAW,      DOOR_TYPE_ROOM },
    { GOB_DOOR_HARBARON_WALL_SOUL_2,    DATA_HARBARON_MAW,      DOOR_TYPE_ROOM },
    { GOB_DOOR_HARBARON_COLLISON_1,     DATA_HARBARON_MAW,      DOOR_TYPE_PASSAGE },
    { GOB_DOOR_HARBARON_COLLISON_2,     DATA_HARBARON_MAW,      DOOR_TYPE_PASSAGE },
    { GOB_DOOR_SKJAL_WALL_1,            DATA_HARBARON_MAW,      DOOR_TYPE_PASSAGE },
    { GOB_DOOR_SKJAL_WALL_2,            DATA_HARBARON_MAW,      DOOR_TYPE_PASSAGE },
};
struct instance_maw_of_souls : public InstanceScript
{
    instance_maw_of_souls(InstanceMap* map) : InstanceScript(map)
    {
        SetHeaders(DataHeader);
        SetBossNumber(EncounterCount);
        LoadDoorData(doorData); 
    }

    void OnCreatureCreate(Creature* creature) override
    {
        InstanceScript::OnCreatureCreate(creature);

        if (instance->IsHeroic())
            creature->SetBaseHealth(creature->GetMaxHealth() * 2.f);
        if (instance->IsMythic())
            creature->SetBaseHealth(creature->GetMaxHealth() * 1.33f);
    }

    bool SetBossState(uint32 type, EncounterState state) override
    {
        if(!InstanceScript::SetBossState(type, state))
        {
            return false;
        }

        switch (type)
        {
            case DATA_YMIRON_MAW:
            {
                if (state == DONE)
                {
                    // Add code for horn GO GOB_ECHOING_HORN_OF_THE_DAMNED
                    if (GameObject* horn = GetGameObject(GOB_ECHOING_HORN_OF_THE_DAMNED))
                        horn->SetGoState(GO_STATE_READY);
                }
                break;
            }
            case DATA_HELYA_MAW:
            {
                if (state == FAIL)
                {
                    // Repair ship
                }
                else if (state == DONE)
                {
                    // Spawn Loot Chest
                }
                break;
            }
        }

        return true;
    }
};

void AddSC_instance_maw_of_souls()
{
    RegisterInstanceScript(instance_maw_of_souls, 1492);
}
