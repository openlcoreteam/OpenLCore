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
#include "../../scripts/Pandaria/Zones/zone_pandaria_timeless_isle.h"

#define MAX_HEALTH_POINTS 392500000
#define INITIAL_HEALTH_POINTS 98125000
#define INCREMENTAL 3212500

const float _chargePos[5][3] = 
{
    { -740.79f, -5019.06f, -6.277f },
    { -740.41f, -4962.37f, -6.277f },
    { -563.80f, -4963.35f, -6.277f },
    { -563.88f, -5069.82f, -6.277f },
    { -737.17f, -5072.31f, -6.277f }
};

enum NiuzaoSpells
{
    SPELL_NIUZAO_CHARGE                     = 144608,
    SPELL_NIUZAO_HEADBUTT                   = 144610,
    SPELL_NIUZAO_MASSIVE_QUAKE              = 144611,
    SPELL_NIUZAO_OXEN_FORTITUDE             = 144606,
    SPELL_NIUZAO_OXEN_FORTITUDE_ACTIVE      = 144607
};

enum NiuzaoEvents
{
    EVENT_NIUZAO_OXEN_FORTITUDE             = 1,
    EVENT_NIUZAO_HEADBUTT                   = 2,
    EVENT_NIUZAO_MASSIVE_QUAKE              = 3,
    EVENT_NIUZAO_HEALTH_66_PERCENT          = 4,
    EVENT_NIUZAO_HEALTH_33_PERCENT          = 5,
    EVENT_NIUZAO_DEFEATED                   = 6,
    EVENT_NIUZAO_DEATH                      = 7,
    EVENT_NIUZAO_CHARGE                     = 8,
    EVENT_NIUZAO_SHAO_DO_INTRO              = 9,
    EVENT_NIUZAO_SHAO_DO_INTRO_ATTACKABLE   = 10,
    EVENT_NIUZAO_SHAO_DO_OUTRO              = 11
};

enum NiuzaoTexts
{
    SAY_AGGRO                               = 0,
    SAY_INTRO                               = 1,
    SAY_DEATH                               = 2,
    SAY_KILL                                = 3,
    SAY_SPELL_1                             = 4,
    SAY_SPELL_2                             = 5,
    SAY_SPELL_3                             = 6
};

enum NiuzaoActions
{
    ACTION_NIUZAO_CHARGE_66                 = 1,
    ACTION_NIUZAO_CHARGE_33                 = 2,
    ACTION_NIUZAO_CHARGE                    = 3
};

enum NiuzaoMovement
{
    MOVEMENT_NIUZAO_CHARGE                  = 2
};

class boss_niuzao_celestial : public CreatureScript
{
    public:
        boss_niuzao_celestial() : CreatureScript("boss_niuzao_celestial") { }

        struct boss_niuzao_celestialAI : public BossAI
        {
            boss_niuzao_celestialAI(Creature* creature) : BossAI(creature, BOSS_NIUZAO) { }

            void Reset()
            {
                events.Reset();
                _Reset();

                if (me->getFaction() == FACTION_HOSTILE_NEUTRAL)
                {
                    me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PC);
                    me->SetFacingTo(MIDDLE_FACING_ANGLE);
                }

                me->RemoveAllAuras();
                summons.DespawnAll();
                _charges = 0;
                me->SetWalk(true);
                me->setActive(true);
            }

            void EnterCombat(Unit* /*target*/) override
            {
                me->SetWalk(false);
                death = false;
                Talk(SAY_AGGRO);
                events.ScheduleEvent(urand(EVENT_NIUZAO_OXEN_FORTITUDE, EVENT_NIUZAO_MASSIVE_QUAKE), 10s, 20s);
            }

