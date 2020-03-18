/*
* Copyright (C) 2008-2012 TrinityCore <http://www.trinitycore.org/>
* Copyright (C) 2006-2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
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
#include "ScriptedGossip.h"
#include "ScriptedEscortAI.h"
#include "ObjectMgr.h"
#include "ScriptMgr.h"
#include "World.h"
#include "PetAI.h"
#include "PassiveAI.h"
#include "CombatAI.h"
#include "GameEventMgr.h"
#include "GridNotifiers.h"
#include "GridNotifiersImpl.h"
#include "Cell.h"
#include "CellImpl.h"
#include "SpellAuras.h"
#include "Vehicle.h"
#include "Player.h"
#include "SpellScript.h"

enum ElwynnForest
{
    /// Infantries vs. Wolfs
    // Texts
    INFANTRY_HELP_YELL                    = 0,
    INFANTRY_COMBAT_YELL                  = 1,
    // Creatures
    NPC_BLACKROCK_BATTLE_WORG             = 49871,
    NPC_STORMWIND_INFANTRY                = 49869,

    /// Brother Paxton
    // Spells
    SPELL_FORTITUDE                       = 13864,
    SPELL_PENANCE                         = 66097,
    SPELL_FLASH_HEAL                      = 38588,
    SPELL_RENEW                           = 8362,
    SPELL_REVIVE                          = 93799,
    // Texts
    BROTHER_PAXTON_TEXT                   = 0,
    BROTHER_PAXTON_TEXT_PLAYER            = 1,

    /// Injured Soldier
    // Spells
    SPELL_HEAL                            = 93072,
    SPELL_HEAL_VISUAL                     = 93097,
    // Texts
    TEXT_INJURED_SOLDIER                  = 0,

    /// Blackrock Spy
    // Spells
    SPELL_SPYING                          = 92857,
    SPELL_SNEAKING                        = 93046,
    SPELL_SPYGLASS                        = 80676,
    // Texts
    TEXT_BLACKROCK_SPY_COMBAT             = 0,

    /// Fire trigger
    NPC_FIRE                              = 42940,

    /// Training dummy
    SPELL_CHARGE                          = 100,
    SPELL_AUTORITE                        = 105361,
    SPELL_ASSURE                          = 56641,
    SPELL_EVISCERATION                    = 2098,
    SPELL_MOT_DOULEUR_1                   = 589,
    SPELL_MOT_DOULEUR_2                   = 124464,
    SPELL_NOVA                            = 122,
    SPELL_CORRUPTION_1                    = 172,
    SPELL_CORRUPTION_2                    = 87389,
    SPELL_CORRUPTION_3                    = 131740,
    SPELL_PAUME_TIGRE                     = 100787,

    /// Hogger + End Event
    // Spells
    SPELL_SUMMON_MINIONS                  = 87366,
    SPELL_VICIOUS_SLICE                   = 87337,
    SPELL_EATING                          = 87351,
    SPELL_TELEPORT_VISUAL_ONLY_1          = 87459,
    SPELL_TELEPORT_VISUAL_ONLY_2          = 64446,
    SPELL_BLOODY_STRIKE                   = 87359,
    // Events
    EVENT_VICIOUS_SLICE                   = 1,
    EVENT_HAMMOND_GROUP_START_WALKING     = 2,
    EVENT_RAGAMUFFIN_SAY_WOW              = 3,
    EVENT_RAGAMUFFIN_SAY_CLAY             = 4,
    EVENT_DISMOUNT_HAMMOND_CLAY           = 5,
    EVENT_HOGGER_SAY_GRR                  = 6,
    EVENT_CLAYS_EXPLAINATION              = 7,
    EVENT_CLAY_SAYS_TAKE_HIM              = 8,
    EVENT_HOGGER_SAYS_NOO                 = 9,
    EVENT_CLAY_SPEAKS_TO_ANDROMATH        = 10,
    EVENT_ANDROMATH_TEXT                  = 11,
    EVENT_TELEPORT_BACK                   = 12,
    EVENT_CHECK_EAT_RANGE                 = 13,
    EVENT_BLOODY_STRIKE                   = 14,
    EVENT_RUN_1                           = 15,
    EVENT_RUN_2                           = 16,
    // Texts
    SAY_AGGRO_TEXT                        = 0,
    YELL_SUMMON_MINIONS_TEXT              = 1,
    YELL_FINAL_TEXT                       = 2,
    EMOTE_STUNNED_TEXT                    = 3,
    EMOTE_EATING_TEXT                     = 4,
    SAY_GRR_TEXT                          = 5,
    SAY_NOOOOO_TEXT                       = 6,
    // General Hammond Clay Texts
    YELL_OPENING                          = 0,
    SAY_EXPLAINATION                      = 1,
    SAY_TAKE_HIM                          = 2,
    SAY_TO_ANDROMATH                      = 3,
    // Ragamuffin Texts
    SAY_CLAY                              = 0,
    SAY_WOW                               = 1,
    // High Sorcerer Andromath Texts
    SAY_TO_HAMMOND_TEXT                   = 0,
    // Creatures
    NPC_GENERAL_HAMMOND_CLAY              = 65153,
    NPC_ANDROMATH                         = 46941,
    NPC_DUMAS                             = 46940,
    NPC_HOGGER                            = 448,
    NPC_EATING_TARGET                     = 45979,
    NPC_RAGAMUFFIN                        = 46943,
    NPC_HOGGER_MINION                     = 46932,
    // Misc
    DISPLAYID_GENERAL_HAMMOND_CLAYS_MOUNT = 2410,
    // Hogger Minion Spells
    SPELL_ADVENTURERS_RUSH                = 87402
};

static const Position GeneralHammondClayCoordinates[4] =
{
    // Validated positions
    { -10125.35f, 650.7324f, 36.05776f },
    { -10128.3f,  656.4648f, 36.05776f },
    { -10131.25f, 662.1973f, 36.05776f },
    { -10135.73f, 668.389f,  35.74807f }
};

static const Position HighSorcererAndromathCoordinates[3] =
{
    // Validated positions
    { -10119.2f, 647.913f, 36.36745f },
    { -10123.0f, 656.875f, 36.05776f },
    { -10126.8f, 665.837f, 35.74807f }
};

static const Position HighSorcererDumasCoordinates[3] =
{
    // Validated positions
    { -10130.1f, 647.7671f, 36.04665f },
    { -10132.9f, 653.5605f, 36.05776f },
    { -10135.7f, 659.354f,  36.06887f }
};

static const Position HoggerCoordinates[1] =
{
    // Validated positions
    { -10136.9f, 670.009f, 36.03682f }
};

static const Position RagamuffinCoordinates[6] =
{
    // Validated positions
    { -10120.19f, 635.509f, 35.415f },
    { -10109.51f, 633.51f, 35.8421f },
    { -10127.00f, 651.0f, 36.05776f },
    { -10123.0f, 651.0f,  36.06887f },
    { -10102.18f, 630.2f, 36.35133f },
    { -10103.63f, 619.34f, 38.2921f }
};

/*######
## npc_stormwind_infantry
######*/

