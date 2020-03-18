#pragma once

/// Common
#include "Common.h"
#include "Optional.h"

/// C++
#include <vector>

struct JamBattlepayDisplayInfoExtra
{
    int32 UnkInt204;
    int32 UnkInt208;
    std::string UnkString;
};

struct JamBattlepayDisplayInfo
{
    Optional<uint32> CreatureDisplayInfoID;          ///< Offset 0x0000 Type MakeMJVTblForOptional<unsignedint,&(MJVTBL_UINT32)>::MJVTBL
    Optional<uint32> FileDataID;                     ///< Offset 0x0008 Type MakeMJVTblForOptional<unsignedint,&(MJVTBL_UINT32)>::MJVTBL
    Optional<uint32> Flags;
    std::string      Name1;                          ///< Offset 0x0010 Type _MJVTBL_STRING
    std::string      Name2;                          ///< Offset 0x0211 Type _MJVTBL_STRING
    std::string      Name3;                          ///< Offset 0x0412 Type _MJVTBL_STRING
    std::string      Name4;                          ///< Offset 0x1413 Type _MJVTBL_STRING
    Optional<uint32> Unk2418;                        ///< Offset 0x2418 Type MakeMJVTblForOptional<unsignedint,&(MJVTBL_UINT32)>::MJVTBL
    Optional<uint32> Unk2420;                        ///< Offset 0x2420 Type MakeMJVTblForOptional<unsignedint,&(MJVTBL_UINT32)>::MJVTBL
    Optional<uint32> Unk2430;                        ///< Offset 0x2430 Type MakeMJVTblForOptional<unsignedint,&(MJVTBL_UINT32)>::MJVTBL
    Optional<uint32> Unk2428;                        ///< Offset 0x2428 Type MakeMJVTblForOptional<unsignedint,&(MJVTBL_UINT32)>::MJVTBL
    std::vector<JamBattlepayDisplayInfoExtra> Extra; ///< Offset 0x2438
};

struct JamBattlepayProductItem
{
    uint32                            ID;                                       ///< Offset 0x0000 Type _MJVTBL_UINT32
    uint32                            ItemID;                                   ///< Offset 0x0004 Type _MJVTBL_UINT32
    uint32                            Quantity;                                 ///< Offset 0x0008 Type _MJVTBL_UINT32
    Optional<JamBattlepayDisplayInfo> DisplayInfo;                              ///< Offset 0x000C Type MakeMJVTblForOptionalStruct<JamBattlepayDisplayInfo>::MJVTBL
    bool                              HasPet;                                   ///< Offset 0x142C Type _MJVTBL_BOOL
    Optional<uint32>                  PetResult;                                ///< Offset 0x1430 Type MakeMJVTblForOptional<BATTLEPETRESULT,&(MJVTBL_BATTLEPETRESULT)>::MJVTBL
    bool                              HasMount;                                 ///< Offset 0x1438 Type _MJVTBL_BOOL
};

struct JamBattlePayProduct
{
    uint32                               ProductID;                                   ///< Offset 0x0000 Type _MJVTBL_UINT32
    uint64                               NormalPriceFixedPoint;                       ///< Offset 0x0008 Type _MJVTBL_UINT64
    uint64                               CurrentPriceFixedPoint;                      ///< Offset 0x0010 Type _MJVTBL_UINT64
    std::vector<JamBattlepayProductItem> Items;                                       ///< Offset 0x0018 Type MakeMJVTblForArrayOfStruct<JamBattlepayProductItem>::MJVTBL
    uint8                                Type;                                        ///< Offset 0x0030 Type _MJVTBL_UINT8
    uint8                                ChoiceType;                                  ///< Offset 0x0031 Type _MJVTBL_UINT8
    uint32                               Flags;                                       ///< Offset 0x0034 Type _MJVTBL_UINT32
    Optional<JamBattlepayDisplayInfo>    DisplayInfo;                                 ///< Offset 0x0038 Type MakeMJVTblForOptionalStruct<JamBattlepayDisplayInfo>::MJVTBL
};

struct JamBattlePayProductGroup
{
    uint32      GroupID;               ///< Offset 0x0000 Type _MJVTBL_UINT32
    std::string Name;                  ///< Offset 0x0004 Type _MJVTBL_STRING
    int32       IconFileDataID;        ///< Offset 0x0104 Type _MJVTBL_INT32
    uint8       DisplayType;           ///< Offset 0x0108 Type _MJVTBL_UINT8
    int32       Ordering;              ///< Offset 0x010C Type _MJVTBL_INT32
};

struct JamBattlePayShopEntry
{

    uint32                            EntryID;                                  ///< Offset 0x0000 Type _MJVTBL_UINT32
    uint32                            GroupID;                                  ///< Offset 0x0004 Type _MJVTBL_UINT32
    uint32                            ProductID;                                ///< Offset 0x0008 Type _MJVTBL_UINT32
    int32                             Ordering;                                 ///< Offset 0x000C Type _MJVTBL_INT32
    uint32                            Flags;                                    ///< Offset 0x0010 Type _MJVTBL_UINT32
    uint8                             BannerType;                               ///< Offset 0x0014 Type _MJVTBL_UINT8
    Optional<JamBattlepayDisplayInfo> DisplayInfo;                              ///< Offset 0x0018 Type MakeMJVTblForOptionalStruct<JamBattlepayDisplayInfo>::MJVTBL
};

typedef std::vector<JamBattlePayProduct>      Products;                                     ///< Offset 0x0000 Type MakeMJVTblForArrayOfStruct<JamBattlePayProduct>::MJVTBL
typedef std::vector<JamBattlePayProductGroup> Groups;                                       ///< Offset 0x0020 Type MakeMJVTblForArrayOfStruct<JamBattlePayProductGroup>::MJVTBL
typedef std::vector<JamBattlePayShopEntry>    ShopEntries;                                  ///< Offset 0x0038 Type MakeMJVTblForArrayOfStruct<JamBattlePayShopEntry>::MJVTBL

typedef std::unordered_map<uint32, JamBattlepayDisplayInfo> Displays;

class BattlePayMgr
{
public:
    static BattlePayMgr* instance()
    {
        static BattlePayMgr l_Instance;
        return &l_Instance;
    }

    void LoadFromDatabase(bool p_Reload = false);

    const Products& GetProducts() const
    {
        return m_Products;
    }

    const Groups& GetGroups() const
    {
        return m_Groups;
    }

    const ShopEntries& GetShopEntries() const
    {
        return m_ShopEntries;
    }


private:
    void LoadDisplays();
    void LoadProducts();
    void LoadGroups();
    void LoadShopEntries();

    Displays m_Displays;
    Products m_Products;
    Groups m_Groups;
    ShopEntries m_ShopEntries;
};

#define sBattlePayMgr BattlePayMgr::instance()