            void DoAction(const int32 action)
            {
                switch (action)
                {
                    case ACTION_NIUZAO_CHARGE_66:
                    {
                        DoCast(SPELL_NIUZAO_CHARGE);
                        Talk(SAY_SPELL_1);
                        break;
                    }
                    case ACTION_NIUZAO_CHARGE_33:
                    {
                        DoCast(SPELL_NIUZAO_CHARGE);
                        Talk(SAY_SPELL_2);
                        break;
                    }
                    case ACTION_NIUZAO_CHARGE:
                    {
                        events.ScheduleEvent(urand(EVENT_NIUZAO_OXEN_FORTITUDE, EVENT_NIUZAO_MASSIVE_QUAKE), 10s, 20s);
                        me->GetMotionMaster()->MoveCharge(_chargePos[_charges][0], _chargePos[_charges][1], _chargePos[_charges][2], 15.0f, MOVEMENT_NIUZAO_CHARGE);
                        break;
                    }
                    default: break;
                };
            }

            void DamageTaken(Unit* caster, uint32 &dmg) override
            {
                if (me->GetHealthPct() > 66.6f)
                {
                    _charge66 = false;
                    _charge33 = false;
                }

                if (me->GetHealthPct() < 66.6f && !_charge66)
                {
                    _charge66 = true;
                    events.ScheduleEvent(EVENT_NIUZAO_HEALTH_66_PERCENT, 500ms);
                }

                if (me->GetHealthPct() < 33.3f && !_charge33)
                {
                    _charge33 = true;
                    events.ScheduleEvent(EVENT_NIUZAO_HEALTH_33_PERCENT, 500ms);
                }

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
                    summons.DespawnAll();
                    events.ScheduleEvent(EVENT_NIUZAO_SHAO_DO_OUTRO, 20s);
                    events.ScheduleEvent(EVENT_NIUZAO_DEATH, 13s);
                    death = true;
                }
            }

            void MovementInform(uint32 type, uint32 point) override
            {
                if (type != POINT_MOTION_TYPE)
                    return;

                switch (point)
                {
                    case 1:
                    {
                        events.ScheduleEvent(EVENT_NIUZAO_SHAO_DO_INTRO, CELESTIAL_COURT_BOSS_INTRO_TIMER_1);
                        me->setFaction(FACTION_HOSTILE_NEUTRAL);
                        me->SetFacingTo(MIDDLE_FACING_ANGLE);
                        me->SetHomePosition(_timelessIsleMiddle);
                        me->SetMaxHealth(INITIAL_HEALTH_POINTS);
                        me->SetHealth(me->GetMaxHealth());
                        break;
                    }
                    case MOVEMENT_NIUZAO_CHARGE:
                    {
                        if (_charges >= 4)
                        {
                            _charges = 0;
                            me->RemoveAura(SPELL_NIUZAO_CHARGE);
                            events.ScheduleEvent(urand(EVENT_NIUZAO_OXEN_FORTITUDE, EVENT_NIUZAO_MASSIVE_QUAKE), 8s + 500ms, 15s);
                            return;
                        }

                        events.ScheduleEvent(EVENT_NIUZAO_CHARGE, 100ms);
                        break;
                    }
                    default:
                        break;
                }
            }

            void KilledUnit(Unit* who)
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

                switch (events.ExecuteEvent())
                {
                    case EVENT_NIUZAO_SHAO_DO_INTRO:
                    {
                        Talk(SAY_INTRO);
                        events.ScheduleEvent(EVENT_NIUZAO_SHAO_DO_INTRO_ATTACKABLE, CELESTIAL_COURT_BOSS_INTRO_TIMER_2);
                        break;
                    }
                    case EVENT_NIUZAO_SHAO_DO_INTRO_ATTACKABLE:
                    {
                        me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PC);
                        break;
                    }
                    case EVENT_NIUZAO_CHARGE:
                    {
                        ++_charges;
                        DoAction(ACTION_NIUZAO_CHARGE);
                        break;
                    }
                    case EVENT_NIUZAO_MASSIVE_QUAKE:
                    {
                        if (me->HasAura(SPELL_NIUZAO_CHARGE))
                            return;

                        DoCast(SPELL_NIUZAO_MASSIVE_QUAKE);
                        Talk(SAY_SPELL_3);
                        events.ScheduleEvent(urand(EVENT_NIUZAO_OXEN_FORTITUDE, EVENT_NIUZAO_MASSIVE_QUAKE), 8s + 500ms, 15s);
                        break;
                    }
                    case EVENT_NIUZAO_HEADBUTT:
                    {
                        if (me->HasAura(SPELL_NIUZAO_CHARGE))
                            return;

                        DoCast(SPELL_NIUZAO_HEADBUTT);
                        events.ScheduleEvent(urand(EVENT_NIUZAO_OXEN_FORTITUDE, EVENT_NIUZAO_MASSIVE_QUAKE), 8s + 500ms, 15s);
                        break;
                    }
                    case EVENT_NIUZAO_OXEN_FORTITUDE:
                    {
                        if (me->HasAura(SPELL_NIUZAO_CHARGE))
                            return;

                        DoCast(SPELL_NIUZAO_OXEN_FORTITUDE);
                        events.ScheduleEvent(urand(EVENT_NIUZAO_OXEN_FORTITUDE, EVENT_NIUZAO_MASSIVE_QUAKE), 8s + 500ms, 15s);
                        break;
                    }
                    case EVENT_NIUZAO_HEALTH_66_PERCENT:
                    {
                        DoAction(ACTION_NIUZAO_CHARGE_66);
                        break;
                    }
                    case EVENT_NIUZAO_HEALTH_33_PERCENT:
                    {
                        DoAction(ACTION_NIUZAO_CHARGE_33);
                        break;
                    }
                    case EVENT_NIUZAO_SHAO_DO_OUTRO:
                    {
                        if (Creature* shao = me->FindNearestCreature(NPC_EMPEROR_SHAOHAO_TI, 300.0f, true))
                            shao->AI()->Talk(EMPEROR_TALK_OUTRO_CHIJI);
                        break;
                    }
                    case EVENT_NIUZAO_DEATH:
                    {
                        if (death)
                        {
                            if (Creature* shao = me->FindNearestCreature(NPC_EMPEROR_SHAOHAO_TI, 300.0f, true))
                                shao->AI()->DoAction(ACTION_YULON);

                            me->DisappearAndDie();
                            death = false;
                        }
                        break;
                    }
                    default:
                        break;
                }

                if (!death && !me->HasAura(SPELL_NIUZAO_CHARGE))
                    if (!UpdateVictim())
                        return;

                DoMeleeAttackIfReady();
            }

            private:
                bool _charge66, _charge33 = false;
                bool death = false;
                uint8 _charges;
                EventMap events;
        };

        CreatureAI* GetAI(Creature* creature) const override
        {
            return new boss_niuzao_celestialAI(creature);
        }
};

