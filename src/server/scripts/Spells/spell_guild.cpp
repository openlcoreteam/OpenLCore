#include "ScriptMgr.h"
#include "Player.h"
#include "SpellScript.h"
#include "SpellAuraEffects.h"
#include "GuildMgr.h"
#include "Guild.h"
#include "Battlefield.h"
#include "BattlefieldMgr.h"

enum General
{
    FACTION_GUILD_REPUTATION    = 1168,
};

/***********************
* Guild Chest (83958)
***********************/

enum GuildChest
{
    SPELL_SUMMON_CHEST_ALLIANCE = 88304,
    GOB_GUILD_CHEST_ALLIANCE    = 206602,

    SPELL_SUMMON_CHEST_HORDE    = 88306,
    GOB_GUILD_CHEST_HORDE       = 206603
};

class spell_guild_chest : public SpellScriptLoader
{
public:
    spell_guild_chest() : SpellScriptLoader("spell_guild_chest") { }

    class spell_guild_chest_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_guild_chest_SpellScript);

        SpellCastResult CheckRequirement()
        {
            Player* caster = GetCaster()->ToPlayer();
            if (!caster)
                return SPELL_FAILED_ERROR;

            if (caster->GetReputationRank(FACTION_GUILD_REPUTATION) < REP_FRIENDLY)
                return SPELL_FAILED_REPUTATION;

            return SPELL_CAST_OK;
        }

        void HandleScript(SpellEffIndex /*effIndex*/)
        {
            Player* caster = GetCaster()->ToPlayer();
            caster->CastSpell(caster, caster->GetTeamId() == TEAM_ALLIANCE ? SPELL_SUMMON_CHEST_ALLIANCE : SPELL_SUMMON_CHEST_HORDE, true);
        }

        void Register() override
        {
            OnCheckCast += SpellCheckCastFn(spell_guild_chest_SpellScript::CheckRequirement);
            OnEffectLaunch += SpellEffectFn(spell_guild_chest_SpellScript::HandleScript, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_guild_chest_SpellScript();
    }
};

/***********************
* General spellscript to check friendly guild reputation
***********************/

class spell_guild_check_friendly_reputation : public SpellScriptLoader
{
public:
    spell_guild_check_friendly_reputation() : SpellScriptLoader("spell_guild_check_friendly_reputation") {}

    class spell_guild_check_friendly_reputation_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_guild_check_friendly_reputation_SpellScript);

        SpellCastResult CheckRequirement()
        {
            Unit* caster = GetCaster();
            if(!caster || caster->GetTypeId() != TYPEID_PLAYER)
                return SPELL_FAILED_ERROR;

            if(caster->ToPlayer()->GetReputationRank(FACTION_GUILD_REPUTATION) < REP_FRIENDLY)
                return SPELL_FAILED_REPUTATION;

            return SPELL_CAST_OK;
        }

        void Register()
        {
            OnCheckCast += SpellCheckCastFn(spell_guild_check_friendly_reputation_SpellScript::CheckRequirement);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_guild_check_friendly_reputation_SpellScript();
    }
};

/***********************
* Flask of Battle (92679)
***********************/

enum FlaskOfBattle
{
    SPELL_FLASK_OF_THE_STEELSKIN    = 79469,
    SPELL_FLASK_OF_TITANIC_STRENGTH = 79472,
    SPELL_FLASK_OF_THE_WINDS        = 79471,
    SPELL_FLASK_OF_FLOWING_WATER    = 94160,
    SPELL_FLASK_OF_DRACONIC_MIND    = 79470,
};

