/*=================
-- Gilneas Part 4
=================*/
-- Ring of Frost (44199)
UPDATE `creature_template` SET `InhabitType`=8 WHERE `entry`=44199;

-- Rampaging Worgen (34884) ***npc_rampaging_worgen_34884***
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=34884;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34884;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(34884, 0, 0, 1, 2, 0, 100, 1, 0, 30, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Rampaging Worgen - Between 0-30% Health - Cast Enrage"),
(34884, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Say Line 0"),
(34884, 0, 2, 0, 1, 0, 100, 0, 0, 0, 3000, 3000, 49, 0, 0, 0, 0, 0, 0, 11, 34916, 15, 0, 0, 0, 0, 0, "Rampaging Worgen - Attack Creature Gilneas City Guard");


-- Merchant Square Door (195327) ***go_merchant_square_door_195327***
UPDATE `gameobject_template` SET `Data0`=1944, `AIName`='SmartGameObjectAI', `VerifiedBuild`=25549 WHERE `entry`=195327;
UPDATE `gameobject_template_addon` SET `flags`=65540 WHERE `entry`=195327;

DELETE FROM `smart_scripts` WHERE `entryorguid`=195327;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(195327, 1, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 85, 67869, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Merchant Square Door - On Target Range - Player Cast on Self Knocking'),
(195327, 1, 1, 0, 64, 0, 100, 0, 0, 0, 0, 0, 33, 35830, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Merchant Square Door - On Gossip Hello - Quest Credit');


-- Terrain Swaps
DELETE FROM `terrain_swap_defaults` WHERE `TerrainSwapMap`= 655;
INSERT INTO `terrain_swap_defaults` (`MapId`, `TerrainSwapMap`, `Comment`) VALUES
(654, 655, 'Gilneas - Duskmist Shore Broken');


-- Terrain Swap Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`= 25 AND `SourceEntry` IN (655,638);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `NegativeCondition`, `Comment`) VALUES 
(25, 0, 638, 8, 14222, 1, 'Gilneas - Terrain Swap 638 - Inactive When Rewarded Quest 14222'),
(25, 0, 655, 8, 14386, 0, 'Gilneas - Terrain Swap 655 - Active When Rewarded Quest 14386');


-- Spellclick Conditions
DELETE FROM `conditions` WHERE `SourceGroup` IN (36287,36288,36289) AND `SourceTypeOrReferenceId`=18;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ScriptName`, `Comment`) VALUES
(18, 36287, 68597, 0, 0, 9, 0, 14368, 0, 0, 0, 0, '', 'Cynthia - Required Quest Active for Spellclick'),
(18, 36288, 68598, 0, 0, 9, 0, 14368, 0, 0, 0, 0, '', 'Ashley - Required Quest Active for Spellclick'),
(18, 36289, 68596, 0, 0, 9, 0, 14368, 0, 0, 0, 0, '', 'James - Required Quest Active for Spellclick');


-- Creatures Updates
UPDATE `creature_template` SET `InhabitType`=4, `flags_extra`=128 WHERE `entry` IN (36198,36449);
UPDATE `creature_template` SET `npcflag`= 16777216 WHERE `entry` IN (36287,36288,36289);
UPDATE `creature_template` SET `InhabitType`= 4 WHERE `entry`=36286;
UPDATE `creature_template` SET `unit_flags`=100 WHERE `entry`=36283;
UPDATE `creature` SET `spawntimesecs`= 30 WHERE `id` IN (36287,36288,36289);


-- Creature Text
DELETE FROM `creature_text` WHERE `CreatureID` IN (36330,36331,36332,36231,36287,36288,36289,36290,36291,36283);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `Comment`) VALUES
(36330, 0, 0, 'Give it up, Krennan. It\'s time to put this one down. It\'s protocol.', 12, 0, 100, 274, 0, 19635, 36336, 'Lord Godfrey to Player'),
(36331, 0, 0, 'I am not giving up on you. I don\'t have a cure for the Curse yet... but there are treatments. You will have control again.', 12, 0, 100, 274, 0, 20919, 36344, 'Krennan Aranas to Player'),
(36332, 0, 0, 'Tell me, Godfrey. Those that stayed in Gilneas City so that we could live. Were they following protocol?', 12, 0, 100, 1, 0, 19721, 36340, 'King Genn Greymane to Player'),
(36332, 1, 0, 'I didn\'t think so. Now hand me that potion, Krennan... and double the dosage.', 12, 0, 100, 1, 0, 19722, 36341, 'King Genn Greymane to Player'),
(36231, 0, 0, 'Barrel smell like gunpowder...', 12, 0, 100, 0, 0, 20909, 36311, 'Horrid Abomination - Keg Placed'),
(36231, 0, 1, 'GAH!!!! I CAN\'T SEE IN HERE!!!!', 12, 0, 100, 0, 0, 20908, 36310, 'Horrid Abomination - Keg Placed'),
(36231, 0, 2, 'Uh-oh... this gonna hurts me...', 12, 0, 100, 0, 0, 20911, 36313, 'Horrid Abomination - Keg Placed'),
(36231, 0, 3, 'This not be good...', 12, 0, 100, 0, 0, 20911, 36312, 'Horrid Abomination - Keg Placed'),
(36231, 0, 4, 'I gots bad feeling...', 12, 0, 100, 0, 0, 20911, 36314, 'Horrid Abomination - Keg Placed'),
(36287, 0, 0, 'You are scary! I just want my mommy!', 12, 0, 100, 0, 0, 0, 36325, 'Cynthia to Player'),
(36288, 0, 0, 'Are you one of the good worgen, $g mister:ma\'am;? Did you see Cynthia hiding in the sheds outside?', 12, 0, 100, 0, 0, 0, 36326, 'Ashley to Player'),
(36289, 0, 0, 'Don\'t hurt me! I was just looking for my sisters! I think Ashley\'s inside that house!', 12, 0, 100, 0, 0, 0, 36324, 'James to Player'),
(36290, 0, 0, 'Hold your positions, men!', 14, 0, 100, 0, 0, 0, 36632, 'Lord Godfrey to Player'),
(36291, 0, 0, 'What\'s happening?!', 12, 0, 100, 430, 0, 0, 36633, 'Melinda Hammond to Player'),
(36283, 0, 0, 'You must return to the Duskmist Shore!', 42, 0, 100, 0, 0, 0, 50651, 'Forsaken Catapult to Player');


-- Waypoints
DELETE FROM `waypoints` WHERE `entry`=36330;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`) VALUES
(36330, 1, -1840.085, 2293.042, 42.53004),
(36330, 2, -1821.922, 2295.05, 42.17052);


-- Leader of the Pack (14386)
DELETE FROM `quest_template_addon` WHERE `ID`=14386;
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`) VALUES
(14386, 14369);

UPDATE `quest_template_addon` SET `ProvidedItemCount`='1' WHERE  `ID`=14386;


-- Black Gunpowder Keg (196403)
DELETE FROM `gameobject_template_addon` WHERE `entry`=196403;
INSERT INTO `gameobject_template_addon` (`entry`, `flags`) VALUES
(196403, 4);

UPDATE `gameobject_template_addon` SET `flags`=16 WHERE `entry` IN (196411,196404,206693,197333);


-- Krennan Aranas (36331) ***npc_krennan_aranas_36331***
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=36331;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (36331,3633100);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(36331, 0, 0, 1, 63, 0, 100, 0, 0, 0, 0, 0, 59, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Krennan Aranas - On Just Created - Set Walk"),
(36331, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, 3633100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Krennan Aranas - Actionlist"),
(36331, 0, 2, 0, 8, 0, 100, 0, 68638, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Krennan Aranas - On Spellhit - Despawn Instant"),
(3633100,9,0,0,0,0,100,0,1200,1200,0,0,69,0,0,0,0,0,0,8,0,0,0,-1819.53,2291.25,42.32689,0,"Krennan Aranas - Move to Pos"),
(3633100,9,1,0,0,0,100,0,5300,5300,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Krennan Aranas - Say Line 0"),
(3633100,9,2,0,0,0,100,0,4700,4700,0,0,11,68635,0,0,0,0,0,23,0,0,0,0,0,0,0,"Krennan Aranas - Cast Forcecast Summon Personal Godfrey"),
(3633100,9,3,0,0,0,100,0,8400,8400,0,0,11,68636,0,0,0,0,0,23,0,0,0,0,0,0,0,"Krennan Aranas - Cast Forcecast Summon Personal Greymane");


-- Horrid Abomination (36231)
UPDATE `creature` SET `MovementType`=1, `spawndist`=6 WHERE `id`=36231;


-- Lord Godfrey (36330)
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=36330;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (36330,3633000);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(36330, 0, 0, 0, 63, 0, 100, 0, 0, 0, 0, 0, 80, 3633000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lord Godfrey - On Just Created - Actionlist"),
(36330, 0, 1, 0, 8, 0, 100, 0, 68638, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lord Godfrey - On Spellhit - Despawn Instant"),
(3633000,9,0,0,0,0,100,0,1200,1200,0,0,53,0,36330,0,0,0,0,1,0,0,0,0,0,0,0,"Lord Godfrey - WP Start"),
(3633000,9,1,0,0,0,100,0,5300,5300,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lord Godfrey - Say Line 0");


-- King Genn Greymane (36332) ***npc_king_genn_greymane_36332***
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=36332;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (36332,3633200);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(36332, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 59, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "King Genn Greymane - On Just Summoned - Set Walk"),
(36332, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, 3633200, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "King Genn Greymane - Actionlist"),
(36332, 0, 2, 3, 20, 0, 100, 1, 0, 0, 0, 0, 28, 68630, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "King Genn Greymane - When Player Rewards Any Quest - Remove Aura Curse of the Worgen"),
(36332, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 68639, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "King Genn Greymane - Cast Forcecast Worgen Intro Completion"),
(36332, 0, 4, 0, 8, 0, 100, 0, 68638, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "King Genn Greymane - On Spellhit - Despawn Instant"),
(3633200,9,0,0,0,0,100,0,400,400,0,0,69,0,0,0,0,0,0,8,0,0,0,-1821.09,2292.597,42.23363,0,"King Genn Greymane - Move to Pos"),
(3633200,9,1,0,0,0,100,0,11000,11000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"King Genn Greymane - Say Line 0"),
(3633200,9,2,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,1.32645,"King Genn Greymane - Set Orientation"),
(3633200,9,3,0,0,0,100,0,9600,9600,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"King Genn Greymane - Say Line 1"),
(3633200,9,4,0,0,0,100,0,3600,3600,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.497787,"King Genn Greymane - Set Orientation"),
(3633200,9,5,0,0,0,100,0,0,0,0,0,81,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"King Genn Greymane - Set NPC Flag");


-- Slain Watchman (36205) ***npc_slain_watchman_36205***
UPDATE `creature_template` SET `flags_extra`=2, `unit_flags`=537166592, `AIName`="SmartAI" WHERE `entry`=36205;
DELETE FROM `smart_scripts` WHERE `entryorguid`=36205;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(36205, 0, 0, 0, 19, 0, 100, 0, 14321, 0, 0, 0, 11, 68492, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Slain Watchman - On Quest Accept - Cast Forcecast Summon Forsaken Assassin");


-- Creature Forsaken Assassin (36207)
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=36207;
DELETE FROM `smart_scripts` WHERE `entryorguid`=36207;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(36207, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Forsaken Assassin - On Just Summoned - Talk 0"),
(36207, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, "Forsaken Assassin - Attack Owner/Summoner"),
(36207, 0, 2, 0, 67, 0, 100, 0, 9000, 12000, 0, 0, 11, 75360, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Forsaken Assassin - On Behind Target - Cast Backstab");


-- Forsaken Invader (34511)
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=34511;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34511;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(34511, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 10000, 10000, 49, 0, 0, 0, 0, 0, 0, 19, 36211, 10, 0, 0, 0, 0, 0, "Forsaken Invader - Attack Creature Duskhaven Watchman");


-- Prince Liam Greymane (36140)
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=36140;
DELETE FROM `smart_scripts` WHERE `entryorguid`=36140;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(36140, 0, 0, 0, 8, 0, 100, 0, 68558, 0, 0, 0, 11, 68559, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Prince Liam Greymane - On Spellhit - Cast Shoot");


-- Forsaken Catapult (36283)
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=36283 AND `spell_id`=46598;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(36283, 46598, 0, 1);

DELETE FROM `vehicle_template_accessory` WHERE `entry` IN (36283);
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`) VALUES
(36283,36292,0,0,'Forsaken Catapult');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`= 18 AND `SourceGroup`= 36283;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(18, 36283, 46598, 0, 0, 31, 0, 3, 36292, 0, 0, 0, 0, '', 'Forsaken Catapult - Required Quest Active for Spellclick'),
(18, 36283, 69434, 0, 0, 31, 0, 4, 0, 0, 0, 0, 0, '', 'Forsaken Catapult - Required Quest Active for Spellclick');


-- Lord Godfrey (36290) ***npc_lord_godfrey_36290***
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=36290;
DELETE FROM `smart_scripts` WHERE `entryorguid`=36290;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(36290, 0, 0, 1, 20, 0, 100, 0, 14386, 0, 0, 0, 11, 69027, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Lord Godfrey - On Quest Reward - Cast Forcecast Cataclysm I"),
(36290, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lord Godfrey - Talk 0"),
(36290, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 84, 0, 0, 0, 0, 0, 0, 10, 107140, 0, 0, 0, 0, 0, 0, "Lord Godfrey - Creature Melinda Hammond 36291 Talk 0");


-- Forsaken Footsoldier (36236)
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=36236;
DELETE FROM `smart_scripts` WHERE `entryorguid`=36236;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(36236, 0, 0, 0, 1, 0, 100, 0, 0, 0, 6000, 6000, 49, 0, 0, 0, 0, 0, 0, 19, 36211, 10, 0, 0, 0, 0, 0, "Forsaken Footsoldier - Attack Creature Duskhaven Watchman");


-- Northgate Rebel
UPDATE `creature_template` SET `InhabitType`=9 WHERE `entry`=36057;


-- Duplicated Spawns
DELETE FROM `creature` WHERE  `guid` IN (223384,223611,223410,223423,223390,223393,223434,223442,223443,223441,223438,223445,223419,223451,223452,223596,223425,223595,223450);
DELETE FROM `creature_addon` WHERE  `guid` IN (223384,223611,223410,223423,223390,223393,223434,223442,223443,223441,223438,223445,223419,223451,223452,223596,223425,223595,223450);


-- Prince Liam Greymane (34850)
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=34850;


-- Panicked Citizen (34851)
DELETE FROM `creature_addon` WHERE `guid` IN (223355,223263);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(223355, 0, 0, 0, 1, 69, 0, 0, 0, NULL),
(223263, 0, 0, 0, 1, 69, 0, 0, 0, NULL);


-- Rampaging Worgen (34884)
UPDATE `creature` SET `spawndist`='0', `MovementType`='0' WHERE  `id`=34884 AND NOT `MovementType`='2';

