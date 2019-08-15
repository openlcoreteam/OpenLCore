/*
 * Copyright (C) 2017-2018 AshamaneProject <https://github.com/AshamaneProject>
 * Copyright (C) 2008-2017 TrinityCore <http://www.trinitycore.org/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "Player.h"
#include "ObjectMgr.h"
#include "GameObject.h"
#include "ScriptedGossip.h"
#include "ScriptedEscortAI.h"
#include "QuestPackets.h"
#include "ScenePackets.h"
#include "GameObjectAI.h"
#include "ObjectAccessor.h"
#include "SpellAuras.h"
#include "SpellScript.h"
#include "SpellAuraEffects.h"
#include "SpellHistory.h"
#include "WaypointManager.h"
#include "MotionMaster.h"
#include "PhasingHandler.h"
#include "SpellInfo.h"

class scene_azsuna_runes : public SceneScript
{
public:
    scene_azsuna_runes() : SceneScript("scene_azsuna_runes") { }

    // Called when a player receive trigger from scene
    void OnSceneTriggerEvent(Player* player, uint32 /*sceneInstanceID*/, SceneTemplate const* sceneTemplate, std::string const& triggerName) override
    {
        if (triggerName == "Credit")
        {
            uint32 killCreditEntry = 0;

            switch (sceneTemplate->ScenePackageId)
            {
                case 1378: //Azsuna - Academy - Runes A(Arcane, Quest) - PRK
                case 1695: //Azsuna - Academy - Runes D(Arcane: Sophomore) - PRK
                case 1696: //Azsuna - Academy - Runes E(Arcane: Junior) - PRK
                case 1697: //Azsuna - Academy - Runes F(Arcane: Senior) - PRK
                    killCreditEntry = 89655;
                    break;
                case 1379: //Azsuna - Academy - Runes B(Fire, Quest) - PRK
                case 1698: //Azsuna - Academy - Runes G(Fire: Freshman) - PRK
                case 1699: //Azsuna - Academy - Runes H(Fire: Junior) - PRK
                case 1700: //Azsuna - Academy - Runes I(Fire: Senior) - PRK
                    killCreditEntry = 89656;
                    break;
                case 1380: //Azsuna - Academy - Runes C(Frost, Quest) - PRK
                case 1701: //Azsuna - Academy - Runes J(Frost: Freshman) - PRK
                case 1702: //Azsuna - Academy - Runes K(Frost: Junior) - PRK
                case 1703: //Azsuna - Academy - Runes L(Frost: Senior) - PRK
                    killCreditEntry = 89657;
                    break;
            }

            if (killCreditEntry)
                player->KilledMonsterCredit(killCreditEntry);
        }
    }

    void OnSceneComplete(Player* player, uint32 /*sceneInstanceID*/, SceneTemplate const* sceneTemplate) override
    {
        uint32 nextSceneSpellId = 0;

        switch (sceneTemplate->ScenePackageId)
        {
            case 1378: nextSceneSpellId = 223283; break; //Azsuna - Academy - Runes A(Arcane, Quest) - PRK, next : fire quest
            case 1379: nextSceneSpellId = 223287; break; //Azsuna - Academy - Runes B(Fire, Quest) - PRK, next : frost quest
            default:
            case 1695: //Azsuna - Academy - Runes D(Arcane: Sophomore) - PRK
            case 1696: //Azsuna - Academy - Runes E(Arcane: Junior) - PRK
            case 1697: //Azsuna - Academy - Runes F(Arcane: Senior) - PRK
            case 1698: //Azsuna - Academy - Runes G(Fire: Freshman) - PRK
            case 1699: //Azsuna - Academy - Runes H(Fire: Junior) - PRK
            case 1700: //Azsuna - Academy - Runes I(Fire: Senior) - PRK
            case 1380: //Azsuna - Academy - Runes C(Frost, Quest) - PRK
            case 1701: //Azsuna - Academy - Runes J(Frost: Freshman) - PRK
            case 1702: //Azsuna - Academy - Runes K(Frost: Junior) - PRK
            case 1703: //Azsuna - Academy - Runes L(Frost: Senior) - PRK
                break;
        }

        if (nextSceneSpellId)
            player->CastSpell(player, nextSceneSpellId, true);
    }
};

