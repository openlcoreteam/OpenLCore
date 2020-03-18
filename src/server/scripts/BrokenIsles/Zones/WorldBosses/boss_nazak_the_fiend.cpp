/*
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
#include "ScriptedCreature.h"
#include "Creature.h"
#include "Player.h"
#include "Spell.h"
#include "SpellInfo.h"
#include "ObjectAccessor.h"

enum eSpells
{
    // Nazak
    SPELL_CORRODING_SPRAY = 219349,
    SPELL_WEB_WRAP = 219861, // 42
    SPELL_FOUNDATIONAL_COLLAPSE = 219591,
    SPELL_ABSORB_LEYSTONES = 219813,
    SPELL_LEY_INFUSION = 219836
};

class boss_nazak_the_fiend : public CreatureScript
{
public:
    boss_nazak_the_fiend() : CreatureScript("boss_nazak_the_fiend") {}

    struct boss_nazak_the_fiendAI : public ScriptedAI
    {
        boss_nazak_the_fiendAI(Creature* creature) : ScriptedAI(creature), summons(me) {}

        EventMap events;
        SummonList summons;

        void Reset() override
        {
            events.Reset();
            summons.DespawnAll();
        }

        void EnterCombat(Unit* unit) override
        {
            events.ScheduleEvent(1, 23000);
            events.ScheduleEvent(2, 42000);
            events.ScheduleEvent(3, 57000);
        }

        void JustDied(Unit* who) override
        {
            summons.DespawnAll();
        }

        void JustSummoned(Creature* summon) override
        {
            summons.Summon(summon);
        }

        void SpellHitTarget(Unit* /*target*/, SpellInfo const* spell) override
        {
            if (spell->Id == SPELL_ABSORB_LEYSTONES)
            {
                std::list<Creature*> adds;
                GetCreatureListWithEntryInGrid(adds, me, 110417, 60.0f);
                if (!adds.empty())
                    for (std::list<Creature*>::iterator itr = adds.begin(); itr != adds.end(); ++itr)
                    {
                        if ((*itr)->IsAlive())
                        {
                            (*itr)->DespawnOrUnsummon(1000);
                            DoCast(me, SPELL_LEY_INFUSION, true);
                        }
                    }
            }
        }


        void UpdateAI(uint32 diff) override
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case 1:
                    DoCast(SPELL_CORRODING_SPRAY);
                    events.ScheduleEvent(1, 23000);
                    break;
                case 2:
                    DoCast(SPELL_WEB_WRAP);
                    events.ScheduleEvent(2, 42000);
                    break;
                case 3:
                    DoCast(SPELL_FOUNDATIONAL_COLLAPSE);
                    events.ScheduleEvent(3, 57000);
                    events.ScheduleEvent(4, 2000);
                    break;
                case 4:
                    DoCast(SPELL_ABSORB_LEYSTONES);
                    break;
                }
            }

            DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new boss_nazak_the_fiendAI(creature);
    }
};

void AddSC_boss_nazak_the_fiend()
{
    new boss_nazak_the_fiend();
}