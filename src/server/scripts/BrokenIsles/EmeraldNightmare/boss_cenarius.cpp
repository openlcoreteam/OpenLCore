// Initial work
// Emerald Nightmare - Cenarius 104636
// ScriptDev = 2/3 complete

#include "emerald_nightmare.h"
#include "ScriptMgr.h"
#include "CreatureGroups.h"
#include "LFGMgr.h"
#include "LFGQueue.h"
#include "LFGPackets.h"
#include "DynamicObject.h"
#include "ScriptedEscortAI.h"
#include "CreatureTextMgr.h"
#include "MiscPackets.h"
#include "GameObjectAI.h"
#include "ScriptedCreature.h"
#include "Player.h"
#include "ObjectMgr.h"
#include "Creature.h"
#include "ObjectAccessor.h"
#include "ScriptedGossip.h"
#include "Vehicle.h"
#include "MotionMaster.h"
#include "TemporarySummon.h"
#include "GameObject.h"
#include "CombatAI.h"
#include "SpellInfo.h"
#include "Conversation.h"
#include "PhasingHandler.h"
#include "SpellScript.h"
#include "Chat.h"
#include "Map.h"
#include "Transport.h"
#include "InstanceScript.h"
#include "DBCEnums.h"
#include "SceneMgr.h"
#include "Unit.h"
#include "SpellAuras.h"

enum Events
{
    EVENT_FORCES_OF_NIGHTMARE               = 1,
    EVENT_NIGHTMARE_BLAST                   = 2,
    EVENT_AURA_OF_DREAD_THORNS              = 3,
    EVENT_CREEPING_NIGHTMARES               = 4,
    EVENT_TALK_66                           = 5,
    EVENT_TALK_33                           = 6,
    EVENT_SPEAR_OF_NIGHTMARES               = 7,
    EVENT_NIGHTMARE_BRAMBLES                = 8,
    EVENT_NIGHTMARE_BUFFET                  = 9,
    EVENT_ROTTEN_BREATH                     = 10,
    EVENT_NIGHTMARE_JAVELIN                 = 11,
    EVENT_NIGHTMARE_JAVELIN_DOT             = 12,
    EVENT_SCORNED_TOUCH                     = 13,
    EVENT_TWISTED_TOUCH_OF_LIFE             = 14,
    EVENT_DESICCATING_STOMP                 = 15,
    EVENT_ENTANGLING_NIGHTMARES             = 16,
    EVENT_DESPAWN                           = 17,
    EVENT_CORRUPTED_WISPS                   = 18
};

enum Phases
{
    PHASE_ONE                               = 1,
    PHASE_TWO                               = 2
};

enum Texts
{
    SAY_AGGRO                               = 1,
    SAY_FORCES_OF_NIGHTMARE                 = 2,
    SAY_NIGHTMARE_VINES                     = 3,
    SAY_CORRUPTED_WISP                      = 4,
    SAY_NIGHTMARE_ANCIENT                   = 5,
    SAY_ROTTEN_DRAKE                        = 6,
    SAY_TWISTED_SISTER                      = 7,
    SAY_CLEANSED_GROUND                     = 8, // After Malfurion casts Cleansed Ground
    SAY_66                                  = 9, // At 66% hp
    SAY_33                                  = 10, // At 33% hp
    SAY_KILL                                = 11,
    SAY_WIPE                                = 12,
    SAY_DEATH                               = 13
};

enum Spells
{
    // Cenarius
    AURA_OF_DREAD_THORNS                    = 210346,
    CREEPING_NIGHTMARES                     = 210279,
    FORCES_OF_NIGHTMARE                     = 212726,
    SPEAR_OF_NIGHTMARES                     = 214529,
    NIGHTMARE_BLAST                         = 213162, // Mythic only
    SPELL_NIGHTMARE_BRAMBLES                = 210290, // Every 30 sec
    ENTANGLING_NIGHTMARES                   = 214505,

    // Malfurion
    CLEANSED_GROUND                         = 212681,
    CLEANSING_GROUND                        = 214249,
    
    // Nightmare Ancient
    DESICCATING_STOMP                       = 211073,

