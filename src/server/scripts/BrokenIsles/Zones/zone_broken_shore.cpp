#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "Player.h"
#include "ObjectMgr.h"

//world quest 46236/[stonebound-soldiers]
struct npc_legionfall_soldier_119141 : public ScriptedAI
{
    npc_legionfall_soldier_119141(Creature* creature) : ScriptedAI(creature) { }

    void OnSpellClick(Unit* clicker, bool& /*result*/)
    {
        if (Player* player = clicker->ToPlayer())
        {
            if (player->GetQuestStatus(46236) == QUEST_STATUS_INCOMPLETE)
            {
                me->RemoveAurasDueToSpell(236514);
                me->AI()->Talk(urand(0, 2));
                player->KilledMonsterCredit(me->GetEntry());
                me->GetMotionMaster()->MoveAwayAndDespawn(15.0f, 3000);
            }
        }
    }
};
//world quest 46821/[creepy-crawlies]
struct npc_bone_crawler_grub_116951 : public ScriptedAI
{
    npc_bone_crawler_grub_116951(Creature* creature) : ScriptedAI(creature) { }

    void MoveInLineOfSight(Unit* who) override
    {
        if (!who || !who->IsInWorld())
            return;
        if (!me->IsWithinDist(who, 3.0f, false))
            return;
        Player* player = who->GetCharmerOrOwnerPlayerOrPlayerItself();
        if (!player)
            return;
        if (player->HasQuest(46821))
        {
            player->KilledMonsterCredit(me->GetEntry());
            me->CastSpell(me, 37989, true);
        }
    }
};
//121302 121305 121312 121313 , ,120076
//QUEST 46499/[spiders-huh?] 46501/[grave-robbin] 46509/[tomb-raidering] 46510/Ship Graveyard 46511/[were-treasure-hunters] 46666/[the-motherlode]
struct npc_treasure_master_iksreeged_121302 : public ScriptedAI
{
    npc_treasure_master_iksreeged_121302(Creature* creature) : ScriptedAI(creature) { }

    void MoveInLineOfSight(Unit* who) override
    {
        if (!me->IsWithinDist(who, 15.0f, false))
            return;
        Player* player = who->GetCharmerOrOwnerPlayerOrPlayerItself();
        if (!player)
            return;
        ///HAVE MORE QUEST IN THE SAME CODE
        if ( player->HasQuest(46499)|| player->HasQuest(46501)|| player->HasQuest(46509) || player->HasQuest(46510))
        {
            //talk and runaway
            me->AI()->Talk(0);
            player->KilledMonsterCredit(me->GetEntry());
            me->GetMotionMaster()->MoveAwayAndDespawn(-15.0f, 3000);
        }
    }
};
//QUEST 46245 Begin Construction
struct npc_legionfall_construction_table_119305 : public ScriptedAI
{
    npc_legionfall_construction_table_119305(Creature* creature) : ScriptedAI(creature) { }

    void MoveInLineOfSight(Unit* who) override
    {
        if (!who || !who->IsInWorld())
            return;
        if (!me->IsWithinDist(who, 15.0f, false))
            return;
        Player* player = who->GetCharmerOrOwnerPlayerOrPlayerItself();
        if (!player)
            return;
        if (player->HasQuest(46245) )
            player->ForceCompleteQuest(46245);
    }

};


//fly 233134, 232728, 

void AddSC_broken_shore()
{
    RegisterCreatureAI(npc_legionfall_soldier_119141);
    RegisterCreatureAI(npc_bone_crawler_grub_116951);
    RegisterCreatureAI(npc_treasure_master_iksreeged_121302);

    RegisterCreatureAI(npc_legionfall_construction_table_119305);
}