struct npc_stormwind_infantry : public ScriptedAI
{
    npc_stormwind_infantry(Creature* creature) : ScriptedAI(creature) { }

    uint32 Yell;
    uint32 WillSay;
    uint32 SayChance;
    uint32 waitTime;
    ObjectGuid wolfTarget;

    void Reset() override
    {
        wolfTarget = ObjectGuid::Empty;
        me->SetSheath(SHEATH_STATE_MELEE);
        Yell = urand(40, 60) * IN_MILLISECONDS;
        WillSay = urand(0, 100);
        SayChance = urand(1, 15);
        waitTime = urand(0, 2000);
    }

    void DamageTaken(Unit* doneBy, uint32& damage) override
    {
        if (doneBy->ToCreature())
            if (me->GetHealth() <= damage || me->GetHealthPct() <= 80.0f)
                damage = 0;
    }

    void DamageDealt(Unit* target, uint32& damage, DamageEffectType /*damageType*/) override
    {
        if (target->ToCreature())
            if (target->GetHealth() <= damage || target->GetHealthPct() <= 70.0f)
                damage = 0;
    }

    void UpdateAI(uint32 diff) override
    {
        if (Yell <= diff)
        {
            if (WillSay <= SayChance)
            {
                Talk(INFANTRY_COMBAT_YELL);
                Yell = urand(40, 60) * IN_MILLISECONDS;
            }
        }
        else Yell -= diff;

        DoMeleeAttackIfReady();

        if (waitTime && waitTime >= diff)
        {
            waitTime -= diff;
            return;
        }

        waitTime = urand(10000, 20000);

        if (!wolfTarget.IsEmpty())
        {
            if (Creature* wolf = ObjectAccessor::GetCreature(*me, wolfTarget))
            {
                if (wolf->IsAlive())
                {
                    if (me->GetVictim() != wolf)
                    {
                        me->getThreatManager().addThreat(wolf, 1000000.0f);
                        wolf->getThreatManager().addThreat(me, 1000000.0f);
                        me->Attack(wolf, true);
                    }
                }
                else
                {
                    wolf->DespawnOrUnsummon();
                    wolfTarget = ObjectGuid::Empty;
                }
            }
        }
        else
        {
            Position wolfPos = me->GetPosition();
            GetPositionWithDistInFront(me, 2.5f, wolfPos);

            float z = me->GetMap()->GetHeight(me->GetPhaseShift(), wolfPos.GetPositionX(), wolfPos.GetPositionY(), wolfPos.GetPositionZ());
            wolfPos.m_positionZ = z;

            if (Creature* wolf = me->SummonCreature(NPC_BLACKROCK_BATTLE_WORG, wolfPos))
            {
                me->getThreatManager().addThreat(wolf, 1000000.0f);
                wolf->getThreatManager().addThreat(me, 1000000.0f);
                AttackStart(wolf);
                wolf->SetFacingToObject(me);
                wolfTarget = wolf->GetGUID();
                wolf->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PC);
            }
        }
    }
};

/*######
## npc_brother_paxton
######*/

struct npc_brother_paxton : public ScriptedAI
{
    npc_brother_paxton(Creature *c) : ScriptedAI(c) { }

    EventMap _events;

    uint32 _cooldownTimer;

    bool _cooldown;

    void Reset()
    {
        _events.Reset();

        me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PC | UNIT_FLAG_IMMUNE_TO_NPC);
        DoCastSelf(SPELL_FORTITUDE);
        me->InitializeReactState();

