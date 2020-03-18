#ifndef TIMELESS_ISLE_H
#define TIMELESS_ISLE_H

#define CELESTIAL_COURT_BOSS_INTRO_TIMER_1 1000
#define CELESTIAL_COURT_BOSS_INTRO_TIMER_2 15000

#define MIDDLE_FACING_ANGLE 1.573f

enum eQuests
{
    QUEST_TIME_KEEPER_KAIROZ_H       = 33156,
    QUEST_TIME_KEEPER_KAIROZ_A       = 33160
};

enum eCreatures
{
    NPC_EMPEROR_SHAOHAO_TI           = 73303,

    NPC_PRINCE_ANDUIN                = 73061,
    NPC_KAIROZ                       = 72870
};

enum eBosses
{
    BOSS_CHI_JI                      = 71952,
    BOSS_NIUZAO                      = 71954,
    BOSS_YU_LON                      = 71955,
    BOSS_XUEN                        = 71953,
    BOSS_ORDOS                       = 72057
};

enum eFactions
{
    FACTION_FRIENDLY                 = 35,
    FACTION_HOSTILE_NEUTRAL          = 31
};

enum eActions
{
    ACTION_PRINCE_TALK_1             = 1,
    ACTION_PRINCE_TALK_2             = 2,
    ACTION_PRINCE_TALK_3             = 3,
    ACTION_PRINCE_TALK_4             = 4,
    ACTION_PRINCE_TALK_5             = 5,
    ACTION_KAIROZ_TALK_1             = 6,
    ACTION_KAIROZ_TALK_2             = 7,
    ACTION_KAIROZ_TALK_3             = 8,
    ACTION_KAIROZ_TALK_4             = 9,
    ACTION_KAIROZ_TALK_5             = 10,
    ACTION_CONVERSATION              = 11
};

enum eEvents
{
    EVENT_PRINCE_TALK_1              = 1,
    EVENT_PRINCE_TALK_2              = 2,
    EVENT_PRINCE_TALK_3              = 3,
    EVENT_PRINCE_TALK_4              = 4,
    EVENT_PRINCE_TALK_5              = 5,
    EVENT_KAIROZ_TALK_1              = 6,
    EVENT_KAIROZ_TALK_2              = 7,
    EVENT_KAIROZ_TALK_3              = 8,
    EVENT_KAIROZ_TALK_4              = 9,
    EVENT_KAIROZ_TALK_5              = 10
};

enum EmperorActions
{
    ACTION_XUEN                      = 1,
    ACTION_CHIJI                     = 2,
    ACTION_NIUZAO                    = 3,
    ACTION_YULON                     = 4,
    ACTION_MOVE_TO_MIDDLE            = 100
};

enum EmperorTexts
{
    EMPEROR_TALK_INTRO_YULON,
    EMPEROR_TALK_INTRO_XUEN,
    EMPEROR_TALK_INTRO_CHIJI,
    EMPEROR_TALK_INTRO_NIUZAO,
    EMPEROR_TALK_OUTRO_YULON,
    EMPEROR_TALK_OUTRO_XUEN,
    EMPEROR_TALK_OUTRO_CHIJI,
    EMPEROR_TALK_OUTRO_NIUZAO,
    EMPEROR_TALK_INTRO
};

enum EmperorEvents
{
    EVENT_EMPEROR_ARRANGE_BOSS       = 1
};

static Position _timelessIsleMiddle = { -650.04f, -5016.84f, -6.27f, 1.573f };

#endif