    // Corrupted Whisp
    DESTRUCTIVE_NIGHTMARES                  = 210619,
    ENRAGED                                 = 225087,
    CORRUPTED_DETONATE                      = 226713,

    // Rotten drake
    NIGHTMARE_BUFFET                        = 211182,
    ROTTEN_BREATH                           = 211192,

    // Twisted Sister
    NIGHTMARE_JAVELIN                       = 211498,
    NIGHTMARE_JAVELIN_DOT                   = 211507,
    SCORNED_TOUCH                           = 211471,
    TWISTED_TOUCH_OF_LIFE                   = 211368
};

enum Summons
{
    TWISTED_SISTER                          = 105495,
    NIGHTMARE_ANCIENT                       = 105468,
    CORRUPTED_WISP                          = 106304,
    ROTTEN_DRAKE                            = 105494,
    WISP                                    = 106659,
    CLEANSED_ANCIENT                        = 106667,
    EMERALD_DRAKE                           = 106809,
    REDEEMED_SISTER                         = 106831,
    NIGHTMARE_BRAMBLES                      = 106167,
    TORMENTED_SOULS                         = 106895
};

const Position drake_pos = { 11395.097f, -12671.812f, 487.011f, 4.579f };
const Position ancient_pos = { 11338.205f, -12724.459f, 487.030f, 0.899f };
const Position twisted_pos = { 11338.909f, -12665.469f, 487.381f, 5.333f };
const Position tormented_souls_pos = { 11400.349f, -12730.610f, 487.169f, 2.263f };
const Position corrupted_wisp_pos = { 11395.097f, -12671.812f, 487.011f, 4.579f };
const Position brambles_pos = { 11363.907f, -16698.583f, 486.946f, 4.666f };

struct boss_cenarius : public ScriptedAI
{
    boss_cenarius(Creature* creature) : ScriptedAI(creature), Summons(me) { }

    void Initialize()
    {
        me->SetReactState(REACT_AGGRESSIVE);
    };

    void Reset() override
    {
        _events.Reset();
        Summons.DespawnAll();
        me->CombatStop(true);
        me->RemoveAurasDueToSpell(AURA_OF_DREAD_THORNS);
    }

    void EnterCombat(Unit* /*who*/) override
    {
        Talk(SAY_AGGRO);
        instance->SetBossState(DATA_CENARIUS, IN_PROGRESS);

        _events.SetPhase(PHASE_ONE);
        _events.ScheduleEvent(EVENT_AURA_OF_DREAD_THORNS, 1s);
        _events.ScheduleEvent(EVENT_FORCES_OF_NIGHTMARE, 8s);
        _events.ScheduleEvent(EVENT_NIGHTMARE_BLAST, 10s);
        _events.ScheduleEvent(EVENT_CREEPING_NIGHTMARES, 15s);
        _events.ScheduleEvent(EVENT_NIGHTMARE_BRAMBLES, 30s);
    }

    void DamageTaken(Unit* /*attacker*/, uint32& damage) override
    {
        if (me->HealthBelowPctDamaged(67, damage) && _events.IsInPhase(PHASE_ONE)) { }

        if (me->HealthBelowPctDamaged(34, damage) && _events.IsInPhase(PHASE_TWO))
        {
            Talk(SAY_33);
            _events.SetPhase(PHASE_TWO);
            _events.ScheduleEvent(EVENT_SPEAR_OF_NIGHTMARES, 2s);
            _events.ScheduleEvent(EVENT_ENTANGLING_NIGHTMARES, 1s);
        }
    }

