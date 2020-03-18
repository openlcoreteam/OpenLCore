/*
* Copyright (C) 2014-2019 MagicStorm
*/

#include "trial_of_valor.h"

// 209 Trial of Valor area 2
class npc_enter_the_eternal_battlefield : public CreatureScript
{
public:
    npc_enter_the_eternal_battlefield() : CreatureScript("npc_enter_the_eternal_battlefield") { }

    struct npc_enter_the_eternal_battlefieldAI : public ScriptedAI
    {
        npc_enter_the_eternal_battlefieldAI(Creature* creature) : ScriptedAI(creature) { }

        Player* player;

        void UpdateAI(uint32 diff)
        {
            if (player = me->SelectNearestPlayer(2.0f))
                player->TeleportTo(1648, 340.323f, 354.52f, 30.7229f, 0.89f);
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_enter_the_eternal_battlefieldAI(creature);
    }
};

void AddSC_trial_of_valor()
{
    new npc_enter_the_eternal_battlefield();
}