class spell_niuzao_headbutt : public SpellScript
{
    PrepareSpellScript(spell_niuzao_headbutt)

    void RemoveThreat(SpellEffIndex /*eff*/)
    {
        if (!GetHitUnit())
            return;

        if (Unit* target = GetHitUnit())
            GetCaster()->SetRedirectThreat(target->GetGUID(), 1000);
    }

    void Register()
    {
        OnEffectHitTarget += SpellEffectFn(spell_niuzao_headbutt::RemoveThreat, EFFECT_1, SPELL_EFFECT_KNOCK_BACK);
    }
};

class spell_niuzao_charge : public AuraScript
{
    PrepareAuraScript(spell_niuzao_charge);

    void HandleEffectApply(AuraEffect const* aurEff, AuraEffectHandleModes eMode)
    {
        if (!GetOwner())
            return;

        if (Creature *pOwner = GetOwner()->ToCreature())
            pOwner->AI()->DoAction(ACTION_NIUZAO_CHARGE);
    }

    void Register() override
    {
        OnEffectApply += AuraEffectApplyFn(spell_niuzao_charge::HandleEffectApply, EFFECT_0, SPELL_AURA_PERIODIC_TRIGGER_SPELL, AURA_EFFECT_HANDLE_REAL);
    }
};

void AddSC_boss_niuzao()
{
    new boss_niuzao_celestial();
    RegisterSpellScript(spell_niuzao_headbutt);
    RegisterAuraScript(spell_niuzao_charge);
}