struct questnpc_soul_gem : public ScriptedAI
{
    questnpc_soul_gem(Creature* creature) : ScriptedAI(creature) { }

    void Reset() override
    {
        CheckForDeadDemons(me);
    }

    void CheckForDeadDemons(Creature* creature)
    {
        if (!creature->GetOwner() || !creature->GetOwner()->IsPlayer())
            return;

        std::list<Creature*> targets = creature->FindAllCreaturesInRange(15.0f);
        Player* owner = creature->GetOwner()->ToPlayer();

        for (Creature* target : targets)
        {
            if(!target->IsAlive())
            { 
                switch (target->GetEntry())
                {
                    case 90230:
                    case 90241:
                    case 93556:
                    case 93619:
                    case 101943:
                    case 103180:
                        target->DespawnOrUnsummon();
                        owner->KilledMonsterCredit(90298);
                        break;
                    default:
                        break;
                }
            }
        }
    }
};

enum eManaDrainedWhelpling
{
    NPC_AZUREWING_WHELPLING = 90336
};

// 90167
struct questnpc_mana_drained_whelpling : public ScriptedAI
{
    questnpc_mana_drained_whelpling(Creature* creature) : ScriptedAI(creature) { }

    void OnSpellClick(Unit* /*clicker*/, bool& /*result*/) override
    {
        me->GetScheduler().Schedule(1s, [](TaskContext context)
        {
            Creature* crea = GetContextCreature();
            crea->UpdateEntry(NPC_AZUREWING_WHELPLING);
            crea->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            crea->SetByteValue(UNIT_FIELD_BYTES_1, UNIT_BYTES_1_OFFSET_STAND_STATE, 0);
        });

        me->GetScheduler().Schedule(3s, [](TaskContext context)
        {
            GetContextCreature()->SetCanFly(true);
            GetContextCreature()->GetMotionMaster()->MoveTakeoff(0, Position(1162.338135f, 6816.301270f, 236.106567f));
        });

        me->GetScheduler().Schedule(10s, [](TaskContext context)
        {
            GetContextCreature()->DisappearAndDie();
        });
    }
};

const Position PrinceFarondisWaypoints[45] =
{
    { -139.941f, 6418.82f, 27.5658f, 4.11514f },
    { -120.835f, 6406.78f, 27.8503f, 0.0f },
    { -120.335f, 6402.53f, 27.8503f, 0.0f },
    { -122.835f, 6399.28f, 27.8503f, 0.0f },
    { -125.335f, 6391.53f, 27.8503f, 0.0f },
    { -123.085f, 6385.03f, 23.1003f, 0.0f },
    { -118.085f, 6382.03f, 18.8503f, 0.0f },
    { -109.085f, 6379.53f, 13.3503f, 0.0f },
    { -101.335f, 6382.53f, 7.6003f, 0.0f },
    { -100.444f, 6386.17f, 6.83712f, 0.0f },
    { -100.444f, 6386.17f, 6.83712f, 2.07324f },
    { -95.8294f, 6388.88f, 7.26227f, 0.0f },
    { -94.8294f, 6389.63f, 7.26227f, 0.0f },
    { -93.3294f, 6390.38f, 7.01227f, 0.0f },
    { -93.0794f, 6390.88f, 7.01227f, 0.0f },
    { -89.0794f, 6390.38f, 5.01227f, 0.0f },
    { -87.8294f, 6390.13f, 4.51227f, 0.0f },
    { -86.5794f, 6390.13f, 3.76227f, 0.0f },
    { -86.3717f, 6390.11f, 3.89118f, 0.0f },
    { -85.8717f, 6390.11f, 3.64118f, 0.0f },
    { -84.8717f, 6389.86f, 2.89118f, 0.0f },
    { -80.3717f, 6388.86f, 2.64118f, 0.0f },
    { -77.1217f, 6389.61f, 2.39118f, 0.0f },
    { -75.1217f, 6389.61f, 2.14118f, 0.0f },
    { -72.8843f, 6386.12f, 1.87715f, 0.0f },
    { -69.7899f, 6380.26f, 1.26035f, 5.40096f },
    { -69.7899f, 6380.26f, 1.26035f, 5.69111f },
    { -69.7899f, 6380.26f, 1.26035f, 5.5598f },
    { -70.8134f, 6374.45f, 1.88123f, 0.0f },
    { -76.7876f, 6324.35f, 2.20502f, 0.0f },
    { -77.9117f, 6303.3f, 1.67607f, 0.0f },
    { -78.1617f, 6297.3f, 0.926067f, 0.0f },
    { -78.4117f, 6293.3f, 0.676067f, 0.0f },
    { -79.8264f, 6279.31f, 1.2063f, 0.0f },
    { -72.6649f, 6266.31f, 3.10757f, 0.0f },
    { -70.3085f, 6262.07f, 3.71657f, 0.0f },
    { -57.191f, 6253.5f, 3.63329f, 0.0f },
    { -55.302f, 6254.65f, 3.8715f, 0.0f },
    { -53.552f, 6255.4f, 4.3715f, 0.0f },
    { -47.552f, 6258.15f, 6.8715f, 0.0f },
    { -46.302f, 6258.65f, 7.1215f, 0.0f },
    { -46.4121f, 6258.42f, 7.22652f, 0.0f },
    { -45.4121f, 6258.67f, 7.47652f, 0.0f },
    { -43.1621f, 6259.42f, 8.22652f, 0.0f },
    { -40.4149f, 6260.48f, 8.81002f, 0.0f },
};

