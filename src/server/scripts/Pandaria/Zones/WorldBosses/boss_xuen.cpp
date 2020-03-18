/*
 * Copyright (C) 2017-2018 AshamaneProject <https://github.com/AshamaneProject>
 * Copyright (C) 2016 Firestorm Servers <https://firestorm-servers.com>
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
#include "ObjectMgr.h"
#include "Spell.h"
#include "SpellScript.h"
#include "SpellAuraEffects.h"
#include "../../scripts/Pandaria/Zones/zone_pandaria_timeless_isle.h"

#define MAX_HEALTH 360000000
#define INITIAL_HEALTH_POINTS 93100000
#define MAX_HEALTH_POINTS 392000000
#define INCREMENTAL 3000000

class PlayerCheck
{
public:
    bool operator()(Unit* target) const
    {
        return !target->ToPlayer();
    }
};

enum XuenSpells
{
    SPELL_AGILITY                           = 144631,

    SPELL_CHI_BARRAGE                       = 144642,
    SPELL_CHI_BARRAGE_MISSILE               = 144643,
    SPELL_CHI_BARRAGE_DMG                   = 144644,

    SPELL_CRACKLING_LIGHTNING_DMG           = 144633,
    SPELL_CRACKLING_LIGHTNING_AOE           = 144634,
    SPELL_CRACKLING_LIGHTNING_PERIODIC      = 144635,

    SPELL_LEAP                              = 144640,

    SPELL_SPECTRAL_SWIPE                    = 144638,
    SPELL_SPECTRAL_SWIPE_TRIGGER            = 144652
};

enum XuenEvents
{
    EVENT_SPECTRAL_SWIPES                   = 1,
    EVENT_CHI_BARRAGE_AOE                   = 2,
    EVENT_CRACKLING_LIGHTNING               = 3,
    EVENT_AGILITY_SELF_BUFF                 = 4,
    EVENT_LEAP                              = 5,
    EVENT_DEFEATED                          = 6,
    EVENT_DEATH                             = 7,
    EVENT_SHAO_DO_INTRO                     = 8,
    EVENT_SHAO_DO_INTRO_ATTACKABLE          = 9,
    EVENT_SHAO_DO_OUTRO                     = 10
};

enum XuenTimers
{
    TIMER_SPECTRAL_SWIPES                   = 5000,
    TIMER_CHI_BARRAGE_AOE                   = 20000,
    TIMER_CRACKLING_LIGHTNING               = 30000,
    TIMER_AGILITY_SELF_BUFF                 = 40000,
    TIMER_LEAP                              = 30000,
    TIMER_DEFEATED                          = 1000
};

enum XuenActions
{
    ACTION_DEFEATED                         = 0
};

enum XuenTexts
{
    SAY_AGGRO                               = 0,
    SAY_INTRO                               = 1,
    SAY_DEATH                               = 2,
    SAY_KILL                                = 3,
    SAY_AGILITY                             = 4,
    SAY_CHI                                 = 5,
    SAY_CRACKLING                           = 6
};

class boss_xuen_celestial : public CreatureScript
{
    public:
        boss_xuen_celestial() : CreatureScript("boss_xuen_celestial") { }

        struct boss_xuen_celestialAI : public BossAI
        {
            boss_xuen_celestialAI(Creature* creature) : BossAI(creature, BOSS_XUEN) { }

            void Reset()
            {
                events.Reset();
                _Reset();

                if (me->getFaction() == FACTION_HOSTILE_NEUTRAL)
                {
                    me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PC);
                    me->SetFacingTo(MIDDLE_FACING_ANGLE);
                }

                me->SetWalk(true);
                me->setActive(true);
            }

            void EnterCombat(Unit* /*target*/) override
            {
                me->SetWalk(false);
                death = false;
                Talk(SAY_AGGRO);
                events.ScheduleEvent(urand(EVENT_CHI_BARRAGE_AOE, EVENT_AGILITY_SELF_BUFF), 15s, 25s);
                events.ScheduleEvent(EVENT_SPECTRAL_SWIPES, 5s, 15s);
            }

            void DamageTaken(Unit* caster, uint32 &dmg) override
            {
                if (dmg >= me->GetHealth())
                {
                    if (death)
                        return;

                    ThreatContainer::StorageType threatlist = me->getThreatManager().getThreatList();
                    for (auto itr = threatlist.begin(); itr != threatlist.end(); ++itr)
                        if (Unit* unit = ObjectAccessor::GetUnit(*me, (*itr)->getUnitGuid()))
                            if (unit->IsWithinDist(me, 100.0f))
                                if (unit->ToPlayer())
                                    unit->ToPlayer()->KilledMonsterCredit(me->GetEntry(), me->GetGUID());

                    dmg = 0;
                    Talk(SAY_DEATH);
                    
                    me->setFaction(FACTION_FRIENDLY);
                   
                    me->StopMoving();
                    me->RemoveAllAuras();
                    me->GetMotionMaster()->Clear();
                    me->CombatStop(true);
                    me->SetHealth(me->GetMaxHealth());

                    me->SetFacingTo(MIDDLE_FACING_ANGLE);
                    me->DeleteThreatList();

                    events.Reset();
                    events.ScheduleEvent(EVENT_SHAO_DO_OUTRO, 20s);
                    events.ScheduleEvent(EVENT_DEATH, 13s);
                    death = true;
                }
            }

            void MovementInform(uint32 type, uint32 point) override
            {
                if (type != POINT_MOTION_TYPE)
                    return;

                if (point == 1)
                {
                    events.ScheduleEvent(EVENT_SHAO_DO_INTRO, CELESTIAL_COURT_BOSS_INTRO_TIMER_1);
                    me->SetFacingTo(MIDDLE_FACING_ANGLE);
                    me->setFaction(FACTION_HOSTILE_NEUTRAL);
                    me->SetHomePosition(_timelessIsleMiddle);
                    me->SetMaxHealth(INITIAL_HEALTH_POINTS);
                    me->SetHealth(me->GetMaxHealth());
                }
            }

            void KilledUnit(Unit* who) override
            {
                if (who->GetTypeId() == TYPEID_PLAYER)
                    Talk(SAY_KILL);
                        return;
            }

            void UpdateHealth()
            {
                if (!me->IsInCombat())
                    return;

                ThreatContainer::StorageType threatlist = me->getThreatManager().getThreatList();
                if (threatlist.empty())
                    return;

                uint8 count = 0;

                for (auto itr = threatlist.begin(); itr != threatlist.end(); ++itr)
                    if (Unit* unit = ObjectAccessor::GetUnit(*me, (*itr)->getUnitGuid()))
                        if (unit->IsWithinDist(me, 100.0f))
                            count++;

                uint32 hp = me->GetMaxHealth() - me->GetHealth();
                uint32 newhp = std::min<uint32>((INCREMENTAL * count), MAX_HEALTH_POINTS);

                if (newhp != me->GetMaxHealth() && newhp > INITIAL_HEALTH_POINTS)
                {
                    me->SetMaxHealth(std::min<uint32>((me->GetMaxHealth() * count), MAX_HEALTH_POINTS));
                    me->SetHealth(newhp - hp);
                }
            }; 

            void UpdateAI(const uint32 diff)
            {
                events.Update(diff);

                if (me->HasUnitState(UNIT_STATE_CASTING))
                    return;

                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_SHAO_DO_INTRO:
                        {
                            Talk(SAY_INTRO);
                            events.ScheduleEvent(EVENT_SHAO_DO_INTRO_ATTACKABLE, CELESTIAL_COURT_BOSS_INTRO_TIMER_2);
                            break;
                        }
                        case EVENT_SHAO_DO_INTRO_ATTACKABLE:
                        {
                            me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PC);
                            break;
                        }
                        case EVENT_SPECTRAL_SWIPES:
                        {
                            DoCast(SPELL_SPECTRAL_SWIPE);
                            events.ScheduleEvent(EVENT_SPECTRAL_SWIPES, 10s, 15s); 
                            break;
                        }
                        case EVENT_AGILITY_SELF_BUFF:
                        {
                            DoCast(me, SPELL_AGILITY);
                            Talk(SAY_AGILITY);
                            events.ScheduleEvent(urand(EVENT_CHI_BARRAGE_AOE, EVENT_AGILITY_SELF_BUFF), 15s, 25s);
                            break;
                        }
                        case EVENT_LEAP:
                        {
                            if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 50.0f))
                                DoCast(target, SPELL_LEAP);
                            break;
                        }
                        case EVENT_CRACKLING_LIGHTNING:
                        {
                            Talk(SAY_CRACKLING);
                            DoCastSelf(SPELL_CRACKLING_LIGHTNING_PERIODIC);

                            events.ScheduleEvent(urand(EVENT_CHI_BARRAGE_AOE, EVENT_AGILITY_SELF_BUFF), 15s, 25s);
                            events.ScheduleEvent(EVENT_LEAP, 30s);
                            break;
                        }
                        case EVENT_CHI_BARRAGE_AOE:
                        {
                            Talk(SAY_CHI);
                            DoCastAOE(SPELL_CHI_BARRAGE);
                            events.ScheduleEvent(urand(EVENT_CHI_BARRAGE_AOE, EVENT_AGILITY_SELF_BUFF), 15s, 25s);
                            break;
                        }
                        case EVENT_SHAO_DO_OUTRO:
                        {
                            if (Creature* shao = me->FindNearestCreature(NPC_EMPEROR_SHAOHAO_TI, 300.0f, true))
                                shao->AI()->Talk(EMPEROR_TALK_OUTRO_XUEN);
                            break;
                        }
                        case EVENT_DEATH:
                        {
                            if (death)
                            {
                                if (Creature* shao = me->FindNearestCreature(NPC_EMPEROR_SHAOHAO_TI, 300.0f, true))
                                    shao->AI()->DoAction(ACTION_CHIJI);

                                me->DisappearAndDie();
                                death = false;
                            }
                            break;
                        }
                        default:
                            break;
                    }
                }

                if (!death)
                    if (!UpdateVictim())
                        return;

                DoMeleeAttackIfReady();
            }

            private:
                bool death = false;
                EventMap events;
        };


        CreatureAI* GetAI(Creature* creature) const override
        {
            return new boss_xuen_celestialAI(creature);
        }
};

