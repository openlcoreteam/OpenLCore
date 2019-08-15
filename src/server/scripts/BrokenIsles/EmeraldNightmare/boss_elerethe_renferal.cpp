// Initial work
// Emerald Nightmare - Elerethe Renferal 106087
// ScriptDev = 1/3 complete

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

enum Models
{
    SPIDER_FORM                             = 69474,
    ROC_FORM                                = 70237
};

enum Events
{
    EVENT_WEB_OF_PAIN                       = 1,
    EVENT_NECROTIC_VENOM                    = 2,
    EVENT_ROC_FORM                          = 3
};

enum Texts
{
    SAY_AGGRO                               = 0,
    SAY_WEB                                 = 1,
    SAY_FEEDING_TIME                        = 3,
    SAY_DEATH                               = 4,
    SAY_SPIDER                              = 5,
    SAY_KILL                                = 6,
    SAY_GATHERING_CLOUDS                    = 7,
    SAY_WIPE                                = 8
};

enum Spells
{
    BERSERK                                 = 26662,
    DARK_STORM                              = 210948,
    GATHERING_CLOUDS                        = 212707,
    NECROTIC_VENOM                          = 215443,
    RAKING_TALONS                           = 215582,
    RAKING_TALONS_2                         = 222037,
    RAZOR_WING                              = 210547,
    TWISTING_SHADOWS                        = 210864,
    VILE_AMBUSH                             = 214348,
    WEB_OF_PAIN                             = 215288
};

enum Phases
{
    PHASE_ONE                               = 1,
    PHASE_TWO                               = 2
};

struct boss_elerethe_renferal : public ScriptedAI
{
    boss_elerethe_renferal(Creature* creature) : ScriptedAI(creature), Summons(me) { }

    void Initialize() { };

    void Reset() override
    {
        _events.Reset();
        me->CombatStop(true);
        me->SetDisplayId(SPIDER_FORM);
    }

    void EnterCombat(Unit* /*who*/) override
    {
        Talk(SAY_AGGRO);

        _events.SetPhase(PHASE_ONE);
        _events.ScheduleEvent(EVENT_WEB_OF_PAIN, 10s);
        _events.ScheduleEvent(EVENT_NECROTIC_VENOM, 15s);
        _events.ScheduleEvent(EVENT_ROC_FORM, 60s);
    }

    void DamageTaken(Unit* /*attacker*/, uint32& damage) override
    {
        if (me->HealthBelowPctDamaged(30, damage) && _events.IsInPhase(PHASE_ONE)) { }
    }

    void JustReachedHome() override
    {
        Talk(SAY_WIPE);
        me->SetDisplayId(SPIDER_FORM);
    }

    void KilledUnit(Unit* victim) override
    {
        if (victim->GetTypeId() == TYPEID_PLAYER)
            Talk(SAY_KILL);
    }

    void JustDied(Unit* /*killer*/) override
    {
        Talk(SAY_DEATH);
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
                case EVENT_WEB_OF_PAIN:
                    Talk(SAY_WEB);

                    if (Unit* target = SelectTarget(SELECT_TARGET_TOPAGGRO, 0, 1000.0f, true))
                        me->CastSpell(target, WEB_OF_PAIN, true);
                    _events.ScheduleEvent(EVENT_WEB_OF_PAIN, 35s);
                    break;

                case EVENT_NECROTIC_VENOM:
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 1000.0f, true))
                        me->CastSpell(target, NECROTIC_VENOM, true);
                    _events.ScheduleEvent(EVENT_NECROTIC_VENOM, 35s);
                    break;

                case EVENT_ROC_FORM:
                    me->SetDisplayId(ROC_FORM);
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

void AddSC_elerethe_renferal()
{
    RegisterCreatureAI(boss_elerethe_renferal);
}