        _cooldown = false;
        _cooldownTimer = 0;
    }

    void EnterEvadeMode(EvadeReason /*why*/) override
    {
        return;
    }

    void MoveInLineOfSight(Unit* who) override
    {
        if (me->GetDistance(who) < 15.0f)
        {
            if (who && who->GetTypeId() == TYPEID_PLAYER && !who->HasAura(SPELL_FORTITUDE) && !_cooldown)
            {
                if (roll_chance_i(30))
                {
                    _cooldown = true;
                    me->CastSpell(who, SPELL_FORTITUDE);
                    me->CastSpell(who, SPELL_RENEW, true);
                    Talk(BROTHER_PAXTON_TEXT_PLAYER, who);
                }
            }
        }
    }

    void EnterCombat(Unit* /*who*/) override
    {
        return;
    }

    void MovementInform(uint32 type, uint32 id)
    {
        if (type == 2 && id == 5 || id == 13 || id == 20 || id == 30 || id == 37 || id == 47 || id == 55 || id == 57)
        {
            switch(urand(0, 3))
            {
                case 0:
                    _events.ScheduleEvent(1, 500ms);
                    break;
                case 1:
                    _events.ScheduleEvent(5, 500ms);
                    break;
                case 2:
                    _events.ScheduleEvent(9, 500ms);
                    break;
                case 3:
                    _events.ScheduleEvent(13, 500ms);
                    break;
            }
        }
    }

    void UpdateAI(uint32 diff) override
    {
        if (_cooldownTimer <= diff)
        {
            _cooldown = false;
            _cooldownTimer = 20 * IN_MILLISECONDS;
        }
        else _cooldownTimer -= diff;

        _events.Update(diff);

        switch (_events.ExecuteEvent())
        {
            case 1:
                me->SetReactState(REACT_PASSIVE);

                if (Creature* stormwind_infantry = me->FindNearestCreature(NPC_STORMWIND_INFANTRY, 6.0f))
                    stormwind_infantry->AI()->Talk(INFANTRY_HELP_YELL);
                _events.ScheduleEvent(2, 1s);
                break;
            case 2:
                if (Creature* stormwind_infantry = me->FindNearestCreature(NPC_STORMWIND_INFANTRY, 6.0f))
                    me->SetFacingTo(me->GetAngle(stormwind_infantry));
                _events.ScheduleEvent(3, 2s);
                break;
            case 3:
                Talk(BROTHER_PAXTON_TEXT);
                _events.ScheduleEvent(4, 1s);
                break;
            case 4:
                if (Creature* stormwind_infantry = me->FindNearestCreature(NPC_STORMWIND_INFANTRY, 6.0f))
                    me->CastSpell(stormwind_infantry, SPELL_PENANCE);
                _events.ScheduleEvent(17, 4s);
                break;
            case 5:
                me->SetReactState(REACT_PASSIVE);

                if (Creature* stormwind_infantry = me->FindNearestCreature(NPC_STORMWIND_INFANTRY, 6.0f))
                    stormwind_infantry->AI()->Talk(INFANTRY_HELP_YELL);
                _events.ScheduleEvent(6, 1s);
                break;
            case 6:
                if (Creature* stormwind_infantry = me->FindNearestCreature(NPC_STORMWIND_INFANTRY, 6.0f))
                    me->SetFacingTo(me->GetAngle(stormwind_infantry));
                _events.ScheduleEvent(7, 2s);
                break;
            case 7:
                Talk(BROTHER_PAXTON_TEXT);
                _events.ScheduleEvent(8, 1s);
                break;
            case 8:
                if (Creature* stormwind_infantry = me->FindNearestCreature(NPC_STORMWIND_INFANTRY, 6.0f))
                    me->CastSpell(stormwind_infantry, SPELL_FLASH_HEAL);
                _events.ScheduleEvent(17, 4s);
                break;
            case 9:
                me->SetReactState(REACT_PASSIVE);

                if (Creature* stormwind_infantry = me->FindNearestCreature(NPC_STORMWIND_INFANTRY, 6.0f))
                    stormwind_infantry->AI()->Talk(INFANTRY_HELP_YELL);
                _events.ScheduleEvent(10, 1s);
                break;
            case 10:
                if (Creature* stormwind_infantry = me->FindNearestCreature(NPC_STORMWIND_INFANTRY, 6.0f))
                    me->SetFacingTo(me->GetAngle(stormwind_infantry));
                _events.ScheduleEvent(11, 2s);
                break;
            case 11:
                Talk(BROTHER_PAXTON_TEXT);
                _events.ScheduleEvent(12, 1s);
                break;
            case 12:
                if (Creature* stormwind_infantry = me->FindNearestCreature(NPC_STORMWIND_INFANTRY, 6.0f))
                    me->CastSpell(stormwind_infantry, SPELL_RENEW);
                _events.ScheduleEvent(17, 4s);
                break;
            case 13:
                me->SetReactState(REACT_PASSIVE);

                if (Creature* stormwind_infantry = me->FindNearestCreature(NPC_STORMWIND_INFANTRY, 6.0f))
                    stormwind_infantry->AI()->Talk(INFANTRY_HELP_YELL);
                _events.ScheduleEvent(14, 1s);
                break;
            case 14:
                if (Creature* stormwind_infantry = me->FindNearestCreature(NPC_STORMWIND_INFANTRY, 6.0f))
                    me->SetFacingTo(me->GetAngle(stormwind_infantry));
                _events.ScheduleEvent(15, 2s);
                break;
            case 15:
                Talk(BROTHER_PAXTON_TEXT);
                _events.ScheduleEvent(16, 1s);
                break;
            case 16:
                if (Creature* stormwind_infantry = me->FindNearestCreature(NPC_STORMWIND_INFANTRY, 6.0f))
                    me->CastSpell(stormwind_infantry, SPELL_REVIVE);
                _events.ScheduleEvent(17, 4s);
                break;
            case 17:
                me->ClearInCombat();
                Reset();
                break;
            default:
                break;
        }

        if (!UpdateVictim())
            return;

        DoMeleeAttackIfReady();
    }
};