class spell_xuen_chi_barrage : public SpellScript
{
    PrepareSpellScript(spell_xuen_chi_barrage);

    void HandleDummy(SpellEffIndex effIndex)
    {
        if (!GetCaster() || !GetHitUnit())
            return;

        if (Unit* target = GetHitUnit())
            if (target->GetTypeId() == TYPEID_PLAYER)
                GetCaster()->CastSpell(target, SPELL_CHI_BARRAGE_MISSILE, true);
    }

    void Register()
    {
        OnEffectHitTarget += SpellEffectFn(spell_xuen_chi_barrage::HandleDummy, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
    }
};

class spell_xuen_crackling_lightning : public SpellScript
{
    PrepareSpellScript(spell_xuen_crackling_lightning);

    void FilterTargets(std::list<WorldObject*>& targets)
    {
        if (!GetCaster())
            return;

        if (Creature* pCreature = GetCaster()->ToCreature())
        {
            Unit* target = pCreature->AI()->SelectTarget(SELECT_TARGET_RANDOM, 0, -15.0f, true);

            if (!target)
                target = pCreature->AI()->SelectTarget(SELECT_TARGET_RANDOM, 0, 0.0f, true);

            if (target)
            {
                targets.clear();
                targets.push_back(target);
            }
        }

        if (targets.size() > 1)
        {
            Trinity::Containers::RandomResize(targets, 1);
        }
    }

    void HandleHitTarget(SpellEffIndex effIndex)
    {
        if (!GetCaster() || !GetHitUnit())
            return;

        GetCaster()->CastSpell(GetHitUnit(), SPELL_CRACKLING_LIGHTNING_DMG, true);
    }

    void Register()
    {
        OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_xuen_crackling_lightning::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ENEMY);
        OnEffectHitTarget += SpellEffectFn(spell_xuen_crackling_lightning::HandleHitTarget, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
    }
};

void AddSC_boss_xuen()
{
    new boss_xuen_celestial();
    RegisterSpellScript(spell_xuen_chi_barrage);
    RegisterSpellScript(spell_xuen_crackling_lightning);
}
