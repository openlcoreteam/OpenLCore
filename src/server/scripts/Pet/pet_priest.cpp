/*
 * Copyright (C) 2008-2018 TrinityCore <https://www.trinitycore.org/>
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

/*
 * Ordered alphabetically using scriptname.
 * Scriptnames of files in this file should be prefixed with "npc_pet_pri_".
 */

#include "ScriptMgr.h"
#include "PassiveAI.h"
#include "PetAI.h"
#include "ScriptedCreature.h"
#include "Player.h"
#include "SpellMgr.h"

enum PriestSpells
{
    SPELL_PRIEST_GLYPH_OF_SHADOWFIEND       = 58228,
    SPELL_PRIEST_SHADOWFIEND_DEATH          = 57989,
    SPELL_PRIEST_LIGHTWELL_CHARGES          = 59907
};

class npc_pet_pri_lightwell : public CreatureScript
{
    public:
        npc_pet_pri_lightwell() : CreatureScript("npc_pet_pri_lightwell") { }

        struct npc_pet_pri_lightwellAI : public PassiveAI
        {
            npc_pet_pri_lightwellAI(Creature* creature) : PassiveAI(creature)
            {
                DoCast(me, SPELL_PRIEST_LIGHTWELL_CHARGES, false);
            }

            void EnterEvadeMode(EvadeReason /*why*/) override
            {
                if (!me->IsAlive())
                    return;

                me->DeleteThreatList();
                me->CombatStop(true);
                me->ResetPlayerDamageReq();
            }
        };

        CreatureAI* GetAI(Creature* creature) const override
        {
            return new npc_pet_pri_lightwellAI(creature);
        }
};

class npc_pet_pri_shadowfiend : public CreatureScript
{
    public:
        npc_pet_pri_shadowfiend() : CreatureScript("npc_pet_pri_shadowfiend") { }

        struct npc_pet_pri_shadowfiendAI : public PetAI
        {
            npc_pet_pri_shadowfiendAI(Creature* creature) : PetAI(creature) { }

            void IsSummonedBy(Unit* summoner) override
            {
                if (summoner->HasAura(SPELL_PRIEST_GLYPH_OF_SHADOWFIEND))
                    DoCastAOE(SPELL_PRIEST_SHADOWFIEND_DEATH);
            }
        };

        CreatureAI* GetAI(Creature* creature) const override
        {
            return new npc_pet_pri_shadowfiendAI(creature);
        }
};

enum PsyfiendSpells
{
    SPELL_PSYFIEND_BASE  = 211522,
    SPELL_PSYFLAY_DAMAGE = 199845
};

// 101398 - Psyfiend
// 7.3.5
class npc_pri_psyfiend : public CreatureScript
{
public:
    npc_pri_psyfiend() : CreatureScript("npc_pri_psyfiend") { }

    struct npc_pri_psyfiend_voidAI : public ScriptedAI
    {
        npc_pri_psyfiend_voidAI(Creature* creature) : ScriptedAI(creature) { }

        void IsSummonedBy(Unit* /*summoner*/) override
        {
            me->SetReactState(REACT_PASSIVE);
            me->SetControlled(true, UNIT_STATE_ROOT);
        }

        void KilledUnit(Unit* /*victim*/) override
        {
            canCast = true;
        }

        void UpdateAI(uint32 diff) override
        {
            if (canSetHealth)
            {
                me->SetMaxHealth(sSpellMgr->GetSpellInfo(SPELL_PSYFIEND_BASE)->GetEffect(EFFECT_0)->BasePoints);
                canSetHealth = false;
            }

            if (canCast)
                if (me->GetOwner() && me->GetOwner()->ToPlayer())
                {
                    if (Unit* unit = me->GetOwner()->ToPlayer()->GetSelectedUnit())
                        if (unit->IsPlayer())
                        {
                            me->CastCustomSpell(SPELL_PSYFLAY_DAMAGE, SPELLVALUE_BASE_POINT0, unit->CountPctFromMaxHealth(sSpellMgr->GetSpellInfo(SPELL_PSYFLAY_DAMAGE)->GetEffect(EFFECT_0)->BasePoints), me, TRIGGERED_FULL_MASK);
                            canCast = false;
                        }
                }
        }

    private:
        bool canSetHealth = true;
        bool canCast = true;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_pri_psyfiend_voidAI(creature);
    }
};

void AddSC_priest_pet_scripts()
{
    new npc_pet_pri_lightwell();
    new npc_pet_pri_shadowfiend();
    new npc_pri_psyfiend();
}