/*class spell_guild_flask_of_battle : public SpellScriptLoader
{
public:
    spell_guild_flask_of_battle() : SpellScriptLoader("spell_guild_flask_of_battle") {}

    class spell_guild_flask_of_battle_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_guild_flask_of_battle_SpellScript);

        void HandleDummy(SpellEffIndex /*effIndex*//*)
        {
            Unit* caster = GetCaster();
            if(!caster || caster->GetTypeId() != TYPEID_PLAYER)
                return;

            Player* player = caster->ToPlayer();
            uint32 castedSpell = SPELL_FLASK_OF_DRACONIC_MIND;
            switch (player->GetPrimaryTalentTree(player->GetActiveSpec()))
            {
                // Stamina
            case TALENT_TREE_WARRIOR_PROTECTION:
            case TALENT_TREE_PALADIN_PROTECTION:
            case TALENT_TREE_DEATH_KNIGHT_BLOOD:
                castedSpell = SPELL_FLASK_OF_THE_STEELSKIN;
                break;

                // Strength
            case TALENT_TREE_WARRIOR_ARMS:
            case TALENT_TREE_WARRIOR_FURY:
            case TALENT_TREE_PALADIN_RETRIBUTION:
            case TALENT_TREE_DEATH_KNIGHT_FROST:
            case TALENT_TREE_DEATH_KNIGHT_UNHOLY:
                castedSpell = SPELL_FLASK_OF_TITANIC_STRENGTH;
                break;

                // Agility
            case TALENT_TREE_HUNTER_BEAST_MASTERY:
            case TALENT_TREE_HUNTER_MARKSMANSHIP:
            case TALENT_TREE_HUNTER_SURVIVAL:
            case TALENT_TREE_ROGUE_ASSASSINATION:
            case TALENT_TREE_ROGUE_COMBAT:
            case TALENT_TREE_ROGUE_SUBTLETY:
            case TALENT_TREE_SHAMAN_ENHANCEMENT:
                castedSpell = SPELL_FLASK_OF_THE_WINDS;
                break;

                // Intellect
            case TALENT_TREE_PRIEST_DISCIPLINE:
            case TALENT_TREE_PRIEST_SHADOW:
            case TALENT_TREE_SHAMAN_ELEMENTAL:
            case TALENT_TREE_MAGE_ARCANE:
            case TALENT_TREE_MAGE_FIRE:
            case TALENT_TREE_MAGE_FROST:
            case TALENT_TREE_WARLOCK_AFFLICTION:
            case TALENT_TREE_WARLOCK_DEMONOLOGY:
            case TALENT_TREE_WARLOCK_DESTRUCTION:
            case TALENT_TREE_DRUID_BALANCE:
            case TALENT_TREE_PALADIN_HOLY:
            case TALENT_TREE_PRIEST_HOLY:
            case TALENT_TREE_SHAMAN_RESTORATION:
            case TALENT_TREE_DRUID_RESTORATION:
                castedSpell = SPELL_FLASK_OF_DRACONIC_MIND;
                break;

                // Feral druids
            case TALENT_TREE_DRUID_FERAL_COMBAT:
                if(caster->GetShapeshiftForm() == FORM_BEAR)
                    castedSpell = SPELL_FLASK_OF_THE_STEELSKIN;
                else
                    castedSpell = SPELL_FLASK_OF_THE_WINDS;
                break;

            default:
                break;
            }

            caster->CastSpell(caster, castedSpell, TRIGGERED_FULL_MASK);

            if (Aura* aura = caster->GetAura(castedSpell))
            {
                int32 duration = aura->GetMaxDuration();
                if (Guild* guild = sGuildMgr->GetGuildById(caster->ToPlayer()->GetGuildId()))
                {
                    if (guild->GetLevel() >= 22) //Guild Perk rank 2
                        duration *= 2;
                    else if (guild->GetLevel() >= 10) //Guild Perk rank 1
                        duration *= 1.5;
                }
                aura->SetMaxDuration(duration);
                aura->SetDuration(duration);
            }
        }

        void Register()
        {
            OnEffectLaunch += SpellEffectFn(spell_guild_flask_of_battle_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_guild_flask_of_battle_SpellScript();
    }
};*/

