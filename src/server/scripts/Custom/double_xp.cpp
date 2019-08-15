#include "ScriptMgr.h"
#include "Player.h"
#include "Chat.h"
#include "World.h"
#include "boost/date_time.hpp"
#include "Config.h"

class double_xp : public PlayerScript
{
public:
    double_xp() : PlayerScript("double_xp") { }

    void OnGiveXP(Player* player, uint32& amount, Unit* victim) override
    {
        if (sConfigMgr->GetBoolDefault("Double.XP", true))
        {
            boost::gregorian::date date(boost::gregorian::day_clock::local_day());
            auto day = date.day_of_week();

            if (day == boost::date_time::Friday || day == boost::date_time::Saturday || day == boost::date_time::Sunday)
            {
                amount = amount * 2;
            }
        }
    }

    void OnLogin(Player* player, bool firstLogin)
    {
        if(sConfigMgr->GetBoolDefault("Double.XP", true))
        {
            boost::gregorian::date date(boost::gregorian::day_clock::local_day());
            auto day = date.day_of_week();

            if (day == boost::date_time::Friday || day == boost::date_time::Saturday || day == boost::date_time::Sunday)
            {
                ChatHandler(player->GetSession()).PSendSysMessage("Double XP is going on now!");
            }
        }
    }
};

void AddSC_double_xp()
{
    new double_xp();
}
