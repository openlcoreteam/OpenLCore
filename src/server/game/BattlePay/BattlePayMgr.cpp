#include "BattlePayMgr.hpp"

void BattlePayMgr::LoadFromDatabase(bool p_Reload)
{
    if (p_Reload)
    {
        m_Displays.clear();
        m_Products.clear();
        m_Groups.clear();
        m_ShopEntries.clear();
    }

    LoadDisplays();
    LoadProducts();
    LoadGroups();
    LoadShopEntries();
}

void BattlePayMgr::LoadDisplays()
{
    QueryResult l_Result = WorldDatabase.Query("SELECT  `ID`,  `CreatureDisplayInfoID`,  `FileDataID`,  `Flags`,  `Name1`,  `Name2`,  `Name3` FROM `battlepay_display_info`");

    if (!l_Result)
    {
        TC_LOG_INFO("server.loading", "No records in battlepay_display_info");
        return;
    }

    do
    {
        Field* l_Fields = l_Result->Fetch();

        JamBattlepayDisplayInfo l_Table;

        l_Table.CreatureDisplayInfoID = l_Fields[1].GetUInt32();
        l_Table.FileDataID = l_Fields[2].GetUInt32();
        l_Table.FileDataID = l_Fields[3].GetUInt32();
        l_Table.Flags = l_Fields[4].GetUInt32();

        l_Table.Name1 = l_Fields[5].GetString();
        l_Table.Name2 = l_Fields[6].GetString();
        l_Table.Name3 = l_Fields[7].GetString();

        m_Displays[l_Fields[0].GetUInt32()] = l_Table;

    } while (l_Result->NextRow());
}

void BattlePayMgr::LoadProducts()
{
}

void BattlePayMgr::LoadGroups()
{
}

void BattlePayMgr::LoadShopEntries()
{
}
