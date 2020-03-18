#include "ScriptMgr.h"
#include "cathedral_of_eternal_night.h"

enum Spells
{
    SPELL_CARRION_SWARM = 233155,
    SPELL_DARK_SOLITUDE = 234817,
    SPELL_DEMONIC_UPHEAVAL = 233196,
    SPELL_SHADOW_FADE = 233206,
};

enum Events
{
    // Intro
    EVENT_INTRO = 1,
};

TalkData const talkData[] =
{
    { EVENT_ON_MOVEINLINEOFSIGHT,           EVENT_TYPE_TALK,            0 },
    { EVENT_ON_ENTERCOMBAT,                 EVENT_TYPE_TALK,            1 },
    { EVENT_ON_JUSTDIED,                    EVENT_TYPE_TALK,            2 },
};

EventData const eventData[] =
{
    { PHASE_01, PHASE_01, SPELL_CARRION_SWARM, 5000 },
    { PHASE_01, PHASE_01, SPELL_DARK_SOLITUDE, 5000 },
    { PHASE_01, PHASE_01, SPELL_DEMONIC_UPHEAVAL, 5000 },
    { PHASE_01, PHASE_01, SPELL_SHADOW_FADE, 5000 },
};

struct boss_mephistroth_coen : public BossAI
{
    boss_mephistroth_coen(Creature* creature) : BossAI(creature, DATA_MEPHISTROTH) { Initialize(); }

    void Initialize()
    {
        PhaseStatus = PHASE_00;
        SetDungeonEncounterID(2039);
        LoadEventData(eventData);
        LoadTalkData(talkData);
    }

    void ScheduleTasks() override
    {
        GetEventData(PHASE_01);
    }

    void ExecuteEvent(uint32 eventId) override
    {
        switch (eventId)
        {
        case SPELL_CARRION_SWARM:
        {
            DoCast(SPELL_CARRION_SWARM);
            events.Repeat(5s);
            break;
        }
        case SPELL_DARK_SOLITUDE:
        {
            DoCast(SPELL_DARK_SOLITUDE);
            events.Repeat(5s);
            break;
        }
        case SPELL_DEMONIC_UPHEAVAL:
        {
            DoCast(SPELL_DEMONIC_UPHEAVAL);
            events.Repeat(5s);
            break;
        }
        case SPELL_SHADOW_FADE:
        {
            DoCast(SPELL_SHADOW_FADE);
            events.Repeat(5s);
            break;
        }
        default:
            break;
        }
    }

    void MoveInLineOfSight(Unit* who) override
    {
        if (who->IsPlayer() && me->IsWithinDist(who, 25.0f, false) && PhaseStatus == PHASE_00)
        {
            PhaseStatus = PHASE_01;
            me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_IMMUNE_TO_PC);
            GetTalkData(EVENT_ON_MOVEINLINEOFSIGHT);
        }
    }

    void JustDied(Unit* attacker) override
    {
        BossAI::JustDied(attacker);

        //https://cn.wowhead.com/currency=1314/徘徊之魂碎片
        instance->DoModifyPlayerCurrencies(1314, 1);
    }
    
    uint8 PhaseStatus;
};

void AddSC_boss_mephistroth()
{
    RegisterCreatureAI(boss_mephistroth_coen);
}
