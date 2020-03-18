#ifndef DEF_EYE_OF_AZSHARA_H_
#define DEF_EYE_OF_AZSHARA_H_

#include "Map.h"
#include "Creature.h"
#include "ObjectMgr.h"

#define DataHeader "EOA"
#define EOAScriptName "instance_eye_of_azshara"

const uint32 encounterCount = 5;

enum EOADataTypes
{
    DATA_PARJESH            = 0,
    DATA_LADY_HATECOIL      = 1,
    DATA_SERPENTRIX         = 2,
    DATA_KING_DEEPBEARD     = 3,
    DATA_WRATH_OF_AZSHARA   = 4,

    DATA_LADY_INTRO         = 5,
    DATA_WRATH_INTRO        = 6,
    DATA_RITUAL_EVENT       = 7,
};

enum EOACreaturesIds
{
    BOSS_PARJESH            = 91784,
    BOSS_LADY_HATECOIL      = 91789,
    BOSS_SERPENTRIX         = 91797,
    BOSS_KING_DEEPBEARD     = 91808,
    BOSS_WRATH_OF_AZSHARA   = 96028,

    NPC_HATECOIL_ARCANIST   = 97171,

    NPC_RITUALIST_LESHA     = 100248,
    NPC_CHANNELER_VARISZ    = 100249,
    NPC_BINDER_ASHIOIS      = 100250,
    NPC_MYSTIC_SSAVEH       = 98173,
};

enum EOAGameObjectsIds
{
    GO_SAND_DUNE    = 244690,
    GO_WATER_DOOR   = 246983,
};

#endif