/*######
## npc_stormwind_injured_soldier
######*/

struct npc_stormwind_injured_soldier : public npc_escortAI
{
    npc_stormwind_injured_soldier(Creature* creature) : npc_escortAI(creature) { }

    void Reset() override
    {
        _clicker = nullptr;

        me->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_SPELLCLICK);
        me->SetStandState(UNIT_STAND_STATE_DEAD);
    }

    void OnSpellClick(Unit* Clicker, bool& /*result*/) override
    {
        if (!Clicker->IsPlayer())
            return;

        _clicker = Clicker;
        me->CastSpell(me, SPELL_HEAL_VISUAL, true);
        me->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_SPELLCLICK);
        me->SetStandState(UNIT_STAND_STATE_STAND);

        me->GetScheduler().Schedule(Milliseconds(1000), [this](TaskContext /*task*/)
        {
            if (_clicker)
                me->SetFacingToObject(_clicker);

            Talk(TEXT_INJURED_SOLDIER, _clicker);
            me->HandleEmoteCommand(RAND(EMOTE_ONESHOT_SALUTE, EMOTE_ONESHOT_CHEER));
        });

        me->GetScheduler().Schedule(Milliseconds(3000), [this](TaskContext /*task*/)
        {
            Start(false, true);
        });
    }

    void WaypointReached(uint32 waypointId) override
    {
        if (waypointId == 5)
        {
            me->DespawnOrUnsummon(1000);
            me->SetRespawnDelay(10);
        }
    }

    void EnterCombat(Unit* /*who*/) override
    {
        return;
    }

    Unit* _clicker;
};

/*######
## npc_blackrock_spy
######*/

struct npc_blackrock_spy : public ScriptedAI
{
    npc_blackrock_spy(Creature *c) : ScriptedAI(c) { }

    uint32 _animatePhase;
    uint32 _animateTimer;

    void Reset()
    {
        _animatePhase = 0;
        _animateTimer = 0;
    }

    void EnterCombat(Unit* who) override
    {
        Talk(TEXT_BLACKROCK_SPY_COMBAT, who);
        me->RemoveAllAuras();
        _animatePhase = 0;
        _animateTimer = 0;
    }

    void MovementInform(uint32 type, uint32 id) override
    {
        if (me->IsInCombat())
            return;

        if (type == 2 && id == 1 || id == 3)
        {
            uint8 r1 = urand(0, 100);
            uint8 r2 = urand(0, 100);
            uint8 r3 = urand(0, 100);

            if (r1 < 33)
            {
                me->CastSpell(me, SPELL_SPYGLASS);
                _animatePhase = 1;
                _animateTimer = 4.8 * IN_MILLISECONDS;
            }

            if (r2 < 50)
                me->HandleEmoteCommand(EMOTE_STATE_KNEEL);

            if (r3 < 50)
                me->CastSpell(me, SPELL_SPYING);
            else
                me->CastSpell(me, SPELL_SNEAKING);
        }
    }

    void UpdateAI(uint32 diff) override
    {
        if (_animateTimer <= diff)
            Animation();
        else
            _animateTimer -= diff;

        if (!UpdateVictim())
            return;

        DoMeleeAttackIfReady();
    }

    void Animation()
    {
        if (me->IsInCombat())
            return;

        switch (_animatePhase)
        {
            case 1:
                me->RemoveAllAuras();
                _animatePhase = 0;
                _animateTimer = 0;
                break;
            case 2:
                break;
        }
    }
};

/*######
## npc_training_dummy_elwynn
######*/

struct npc_training_dummy_start_zones : Scripted_NoMovementAI
{
    npc_training_dummy_start_zones(Creature* creature) : Scripted_NoMovementAI(creature) { }

    uint32 resetTimer;

    void Reset() override
    {
        me->SetControlled(true, UNIT_STATE_STUNNED);//disable rotate
        me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);//imune to knock aways like blast wave

