#include "Config.h"
#include "World.h"
#include "LFGMgr.h"
#include "Chat.h"

class debug_lfg : public PlayerScript
{
public:
    debug_lfg() : PlayerScript("debug_lfg") { }

    void OnLogin(Player* player, bool /*loginFirst*/)
    {
        if (sConfigMgr->GetBoolDefault("Debug.LFG", true))
            if (!sLFGMgr->IsTesting())
                sLFGMgr->ToggleTesting();
    }
};

void AddSC_debug_lfg()
{
    new debug_lfg();
}
