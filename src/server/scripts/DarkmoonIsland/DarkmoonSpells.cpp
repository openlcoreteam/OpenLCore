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

class spell_gen_repair_damaged_tonk : public SpellScriptLoader
{
    public:
        spell_gen_repair_damaged_tonk() : SpellScriptLoader("spell_gen_repair_damaged_tonk") {}

        class spell_gen_repair_damaged_tonk_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_gen_repair_damaged_tonk_SpellScript);

            SpellCastResult CheckRequirement()
            {
                if (GetCaster()->GetTypeId() != TYPEID_PLAYER)
                    return SPELL_FAILED_CANT_DO_THAT_RIGHT_NOW;

                return SPELL_CAST_OK;
            }

            void HandleDummy(SpellEffIndex /*effIndex*/)
            {
                Player* player = GetCaster()->ToPlayer();
                Creature* target = GetHitCreature();

                if (!target)
                    return;

                player->KilledMonsterCredit(54504, ObjectGuid::Empty);

                Position myPos = target->GetPosition();
                target->SummonCreature(55356, myPos, TEMPSUMMON_TIMED_DESPAWN, 30000);
                target->DespawnOrUnsummon();
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_gen_repair_damaged_tonk_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
                OnCheckCast += SpellCheckCastFn(spell_gen_repair_damaged_tonk_SpellScript::CheckRequirement);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_gen_repair_damaged_tonk_SpellScript();
        }
};

class spell_gen_shoe_baby : public SpellScriptLoader
{
    public:
        spell_gen_shoe_baby() : SpellScriptLoader("spell_gen_shoe_baby") {}

        class spell_gen_shoe_baby_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_gen_shoe_baby_SpellScript);

            SpellCastResult CheckRequirement()
            {
                if (GetCaster()->GetTypeId() != TYPEID_PLAYER)
                    return SPELL_FAILED_CANT_DO_THAT_RIGHT_NOW;

                return SPELL_CAST_OK;
            }

            void HandleDummy(SpellEffIndex /*effIndex*/)
            {
                Player* player = GetCaster()->ToPlayer();
                player->KilledMonsterCredit(54510, ObjectGuid::Empty);
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_gen_shoe_baby_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
                OnCheckCast += SpellCheckCastFn(spell_gen_shoe_baby_SpellScript::CheckRequirement);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_gen_shoe_baby_SpellScript();
        }
};

class spell_cook_crunchy_frog : public SpellScriptLoader
{
    public:
        spell_cook_crunchy_frog() : SpellScriptLoader("spell_cook_crunchy_frog") {}

        class spell_cook_crunchy_frog_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_cook_crunchy_frog_SpellScript);

            SpellCastResult CheckRequirement()
            {
                if (GetCaster()->GetTypeId() != TYPEID_PLAYER)
                    return SPELL_FAILED_CANT_DO_THAT_RIGHT_NOW;

                return SPELL_CAST_OK;
            }

            void HandleDummy(SpellEffIndex /*effIndex*/)
            {
                Player* player = GetCaster()->ToPlayer();
                player->AddItem(72058, 1);
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_cook_crunchy_frog_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
                OnCheckCast += SpellCheckCastFn(spell_cook_crunchy_frog_SpellScript::CheckRequirement);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_cook_crunchy_frog_SpellScript();
        }
};

enum InjuriedCarnieYells
{
    SAY_GREETINGS_1 = 0,
    SAY_GREETINGS_2 = 1,
    SAY_GREETINGS_3 = 2,
    SAY_GREETINGS_4 = 3,
    SAY_GREETINGS_5 = 4,
};

class spell_heal_injuried_carnie : public SpellScriptLoader
{
    public:
        spell_heal_injuried_carnie() : SpellScriptLoader("spell_heal_injuried_carnie") {}