// Big Cauldron of Battle
class spell_guild_big_cauldron_of_battle : public SpellScriptLoader
{
public:
    spell_guild_big_cauldron_of_battle() : SpellScriptLoader("spell_guild_big_cauldron_of_battle") { }

    class spell_guild_big_cauldron_of_battle_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_guild_big_cauldron_of_battle_SpellScript);

        void HandleDummy(SpellEffIndex /*effIndex*/)
        {
            Player* caster = GetCaster()->ToPlayer();
            if (!caster)
                return;

            if (Guild* guild = sGuildMgr->GetGuildById(caster->GetGuildId()))
            {
                if (guild->GetLevel() >= 20)
                    caster->CastSpell(caster, caster->GetTeamId() == TEAM_ALLIANCE ? 92652 : 92654, true);
                else
                    caster->CastSpell(caster, caster->GetTeamId() == TEAM_ALLIANCE ? 92692 : 92693, true);
            }
        }

        void Register()
        {
            OnEffectLaunch += SpellEffectFn(spell_guild_big_cauldron_of_battle_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_guild_big_cauldron_of_battle_SpellScript();
    }
};


enum CauldronBattle
{
    OBJECT_CAULDRON_BATTLE_NOPERK_H     = 207362,
    OBJECT_CAULDRON_BATTLE_PERK_H       = 207357,
};

class spell_guild_cauldron_of_battle : public SpellScriptLoader
{
public:
    spell_guild_cauldron_of_battle() : SpellScriptLoader("spell_guild_cauldron_of_battle") { }

    class spell_guild_cauldron_of_battle_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_guild_cauldron_of_battle_SpellScript);

        void HandleDummy(SpellEffIndex /* effIndex */)
        {
            Player* caster = GetCaster()->ToPlayer();
            if (!caster)
                return;

            if (Guild* guild = sGuildMgr->GetGuildById(caster->GetGuildId()))
            {
                if (guild->GetLevel() >= 20)
                    caster->CastSpell(caster, caster->GetTeamId() == TEAM_ALLIANCE ? 92645 : 92635, true);
                else
                    caster->CastSpell(caster, caster->GetTeamId() == TEAM_ALLIANCE ? 92689 : 92691, true);
            }
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_guild_cauldron_of_battle_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_guild_cauldron_of_battle_SpellScript();
    }
};

class spell_guild_have_group_will_travel : public SpellScriptLoader
{
public:
    spell_guild_have_group_will_travel() : SpellScriptLoader("spell_guild_have_group_will_travel") { }

    class spell_guild_have_group_will_travel_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_guild_have_group_will_travel_SpellScript);

        SpellCastResult CheckZone()
        {
            if (Unit* caster = GetCaster())
            {
                if (caster->GetMap()->IsBattlegroundOrArena())
                    return SPELL_FAILED_NOT_IN_BATTLEGROUND;

                if (caster->GetMap()->IsDungeon())
                    return SPELL_FAILED_NOT_HERE;

                if (caster->GetTransport())
                    return SPELL_FAILED_NOT_ON_TRANSPORT;

                if (Battlefield* bf = sBattlefieldMgr->GetBattlefieldToZoneId(caster->GetZoneId()))
                    if (bf->IsWarTime())
                        return SPELL_FAILED_NOT_HERE;
            }

            return SPELL_CAST_OK;
        }

        void Register()
        {
            OnCheckCast += SpellCheckCastFn(spell_guild_have_group_will_travel_SpellScript::CheckZone);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_guild_have_group_will_travel_SpellScript();
    }
};

void AddSC_guild_spell_scripts()
{
    new spell_guild_chest();
    new spell_guild_check_friendly_reputation();
    //new spell_guild_flask_of_battle();
    new spell_guild_big_cauldron_of_battle();
    new spell_guild_cauldron_of_battle();
    new spell_guild_have_group_will_travel();
}