        resetTimer = 5000;
    }

    void EnterEvadeMode(EvadeReason /*why*/) override
    {
        if (!_EnterEvadeMode())
            return;

        Reset();
    }

    void MoveInLineOfSight(Unit* p_Who) override
    {
        if (!me->IsWithinDistInMap(p_Who, 25.f) && p_Who->IsInCombat())
        {
            me->RemoveAllAurasByCaster(p_Who->GetGUID());
            me->getHostileRefManager().deleteReference(p_Who);
        }
    }

    void DamageTaken(Unit* doneBy, uint32& damage) override
    {
        resetTimer = 5000;
        damage = 0;

        if (doneBy->HasAura(SPELL_AUTORITE))
        {
            if (Player* player = doneBy->ToPlayer())
            {
                player->KilledMonsterCredit(44175);
                player->KilledMonsterCredit(44548);
            }
        }
    }

    void EnterCombat(Unit* /*who*/) override
    {
        return;
    }

    void SpellHit(Unit* Caster, const SpellInfo* Spell) override
    {
        switch (Spell->Id)
        {
            case SPELL_CHARGE:
            case SPELL_ASSURE:
            case SPELL_EVISCERATION:
            case SPELL_MOT_DOULEUR_1:
            case SPELL_MOT_DOULEUR_2:
            case SPELL_NOVA:
            case SPELL_CORRUPTION_1:
            case SPELL_CORRUPTION_2:
            case SPELL_CORRUPTION_3:
            case SPELL_PAUME_TIGRE:
            {
                if (Player* player = Caster->ToPlayer())
                {
                    player->KilledMonsterCredit(44175);
                    player->KilledMonsterCredit(44548);
                }
                break;
            }
            default:
                break;
        }
    }

    void UpdateAI(uint32 diff) override
    {
        if (!UpdateVictim())
            return;

        if (!me->HasUnitState(UNIT_STATE_STUNNED))
            me->SetControlled(true, UNIT_STATE_STUNNED);//disable rotate

        if (resetTimer <= diff)
        {
            EnterEvadeMode(EVADE_REASON_OTHER);
            resetTimer = 5000;
        }
        else
            resetTimer -= diff;
    }
};

/*######
## spell_quest_fear_no_evil
######*/

class spell_quest_fear_no_evil : public SpellScript
{
    PrepareSpellScript(spell_quest_fear_no_evil);

    void OnDummy(SpellEffIndex /*effIndex*/)
    {
        if (GetCaster())
            if (GetCaster()->ToPlayer())
                GetCaster()->ToPlayer()->KilledMonsterCredit(50047);
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_quest_fear_no_evil::OnDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
    }
};

/*######
## spell_quest_extincteur
######*/

class spell_quest_extincteur : public SpellScript
{
    PrepareSpellScript(spell_quest_extincteur);

    void OnDummy(SpellEffIndex /*effIndex*/)
    {
        Unit* caster = GetCaster();
        Creature* fire = GetHitCreature();

        if (!caster || !fire)
            return;

        if (fire->GetEntry() != NPC_FIRE)
            return;

        if (Player* player = caster->ToPlayer())
            player->KilledMonsterCredit(NPC_FIRE, fire->GetGUID());

        fire->DespawnOrUnsummon();
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_quest_extincteur::OnDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
    }
};

/*######
## npc_hogger
######*/

struct npc_hogger : public ScriptedAI
{
    npc_hogger(Creature* creature) : ScriptedAI(creature), summons(me) { }

