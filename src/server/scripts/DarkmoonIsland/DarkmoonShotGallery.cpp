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
#include "DarkmoonIsland.h"
#include "Cell.h"
#include "CellImpl.h"
#include "GridNotifiers.h"
#include "GridNotifiersImpl.h"
#include "SpellScript.h"
#include "SpellAuras.h"
#include "ScriptedGossip.h"
#include "MotionMaster.h"
#include <G3D/Quat.h>

enum ShootGallery
{
    EVENT_SHOOTGALLERY_START_GAME        = 1,
    EVENT_SHOOTGALLERY_FINISH_GAME       = 2,
};

class npc_rinling : public CreatureScript
{
public:
    npc_rinling() : CreatureScript("npc_rinling") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_rinlingAI(creature);
    }

    struct npc_rinlingAI : public ScriptedAI
    {
        npc_rinlingAI(Creature* creature) : ScriptedAI(creature) { }

        EventMap events;

        bool Active;

        void Reset()
        {
            Active = false;
        }

        void StartGame()
        {
            if (!Active)
            {
                events.ScheduleEvent(EVENT_SHOOTGALLERY_START_GAME, 0);
                events.ScheduleEvent(EVENT_SHOOTGALLERY_FINISH_GAME, 60000);
            }
        }

        void UpdateAI(uint32 diff)
        {
            events.Update(diff);

            Map::PlayerList const &PlayerList = me->GetMap()->GetPlayers();

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                    case EVENT_SHOOTGALLERY_START_GAME:
                        switch (urand(0,2))
                        {
                            case 0:
                                if (Creature* summon = me->SummonCreature(54231, -4072.19f, 6356.46f, 13.35f, 4.21f, TEMPSUMMON_TIMED_DESPAWN, 5000))
                                    summon->CastSpell(summon, 102341, false);

                                me->SummonCreature(54225, -4070.09f, 6354.87f, 12.57f, 4.21f, TEMPSUMMON_TIMED_DESPAWN, 5000);
                                me->SummonCreature(54225, -4068.41f, 6353.09f, 13.24f, 4.21f, TEMPSUMMON_TIMED_DESPAWN, 5000);
                                break;
                            case 1:
                                me->SummonCreature(54225, -4072.19f, 6356.46f, 13.35f, 4.21f, TEMPSUMMON_TIMED_DESPAWN, 5000);

                                if (Creature* summon = me->SummonCreature(54231, -4070.09f, 6354.87f, 12.57f, 4.21f, TEMPSUMMON_TIMED_DESPAWN, 5000))
                                    summon->CastSpell(summon, 102341, false);

                                me->SummonCreature(54225, -4068.41f, 6353.09f, 12.24f, 4.21f, TEMPSUMMON_TIMED_DESPAWN, 5000);
                                break;
                            case 2:
                                me->SummonCreature(54225, -4072.19f, 6356.46f, 13.35f, 4.21f, TEMPSUMMON_TIMED_DESPAWN, 5000);
                                me->SummonCreature(54225, -4070.09f, 6354.87f, 12.57f, 4.21f, TEMPSUMMON_TIMED_DESPAWN, 5000);

                                if (Creature* summon = me->SummonCreature(54231, -4068.41f, 6353.09f, 13.24f, 4.21f, TEMPSUMMON_TIMED_DESPAWN, 5000))
                                    summon->CastSpell(summon, 102341, false);

                                break;
                        }
                        events.ScheduleEvent(EVENT_SHOOTGALLERY_START_GAME, 5000);
                        break;
                    case EVENT_SHOOTGALLERY_FINISH_GAME:
                        Active = false;
                        events.CancelEvent(EVENT_SHOOTGALLERY_START_GAME);
                        break;
                }
            }
        }
    };

    bool OnGossipHello(Player* player, Creature* creature) override
    {
        if (creature->IsQuestGiver())
            player->PrepareQuestMenu(creature->GetGUID());

        char const* GOSSIP_BUTTON_1;
        char const* GOSSIP_BUTTON_2;

        switch (LocaleConstant currentlocale = player->GetSession()->GetSessionDbcLocale())
        {
            default:
                GOSSIP_BUTTON_1         = "How does the shooting gallery work? ";
                GOSSIP_BUTTON_2         = "I'm ready to shoot! |cFF0000FF(Darkmoon Game Token)|r";
                break;
        };

        AddGossipItemFor(player, GOSSIP_ICON_CHAT, GOSSIP_BUTTON_1, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

        if (!player->HasAura(101612) && !player->HasAura(110230) && !player->HasAura(102121) && !player->HasAura(102178) && !player->HasAura(102058) && !player->HasAura(101871))
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, GOSSIP_BUTTON_2, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);

        SendGossipMenuFor(player, 23002, creature->GetGUID());
        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 uiSender, uint32 action)
    {
        char const* GOSSIP_BUTTON_1;
        char const* GOSSIP_BUTTON_2;
        char const* GOSSIP_BUTTON_3;

        switch (LocaleConstant currentlocale = player->GetSession()->GetSessionDbcLocale())
        {
            default:
                GOSSIP_BUTTON_1         = "How does the shooting gallery work? ";
                GOSSIP_BUTTON_2         = "I'm ready to shoot! |cFF0000FF(Darkmoon Game Token)|r";
                GOSSIP_BUTTON_3         = "Alright.";
                break;
        };

        player->PlayerTalkClass->ClearMenus();

        if (action == GOSSIP_ACTION_INFO_DEF + 1)
        {
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, GOSSIP_BUTTON_3, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
            SendGossipMenuFor(player, 23003, creature->GetGUID());
        }

        if (action == GOSSIP_ACTION_INFO_DEF + 2)
        {
            if (player->HasItemCount(71083))
            {
                CloseGossipMenuFor(player);

                player->DestroyItemCount(71083, 1, true);
                player->RemoveAurasByType(SPELL_AURA_MOUNTED);

                player->AddAura(101871, player);

                CAST_AI(npc_rinling::npc_rinlingAI, creature->AI())->StartGame();
                CAST_AI(npc_rinling::npc_rinlingAI, creature->AI())->Active = true;

                return true;
            }
            else
                SendGossipMenuFor(player, 54603, creature->GetGUID());
        }

        if (action == GOSSIP_ACTION_INFO_DEF + 3)
        {
            if (creature->IsQuestGiver())
                player->PrepareQuestMenu(creature->GetGUID());

            AddGossipItemFor(player, GOSSIP_ICON_CHAT, GOSSIP_BUTTON_1, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

            if (!player->HasAura(101612) && !player->HasAura(110230) && !player->HasAura(102121) && !player->HasAura(102178) && !player->HasAura(102058) && !player->HasAura(101871))
                AddGossipItemFor(player, GOSSIP_ICON_CHAT, GOSSIP_BUTTON_2, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);

            SendGossipMenuFor(player, 23002, creature->GetGUID());
        }

        return true;
    }
};

void AddSC_darkmoon_shot_gallery()
{
    new npc_rinling();
};
