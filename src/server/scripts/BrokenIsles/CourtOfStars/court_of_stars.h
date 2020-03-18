#ifndef COURTOFSTARS_H_
#define COURTOFSTARS_H_

#include "Map.h"
#include "Creature.h"
#include "ObjectMgr.h"

#define COSScriptName "instance_court_of_stars"
#define DataHeader "COS"

constexpr uint32 EncounterCount = 3;

enum COSDataTypes
{
    // Encounter States // Boss GUIDs
    DATA_PATROL_CAPTAIN_GERDO       = 0,
    DATA_TALIXAE_FLAMEWREATH        = 1,
    DATA_ADVISOR_MELANDRUS          = 2,

    DATA_FLASK_OF_THE_SOLEMN_NIGHT  = 3,

};

enum COSCreatureIds
{
    BOSS_PATROL_CAPTAIN_GERDO       = 104215,
    BOSS_TALIXAE_FLAMEWREATH        = 104217,
    BOSS_ADVISOR_MELANDRUS          = 104218,

    NPC_STREETSWEEPER               = 110403,
    NPC_ARCANE_BEACON               = 104245,
    NPC_VIGILANT_DUSKWATCH          = 104918,
    NPC_RESONANT_STALKER            = 104384,
    NPC_FLASK_OF_THE_SOLEMN_NIGHT   = 105117,

    NPC_BAALGAR                     = 104274,
    NPC_JAZSHARIU                   = 104273,
    NPC_IMACUTYA                    = 104275,
    NPC_FELBOUND_ENFORCER           = 104278,
};

template<class AI>
inline AI* GetCourtofStarsAI(Creature* creature)
{
    return GetInstanceAI<AI>(creature, COSScriptName);
}

#endif // COURTOFSTARS_H_