    void Reset() override
    {
        _events.Reset();
        summons.DespawnAll();

        _minionsSummoned = false;
        _endingSceneActive = false;
        _alreadyEaten = false;
        _isEating = false;

        me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PC | UNIT_FLAG_NON_ATTACKABLE);
        me->SetReactState(REACT_AGGRESSIVE);
        me->SetWalk(false);
    }

    void JustSummoned(Creature* summon)
    {
        summons.Summon(summon);

        if (summon->GetEntry() == NPC_HOGGER_MINION)
        {
            for (auto itr : me->getThreatManager().getThreatList())
                if (Player* player = ObjectAccessor::GetPlayer(*me, itr->getUnitGuid()))
                {
                    summon->SetTarget(player->GetGUID());
                    summon->AI()->AttackStart(player);
                }
        }
    }

    void DamageTaken(Unit* /*attacker*/, uint32& damage) override
    {
        if (_endingSceneActive)
        {
            damage = 0;
            return;
        }

        if (!_minionsSummoned && me->HealthBelowPctDamaged(50, damage))
            SummonMinions();

        if (!_alreadyEaten && me->HealthBelowPctDamaged(30, damage))
            MoveToEatingPosition();


        if (me->GetHealth() <= damage)
        {
            damage = 0;
            me->SetHealth(1);
            StartEndingScene();
            RewardPlayers();
        }

        if (_isEating && me->HasAura(SPELL_EATING))
        {
            _isEating = false;

            Talk(EMOTE_STUNNED_TEXT);
            me->SetReactState(REACT_AGGRESSIVE);
            HoggerStartAttackPlayers();
        }
    }

    void EnterCombat(Unit* who) override
    {
        if (who->GetTypeId() == TYPEID_PLAYER && roll_chance_i(30))
            Talk(SAY_AGGRO_TEXT);

        _events.ScheduleEvent(EVENT_VICIOUS_SLICE, 3s);
    }

    void MoveToEatingPosition()
    {
        _alreadyEaten = true;

        if (Creature* target = me->FindNearestCreature(NPC_EATING_TARGET, 100.0f))
        {
            me->SetReactState(REACT_PASSIVE);
            me->SetTarget(target->GetGUID());
            me->GetMotionMaster()->MovePoint(0, target->GetPositionX() + 2.0f, target->GetPositionY(), target->GetPositionZ(), true);
            _events.ScheduleEvent(EVENT_CHECK_EAT_RANGE, 200ms);
        }
    }

    void StartEndingScene()
    {
        _endingSceneActive = true;
        _events.Reset();

        me->SetReactState(REACT_PASSIVE);
        me->RemoveAllAuras();
        me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PC | UNIT_FLAG_NON_ATTACKABLE);
        me->StopMoving();
        me->AttackStop();
        me->CombatStop(true);

        std::list<Creature*> minions;
        me->GetCreatureListWithEntryInGrid(minions, NPC_HOGGER_MINION, 200.0f);
        for (Creature* unit : minions)
            unit->DisappearAndDie();

        Talk(YELL_FINAL_TEXT);

        SummonGeneralHammondClay();
        SummonAndromath();
        SummonDumas();
        SummonRagamuffins();

        _events.ScheduleEvent(EVENT_HAMMOND_GROUP_START_WALKING, 1s);
    }

    void RewardPlayers()
    {
        for (auto itr : me->getThreatManager().getThreatList())
            if (Player* player = ObjectAccessor::GetPlayer(*me, itr->getUnitGuid()))
                player->RewardPlayerAndGroupAtEvent(NPC_HOGGER, me);
    }

    void HoggerStartAttackPlayers()
    {
        for (auto itr : me->getThreatManager().getThreatList())
            if (Player* player = ObjectAccessor::GetPlayer(*me, itr->getUnitGuid()))
            {
                me->SetTarget(player->GetGUID());
                me->AI()->AttackStart(player);
                me->setActive(true);
            }
    }

    void SummonGeneralHammondClay()
    {
        if (TempSummon* GeneralHammondClay = me->SummonCreature(NPC_GENERAL_HAMMOND_CLAY, GeneralHammondClayCoordinates[0]))
        {
            _generalHammondGUID = GeneralHammondClay->GetGUID();
            GeneralHammondClay->CastSpell(GeneralHammondClay, SPELL_TELEPORT_VISUAL_ONLY_1, true);
            GeneralHammondClay->Mount(DISPLAYID_GENERAL_HAMMOND_CLAYS_MOUNT);
            GeneralHammondClay->AI()->Talk(YELL_OPENING);
            GeneralHammondClay->HandleEmoteCommand(EMOTE_ONESHOT_SHOUT);
        }
    }

    void MoveGeneralHammondClay()
    {
        if (GetHammond())
        {
            GetHammond()->SetWalk(true);
            GetHammond()->GetMotionMaster()->MovePoint(0, GeneralHammondClayCoordinates[2], true);
            _events.ScheduleEvent(EVENT_RAGAMUFFIN_SAY_CLAY, 2s);
            _events.ScheduleEvent(EVENT_RAGAMUFFIN_SAY_WOW, 4s + 500ms);
            _events.ScheduleEvent(EVENT_DISMOUNT_HAMMOND_CLAY, 8s + 500ms);
        }
    }

    void SummonAndromath()
    {
        TempSummon* andromath = me->SummonCreature(NPC_ANDROMATH, HighSorcererAndromathCoordinates[0]);
        if (andromath)
        {
            _andromathGUID = andromath->GetGUID();
            andromath->CastSpell(andromath, SPELL_TELEPORT_VISUAL_ONLY_1, true);
        }
    }

    void MoveAndromath()
    {
        if (GetAndromath())
        {
            GetAndromath()->SetWalk(true);
            GetAndromath()->GetMotionMaster()->MovePoint(0, HighSorcererAndromathCoordinates[2], true);
        }
    }

    void SummonDumas()
    {
        TempSummon* dumas = me->SummonCreature(NPC_DUMAS, HighSorcererDumasCoordinates[0]);
        if (dumas)
        {
            _dumasGUID = dumas->GetGUID();
            dumas->CastSpell(dumas, SPELL_TELEPORT_VISUAL_ONLY_1, true);
        }
    }

    void MoveDumas()
    {
        if (GetDumas())
        {
            GetDumas()->SetWalk(true);
            GetDumas()->GetMotionMaster()->MovePoint(0, HighSorcererDumasCoordinates[2], true);
        }
    }

    void SummonRagamuffins()
    {
        TempSummon* Ragamuffin1 = me->SummonCreature(NPC_RAGAMUFFIN, RagamuffinCoordinates[0], TEMPSUMMON_TIMED_DESPAWN, 10000);
        if (Ragamuffin1)
        {
            me->SetWalk(false);
            Ragamuffin1->GetMotionMaster()->MovePoint(0, RagamuffinCoordinates[2], true);
            _Ragamuffin1GUID = Ragamuffin1->GetGUID();
        }
        TempSummon* Ragamuffin2 = me->SummonCreature(NPC_RAGAMUFFIN, RagamuffinCoordinates[1], TEMPSUMMON_TIMED_DESPAWN, 10000);
        if (Ragamuffin2)
        {
            me->SetWalk(false);
            Ragamuffin2->GetMotionMaster()->MovePoint(0, RagamuffinCoordinates[3], true);
            _Ragamuffin2GUID = Ragamuffin2->GetGUID();
        }
    }

    void SummonMinions()
    {
        me->CastStop();
        Talk(YELL_SUMMON_MINIONS_TEXT);

        for (float distance : { 0.5f, 1.5f, 2.5f })
        {
            Position hogPos = me->GetPosition();
            GetPositionWithDistInFront(me, distance, hogPos);
            float z = me->GetMap()->GetHeight(me->GetPhaseShift(), hogPos.GetPositionX(), hogPos.GetPositionY(), hogPos.GetPositionZ());
            hogPos.m_positionZ = z;
            me->SummonCreature(NPC_HOGGER_MINION, hogPos, TEMPSUMMON_TIMED_DESPAWN, 40 * IN_MILLISECONDS);
        }
        _minionsSummoned = true;
    }

    void MoveHoggerToFinalPosition()
    {
        me->SetWalk(true);
        me->GetMotionMaster()->MovePoint(0, HoggerCoordinates[0]);
    }

    void TeleportBack()
    {
        if (GetHammond() && GetAndromath() && GetDumas())
        {
            GetHammond()->CastSpell(GetHammond(), SPELL_TELEPORT_VISUAL_ONLY_1, true);
            GetAndromath()->CastSpell(GetAndromath(), SPELL_TELEPORT_VISUAL_ONLY_2, true);
            GetDumas()->CastSpell(GetDumas(), SPELL_TELEPORT_VISUAL_ONLY_1, true);
            DoCastSelf(SPELL_TELEPORT_VISUAL_ONLY_1, true);

            me->DisappearAndDie();
            GetHammond()->DisappearAndDie();
            GetAndromath()->DisappearAndDie();
            GetDumas()->DisappearAndDie();
        }
    }

    Creature* GetHammond()
    {
        return me->GetMap()->GetCreature(_generalHammondGUID);
    }

    Creature* GetAndromath()
    {
        return me->GetMap()->GetCreature(_andromathGUID);
    }

    Creature* GetDumas()
    {
        return me->GetMap()->GetCreature(_dumasGUID);
    }

    Creature* GetRagamuffin1()
    {
        return me->GetMap()->GetCreature(_Ragamuffin1GUID);
    }

    Creature* GetRagamuffin2()
    {
        return me->GetMap()->GetCreature(_Ragamuffin2GUID);
    }

    void UpdateAI(uint32 diff) override
    {
        if (!UpdateVictim() && !_endingSceneActive)
            return;

        _events.Update(diff);

        if (me->HasUnitState(UNIT_STATE_CASTING))
            return;

        while (uint32 eventId = _events.ExecuteEvent())
        {
            switch (eventId)
            {
                case EVENT_VICIOUS_SLICE:
                    DoCastVictim(SPELL_VICIOUS_SLICE);
                    _events.Repeat(3s);
                    break;

                case EVENT_HAMMOND_GROUP_START_WALKING:
                    MoveGeneralHammondClay();
                    MoveAndromath();
                    MoveDumas();
                    MoveHoggerToFinalPosition();
                    break;

                case EVENT_RAGAMUFFIN_SAY_CLAY:
                    GetRagamuffin2()->AI()->Talk(SAY_CLAY);
                    GetRagamuffin2()->SetFacingTo(GetRagamuffin2()->GetAngle(me));
                    _events.ScheduleEvent(EVENT_RUN_1, 5s);
                    break;

                case EVENT_RUN_1:
                    GetRagamuffin1()->SetWalk(false);
                    GetRagamuffin1()->GetMotionMaster()->MovePoint(0, RagamuffinCoordinates[5], true);
                    break;

                case EVENT_RAGAMUFFIN_SAY_WOW:
                    GetRagamuffin1()->AI()->Talk(SAY_WOW);
                    GetRagamuffin1()->SetFacingTo(GetRagamuffin1()->GetAngle(me));
                    _events.ScheduleEvent(EVENT_RUN_2, 4s);
                    break;

                case EVENT_RUN_2:
                    GetRagamuffin2()->SetWalk(false);
                    GetRagamuffin2()->GetMotionMaster()->MovePoint(0, RagamuffinCoordinates[6], true);
                    break;

                case EVENT_DISMOUNT_HAMMOND_CLAY:
                    if (GetHammond())
                    {
                        me->SetFacingToObject(GetHammond());

                        GetHammond()->Dismount();
                        GetHammond()->GetMotionMaster()->MovePoint(0, GeneralHammondClayCoordinates[3], true);

                        _events.ScheduleEvent(EVENT_HOGGER_SAY_GRR, 3s);
                    }
                    break;

                case EVENT_HOGGER_SAY_GRR:
                    Talk(SAY_GRR_TEXT);
                    _events.ScheduleEvent(EVENT_CLAYS_EXPLAINATION, 3s);
                    break;

                case EVENT_CLAYS_EXPLAINATION:
                    if (GetHammond() && GetAndromath() && GetDumas())
                    {
                        GetHammond()->AI()->Talk(SAY_EXPLAINATION);
                        GetHammond()->HandleEmoteCommand(EMOTE_ONESHOT_POINT);
                        GetHammond()->EmoteWithDelay(4 * IN_MILLISECONDS, EMOTE_ONESHOT_EXCLAMATION);

                        GetAndromath()->SetFacingToObject(me);
                        GetDumas()->SetFacingToObject(me);
                    }
                    _events.ScheduleEvent(EVENT_CLAY_SAYS_TAKE_HIM, 7s + 500ms);
                    break;

                case EVENT_CLAY_SAYS_TAKE_HIM:
                    if (GetHammond())
                    {
                        GetHammond()->AI()->Talk(SAY_TAKE_HIM);
                        GetHammond()->HandleEmoteCommand(EMOTE_ONESHOT_TALK);
                    }
                    _events.ScheduleEvent(EVENT_HOGGER_SAYS_NOO, 2s);
                    break;

                case EVENT_HOGGER_SAYS_NOO:
                    Talk(SAY_NOOOOO_TEXT);
                    _events.ScheduleEvent(EVENT_CLAY_SPEAKS_TO_ANDROMATH, 3s);
                    break;

                case EVENT_CLAY_SPEAKS_TO_ANDROMATH:
                    if (GetHammond() && GetAndromath())
                    {
                        GetHammond()->SetFacingToObject(GetAndromath());
                        GetAndromath()->SetFacingToObject(GetHammond());
                        GetHammond()->AI()->Talk(SAY_TO_ANDROMATH);
                        GetHammond()->HandleEmoteCommand(EMOTE_ONESHOT_POINT);
                        GetHammond()->EmoteWithDelay(2 * IN_MILLISECONDS, EMOTE_ONESHOT_TALK);
                    }
                    _events.ScheduleEvent(EVENT_ANDROMATH_TEXT, 3s);
                    _events.ScheduleEvent(EVENT_TELEPORT_BACK, 7s);
                    break;

                case EVENT_ANDROMATH_TEXT:
                    GetAndromath()->AI()->Talk(SAY_TO_HAMMOND_TEXT);
                    GetAndromath()->HandleEmoteCommand(EMOTE_ONESHOT_TALK);
                    GetAndromath()->EmoteWithDelay(2 * IN_MILLISECONDS, EMOTE_ONESHOT_SALUTE);
                    break;

                case EVENT_TELEPORT_BACK:
                    TeleportBack();
                    break;

                case EVENT_CHECK_EAT_RANGE:
                    if (!me->FindNearestCreature(NPC_EATING_TARGET, 3.0f))
                        _events.ScheduleEvent(EVENT_CHECK_EAT_RANGE, 200ms);
                    else
                    {
                        DoCast(SPELL_EATING);
                        Talk(EMOTE_EATING_TEXT);
                        _events.ScheduleEvent(EVENT_BLOODY_STRIKE, 100ms);
                        _isEating = true;
                    }
                    break;

                case EVENT_BLOODY_STRIKE:
                    if (me->HasAura(SPELL_EATING))
                    {
                        if (_isEating)
                        {
                            if (Creature* dummy = me->FindNearestCreature(NPC_EATING_TARGET, 10.0f))
                                DoCast(dummy, SPELL_BLOODY_STRIKE, true);
                            _events.ScheduleEvent(EVENT_BLOODY_STRIKE, 1s);
                        }
                    }
                    else
                    {
                        _isEating = false;
                        _events.CancelEvent(EVENT_BLOODY_STRIKE);
                        me->SetReactState(REACT_AGGRESSIVE);
                        HoggerStartAttackPlayers();
                    }
                    break;
                default:
                    break;
            }
        }

        if (!_endingSceneActive)
            DoMeleeAttackIfReady();
    }