        class spell_heal_injuried_carnie_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_heal_injuried_carnie_SpellScript);

            SpellCastResult CheckRequirement()
            {
                if (GetCaster()->GetTypeId() != TYPEID_PLAYER)
                    return SPELL_FAILED_CANT_DO_THAT_RIGHT_NOW;

                return SPELL_CAST_OK;
            }

            void HandleHealPct(SpellEffIndex /*effIndex*/)
            {
                Player* player = GetCaster()->ToPlayer();
                Creature* target = GetHitCreature();

                player->KilledMonsterCredit(54518, ObjectGuid::Empty);

                if (!target)
                    return;

                switch (urand(0,4))
                {
                    case 0:
                        target->AI()->Talk(SAY_GREETINGS_1);
                        target->HandleEmoteCommand(0);
                        target->GetMotionMaster()->MoveRandom(30);
                        target->DespawnOrUnsummon(8000);
                        break;
                    case 1:
                        target->AI()->Talk(SAY_GREETINGS_2);
                        target->HandleEmoteCommand(0);
                        target->GetMotionMaster()->MoveRandom(30);
                        target->DespawnOrUnsummon(8000);
                        break;
                    case 2:
                        target->AI()->Talk(SAY_GREETINGS_3);
                        target->HandleEmoteCommand(0);
                        target->GetMotionMaster()->MoveRandom(30);
                        target->DespawnOrUnsummon(8000);
                        break;
                    case 3:
                        target->AI()->Talk(SAY_GREETINGS_4);
                        target->HandleEmoteCommand(0);
                        target->GetMotionMaster()->MoveRandom(30);
                        target->DespawnOrUnsummon(8000);
                        break;
                    case 4:
                        target->AI()->Talk(SAY_GREETINGS_5);
                        target->HandleEmoteCommand(0);
                        target->GetMotionMaster()->MoveRandom(30);
                        target->DespawnOrUnsummon(8000);
                        break;
                }
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_heal_injuried_carnie_SpellScript::HandleHealPct, EFFECT_0, SPELL_EFFECT_HEAL_PCT);
                OnCheckCast += SpellCheckCastFn(spell_heal_injuried_carnie_SpellScript::CheckRequirement);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_heal_injuried_carnie_SpellScript();
        }
};

class spell_put_up_darkmoon_banner : public SpellScriptLoader
{
    public:
        spell_put_up_darkmoon_banner() : SpellScriptLoader("spell_put_up_darkmoon_banner") {}

        class spell_put_up_darkmoon_banner_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_put_up_darkmoon_banner_SpellScript);

            SpellCastResult CheckRequirement()
            {
                if (GetCaster()->GetTypeId() != TYPEID_PLAYER)
                    return SPELL_FAILED_CANT_DO_THAT_RIGHT_NOW;

                return SPELL_CAST_OK;
            }

            void HandleDummy(SpellEffIndex /*effIndex*/)
            {
                Player* player = GetCaster()->ToPlayer();
                player->KilledMonsterCredit(54545, ObjectGuid::Empty);

                if (Creature* loosestones = GetCaster()->FindNearestCreature(54545, 10.0f, true))
                {
                    loosestones->SummonGameObject(179965, Position(loosestones->GetPositionX(), loosestones->GetPositionY(), loosestones->GetPositionZ(), loosestones->GetOrientation()), QuaternionData(), 0);
                    loosestones->DespawnOrUnsummon(30000);
                }
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_put_up_darkmoon_banner_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
                OnCheckCast += SpellCheckCastFn(spell_put_up_darkmoon_banner_SpellScript::CheckRequirement);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_put_up_darkmoon_banner_SpellScript();
        }
};

class spell_darkmoon_deathmatch : public SpellScriptLoader
{
    public:
        spell_darkmoon_deathmatch() : SpellScriptLoader("spell_darkmoon_deathmatch") {}

        class spell_darkmoon_deathmatch_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_darkmoon_deathmatch_SpellScript);

            SpellCastResult CheckRequirement()
            {
                if (GetCaster()->GetTypeId() != TYPEID_PLAYER)
                    return SPELL_FAILED_CANT_DO_THAT_RIGHT_NOW;

                return SPELL_CAST_OK;
            }

            void HandleScript(SpellEffIndex /*effIndex*/)
            {
                Unit* caster = GetCaster();

                if (caster->GetPositionY() <= 6400.0f)
                    caster->CastSpell(caster, 108919, false);
                else
                    caster->CastSpell(caster, 108923, false);
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_darkmoon_deathmatch_SpellScript::HandleScript, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
                OnCheckCast += SpellCheckCastFn(spell_darkmoon_deathmatch_SpellScript::CheckRequirement);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_darkmoon_deathmatch_SpellScript();
        }
};

