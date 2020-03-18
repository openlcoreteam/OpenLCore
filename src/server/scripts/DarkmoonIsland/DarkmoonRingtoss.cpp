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

// 54485 - Jessica Rogers
class npc_jessica_rogers : public CreatureScript
{
public:
    npc_jessica_rogers() : CreatureScript("npc_jessica_rogers") { }

    bool OnGossipHello(Player* player, Creature* creature) override
    {
        if (creature->IsQuestGiver())
            player->PrepareQuestMenu(creature->GetGUID());

        char const* GOSSIP_BUTTON_1;
        char const* GOSSIP_BUTTON_2;

        switch (LocaleConstant currentlocale = player->GetSession()->GetSessionDbcLocale())
        {
            default:
                GOSSIP_BUTTON_1         = "How do I play the Ring Toss?";
                GOSSIP_BUTTON_2         = "Ready to play! |cFF0000FF(Darkmoon Game Token)|r";
                break;
        };

        AddGossipItemFor(player, GOSSIP_ICON_CHAT, GOSSIP_BUTTON_1, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

        if (!player->HasAura(101612) && !player->HasAura(110230) && !player->HasAura(102121) && !player->HasAura(102178) && !player->HasAura(102058) && !player->HasAura(101871))
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, GOSSIP_BUTTON_2, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);

        SendGossipMenuFor(player, 54485, creature->GetGUID());
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
                GOSSIP_BUTTON_1         = "How do I play the Ring Toss?";
                GOSSIP_BUTTON_2         = "Ready to play! |cFF0000FF(Darkmoon Game Token)|r";
                GOSSIP_BUTTON_3         = "Alright.";
                break;
        };

        player->PlayerTalkClass->ClearMenus();

        if (action == GOSSIP_ACTION_INFO_DEF + 1)
        {
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, GOSSIP_BUTTON_3, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
            SendGossipMenuFor(player, 54486, creature->GetGUID());
        }

        if (action == GOSSIP_ACTION_INFO_DEF + 2)
        {
            if (player->HasItemCount(71083))
            {
                CloseGossipMenuFor(player);

                player->DestroyItemCount(71083, 1, true);
                player->RemoveAurasByType(SPELL_AURA_MOUNTED);

                player->AddAura(102058, player);
                player->SetPower(POWER_ALTERNATE_POWER, 10);

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

            SendGossipMenuFor(player, 54485, creature->GetGUID());
        }

        return true;
    }
};

//
class spell_ring_toss : public SpellScriptLoader
{
    public:
        spell_ring_toss() : SpellScriptLoader("spell_ring_toss") {}

        class spell_ring_toss_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_ring_toss_SpellScript);

            SpellCastResult CheckRequirement()
            {
                if (GetCaster()->GetTypeId() != TYPEID_PLAYER)
                    return SPELL_FAILED_CANT_DO_THAT_RIGHT_NOW;

                return SPELL_CAST_OK;
            }

            void HandleDummy(SpellEffIndex /*effIndex*/)
            {
                Unit* caster = GetCaster();
                Player* player = GetCaster()->ToPlayer();

                if (Creature* dubenko = caster->FindNearestCreature(54490, 100.0f, true))
                {
                    caster->CastSpell(dubenko, 101697, false);
                    dubenko->CastSpell(dubenko, 101737, false);
                }

                player->KilledMonsterCredit(54495, ObjectGuid::Empty);
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_ring_toss_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
                OnCheckCast += SpellCheckCastFn(spell_ring_toss_SpellScript::CheckRequirement);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_ring_toss_SpellScript();
        }
};

void AddSC_darkmoon_ring_toss()
{
	//NPC
    new npc_jessica_rogers();
	//Spell
    new spell_ring_toss();
}