private:
    EventMap _events;
    SummonList summons;

    bool _minionsSummoned;
    bool _endingSceneActive;
    bool _alreadyEaten;
    bool _isEating;

    ObjectGuid _generalHammondGUID;
    ObjectGuid _andromathGUID;
    ObjectGuid _dumasGUID;
    ObjectGuid _Ragamuffin1GUID;
    ObjectGuid _Ragamuffin2GUID;
};

/*######
## npc_hogger_minion
######*/

struct npc_hogger_minion : public ScriptedAI
{
    npc_hogger_minion(Creature* creature) : ScriptedAI(creature) { }

    EventMap _events;

    bool _hoggerHealed;

    void Reset() override
    {
        _events.Reset();

        _hoggerHealed = false;

        me->SetReactState(REACT_AGGRESSIVE);

        if (!_hoggerHealed && roll_chance_i(50))
        {
            _events.ScheduleEvent(1, 1s);
            _hoggerHealed = true;
        }
    }

    void UpdateAI(uint32 diff) override
    {
        if (!UpdateVictim())
            return;

        _events.Update(diff);

        if (me->HasUnitState(UNIT_STATE_CASTING))
            return;

        while (uint32 eventId = _events.ExecuteEvent())
        {
            switch (eventId)
            {
                case 1:
                    if (Creature* hogger = me->FindNearestCreature(NPC_HOGGER, 35.0f, true))
                        me->CastSpell(hogger, SPELL_ADVENTURERS_RUSH, true);
                    break;
                default:
                    break;
            }
        }

        DoMeleeAttackIfReady();
    }
};

void AddSC_elwyn_forest()
{
    RegisterCreatureAI(npc_stormwind_infantry);
    RegisterCreatureAI(npc_brother_paxton);
    RegisterCreatureAI(npc_stormwind_injured_soldier);
    RegisterCreatureAI(npc_blackrock_spy);
    RegisterCreatureAI(npc_training_dummy_start_zones);
    RegisterSpellScript(spell_quest_fear_no_evil);
    RegisterSpellScript(spell_quest_extincteur);
    RegisterCreatureAI(npc_hogger);
    RegisterCreatureAI(npc_hogger_minion);
}
