#include "ScriptedCreature.h"
#include "ObjectAccessor.h"
#include "ObjectMgr.h"
#include "SceneHelper.h"
#include "MotionMaster.h"

void SceneActionTalk::DoAction()
{
    if (Creature* actor = GetActor())
    {
        actor->AI()->Talk(talkIndex);
    }
}

void SceneActionWhisper::DoAction()
{
    if (Creature* actor = GetActor())
    {
        if (Player* player = GetPlayer())
            actor->AI()->Talk(talkIndex, player);
    }
}

void SceneActionSummon::DoAction()
{
    if (!GetActor())
        return;

    if (Map* map = GetActionMap())
    {
        map->SummonCreature(summonEntry, summonPosition);
    }
}

void SceneActionCast::DoAction()
{
    if (Creature* actor = GetActor())
    {
        actor->CastSpell(actor, spellEntry);
    }
}

void SceneActionAI::DoAction()
{
    if (Creature* actor = GetActor())
    {
        actor->AI()->DoAction(actionId);
    }
}

void SceneActionMovePos::DoAction()
{
    if (Creature* actor = GetActor())
    {
        actor->GetMotionMaster()->MovePoint(0, position);
    }
}

void SceneActionMovePath::DoAction()
{
    if (Creature* actor = GetActor())
    {
        actor->GetMotionMaster()->MovePath(pathId, false);
    }
}

void SceneActionCastTarget::DoAction()
{
    if (Creature* actor = GetActor())
    {
        if (target)
            actor->CastSpell(target, spellEntry, triggered);
    }
}

void SceneActionForceCast::DoAction()
{
    if (caster)
    {
        if (target)
            caster->CastSpell(target, spellEntry, triggered);
    }
}

void SceneActionKillCreditMonster::DoAction()
{
    if (Creature* actor = GetActor())
    {
        if (Player* player = GetPlayer())
        {
            for (int i = 0; i < amount; i++)
            {
                player->KilledMonsterCredit(creditEntry);
            }
        }
    }
}

void SceneActionEmote::DoAction()
{
    if (Creature* actor = GetActor())
    {
        actor->HandleEmoteCommand(emoteId);
    }
}

void SceneActionDespawn::DoAction()
{
    if (Creature* actor = GetActor())
    {
        actor->ForcedDespawn(despawnTime);
    }
}

void SceneActionFace::DoAction()
{
    if (Creature* actor = GetActor())
    {
        if (target)
            actor->SetFacingToObject(target);
    }
}

void SceneActionSetFlag::DoAction()
{
    if (Creature* actor = GetActor())
    {
        actor->SetFlag(index, newFlag);
    }
}

void SceneActionRemoveFlag::DoAction()
{
    if (Creature* actor = GetActor())
    {
        actor->RemoveFlag(index, oldFlag);
    }
}

void SceneActionSay::DoAction()
{
    if (Creature* actor = GetActor())
    {
        if (Player* player = GetPlayer())
            actor->Say(sayIndex, player);
        else
            actor->Say(sayIndex);
    }
}

void SceneActionYell::DoAction()
{
    if (Creature* actor = GetActor())
    {
        if (Player* player = GetPlayer())
            actor->Yell(yellIndex, player);
        else
            actor->Yell(yellIndex);
    }
}

void SceneActionSetPhase::DoAction()
{
    if (Creature* actor = GetActor())
    {
        PhasingHandler::AddPhase(actor, newPhase);
        if (Player* player = GetPlayer())
            PhasingHandler::AddPhase(player, newPhase);
    }
}

void SceneActionRemovePhase::DoAction()
{
    if (Creature* actor = GetActor())
    {
        PhasingHandler::RemovePhase(actor, oldPhase);
        if (Player* player = GetPlayer())
            PhasingHandler::RemovePhase(player, oldPhase);
    }
}