enum PrinceEvents
{
    EVENT_FIREBALL,
    EVENT_METEOR_STORM,
    EVENT_WAYPOINT_REACHED,
};

enum PrinceCreatures
{
    NPC_PRINCE_FARONDIS = 88889,
    NPC_DROWNED_MAGISTER = 87368,
    NPC_UNBREATHING_SOUL = 87369,
};

enum PrinceSpells
{
    SPELL_FIREBALL = 178784,
    SPELL_METEOR_STORM = 179215,
};

class npc_prince_farondis : public CreatureScript
{
public:
    npc_prince_farondis() : CreatureScript("npc_prince_farondis") { }

    bool OnGossipHello(Player* player, Creature* creature) override
    {
        if (creature->IsQuestGiver())
            player->PrepareQuestMenu(creature->GetGUID());

        if (player->GetQuestStatus(37467) == QUEST_STATUS_INCOMPLETE) // The Walk of Shame
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, "Please, show me where the Tidestone lies.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

        SendGossipMenuFor(player, 26247, creature->GetGUID());

        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action) override
    {
        ClearGossipMenuFor(player);

        switch (action)
        {
        case GOSSIP_ACTION_INFO_DEF + 1:
            if (Creature* prince = creature->SummonCreature(NPC_PRINCE_FARONDIS, 0.0f, 0.0f, 0.0f, 0.0f, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 300000))
            {
                PhasingHandler::AddPhase(prince, 174, true);
                PhasingHandler::AddPhase(player, 174, true);
            }
            break;
        }

        return true;
    }
};

// 88889 - Prince Farondis
class npc_prince_farondis_escort : public CreatureScript
{
public:
    npc_prince_farondis_escort() : CreatureScript("npc_prince_farondis_escort") { }

    struct npc_prince_farondis_escortAI : public ScriptedAI
    {
        npc_prince_farondis_escortAI(Creature* creature) : ScriptedAI(creature) {}

        bool paused;
        uint8 count;
        bool wp_reached;
        ObjectGuid targetGuid;
        ObjectGuid targetGuid2;
        ObjectGuid playerGuid;

        void Reset() override
        {
            paused = false;
            count = 0;
            wp_reached = false;
            targetGuid = ObjectGuid::Empty;
            targetGuid2 = ObjectGuid::Empty;
            playerGuid = ObjectGuid::Empty;
        }

        void IsSummonedBy(Unit* /*me*/) override
        {
            wp_reached = false;
            me->SetWalk(false);
            me->GetMotionMaster()->MovePoint(count, PrinceFarondisWaypoints[count]);
            me->SetSpeedRate(MOVE_RUN, 1.0f);
            events.ScheduleEvent(EVENT_WAYPOINT_REACHED, 1000);
            if (Player* player = me->SelectNearestPlayer(10.0f))
                playerGuid = player->GetGUID();
        }

