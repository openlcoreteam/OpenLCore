// Initial work
// Emerald Nightmare - Ursoc 100497
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
    EVENT_FOCUSED_GAZE                      = 1,
    EVENT_MOMENTUM                          = 2,
    EVENT_BLOOD_FRENZY                      = 3,
    EVENT_ECHOING_DISCHORD                  = 4,
    EVENT_ECHOING_OVERWHELM                 = 5,
    EVENT_REND_FLESH                        = 6,
    EVENT_REND_FLESH_2                      = 7,
    EVENT_ROARING_CACOPHONY                 = 8,
    EVENT_OVERWHELM                         = 9,
    EVENT_REMOVE_REND_STACKS                = 10,
    EVENT_BERSERK                           = 11
};

enum Texts
{
    SAY_AGGRO                               = 0,
    SAY_FOCUSED_GAZE                        = 2,
    SAY_KILL                                = 4,
    SAY_DEATH                               = 5,
    SAY_ROARING_CACOPHONY                   = 6,
    SAY_WIPE                                = 7
};

enum Spells
{
    BERSERK                                 = 26662,
    FOCUSED_GAZE                            = 198006,
    TRAMPLING_SLAM                          = 199237,
    BARRELING_IMPACT                        = 198109,
    MOMENTUM                                = 198108,
    BLOOD_FRENZY                            = 198388,
    ECHOING_DISCHORD                        = 198392,
    OVERWHELM                               = 197943,
    REND_FLESH                              = 197942,
    REND_FLESH_2                            = 204859,
    ROARING_CACOPHONY                       = 197969
};

enum Phases
{
    PHASE_ONE                               = 1
};

struct boss_ursoc : public ScriptedAI
{
    boss_ursoc(Creature* creature) : ScriptedAI(creature), Summons(me) { }

    void Initialize() { };

    void Reset() override
    {
        _events.Reset();
        me->CombatStop(true);
    }

    void EnterCombat(Unit* /*who*/) override
    {
        Talk(SAY_AGGRO);
        instance->SetBossState(DATA_URSOC, IN_PROGRESS);

        _events.SetPhase(PHASE_ONE);
        _events.ScheduleEvent(EVENT_BERSERK, 300s);
        _events.ScheduleEvent(EVENT_FOCUSED_GAZE, 15s);
        _events.ScheduleEvent(EVENT_MOMENTUM, 20s);
        _events.ScheduleEvent(EVENT_OVERWHELM, 35s);
        _events.ScheduleEvent(EVENT_REND_FLESH, 30s);
        _events.ScheduleEvent(EVENT_REND_FLESH_2, 30s);
        _events.ScheduleEvent(EVENT_ECHOING_DISCHORD, 40s);
        _events.ScheduleEvent(EVENT_ROARING_CACOPHONY, 45s);
    }

    void DamageTaken(Unit* /*attacker*/, uint32& damage) override
    {
        if (me->HealthBelowPctDamaged(31, damage) && _events.IsInPhase(PHASE_ONE))
        {
            _events.ScheduleEvent(EVENT_BLOOD_FRENZY, 1s);
        }
    }

    void JustReachedHome() override
    {
        Talk(SAY_WIPE);
        instance->SetBossState(DATA_URSOC, FAIL);
    }

    void KilledUnit(Unit* victim) override
    {
        if (victim->GetTypeId() == TYPEID_PLAYER)
            Talk(SAY_KILL);
    }

    void JustDied(Unit* /*killer*/) override
    {
        Talk(SAY_DEATH);
        instance->SetBossState(DATA_URSOC, DONE);
    }

    void SpellHitTarget(Unit* target, const SpellInfo* spell) override
    {
        if (spell->Id == REND_FLESH)
        {
            target->RemoveAurasDueToSpell(REND_FLESH);
            target->RemoveAurasDueToSpell(REND_FLESH_2);
        }
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
                case EVENT_FOCUSED_GAZE:
                    Talk (SAY_FOCUSED_GAZE);

                    if (Unit* target = SelectTarget(SELECT_TARGET_FARTHEST))
                        me->CastSpell(target, FOCUSED_GAZE, true);
                    _events.ScheduleEvent(EVENT_FOCUSED_GAZE, 40s);
                    break;

                case EVENT_BLOOD_FRENZY:
                    me->AddAura(BLOOD_FRENZY, me);
                    break;

                case EVENT_MOMENTUM:
                    if (Unit* target = SelectTarget(SELECT_TARGET_FARTHEST, 0, 1000.0f, true))
                        me->CastSpell(target, MOMENTUM, true);
                    _events.ScheduleEvent(EVENT_MOMENTUM, 40s);
                    break;

                case EVENT_OVERWHELM:
                    if (Unit* target = SelectTarget(SELECT_TARGET_TOPAGGRO, 0, 1000.0f, true))
                        me->CastSpell(target, OVERWHELM, true);
                    _events.ScheduleEvent(EVENT_OVERWHELM, 40s);
                    break;

                case EVENT_REND_FLESH:                
                    if (Unit* target = SelectTarget(SELECT_TARGET_TOPAGGRO, 0, 1000.0f, true))
                        me->CastSpell(target, REND_FLESH, true);
                    _events.ScheduleEvent(EVENT_REND_FLESH, 50s);
                    break;

                case EVENT_REND_FLESH_2:
                    if (Unit* target = SelectTarget(SELECT_TARGET_TOPAGGRO, 0, 1000.0f, true))
                        me->CastSpell(target, REND_FLESH_2, true);
                    _events.ScheduleEvent(EVENT_REND_FLESH_2, 50s);
                    break;

                case EVENT_ECHOING_DISCHORD:
                    DoCastAOE(ECHOING_DISCHORD, true);
                    _events.ScheduleEvent(EVENT_ECHOING_DISCHORD, 55s);
                    break;

                case EVENT_ROARING_CACOPHONY:
                    DoCastAOE(ROARING_CACOPHONY, true);
                    _events.ScheduleEvent(EVENT_ROARING_CACOPHONY, 45s);
                    break;

                case EVENT_BERSERK:
                    me->AddAura(BERSERK, me);
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

void AddSC_boss_ursoc()
{
    RegisterCreatureAI(boss_ursoc);
}