    void JustSummoned(Creature* summon) override
    {
        Summons.Summon(summon);

        switch (summon->GetEntry())
        {
            case ROTTEN_DRAKE:
            case NIGHTMARE_ANCIENT:
            case TWISTED_SISTER:
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 1000.0f))
                    summon->AI()->AttackStart(target);
                break;

        }
    }

    void JustReachedHome() override
    {            
        Talk(SAY_WIPE);
        instance->SetBossState(DATA_CENARIUS, FAIL);
    }

    void KilledUnit(Unit* victim) override
    {
        if (victim->GetTypeId() == TYPEID_PLAYER)
            Talk(SAY_KILL);
    }

    void JustDied(Unit* /*killer*/) override
    {
        Talk(SAY_DEATH);
        Summons.DespawnAll();
        instance->SetBossState(DATA_CENARIUS, DONE);
    }

    void UpdateAI(uint32 diff) override
    {
        if (!UpdateVictim())
            return;

        _events.Update(diff);

        while (uint32 eventId = _events.ExecuteEvent())
        {
            switch (eventId)
            {
                case EVENT_FORCES_OF_NIGHTMARE:
                    Talk(SAY_FORCES_OF_NIGHTMARE);
                    DoCastSelf(FORCES_OF_NIGHTMARE);
                    me->SummonCreature(ROTTEN_DRAKE, drake_pos);
                    me->SummonCreature(NIGHTMARE_ANCIENT, ancient_pos);
                    me->SummonCreature(TWISTED_SISTER, twisted_pos);
                    me->SummonCreature(TORMENTED_SOULS, tormented_souls_pos);
                    _events.ScheduleEvent(EVENT_FORCES_OF_NIGHTMARE, 80s);
                    break;

                case EVENT_NIGHTMARE_BLAST:
                    //if (IsHeroic()); if (IsMythic())
                    {
                        if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM))
                            me->CastSpell(target, NIGHTMARE_BLAST, true);
                        _events.ScheduleEvent(EVENT_NIGHTMARE_BLAST, 33s);
                    }
                    break;

                case EVENT_AURA_OF_DREAD_THORNS:
                    me->AddAura(AURA_OF_DREAD_THORNS, me);
                    _events.ScheduleEvent(EVENT_AURA_OF_DREAD_THORNS, 45s);
                    break;

                case EVENT_CREEPING_NIGHTMARES:
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 1000.0f, true))
                        me->CastSpell(target, CREEPING_NIGHTMARES, true);
                    _events.ScheduleEvent(EVENT_CREEPING_NIGHTMARES, 50s);
                    break;

                case EVENT_NIGHTMARE_BRAMBLES:
                    Talk(SAY_NIGHTMARE_VINES);

                    if (Unit* target = SelectTarget(SELECT_TARGET_FARTHEST))
                        me->CastSpell(target, SPELL_NIGHTMARE_BRAMBLES, true);
                    me->SummonCreature(NIGHTMARE_BRAMBLES, brambles_pos);
                    _events.ScheduleEvent(EVENT_NIGHTMARE_BRAMBLES, 30s);
                    break;

                case EVENT_SPEAR_OF_NIGHTMARES:
                    if (Unit* target = SelectTarget(SELECT_TARGET_TOPAGGRO, 0, 1000.0f, true))
                        me->CastSpell(target, SPEAR_OF_NIGHTMARES, true);
                    _events.ScheduleEvent(EVENT_SPEAR_OF_NIGHTMARES, 25s);
                    break;

                case EVENT_ENTANGLING_NIGHTMARES:
                    break;
                default:
                    break;
            }
        }

        DoMeleeAttackIfReady();
    }

private:
    EventMap _events;
    SummonList Summons;
};

struct rotten_drake : public ScriptedAI
{
    rotten_drake(Creature* creature) : ScriptedAI(creature), Summons(me) { }

    void Initialize() { };

    void EnterCombat(Unit* /*who*/) override
    {
        _events.ScheduleEvent(EVENT_NIGHTMARE_BUFFET, 5s);
        _events.ScheduleEvent(EVENT_ROTTEN_BREATH, 8s);
    }

    void UpdateAI(uint32 diff) override
    {
        if (!UpdateVictim())
            return;

        _events.Update(diff);

        while (uint32 eventId = _events.ExecuteEvent())
        {
            switch (eventId)
            {
                case EVENT_NIGHTMARE_BUFFET:
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 10.0f, true))
                        me->CastSpell(target, NIGHTMARE_BUFFET, true);
                    _events.ScheduleEvent(EVENT_NIGHTMARE_BUFFET, 15s);
                    break;

                case EVENT_ROTTEN_BREATH:
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 10.0f, true))
                        me->CastSpell(target, ROTTEN_BREATH, true);
                    _events.ScheduleEvent(EVENT_ROTTEN_BREATH, 17s);
                    break;
                default:
                    break;
            }
        }

        DoMeleeAttackIfReady();
    }

