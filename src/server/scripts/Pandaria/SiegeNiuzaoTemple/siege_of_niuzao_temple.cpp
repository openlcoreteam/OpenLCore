/*
 * Trinity Core and update by Corporation ElisGrimm
 *
 * www.elisgrimm.ru
 *
 * Dungeon: Siege of Niuzao Temple.
 */

#include "ObjectMgr.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellScript.h"
#include "SpellAuraEffects.h"
#include "SpellAuras.h"
#include "MapManager.h"
#include "Spell.h"
#include "Vehicle.h"
#include "Cell.h"
#include "CellImpl.h"
#include "GridNotifiers.h"
#include "GridNotifiersImpl.h"
#include "CreatureTextMgr.h"
#include "Unit.h"
#include "Player.h"
#include "Creature.h"
#include "InstanceScript.h"
#include "Map.h"
#include "VehicleDefines.h"
#include "SpellInfo.h"

#include "siege_of_niuzao_temple.h"

enum InstanceSpells
{
    SPELL_ENCASED_IN_RESIN = 121116,
};

// Resin Weaving 121114 (Sik'thik Amber-Weaver - 61929).
class spell_resin_weaving : public SpellScriptLoader
{
    public:
        spell_resin_weaving() : SpellScriptLoader("spell_resin_weaving") { }

        class spell_resin_weaving_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_resin_weaving_AuraScript);

            void OnRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                if (Unit* caster = GetCaster())
                {
                    if (Unit* target = GetTarget())
                    {
                        AuraRemoveMode removeMode = GetTargetApplication()->GetRemoveMode();
                        if (removeMode == AURA_REMOVE_BY_EXPIRE)
                            caster->CastSpell(target, SPELL_ENCASED_IN_RESIN, true);
                    }
                }
            }

            void Register() override
            {
                OnEffectRemove += AuraEffectRemoveFn(spell_resin_weaving_AuraScript::OnRemove, EFFECT_0, SPELL_AURA_PERIODIC_DAMAGE, AURA_EFFECT_HANDLE_REAL);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_resin_weaving_AuraScript();
        }
};

class go_mantid_cage213935 : public GameObjectScript
{
public:
    go_mantid_cage213935() : GameObjectScript("go_mantid_cage213935") { }
 
    bool OnGossipHello(Player* player, GameObject* go) override
    {
        go->UseDoorOrButton();
        if (player->GetQuestStatus(31365) == QUEST_STATUS_INCOMPLETE)
        {
			player->KilledMonsterCredit(64520);
            return true;
        }
        return false;
    }
};

void AddSC_siege_of_niuzao_temple()
{
    new spell_resin_weaving();
	new go_mantid_cage213935();
}