        void MovementInform(uint32 type, uint32 id)
        {
            if (type != POINT_MOTION_TYPE || id != count || paused)
                return;

            switch (id)
            {
            case 0:
                Talk(0);
                break;

            case 10:
                if (Creature* summon = me->SummonCreature(NPC_DROWNED_MAGISTER, -120.073f, 6400.717f, 6.92f, 5.64f, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 10000))
                {
                    EnterCombat(summon);
                    me->SetInCombatWith(summon);
                    summon->SetMaxHealth(1009570);
                    summon->SetHealth(1009570);
                    summon->setFaction(14);
                    me->AI()->AttackStart(summon);
                    summon->GetMotionMaster()->MoveChase(me, 20.0f, summon->GetOrientation());
                    targetGuid = summon->GetGUID();
                    summon->Say("Farondis! You traitor! You brought this upon us!", LANG_UNIVERSAL);
                    me->GetMotionMaster()->Clear();
                    me->SetFacingToObject(summon, true);
                }
                break;

            case 11:
                Talk(1);
                break;

            case 26:
                if (Creature* summon = me->SummonCreature(NPC_UNBREATHING_SOUL, -63.1638f, 6379.03f, 1.200768f, 0.0f, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 10000))
                {
                    EnterCombat(summon);
                    me->SetInCombatWith(summon);
                    summon->SetMaxHealth(1196528);
                    summon->SetHealth(1196528);
                    summon->setFaction(14);
                    me->AI()->AttackStart(summon);
                    summon->GetMotionMaster()->MoveChase(me, 20.0f, summon->GetOrientation());
                    targetGuid2 = summon->GetGUID();
                    summon->Yell("DIE... FARONDIS....", LANG_UNIVERSAL);
                    me->GetMotionMaster()->Clear();
                    me->SetFacingToObject(summon, true);
                }
                break;

            case 44:
                Talk(2);
                if (Player* player = ObjectAccessor::GetPlayer(*me, playerGuid))
                {
                    player->KilledMonsterCredit(88746, ObjectGuid::Empty);
                    PhasingHandler::AddPhase(player, 174, true);
                    PhasingHandler::AddPhase(player, 169, true);
                }

                me->DespawnOrUnsummon();
                break;

            default:
                break;
            }

            if (id < 45)
            {
                if (!paused)
                {
                    ++count;
                    wp_reached = true;
                }
            }
        }

        void EnterCombat(Unit* /*who*/) override
        {
            if (!paused)
            {
                events.ScheduleEvent(EVENT_FIREBALL, 1000);
                events.ScheduleEvent(EVENT_METEOR_STORM, 12000);
                paused = true;
            }
        }

        void UpdateAI(uint32 diff) override
        {
            events.Update(diff);

            switch (events.ExecuteEvent())
            {
            case EVENT_FIREBALL:
            {
                if (Unit* target = me->GetVictim())
                    me->CastSpell(target, SPELL_FIREBALL, true);

                events.ScheduleEvent(EVENT_FIREBALL, 5000);
                break;
            }

            case EVENT_METEOR_STORM:
            {
                if (Unit* target = me->GetVictim())
                    me->CastSpell(target, SPELL_METEOR_STORM, true);

                me->GetSpellHistory()->ResetAllCooldowns();
                events.ScheduleEvent(EVENT_METEOR_STORM, 2000);
                break;
            }

            case EVENT_WAYPOINT_REACHED:
            {
                if (targetGuid != ObjectGuid::Empty)
                {
                    if (Unit* target = ObjectAccessor::GetUnit(*me, targetGuid))
                    {
                        if (!target->IsAlive() && paused)
                        {
                            events.CancelEvent(EVENT_FIREBALL);
                            events.CancelEvent(EVENT_METEOR_STORM);
                            ++count;
                            paused = false;
                            wp_reached = true;
                            targetGuid = ObjectGuid::Empty;
                        }
                    }
                }

                if (targetGuid2 != ObjectGuid::Empty)
                {
                    if (Unit* target = ObjectAccessor::GetUnit(*me, targetGuid2))
                    {
                        if (!target->IsAlive() && paused)
                        {
                            events.CancelEvent(EVENT_FIREBALL);
                            events.CancelEvent(EVENT_METEOR_STORM);
                            ++count;
                            paused = false;
                            wp_reached = true;
                            targetGuid2 = ObjectGuid::Empty;
                        }
                    }
                }

                if (wp_reached && !paused)
                {
                    me->GetMotionMaster()->MovePoint(count, PrinceFarondisWaypoints[count]);
                    wp_reached = false;
                    me->SetWalk(false);
                    me->SetSpeedRate(MOVE_RUN, 1.0f);
                }

                events.ScheduleEvent(EVENT_WAYPOINT_REACHED, 1000);
                break;
            }
            }

            DoMeleeAttackIfReady();
        }