class spell_whack_a_gnoll_sap : public SpellScriptLoader
{
    public:
        spell_whack_a_gnoll_sap() : SpellScriptLoader("spell_whack_a_gnoll_sap") {}

        class spell_whack_a_gnoll_sap_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_whack_a_gnoll_sap_SpellScript);

            SpellCastResult CheckRequirement()
            {
                if (GetCaster()->GetTypeId() != TYPEID_PLAYER)
                    return SPELL_FAILED_CANT_DO_THAT_RIGHT_NOW;

                return SPELL_CAST_OK;
            }

            void HandleDummy(SpellEffIndex /*effIndex*/)
            {
                Player* player = GetCaster()->ToPlayer();

                if (Creature* gnoll = GetCaster()->FindNearestCreature(54444, 1.0f, true))
                {
                    gnoll->SetHealth(0);
                    gnoll->setDeathState(JUST_DIED);

                    player->SetPower(POWER_ALTERNATE_POWER, player->GetPower(POWER_ALTERNATE_POWER) + 1);
                    player->KilledMonsterCredit(54505, ObjectGuid::Empty);
                }

                if (Creature* baby = GetCaster()->FindNearestCreature(54466, 1.0f, true))
                {
                    baby->SetHealth(0);
                    baby->setDeathState(JUST_DIED);

                    player->CastSpell(player, 101679, false);
                }

                if (Creature* gnoll = GetCaster()->FindNearestCreature(54549, 1.0f, true))
                {
                    gnoll->SetHealth(0);
                    gnoll->setDeathState(JUST_DIED);

                    player->SetPower(POWER_ALTERNATE_POWER, player->GetPower(POWER_ALTERNATE_POWER) + 3);
                    player->KilledMonsterCredit(54505, ObjectGuid::Empty);
                    player->KilledMonsterCredit(54505, ObjectGuid::Empty);
                    player->KilledMonsterCredit(54505, ObjectGuid::Empty);
                }
            }

            void Register()
            {
                OnEffectHitTarget += SpellEffectFn(spell_whack_a_gnoll_sap_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
                OnCheckCast += SpellCheckCastFn(spell_whack_a_gnoll_sap_SpellScript::CheckRequirement);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_whack_a_gnoll_sap_SpellScript();
        }
};

class spell_shoot_gallery_shoot : public SpellScriptLoader
{
    public:
        spell_shoot_gallery_shoot() : SpellScriptLoader("spell_shoot_gallery_shoot") {}

        class spell_shoot_gallery_shoot_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_shoot_gallery_shoot_SpellScript);

            SpellCastResult CheckRequirement()
            {
                if (GetCaster()->GetTypeId() != TYPEID_PLAYER)
                    return SPELL_FAILED_CANT_DO_THAT_RIGHT_NOW;

                return SPELL_CAST_OK;
            }

            void OnHit()
            {
                Player* player = GetCaster()->ToPlayer();

                if (GetHitCreature()->GetEntry() == 54231)
                {
                    player->KilledMonsterCredit(54231, ObjectGuid::Empty);

                    AchievementEntry const *AchievShooter = sAchievementStore.LookupEntry(6022);
                    player->CompletedAchievement(AchievShooter);
                    player->SetPower(POWER_ALTERNATE_POWER, player->GetPower(POWER_ALTERNATE_POWER) + 1);
                }
            }

            void Register()
            {
                AfterHit += SpellHitFn(spell_shoot_gallery_shoot_SpellScript::OnHit);
                OnCheckCast += SpellCheckCastFn(spell_shoot_gallery_shoot_SpellScript::CheckRequirement);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_shoot_gallery_shoot_SpellScript();
        }
};

void AddSC_darkmoon_spells()
{
    new spell_gen_repair_damaged_tonk();
    new spell_gen_shoe_baby();
    new spell_cook_crunchy_frog();
    new spell_heal_injuried_carnie();
    new spell_put_up_darkmoon_banner();
    new spell_darkmoon_deathmatch();
    new spell_whack_a_gnoll_sap();
    new spell_shoot_gallery_shoot();
};