private:
    EventMap _events;
    SummonList Summons;
};

struct twisted_sister : public ScriptedAI
{
    twisted_sister(Creature* creature) : ScriptedAI(creature), Summons(me) { }

    void Initialize() { };

    void EnterCombat(Unit* /*who*/) override
    {
        _events.ScheduleEvent(EVENT_NIGHTMARE_JAVELIN, 5s);
        _events.ScheduleEvent(EVENT_NIGHTMARE_JAVELIN_DOT, 8s);
        _events.ScheduleEvent(EVENT_SCORNED_TOUCH, 20s);
        _events.ScheduleEvent(EVENT_TWISTED_TOUCH_OF_LIFE, 15s);
    }

    void UpdateAI(uint32 diff) override
    {
        if (!UpdateVictim())
            return;

        _events.Update(diff);

        while (uint32 eventId = _events.ExecuteEvent())
        {
            switch (eventId)
            {
                case EVENT_NIGHTMARE_JAVELIN:
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 30.0f, true))
                        me->CastSpell(target, NIGHTMARE_JAVELIN, true);
                    _events.ScheduleEvent(EVENT_NIGHTMARE_JAVELIN, 5s);
                    break;

                case EVENT_NIGHTMARE_JAVELIN_DOT:
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 30.0f, true))
                        me->CastSpell(target, NIGHTMARE_JAVELIN_DOT, true);
                    _events.ScheduleEvent(EVENT_NIGHTMARE_JAVELIN_DOT, 8s);
                    break;

                case EVENT_SCORNED_TOUCH:
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 30.0f, true))
                        me->CastSpell(target, SCORNED_TOUCH, true);
                    _events.ScheduleEvent(EVENT_SCORNED_TOUCH, 20s);
                    break;
                default:
                    break;
            }
        }

        DoMeleeAttackIfReady();
    }

private:
    EventMap _events;
    SummonList Summons;
};

struct nightmare_ancient : public ScriptedAI
{
    nightmare_ancient(Creature* creature) : ScriptedAI(creature), Summons(me) { }

    void Initialize() { };

    void EnterCombat(Unit* /*who*/) override
    {
        _events.ScheduleEvent(EVENT_DESICCATING_STOMP, 5s);
    }

    void UpdateAI(uint32 diff) override
    {
        if (!UpdateVictim())
            return;

        _events.Update(diff);

        while (uint32 eventId = _events.ExecuteEvent())
        {
            switch (eventId)
            {
                case EVENT_DESICCATING_STOMP:
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 10.0f, true))
                        me->CastSpell(target, DESICCATING_STOMP, true);
                    _events.ScheduleEvent(EVENT_DESICCATING_STOMP, 15s);
                    break;
                default:
                    break;
            }
        }

        DoMeleeAttackIfReady();
    }

private:
    EventMap _events;
    SummonList Summons;
};

struct brambles : public ScriptedAI
{
    brambles(Creature* creature) : ScriptedAI(creature), Summons(me) { }

    void Initialize() { };

    void EnterCombat(Unit* /*who*/) override
    {
        me->GetMotionMaster()->MoveChase(me->GetVictim());
    }

private:
    EventMap _events;
    SummonList Summons;
};

struct tormented_souls : public ScriptedAI
{
    tormented_souls(Creature* creature) : ScriptedAI(creature), Summons(me) { }

    void Initialize() { };

    void Reset() override
    {
        _events.Reset();
        Summons.DespawnAll();
    }

    void IsSummonedBy(Unit* summoner) override { }

private:
    EventMap _events;
    SummonList Summons;
};

void AddSC_boss_cenarius()
{
    RegisterCreatureAI(boss_cenarius);
    RegisterCreatureAI(rotten_drake);
    RegisterCreatureAI(twisted_sister);
    RegisterCreatureAI(nightmare_ancient);
    RegisterCreatureAI(brambles);
    RegisterCreatureAI(tormented_souls);
}