    protected:
        EventMap events;
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_prince_farondis_escortAI(creature);
    }
};

// 250361
class go_sabotaged_portal_stabilizer : public GameObjectScript
{
public:
    go_sabotaged_portal_stabilizer() : GameObjectScript("go_sabotaged_portal_stabilizer") { }

    bool OnGossipHello(Player* player, GameObject* go) override
    {
        player->CastSpell(go, 6478, true);
        player->KillCreditGO(250361, go->GetGUID());

        return true;
    }
};

// 214482 - Radiant Ley Crystal
class spell_gen_radiant_ley_crystal : public SpellScriptLoader
{
public:
    spell_gen_radiant_ley_crystal() : SpellScriptLoader("spell_gen_radiant_ley_crystal") { }

    class spell_gen_radiant_ley_crystal_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_gen_radiant_ley_crystal_SpellScript);

        SpellCastResult CheckRequirement()
        {
            if (Unit* caster = GetCaster())
            {
                if (Unit* target = ObjectAccessor::GetUnit(*caster, GetCaster()->GetTarget()))
                {
                    if (target->GetTypeId() == TYPEID_UNIT)
                    {
                        switch (target->GetEntry())
                        {
                        case 107961:
                            caster->ToPlayer()->KilledMonsterCredit(107961, ObjectGuid::Empty);
                            return SPELL_CAST_OK;
                        case 107962:
                            caster->ToPlayer()->KilledMonsterCredit(107962, ObjectGuid::Empty);
                            return SPELL_CAST_OK;
                        case 107963:
                            caster->ToPlayer()->KilledMonsterCredit(107963, ObjectGuid::Empty);
                            return SPELL_CAST_OK;
                        case 107964:
                            caster->ToPlayer()->KilledMonsterCredit(107964, ObjectGuid::Empty);
                            return SPELL_CAST_OK;
                        default:
                            return SPELL_FAILED_CANT_DO_THAT_RIGHT_NOW;
                        }
                    }
                }
            }

            return SPELL_FAILED_CANT_DO_THAT_RIGHT_NOW;
        }

        void Register() override
        {
            OnCheckCast += SpellCheckCastFn(spell_gen_radiant_ley_crystal_SpellScript::CheckRequirement);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_gen_radiant_ley_crystal_SpellScript();
    }
};

// 211546 - Word of Versatility
class spell_word_of_versatility : public SpellScriptLoader
{
public:
    spell_word_of_versatility() : SpellScriptLoader("spell_word_of_versatility") {}

    class spell_word_of_versatility_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_word_of_versatility_SpellScript);

        void HandleDummy(SpellEffIndex /*effIndex*/)
        {
            if (Unit* caster = GetCaster())
                if (Unit* target = GetHitUnit())
                    if (target->GetTypeId() == TYPEID_UNIT)
                        switch (target->GetEntry())
                        {
                        case 89278:
                        case 89969:
                            caster->ToPlayer()->KilledMonsterCredit(106642, ObjectGuid::Empty);
                            break;
                        default:
                            break;
                        }
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_word_of_versatility_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_APPLY_AURA);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_word_of_versatility_SpellScript();
    }
};

void AddSC_azsuna()
{
    new scene_azsuna_runes();
    RegisterCreatureAI(questnpc_soul_gem);
    RegisterCreatureAI(questnpc_mana_drained_whelpling);
    new npc_prince_farondis();
    new npc_prince_farondis_escort();
    new spell_word_of_versatility();
    new go_sabotaged_portal_stabilizer();
    new spell_gen_radiant_ley_crystal();
}
