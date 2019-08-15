/*=============================
-- Gilneas / Duskhaven Part 1
=============================*/


-- Quests
UPDATE quest_template SET RewardNextQuest=14099 WHERE id=14094;
UPDATE quest_template SET RewardNextQuest=0 WHERE id=14093;
UPDATE quest_template SET RewardNextQuest=0 WHERE id=14098;
UPDATE quest_template_addon SET PrevQuestID=14078 WHERE id=14094;
UPDATE quest_template_addon SET NextQuestID=14099 WHERE id=14094;
UPDATE quest_template_addon SET NextQuestID=0 WHERE id=14093;
UPDATE quest_template_addon SET NextQuestID=0 WHERE id=14098;
UPDATE quest_template_addon SET PrevQuestID=14094 WHERE id=14099;


-- Crowley's Horse (35231) ***npc_crowley_horse_35231***
DELETE FROM vehicle_template_accessory WHERE entry=35231;
INSERT INTO vehicle_template_accessory (entry, accessory_entry, seat_id, minion, description, summontype, summontimer) VALUES 
(35231, 35552, 2, 1, 'Lord Darius Crowley', 8, 0),
(35231, 35230, 1, 1, 'Lord Darius Crowley Blizz NPC', 8, 0);


-- Crowley's Horse (44427)
UPDATE npc_spellclick_spells SET spell_id=67001 WHERE npc_entry=44427 AND spell_id=82992;
UPDATE creature_template SET VehicleId=463, IconName='vehicleCursor'  WHERE entry=44427;

UPDATE creature_template SET AIName ='SmartAI' WHERE entry =44427;
DELETE FROM `smart_scripts` WHERE `entryorguid`=44427;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(44427, 0, 0, 0, 37, 0, 100, 0, 0, 0, 0, 0, 11, 67001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Crowley\'s Horse - Cast Summon Crowley\'s Horse');


-- King Genn Greymane (35550) ***npc_king_genn_greymane_35550***
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=35550;
DELETE FROM `smart_scripts` WHERE `entryorguid`=35550;
INSERT INTO `smart_scripts` VALUES 
(35550, 0, 0, 0, 1, 0, 100, 0, 0, 0, 30000, 30000, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'King Genn Greymane - OCC - Say Text 0'),
(35550, 0, 1, 0, 19, 0, 100, 0, 14293, 0, 0, 0, 0, 11, 68232, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'King Genn Greymane - On Accepted Quest - Cast Forcecast Summon Greymane\'s Horse');


-- Krennan Aranas (35753)
UPDATE `creature_template` SET `AIName`='SmartAI', `unit_flags`=33280, `flags_extra`=2 WHERE `entry`=35753;
DELETE FROM `smart_scripts` WHERE `entryorguid`=35753;
INSERT INTO `smart_scripts` VALUES 
(35753, 0, 0, 0, 1, 0, 100, 0, 0, 0, 60000, 60000, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Krennan Aranas - OCC - Say Text 0'),
(35753, 0, 1, 0, 8, 0, 100, 1, 68219, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Krennan Aranas - On Spellhit - Despawn Instant');


-- King Greymane's Horse (35905) ***npc_king_greymanes_horse_35905***
UPDATE `creature_template` SET `AIName`='SmartAI', `spell1`=68219, `unit_flags`=10, `speed_run`= .50 WHERE `entry`=35905;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (35905, 3590500);
INSERT INTO `smart_scripts` VALUES 
(35905, 0, 0, 1, 27, 0, 100, 1, 0, 0, 0, 0, 0, 80, 3590500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'King Greymane\'s Horse - On Passanger Boarded - Start Timed Action Script'),
(35905, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'King Greymane\'s Horse - Allow Combat Movement'),
(35905, 0, 2, 0, 40, 0, 100, 0, 6, 0, 0, 0, 0, 97, 25, 10, 0, 0, 0, 0, 1, 0, 0, 0, -1674.46, 1344.95, 15.1352, 0, 'King Greymane\'s Horse - On WP Reached - Jump to PoS'),
(35905, 0, 3, 4, 40, 0, 100, 0, 16, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 11, 35907, 10, 0, 0, 0, 0, 0, 'King Greymane\'s Horse - On WP Reached - Set Data'),
(35905, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'King Greymane\'s Horse - On WP Reached - Despawn'),
(3590500, 9, 0, 0, 0, 0, 100, 0, 5000, 5000, 5000, 5000, 0, 53, 1, 35905, 0, 14293, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'King Greymane\'s Horse - Script - Start WP Movement');


-- Krennan Aranas (35907) ***npc_krennan_aranas_35907***
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=35907;
DELETE FROM `smart_scripts` WHERE `entryorguid`=35907;
INSERT INTO `smart_scripts` VALUES 
(35907, 0, 0, 0, 11, 0, 100, 1, 0, 0, 0, 0, 0, 11, 46598, 0, 0, 0, 0, 0, 11, 35905, 10, 0, 0, 0, 0, 0, 'Krennan Aranas - On Respawn - Cast Ride Vehicle Hardcoded'),
(35907, 0, 1, 2, 38, 0, 100, 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Krennan Aranas - On Data Set - Say Text 0'),
(35907, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Krennan Aranas - On Data Set - Prevent Combat Movement'),
(35907, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Krennan Aranas - On Data Set - Forced Despawn');


-- Creature Text
DELETE FROM `creature_text` WHERE `creatureid` IN (35550,35753,35907);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(35550, 0, 0, 'Fire!', 14, 0, 100, 0, 0, 0, 0, 0, ''),
(35550, 0, 1, 'Hold the barricades! Do not give them an inch!', 14, 0, 100, 0, 0, 0, 0, 0, ''),
(35550, 0, 2, 'Keep them back!', 14, 0, 100, 0, 0, 0, 0, 0, ''),
(35753, 0, 0, 'Help! Up here!', 14, 0, 100, 0, 0, 0, 0, 0, ''),
(35907, 1, 0, 'Thank you! I owe you my life.', 12, 0, 100, 0, 0, 0, 0, 0, '');


-- Waypoints
DELETE FROM `waypoints` WHERE `entry` IN (35905);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(35905, 16, -1771.46, 1430.1, 19.8183, ''),
(35905, 15, -1766.16, 1404.17, 19.8109, ''),
(35905, 14, -1746.3, 1375.96, 19.97, ''),
(35905, 13, -1725.38, 1356.36, 19.8184, ''),
(35905, 12, -1705.86, 1350.95, 19.8964, ''),
(35905, 11, -1685.27, 1355.4, 15.1356, ''),
(35905, 10, -1672.07, 1362.12, 15.135, ''),
(35905, 9, -1666.29, 1355.75, 15.135, ''),
(35905, 8, -1668.71, 1348.29, 15.1366, ''),
(35905, 7, -1674.46, 1344.95, 15.1352, ''),
(35905, 6, -1707.42, 1345.95, 19.896, ''),
(35905, 5, -1728.55, 1351.81, 19.6012, ''),
(35905, 4, -1755.42, 1368.4, 19.7833, ''),
(35905, 3, -1777.13, 1369.23, 19.8021, ''),
(35905, 2, -1790.45, 1383.17, 19.8166, ''),
(35905, 1, -1800.37, 1407.18, 20.0265, '');


-- Krennan Aranas Focus (195660)
DELETE FROM gameobject_template WHERE entry=195660;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `RequiredLevel`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES 
(195660, 8, 299, 'Krennan Aranas Spell Focus', '', '', '', 1, 1630, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 26365);

DELETE FROM `gameobject` WHERE `id` IN (301027,195660);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES 
(64294, 301027, 654, 1, 1, 1, 0, 171, 0, -1, -1674.46, 1344.95, 15.1352, 0, 0, 0, 0, 0, 180, 0, 0, 1, '', 26365),
(64306, 195660, 654, 1, 1, 1, 0, 171, 0, -1, -1674.46, 1344.95, 15.1352, 0, 0, 0, 0, 0, 180, 0, 0, 1, '', 26365);

DELETE FROM `gameobject_addon` WHERE `guid`IN (64294,64306);
INSERT INTO `gameobject_addon` (`guid`, `parent_rotation0`, `parent_rotation1`, `parent_rotation2`, `parent_rotation3`, `invisibilityType`, `invisibilityValue`, `WorldEffectID`) VALUES 
(64294, 0, 0, 0, 1, 8, 1000, 0),
(64306, 0, 0, 0, 1, 8, 1000, 0);


-- Spell Generic Quest Invisibility Detection 1 in Gilneas City
DELETE FROM spell_area WHERE spell=49416 AND area=4755;
INSERT INTO spell_area (`spell`, `area`, `quest_start`, `quest_end`, `quest_start_status`, `quest_end_status`) VALUES 
(49416, 4755, 14293, 14294, 74, 64);


-- Commandeered Cannon (35914)
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_commandeered_cannon_35914' WHERE `entry`=35914;


-- Gwen Armstead (34936)
UPDATE `creature_addon` SET `emote`=375, `auras`=49414  WHERE `guid`=223411;


-- Spell Generic Quest Invisibility Detection 1 in Merchant Square
DELETE FROM `spell_area` WHERE `spell`=49416 AND `area`=4756 AND `quest_start`=14078;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(49416, 4756, 14078, 14099, 0, -1, 0, 2, 3, 64, 10);


-- Quests
UPDATE quest_template SET RewardNextQuest=14099 WHERE id=14094;
UPDATE quest_template SET RewardNextQuest=0 WHERE id=14093;
UPDATE quest_template SET RewardNextQuest=0 WHERE id=14098;
UPDATE quest_template_addon SET PrevQuestID=14078 WHERE id=14094;
UPDATE quest_template_addon SET NextQuestID=14099 WHERE id=14094;
UPDATE quest_template_addon SET NextQuestID=0 WHERE id=14093;
UPDATE quest_template_addon SET NextQuestID=0 WHERE id=14098;
UPDATE quest_template_addon SET PrevQuestID=14094 WHERE id=14099;

DELETE FROM `quest_template_addon` WHERE `ID`=24930;
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES 
(24930, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');


-- King Genn Greymane (35550) ***npc_king_genn_greymane_35550***
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (35550);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (35550);
INSERT INTO `smart_scripts` VALUES 
(35550, 0, 0, 0, 1, 0, 100, 0, 0, 0, 30000, 30000, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'King Genn Greymane - OCC - Say Text 0'),
(35550, 0, 1, 0, 19, 0, 100, 0, 14293, 0, 0, 0, 0, 11, 68232, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'King Genn Greymane - On Accepted Quest - Cast Forcecast Summon Greymane\'s Horse');


-- Krennan Aranas (35753)
UPDATE `creature_template` SET `AIName`='SmartAI', `unit_flags`=33280, `flags_extra`=2 WHERE `entry` IN (35753);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (35753);
INSERT INTO `smart_scripts` VALUES 
(35753, 0, 0, 0, 1, 0, 100, 0, 0, 0, 60000, 60000, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Krennan Aranas - OCC - Say Text 0'),
(35753, 0, 1, 0, 8, 0, 100, 1, 68219, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Krennan Aranas - On Spellhit - Despawn Instant');


-- King Greymane's Horse (35905) ***npc_king_greymanes_horse_35905***
UPDATE `creature_template` SET `AIName`='SmartAI', `spell1`=68219, `unit_flags`=10, `speed_run`=2.50 WHERE `entry` IN (35905);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (35905,3590500);
INSERT INTO `smart_scripts` VALUES 
(35905, 0, 0, 1, 27, 0, 100, 1, 0, 0, 0, 0, 0, 80, 3590500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'King Greymane\'s Horse - On Passanger Boarded - Actionlist'),
(35905, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'King Greymane\'s Horse - Allow Combat Movement'),
(35905, 0, 2, 0, 40, 0, 100, 0, 6, 0, 0, 0, 0, 97, 25, 10, 0, 0, 0, 0, 1, 0, 0, 0, -1674.46, 1344.95, 15.1352, 0, 'King Greymane\'s Horse - On WP Reached - Jump to PoS'),
(35905, 0, 3, 4, 40, 0, 100, 0, 16, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 11, 35907, 10, 0, 0, 0, 0, 0, 'King Greymane\'s Horse - On WP Reached - Set Data'),
(35905, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'King Greymane\'s Horse - On WP Reached - Despawn'),
(3590500, 9, 0, 0, 0, 0, 100, 0, 5000, 5000, 5000, 5000, 0, 53, 1, 35905, 0, 14293, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'King Greymane\'s Horse - Script - Start WP Movement');


-- Krennan Aranas (35907) ***npc_krennan_aranas_35907***
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (35907);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (35907);
INSERT INTO `smart_scripts` VALUES 
(35907, 0, 0, 0, 11, 0, 100, 1, 0, 0, 0, 0, 0, 11, 46598, 0, 0, 0, 0, 0, 11, 35905, 10, 0, 0, 0, 0, 0, 'Krennan Aranas - On Respawn - Cast Ride Vehicle Hardcoded'),
(35907, 0, 1, 2, 38, 0, 100, 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Krennan Aranas - On Data Set - Say Text 0'),
(35907, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Krennan Aranas - On Data Set - Prevent Combat Movement'),
(35907, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Krennan Aranas - On Data Set - Despawn in 1 seg');


-- Creature Text
DELETE FROM `creature_text` WHERE `creatureid` IN (35550,35753,35907);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(35550, 0, 0, 'Fire!', 14, 0, 100, 0, 0, 0, 0, 0, ''),
(35550, 0, 1, 'Hold the barricades! Do not give them an inch!', 14, 0, 100, 0, 0, 0, 0, 0, ''),
(35550, 0, 2, 'Keep them back!', 14, 0, 100, 0, 0, 0, 0, 0, ''),
(35753, 0, 0, 'Help! Up here!', 14, 0, 100, 0, 0, 0, 0, 0, ''),
(35907, 1, 0, 'Thank you! I owe you my life.', 12, 0, 100, 0, 0, 0, 0, 0, '');


-- Waypoints
DELETE FROM `waypoints` WHERE `entry` IN (35905);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(35905, 16, -1771.46, 1430.1, 19.8183, ''),
(35905, 15, -1766.16, 1404.17, 19.8109, ''),
(35905, 14, -1746.3, 1375.96, 19.97, ''),
(35905, 13, -1725.38, 1356.36, 19.8184, ''),
(35905, 12, -1705.86, 1350.95, 19.8964, ''),
(35905, 11, -1685.27, 1355.4, 15.1356, ''),
(35905, 10, -1672.07, 1362.12, 15.135, ''),
(35905, 9, -1666.29, 1355.75, 15.135, ''),
(35905, 8, -1668.71, 1348.29, 15.1366, ''),
(35905, 7, -1674.46, 1344.95, 15.1352, ''),
(35905, 6, -1707.42, 1345.95, 19.896, ''),
(35905, 5, -1728.55, 1351.81, 19.6012, ''),
(35905, 4, -1755.42, 1368.4, 19.7833, ''),
(35905, 3, -1777.13, 1369.23, 19.8021, ''),
(35905, 2, -1790.45, 1383.17, 19.8166, ''),
(35905, 1, -1800.37, 1407.18, 20.0265, '');


-- you to be closer to Krennan Aranas (301027)
DELETE FROM `gameobject` WHERE `guid`=64294;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES 
(64294, 301027, 654, 1, 1, 1, 0, 171, 0, -1, -1674.46, 1344.95, 15.1352, 0, 0, 0, 0, 0, 300, 0, 0, 1, '', 26365);

DELETE FROM `gameobject_addon` WHERE `guid`=64294;
INSERT INTO `gameobject_addon` (`guid`, `parent_rotation0`, `parent_rotation1`, `parent_rotation2`, `parent_rotation3`, `invisibilityType`, `invisibilityValue`, `WorldEffectID`) VALUES 
(64294, 0, 0, 0, 1, 8, 1000, 0);


-- Spell Generic Quest Invisibility Detection 1 in Gilneas City
DELETE FROM spell_area WHERE spell=49416 AND area=4757;
INSERT INTO spell_area (`spell`, `area`, `quest_start`, `quest_end`, `quest_start_status`, `quest_end_status`) VALUES 
(49416, 4757, 14293, 14294, 74, 64);


-- NPC commandered Cannon (35914)
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_commandeered_cannon_35914' WHERE `entry` IN (35914);


-- Celestine of the Harvest (35873)
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE entry = 35873;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 35873 AND `id` = 0 AND `source_type` = 0 LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(35873,0,0,0,1,0,100,257,500,500,500,500,11,13236,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Celestine of the Harvest -  Cast Nature Channeling");


-- Lord Godfrey (35906)
DELETE FROM `creature` WHERE `guid` IN (223732,72369);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES 
(223732, 35906, 654, 0, 0, 1, 0, 171, 0, -1, 0, 1, -1785.53, 1437.74, 20.2669, 6.02249, 180, 0, 0, 130, 115, 0, 0, 0, 0, 0, 0, '', 26365),
(72369, 35906, 654, 0, 0, 1, 0, 172, 0, -1, 0, 1, -1785.82, 1437.63, 20.2474, 6.19842, 180, 0, 0, 130, 115, 0, 0, 0, 0, 0, 0, '', 26365);

DELETE FROM `creature_addon` WHERE `guid` IN (223732,72369);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(223732, 0, 2410, 0, 1, 0, 0, 0, 0, NULL),
(72369, 0, 2410, 0, 1, 0, 0, 0, 0, NULL);


-- Creature Queststarter
DELETE FROM `creature_queststarter` WHERE `id`=35118 AND `quest`=24930;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES 
(35118, 24930);


-- Quest Offer Reward
DELETE FROM `quest_offer_reward` WHERE `ID` IN (14277,14278,14273,14275,14269,14272,14280,14265,14291,14290,14289,14288,14287,14286,14285);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES 
(14277, 0, 0, 0, 0, 0, 0, 0, 0, 'A disciple of the arcane always finds a way forward. I\'m glad to see you, $N.', 26365),
(14278, 0, 0, 0, 0, 0, 0, 0, 0, 'The Light is with you, $N. It\'s still quite a relief to see you.', 26365),
(14273, 0, 0, 0, 0, 0, 0, 0, 0, 'A darkness has descended over our lands. And not our kind of darkness, if you know what I mean.', 26365),
(14275, 0, 0, 0, 0, 0, 0, 0, 0, '$N! I knew you had to be around here.', 26365),
(14269, 0, 0, 0, 0, 0, 0, 0, 0, 'Oh, hey! There you are!', 26365),
(14272, 0, 0, 0, 0, 0, 0, 0, 0, 'Don\'t get ahead of yourself now.  Just remember who taught you everything you know. And now let\'s see if we can get out of this city with our skins attached.', 26365),
(14280, 0, 0, 0, 0, 0, 0, 0, 0, 'We have been blessed today! You are alive and well!', 26365),
(14265, 0, 0, 0, 0, 0, 0, 0, 0, '<name>!  Where have you been? Anyway... it\'s great to see you in one piece.', 26365),
(14291, 0, 0, 0, 0, 0, 0, 0, 0, 'You\'ve done well in coming here. If we Gilneans stick together we might yet defeat this terrible enemy.', 26365),
(14290, 0, 0, 0, 0, 0, 0, 0, 0, 'You\'ve done well in coming here. If we Gilneans stick together we might yet defeat this terrible enemy.', 26365),
(14289, 0, 0, 0, 0, 0, 0, 0, 0, 'You\'ve done well in coming here. If we Gilneans stick together we might yet defeat this terrible enemy.', 26365),
(14288, 0, 0, 0, 0, 0, 0, 0, 0, 'You\'ve done well in coming here. If we Gilneans stick together we might yet defeat this terrible enemy.', 26365),
(14287, 0, 0, 0, 0, 0, 0, 0, 0, 'You\'ve done well in coming here. If we Gilneans stick together we might yet defeat this terrible enemy.', 26365),
(14286, 0, 0, 0, 0, 0, 0, 0, 0, 'You\'ve done well in coming here. If we Gilneans stick together we might yet defeat this terrible enemy.', 26365),
(14285, 0, 0, 0, 0, 0, 0, 0, 0, 'You\'ve done well in coming here. If we Gilneans stick together we might yet defeat this terrible enemy.', 26365);


-- Creature Questitem
DELETE FROM `creature_questitem` WHERE (`CreatureEntry`=37701 AND `Idx`=0) OR (`CreatureEntry`=36461 AND `Idx`=0) OR (`CreatureEntry`=37786 AND `Idx`=0);
INSERT INTO `creature_questitem` (`CreatureEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES
(37701, 0, 49881, 25549),
(36461, 0, 49281, 25549),
(37786, 0, 50219, 25549);


-- Creature Text
INSERT IGNORE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(34571, 0, 0, 'Welcome back, $n.  You were fortunate.  Krennan\'s treatment doesn\'t always work this well on people who\'ve had the Curse as long as you.', 12, 0, 100, 1, 0, 19634, 0, 'Gwen Armstead to Player'),
(34850, 0, 0, 'I want the perimeter secured and the gates manned by two guards at all times.  No one gets in, no one gets out.', 12, 0, 100, 1, 0, 19634, 0, 'Prince Liam Greymane'),
(34850, 1, 0, 'We protected Gilneas from the Scourge.  We protected Gilneas during the Northgate rebellion.  We will protect Gilneas from whatever this new threat may be.', 12, 0, 100, 1, 0, 19634, 0, 'Prince Liam Greymane'),
(34851, 0, 0, 'What... what are those things on the rooftops?', 12, 0, 100, 0, 0, 19634, 0, 'Panicked Citizen to Player'),
(34884, 0, 0, '%s becomes enraged!', 16, 0, 100, 0, 0, 19634, 0, 'Rampaging Worgen'),
(34913, 0, 0, 'Push them back!', 14, 0, 100, 0, 0, 19634, 0, 'Prince Liam Greymane'),
(34981, 0, 0, 'Flee!  They\'re everywhere!', 12, 0, 100, 1, 0, 19634, 0, 'Frightened Citizen to Player'),
(35112, 0, 0, 'Enough!  I\'ve made up my mind.  We need Crowley on our side.', 12, 0, 100, 0, 0, 19634, 0, 'King Genn Greymane to Player'),
(35115, 0, 0, 'We ought to leave Crowley in prison with those beasts!', 12, 0, 100, 0, 0, 19634, 0, 'Lord Godfrey to Player'),
(35118, 0, 0, '%s goes into a frenzy!', 16, 0, 100, 0, 0, 19634, 0, 'Bloodfang Worgen'),
(35230, 0, 0, 'Let\'s round up as many of them as we can.  Every worgen chasing us is one less worgen chasing the survivors!', 12, 0, 100, 0, 0, 19634, 0, 'Lord Darius Crowley to Player'),
(35230, 1, 0, 'You\'ll never catch us, you blasted mongrels!', 14, 0, 100, 0, 0, 19634, 0, 'Lord Darius Crowley to Player'),
(35369, 0, 0, 'The pain is unbearable!', 14, 0, 100, 0, 0, 19634, 0, 'Josiah Avery'),
(35378, 0, 0, 'This mastiff will help you find the hidden worgen.', 12, 0, 100, 0, 0, 19634, 0, 'Lorna Crowley to Player'),
(35550, 0, 0, 'Hold the barricades!  Do not give them an inch!', 14, 0, 100, 0, 0, 19634, 0, 'King Genn Greymane'),
(35550, 1, 0, 'Keep them back!', 14, 0, 100, 0, 0, 19634, 0, 'King Genn Greymane'),
(35550, 2, 0, 'Fire!', 14, 0, 100, 0, 0, 19634, 0, 'King Genn Greymane'),
(35551, 0, 0, 'I\'ll stay behind with the Royal Guard, father.  It is my duty to Gilneas.', 12, 0, 100, 1, 0, 19634, 0, 'Prince Liam Greymane to Player'),
(35552, 0, 0, 'We need to keep the worgen\'s attention in the city, Genn.  It\'s the only shot we have for the survivors to make it to Duskhaven.', 12, 0, 100, 66, 0, 19634, 0, 'Lord Darius Crowley to Player'),
(35552, 1, 0, 'Not a chance, boy.  Gilneas is going to need its king\'s undivided attention.  Can\'t have your father wondering whether his child is alive or not.', 12, 0, 100, 66, 0, 19634, 0, 'Lord Darius Crowley to Player'),
(35552, 2, 0, 'My men and I will hole up inside the Light\'s Dawn Cathedral.  I\'ve already given the order and the cannons are on their way.  Lead our people well, Genn.', 12, 0, 100, 66, 0, 19634, 0, 'Lord Darius Crowley to Player'),
(35753, 0, 0, 'Help!  Up here!', 14, 0, 100, 0, 0, 19634, 0, 'Krennan Aranas to Player'),
(35836, 0, 0, 'Help me, please!', 12, 0, 100, 430, 0, 19634, 0, 'Frightened Citizen to Player'),
(35836, 1, 0, 'There\'s one after me!', 12, 0, 100, 430, 0, 19634, 0, 'Frightened Citizen to Player'),
(35840, 0, 0, 'We must stick together to survive.  Move around in groups.', 12, 0, 100, 1, 0, 19634, 0, 'Gwen Armstead'),
(35905, 0, 0, 'Rescue Krennan Aranas by using your vehicle\'s ability.$B|TInterface\\Icons\\inv_misc_groupneedmore.blp:64|t', 42, 0, 100, 0, 0, 19634, 0, 'King Greymane\'s Horse to Player'),
(35906, 0, 0, 'We\'ve got Aranas!  Fire at will!', 14, 0, 100, 0, 0, 19634, 0, 'Lord Godfrey to Player'),
(35907, 0, 0, 'Thank you!  I owe you my life.', 12, 0, 100, 0, 0, 19634, 0, 'Krennan Aranas to King Greymane\'s Horse'),
(35911, 0, 0, 'If we can make it past the gates into Duskhaven we\'ll be safe.  The eastern mountains are virtually impassable.', 12, 0, 100, 1, 0, 19634, 0, 'King Genn Greymane to Player'),
(35911, 1, 0, 'We were fools to take up arms against each other, Darius.  The worgen would\'ve never stood a chance.', 12, 0, 100, 1, 0, 19634, 0, 'King Genn Greymane to Player'),
(36132, 0, 0, 'Do exercise caution.  Don\'t expect anyone to invite you to their homes just yet.  But at least they won\'t shoot you outright.', 12, 0, 100, 1, 0, 19634, 0, 'Krennan Aranas to Player'),
(36207, 0, 0, 'Gilneas will soon belong to the Forsaken!', 12, 0, 100, 0, 0, 19634, 0, 'Forsaken Assassin to Player'),
(36231, 0, 0, 'This not be good...', 12, 0, 100, 0, 0, 19634, 0, 'Horrid Abomination to Player'),
(36231, 1, 0, 'GAH!!!!  I CAN\'T SEE IN HERE!!!!', 12, 0, 100, 0, 0, 19634, 0, 'Horrid Abomination to Player'),
(36231, 2, 0, 'Get back here!  I smashes you!', 12, 0, 100, 0, 0, 19634, 0, 'Horrid Abomination to Player'),
(36287, 0, 0, 'You are scary!  I just want my mommy!', 12, 0, 100, 18, 0, 23508, 0, 'Cynthia to Player'),
(36288, 0, 0, 'Are you one of the good worgen, $g mister:ma\'am;?  Did you see Cynthia hiding in the sheds outside?', 12, 0, 100, 0, 0, 23508, 0, 'Ashley to Player'),
(36289, 0, 0, 'Don\'t hurt me!  I was just looking for my sisters!  I think Ashley\'s inside that house!', 12, 0, 100, 0, 0, 23508, 0, 'James to Player'),
(36330, 0, 0, 'Give it up, Krennan.  It\'s time to put this one down.  It\'s protocol.', 12, 0, 100, 274, 0, 19634, 0, 'Lord Godfrey to Player'),
(36331, 0, 0, 'I am not giving up on you.  I don\'t have a cure for the Curse yet... but there are treatments.  You will have control again.', 12, 0, 100, 274, 0, 19634, 0, 'Krennan Aranas to Player'),
(36332, 0, 0, 'Tell me, Godfrey.  Those that stayed in Gilneas City so that we could live.  Were they following protocol?', 12, 0, 100, 1, 0, 19634, 0, 'King Genn Greymane to Player'),
(36332, 1, 0, 'I didn\'t think so.  Now hand me that potion, Krennan... and double the dosage.', 12, 0, 100, 1, 0, 19634, 0, 'King Genn Greymane to Player'),
(50415, 0, 0, 'You\'ve been bitten by a worgen.  It\'s probably nothing, but it sure stings a little.$B$B|TInterface\\Icons\\INV_Misc_monsterfang_02.blp:32|t', 42, 0, 100, 0, 0, 19634, 0, 'Josiah Event Trigger to Player'),
(50474, 0, 0, 'Hold them back!  We must protect the survivors!', 14, 0, 100, 0, 0, 19634, 0, 'Gilneas City Guard'),
(36290, 0, 0, 'Hold your positions, men!', 14, 0, 100, 0, 0, 23539, 0, 'Lord Godfrey to Player'),
(36291, 0, 0, 'What\'s happening?!', 12, 0, 100, 430, 0, 23539, 0, 'Melinda Hammond to Player'),
(36294, 0, 0, 'Who dares to touch Koroth\'s banner!?', 14, 0, 100, 0, 0, 19605, 0, 'Koroth the Hillbreaker to Player'),
(36294, 1, 0, 'You puny thief!  Koroth find you!  Koroth smash your face in!', 14, 0, 100, 0, 0, 19605, 0, 'Koroth the Hillbreaker to Player'),
(36440, 0, 0, 'Thank you... *gasp*   I owe you my life.', 12, 0, 100, 0, 0, 23539, 0, 'Drowning Watchman to Player'),
(36440, 1, 0, 'I... I thought I was a goner.  Thanks.', 12, 0, 100, 0, 0, 23539, 0, 'Drowning Watchman to Player'),
(36440, 2, 0, 'The land gave way from under our feet...  I thought I was dead.  I owe you one.', 12, 0, 100, 0, 0, 23539, 0, 'Drowning Watchman to Player'),
(36458, 0, 0, 'You do not mess with my kitty you son of a mongrel!', 14, 0, 100, 0, 0, 19605, 0, 'Grandma Wahl to Lucius the Cruel'),
(36461, 0, 0, 'I\'ll be taking this cat.  It seems to work as the perfect bait.  Prepare to die now, fool!', 12, 0, 100, 16, 0, 19605, 0, 'Lucius the Cruel to Player'),
(36814, 0, 0, 'Let the Scythe unbind that which was not meant to be bound!  Let the soul master the beast, lest the beast master the soul!', 12, 0, 100, 1, 0, 16419, 0, 'Talran of the Wild to Player'),
(37065, 0, 0, 'Just in time, $n.  Here come the Forsaken.', 12, 0, 100, 15, 0, 19605, 0, 'Prince Liam Greymane to Player'),
(37065, 1, 0, 'You will come no further, Forsaken scum!  By the war banner of the ancient Greymane clan, I expel you from our ancestral lands!', 14, 0, 100, 15, 0, 19605, 0, 'Prince Liam Greymane to Player'),
(37067, 0, 0, 'I wasn\'t ready to die in a marsh.  Thanks again!', 12, 0, 100, 0, 0, 19605, 0, 'Crash Survivor'),
(37195, 0, 0, 'Get our men in position immediately, Tobias.  We cannot let the Scythe fall into the hands of the Forsaken!!', 12, 0, 100, 273, 0, 19605, 0, 'Lord Darius Crowley to Player'),
(37195, 1, 0, 'Lorna!', 14, 0, 100, 273, 0, 16419, 0, 'Lord Darius Crowley to Player'),
(37694, 0, 0, 'It\'s true then?  Even those afflicted by the Curse are fighting the Forsaken!', 12, 0, 100, 0, 0, 23506, 0, 'Enslaved Villager'),
(37735, 0, 0, '%s becomes enraged!', 16, 0, 100, 0, 0, 16419, 0, 'Baron Ashbury'),
(37803, 0, 0, 'Bloody Forsaken!  They\'ll pay for what they\'ve done!', 12, 0, 100, 1, 0, 23506, 0, 'Marcus'),
(37806, 0, 0, 'Worthless mongrel.  I will order our outhouses cleaned with this rag you call a banner.', 14, 0, 100, 0, 0, 19605, 0, 'Captain Asther to Player'),
(37808, 0, 0, 'Corpse-men take Koroth\'s banner!  Corpse-men get smashed to bitses!!!', 14, 0, 100, 0, 0, 19605, 0, 'Koroth the Hillbreaker to Player'),
(37870, 0, 0, 'Just as Goldrinn\'s spirit once blessed our druids, let $n be blessed with the wisdom of his race and the ferocity of the wolf god.', 12, 0, 100, 1, 0, 16419, 0, 'Lyros Swiftwind to Player'),
(37873, 0, 0, 'Just as Daral\'nir soothes the cursed druids who gave into the beast and abandoned balance, let Tal\'doren soothe $n.', 12, 0, 100, 1, 0, 16419, 0, 'Vassandra Stormclaw to Player'),
(37876, 0, 0, 'It\'s over Godfrey.  You have no support left among the eastern lords.', 12, 0, 100, 1, 0, 23506, 0, 'King Genn Greymane to Player'),
(37953, 0, 0, 'Such easy prey.  Sylvanas will be most pleased!', 12, 0, 100, 1, 0, 19605, 0, 'Dark Scout to Player'),
(37953, 1, 0, 'How did you--?!  It doesn\'t matter -- I don\'t need a trap to defeat you.', 12, 0, 100, 1, 0, 19605, 0, 'Dark Scout to Player'),
(38029, 0, 0, 'Keep them occupied, my brothers!  Allow $n to retrieve the scythe!', 14, 0, 100, 0, 0, 19605, 0, 'Tobias Mistmantle to Player'),
(38029, 1, 0, 'Fall back!  Retreat into the woods!', 14, 0, 100, 0, 0, 16419, 0, 'Tobias Mistmantle to Player'),
(38051, 0, 0, 'Darius!  The Dark Rangers have the Scythe!  They got to it before we were able to reach it.', 12, 0, 100, 0, 0, 19605, 0, 'Tobias Mistmantle to Player'),
(38051, 1, 0, 'It will be done!', 12, 0, 100, 0, 0, 19605, 0, 'Tobias Mistmantle to Player'),
(38469, 0, 0, 'Enough!', 14, 0, 100, 0, 0, 19606, 0, 'Lady Sylvanas Windrunner'),
(38469, 1, 0, 'Let\'s see how brave Gilneas gets on without its stubborn leader!', 14, 0, 100, 0, 0, 19606, 0, 'Lady Sylvanas Windrunner'),
(38469, 2, 0, 'Such a waste.  That arrow\'s poison was not meant to be wasted on your whelp.  We\'ll meet again, Genn!', 12, 0, 100, 0, 0, 19606, 0, 'Lady Sylvanas Windrunner to Prince Liam Greymane'),
(38470, 0, 0, 'Block their retreat, Liam!  We\'ve got them right where we want them!', 14, 0, 100, 0, 0, 19606, 0, 'King Genn Greymane to Player'),
(38470, 1, 0, 'SYLVANAS!!', 14, 0, 100, 0, 0, 19606, 0, 'King Genn Greymane to Player'),
(38470, 2, 0, 'LIAM!!  NO!!!', 14, 0, 100, 0, 0, 19606, 0, 'King Genn Greymane to Lady Sylvanas Windrunner'),
(38474, 0, 0, 'FATHER!!!', 14, 0, 100, 0, 0, 19606, 0, 'Prince Liam Greymane to Lady Sylvanas Windrunner'),
(38474, 1, 0, 'We did it, father...', 12, 0, 100, 0, 0, 19606, 0, 'Prince Liam Greymane to Lady Sylvanas Windrunner'),
(38474, 2, 0, 'We took back our city... we took back...', 12, 0, 100, 0, 0, 19606, 0, 'Prince Liam Greymane to Lady Sylvanas Windrunner'),
(38507, 0, 0, 'Let us go at once.  We will track Sylvanas down.  For Gilneas!', 12, 0, 100, 15, 0, 19606, 0, 'Tobias Mistmantle to Player'),
(38507, 1, 0, 'Follow Tobias Mistmantle into the Cathedral District.', 42, 0, 100, 15, 0, 19606, 0, 'Tobias Mistmantle to Player'),
(38507, 2, 0, 'Let\'s do our best not to be seen, $n.', 12, 0, 100, 15, 0, 19606, 0, 'Tobias Mistmantle to Player'),
(38507, 3, 0, 'Did you hear that, $n?  Sylvanas is headed to the cathedral.  Let\'s hurry!', 12, 0, 100, 15, 0, 19606, 0, 'Tobias Mistmantle to Player'),
(38507, 4, 0, 'Quick!  Hide in the water!', 12, 0, 100, 15, 0, 19606, 0, 'Tobias Mistmantle to Player'),
(38530, 0, 0, 'You can assure Garrosh that this is a minor setback.  Our victory in Gilneas will be absolute.', 12, 0, 100, 1, 0, 19606, 0, 'Lady Sylvanas Windrunner to Player'),
(38530, 1, 0, 'You\'d do well to watch your tone, General.  Neither you nor Garrosh have anything to worry about.  We\'ve ceased all production of the Plague, as he ordered.  We\'d never deploy it without his permission.', 12, 0, 100, 1, 0, 19606, 0, 'Lady Sylvanas Windrunner to Player'),
(38530, 2, 0, 'Go with honor, General.', 12, 0, 100, 1, 0, 19606, 0, 'Lady Sylvanas Windrunner to Player'),
(38530, 3, 0, 'What kind of question is that?  Of course we\'re deploying the Plague as planned!  Let the Gilneans enjoy their small victory.  Not even their bones will remain by tomorrow.', 12, 0, 100, 1, 0, 19606, 0, 'Lady Sylvanas Windrunner to Player'),
(38533, 0, 0, 'It appears you\'re losing control of Gilneas, Sylvanas.  Garrosh fears he\'s going to have to carry out this invasion himself.', 12, 0, 100, 66, 0, 19606, 0, 'General Warhowl to Player'),
(38533, 1, 0, 'You sound very confident, your Majesty.  I seriously hope you do not plan to use the Plague.  Garrosh has explicitly forbidden it.', 12, 0, 100, 66, 0, 19606, 0, 'General Warhowl to Player'),
(38533, 2, 0, 'I will deliver my report to our leader, then.  By your leave, my lady.', 12, 0, 100, 66, 0, 19606, 0, 'General Warhowl to Player'),
(38537, 0, 0, 'My Lady!  Should I order my men to stop the deployment of the Plague?  Or are we to continue as planned?', 12, 0, 100, 66, 0, 19606, 0, 'High Executor Crenshaw to Player'),
(38537, 1, 0, 'As you wish!', 12, 0, 100, 66, 0, 19606, 0, 'High Executor Crenshaw to Player'),
(38553, 0, 0, 'It\'s time to join the fray, $n!  With you on our side the scales will surely tip in our favor!', 14, 0, 100, 0, 0, 19606, 0, 'Krennan Aranas to Player'),
(38617, 0, 0, 'Make sure everything is ready.  The orcs\' emissary is ready to meet Sylvanas inside the cathedral.', 14, 0, 100, 1, 0, 19606, 0, 'Forsaken General to Player'),
(38766, 0, 0, 'Crowley!  You and your elven allies are hereby ordered to serve along the king\'s army.  Cursed or not, you are still bound by Gilnean law!', 12, 0, 100, 25, 0, 16419, 0, 'Lord Godfrey to Player'),
(38767, 0, 0, 'It is decided, then.  We will unite all Gilneans and drive the Forsaken from our lands.', 12, 0, 100, 0, 0, 16419, 0, 'King Genn Greymane to Player'),
(38768, 0, 0, 'Father!', 14, 0, 100, 0, 0, 19605, 0, 'Lorna Crowley to Player'),
(38781, 0, 0, 'You did it! We\'re saved!', 14, 0, 100, 1, 0, 16419, 0, 'Gilnean Survivor to Player'),
(43566, 0, 0, 'Attack!', 14, 0, 100, 0, 0, 16419, 0, 'Lorna Crowley'),
(43566, 1, 0, 'Secure the rafters!', 14, 0, 100, 0, 0, 16419, 0, 'Lorna Crowley'),
(43566, 2, 0, 'I want two sharpshooters to stay behind and cover the deck.  Everyone else, use the ropes to rappel down.  Let\'s give them hell!', 14, 0, 100, 0, 0, 16419, 0, 'Lorna Crowley'),
(43566, 3, 0, 'Hands up, greenskins!  My men will give you your new bearing.  You try anything funny and we\'ll fill you with lead.', 14, 0, 100, 0, 0, 16419, 0, 'Lorna Crowley'),
(43566, 4, 0, 'The rest of you, follow me downstairs!', 14, 0, 100, 0, 0, 16419, 0, 'Lorna Crowley'),
(43566, 5, 0, 'We\'ve got the explosives  in the furnace room.  Just hold them off now!', 12, 0, 100, 0, 0, 16419, 0, 'Lorna Crowley'),
(43566, 6, 0, 'That\'s... one big orc.', 12, 0, 100, 0, 0, 16419, 0, 'Lorna Crowley'),
(43566, 7, 0, 'It\'s about to blow, jump on the Wyverns!', 14, 0, 100, 0, 0, 16419, 0, 'Lorna Crowley'),
(43727, 0, 0, 'Everybody onboard the ships now!', 14, 0, 100, 0, 0, 16419, 0, 'Lorna Crowley to Player'),
(43749, 0, 0, 'Hold your horses, friend.  We\'ll hit them when we\'re all ready.', 12, 0, 100, 0, 0, 16419, 0, 'Tobias Mistmantle'),
(43749, 1, 0, 'Hop on a hippogryph, now\'s our chance!', 12, 0, 100, 0, 0, 16419, 0, 'Tobias Mistmantle'),
(50893, 0, 0, 'May the Light bless the spirits of our ancestors, for they\'ve chosen to allow my son to rest upon this holy ground.', 12, 0, 100, 1, 0, 19605, 0, 'King Genn Greymane to Player'),
(51409, 0, 0, 'Look out! We\'re under attack!', 14, 0, 100, 0, 0, 19605, 0, 'Lorna Crowley to Stagecoach Carriage');


-- Quest Offer Reward
DELETE FROM `quest_offer_reward` WHERE `ID` IN (14321 /*14321*/, 14375 /*14375*/, 14221 /*14221*/, 14294 /*14294*/, 14293 /*14293*/, 14204 /*14204*/, 24930 /*24930*/, 28850 /*28850*/, 14157 /*14157*/, 14280 /*14280*/, 14099 /*14099*/, 14093 /*14093*/, 14078 /*14078*/, 14366 /*14366*/, 14336 /*14336*/, 14094 /*14094*/, 14098 /*14098*/, 14091 /*14091*/, 14313 /*14313*/, 14222 /*14222*/, 14212 /*14212*/, 14159 /*14159*/, 14291 /*14291*/, 14367 /*14367*/, 14348 /*14348*/, 14347 /*14347*/, 14320 /*14320*/, 14218 /*14218*/, 14214 /*14214*/, 26129 /*26129*/, 14154 /*14154*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(14321, 0, 0, 0, 0, 0, 0, 0, 0, 'Forsaken!  Quick, $n!  We must mount a defense.', 25549), -- 14321
(14375, 0, 0, 0, 0, 0, 0, 0, 0, 'I need you to pull through, $n.  This dosage is strong enough to kill a horse.$B$BBut I know you.  I know what you\'re made of.  You will be fine.$B$BTrust me.  I know what you\'re going through.$B$BNow drink up and close your eyes.', 25549), -- 14375
(14221, 0, 0, 0, 0, 0, 0, 0, 0, 'We\'ve given them everything we have... yet still they come.  Do not worry, $n.  We\'ll slay many more before today is over.', 25549), -- 14221
(14294, 0, 0, 0, 0, 0, 0, 0, 0, 'We\'re left with very few choices, $n.  What we do next will be a critical decision.', 25549), -- 14294
(14293, 0, 0, 0, 0, 0, 0, 0, 0, 'Well done, $n.  We\'ll make sure Krennan makes it out of the city alive.', 25549), -- 14293
(14204, 0, 0, 0, 0, 0, 0, 0, 0, 'Excellent.  I\'ll start rounding up some help to get these cannons positioned.', 25549), -- 14204
(24930, 0, 0, 0, 0, 0, 0, 0, 0, 'If I hadn\'t seen you kill a few of the mangy things with my own eyes, I\'d think you did not complete the task I asked of you.$B$BIt looks like we\'re hardly putting a dent in their numbers.', 25549), -- 24930
(28850, 0, 0, 0, 0, 0, 0, 0, 0, 'Greymane\'s right.  These beasts do not give a damn about our politics.$B$BGilneas needs to stand together.', 25549), -- 28850
(14157, 0, 0, 0, 0, 0, 0, 0, 0, 'Greymane wants to save Crowley?  Has he gone mad?', 25549), -- 14157
(14280, 0, 0, 0, 0, 0, 0, 0, 0, 'We have been blessed today!  You are alive and well!', 25549), -- 14280
(14099, 0, 0, 0, 0, 0, 0, 0, 0, 'We\'re all fine here.  A little shaken... but alive.', 25549), -- 14099
(14093, 0, 0, 0, 0, 0, 0, 0, 0, 'It\'s no use, $n!  They\'re not letting up.', 25549), -- 14093
(14078, 0, 0, 0, 0, 0, 0, 0, 0, 'Deep claw marks run through the man\'s corpse.', 25549), -- 14078
(14366, 0, 0, 0, 0, 0, 0, 0, 0, 'Great news, $n.  I\'ve sent the remaining militia to the shore to meet the Forsaken force head on.', 25549), -- 14366
(14336, 0, 0, 0, 0, 0, 0, 0, 0, '$n!!!  You ARE alive!$B$BI thought I was having dreams about the old days when I heard your voice...', 25549), -- 14336
(14094, 0, 0, 0, 0, 0, 0, 0, 0, 'Excellent!  I\'ll make sure these get taken to a safe place.', 25549), -- 14094
(14098, 0, 0, 0, 0, 0, 0, 0, 0, 'Good job, $n.  Thanks to you, many Gilneans will live to see another day.', 25549), -- 14098
(14091, 0, 0, 0, 0, 0, 0, 0, 0, 'It\'s you again.  Looks like you\'re not one to hide in the face of danger.  Very well, then.', 25549), -- 14091
(14313, 0, 0, 0, 0, 0, 0, 0, 0, 'It worked!  By the Light, it worked!', 25549), -- 14313
(14222, 0, 0, 0, 0, 0, 0, 0, 0, 'They... they\'ve stopped coming.$B$BNo, $n.  That\'s not a good thing.', 25549), -- 14222
(14212, 0, 0, 0, 0, 0, 0, 0, 0, 'Brace yourself, $n.$B$BHere they come.', 25549), -- 14212
(14159, 0, 0, 0, 0, 0, 0, 0, 0, 'Don\'t look at me!  Leave me alone!', 25549), -- 14159
(14291, 0, 0, 0, 0, 0, 0, 0, 0, 'You\'ve done well in coming here.  If we Gilneans stick together we might yet defeat this terrible enemy.', 25549), -- 14291
(14367, 0, 0, 0, 0, 0, 0, 0, 0, 'The Forsaken are here in full strength, $n.  We barely have enough men to hold them back.', 25549), -- 14367
(14348, 0, 0, 0, 0, 0, 0, 0, 0, 'You and me, $n.  We make a great team...$B$BIt\'s good to have you back.', 25549), -- 14348
(14347, 0, 0, 0, 0, 0, 0, 0, 0, 'Yes, $n!  Just like old times...$B$BI\'m going to have to work hard at not shooting you, but Krennan explained everything to us.', 25549), -- 14347
(14320, 0, 0, 0, 0, 0, 0, 0, 0, 'The crate has been smashed and the vials inside of it appear to have been broken.', 25549), -- 14320
(14218, 0, 0, 0, 0, 0, 0, 0, 0, 'You\'ve done well, $n.  You\'ve done more than could be asked of any Gilnean.$B$BWe\'re running low on ammunition.  It\'s time to regroup inside now.', 25549), -- 14218
(14214, 0, 0, 0, 0, 0, 0, 0, 0, 'I knew Crowley would come through.  His weapons will be more than useful to us.', 25549), -- 14214
(26129, 0, 0, 0, 0, 0, 0, 0, 0, 'Rebel arsenals?  In my own city?$B$BWhat in the bloody hell was Crowley up to?', 25549), -- 26129
(14154, 0, 0, 0, 0, 0, 0, 0, 0, 'We did it, $n.  Thanks to you a good man has survived.', 25549);

DELETE FROM `quest_offer_reward` WHERE `ID` IN (24680 /*24680*/, 24920 /*24920*/, 24676 /*24676*/, 24627 /*24627*/, 24484 /*24484*/, 24483 /*24483*/, 14467 /*14467*/, 14404 /*14404*/, 14401 /*14401*/, 14395 /*14395*/, 14368 /*14368*/, 26706 /*26706*/, 24678 /*24678*/, 24902 /*24902*/, 24673 /*24673*/, 24578 /*24578*/, 14403 /*14403*/, 14398 /*14398*/, 14396 /*14396*/, 14386 /*14386*/, 14382 /*14382*/, 14369 /*14369*/, 14434 /*14434*/, 24602 /*24602*/, 24675 /*24675*/, 24674 /*24674*/, 24575 /*24575*/, 24592 /*24592*/, 24672 /*24672*/, 24593 /*24593*/, 24646 /*24646*/, 24628 /*24628*/, 24501 /*24501*/, 24495 /*24495*/, 24472 /*24472*/, 24468 /*24468*/, 14466 /*14466*/, 14465 /*14465*/, 14405 /*14405*/, 14406 /*14406*/, 14397 /*14397*/, 24681 /*24681*/, 24679 /*24679*/, 24903 /*24903*/, 24904 /*24904*/, 24677 /*24677*/, 24617 /*24617*/, 24616 /*24616*/, 24438 /*24438*/, 14412 /*14412*/, 14400 /*14400*/, 14399 /*14399*/, 14416 /*14416*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(24680, 0, 0, 0, 0, 0, 0, 0, 0, 'It\'s good to see you again, $n.', 25549), -- 24680
(24920, 0, 0, 0, 0, 0, 0, 0, 0, 'You\'ve done well, $n.  Almost everybody managed to make it through.  ', 25549), -- 24920
(24676, 1, 0, 0, 0, 0, 0, 0, 0, 'We have the people of Emberstone on our side now thanks to you.  ', 25549), -- 24676
(24627, 0, 0, 0, 0, 0, 0, 0, 0, 'You are as good as I remember, $n.  It is good to have you back.', 25549), -- 24627
(24484, 0, 0, 0, 0, 0, 0, 0, 0, 'You\'ve done well, $n.  The spiders are everywhere, however, and I\'m afraid we\'ve barely put a dent in their numbers.', 25549), -- 24484
(24483, 0, 0, 0, 0, 0, 0, 0, 0, 'It\'s good to see you made it, $n.  It looks like most everybody did.$B$BWe\'re not doing too bad so far for an emergency evacuation.', 25549), -- 24483
(14467, 0, 0, 0, 0, 0, 0, 0, 0, 'Look, $n!  Look at what\'s become of Duskhaven!$B$BLook at what\'s become of the last safe place in Gilneas!', 25549), -- 14467
(14404, 1, 0, 0, 0, 0, 0, 0, 0, 'This is great, $n.  I should be able to finish the repairs in no time.', 25549), -- 14404
(14401, 0, 0, 0, 0, 0, 0, 0, 0, 'There he is!  Grandma\'s special boy!$B$BThank you so much for finding him.  I hope it wasn\'t too much trouble.$B$BMy... what manner of dirt found its way underneath my fingernails!', 25549), -- 14401
(14395, 0, 0, 0, 0, 0, 0, 0, 0, 'You did what you could, $n.  With any luck a few others will find their way to shore.', 25549), -- 14395
(14368, 0, 0, 0, 0, 0, 0, 0, 0, 'My children are safe!  You\'ve done a wonderful thing, $n.  I don\'t know how to thank you!', 25549), -- 14368
(26706, 0, 0, 0, 0, 0, 0, 0, 0, 'We did it, $n.  We\'ve started the evacuation.  If we leave soon we\'ll leave the Forsaken fleet in the dust.', 25549), -- 26706
(24678, 0, 0, 0, 0, 0, 0, 0, 0, 'You\'re here, $n.  Most everyone made it through, but now we\'re stuck here... surrounded by our own... dead!', 25549), -- 24678
(24902, 0, 0, 0, 0, 0, 0, 0, 0, 'The Plague?  Something so heinous that not even the orcs condone its use?  I\'d say this warrants notifying King Greymane.', 25549), -- 24902
(24673, 0, 0, 0, 0, 0, 0, 0, 0, 'King Greymane gave me a brief rundown of the plan before he set off for the Blackwald.  Doesn\'t make it sound any less crazy.', 25549), -- 24673
(24578, 0, 0, 0, 0, 0, 0, 0, 0, 'I\'ve been expecting you, $n.  Do not be alarmed.$B$BMy name is Belysra .  I am a priestess of the moon... a night elf.$B$BYou might not know my people, but the destinies of our two races have been linked since the Curse befell you.', 25549), -- 24578
(14403, 0, 0, 0, 0, 0, 0, 0, 0, 'You here to give us a hand?', 25549), -- 14403
(14398, 0, 0, 0, 0, 0, 0, 0, 0, 'A visitor!  Are you staying for tea, sweetheart?', 25549), -- 14398
(14396, 0, 0, 0, 0, 0, 0, 0, 0, 'The ocean, $n.  It swallowed everything... the land... the Forsaken... our men!', 25549), -- 14396
(14386, 0, 0, 0, 0, 0, 0, 0, 0, 'You did it, $n.  That should take the wind out of their sails.', 25549), -- 14386
(14382, 0, 0, 0, 0, 0, 0, 0, 0, 'Well done, $n.  You might be a bloody beast, but you\'re our beast.', 25549), -- 14382
(14369, 0, 0, 0, 0, 0, 0, 0, 0, 'Not bad, $n.  It\'s a good thing you\'re on our side.', 25549), -- 14369
(14434, 0, 0, 0, 0, 0, 0, 0, 0, 'Are you ready to set sail, $n?  Your people have been granted shelter in the lands of the kaldorei.$B$BDo not worry, $r.  Your people will get a chance to fight for Gilneas again.  This time, with the full strength of the Alliance.', 25549), -- 14434
(24602, 0, 0, 0, 0, 0, 0, 0, 0, 'Thank you, $n.  Let us hope this works.', 25549), -- 24602
(24675, 0, 0, 0, 0, 0, 0, 0, 0, 'I thank you, $n.  Our men and women will have a last good meal before they set off for battle.', 25549), -- 24675
(24674, 0, 0, 0, 0, 0, 0, 0, 0, 'I thank you, $n.  Our people will no longer suffer under that monstrosity\'s yoke.', 25549), -- 24674
(24575, 0, 0, 0, 0, 0, 0, 0, 0, 'You\'ve done it again, $n.  The freed villagers are eager to help us against the Forsaken in any way they can.', 25549), -- 24575
(24592, 1, 0, 0, 0, 0, 0, 0, 0, 'I wish it could\'ve been avoided, $n.  Let us ensure this is resolved without further bloodshed.', 25549), -- 24592
(24672, 0, 0, 0, 0, 0, 0, 0, 0, '$n!$B$BGenn... they\'ve taken Genn... they\'ve taken... our king!', 25549), -- 24672
(24593, 0, 0, 0, 0, 0, 0, 0, 0, 'It is done then, $n.  You are one of us now.', 25549), -- 24593
(24646, 66, 0, 0, 0, 0, 0, 0, 0, 'I knew we could count on you.  You\'ve done well, $n.', 25549), -- 24646
(24628, 1, 0, 0, 0, 0, 0, 0, 0, 'These simple leaves grow by Elune\'s grace.  They will help your mind understand the need for balance and your soul will permanently earn mastery over the beast.', 25549), -- 24628
(24501, 0, 0, 0, 0, 0, 0, 0, 0, 'Great job, $n.  We\'ve heard rumors of survivors further in the mountains.  Now we\'ll be able to send scouts there.', 25549), -- 24501
(24495, 0, 0, 0, 0, 0, 0, 0, 0, 'Thank you, $n.  It will take some time, but I\'ll try to make sense of what we have.', 25549), -- 24495
(24472, 1, 273, 0, 0, 0, 0, 0, 0, 'You definitely got the ettin angry, $n.   I heard him myself.$B$BLet\'s hope this works.', 25549), -- 24472
(24468, 1, 0, 0, 0, 0, 0, 0, 0, 'You\'ve done it again, $n.  You have my thanks.', 25549), -- 24468
(14466, 0, 0, 0, 0, 0, 0, 0, 0, 'There you are, $n.  I\'ve been expecting you.$B$BI got word of your recovery and... wait -- do you feel that?', 25549), -- 14466
(14465, 2, 0, 0, 0, 0, 0, 0, 0, '$n.  I\'ve heard much about you.$B$BI understand you were crucial in my family\'s survival during the outbreak in Gilneas City.', 25549), -- 14465
(14405, 0, 0, 0, 0, 0, 0, 0, 0, 'It\'s just as well, $n.  Maybe the Haywards will fare better than us.', 25549), -- 14405
(14406, 0, 0, 0, 0, 0, 0, 0, 0, 'Stay back! Don\'t make me...$B$BIs it you?  By the Light!  It\'s you, $n!', 25549), -- 14406
(14397, 0, 0, 0, 0, 0, 0, 0, 0, 'Liam is right.  We must get everyone to higher ground.$B$BYou must help me spread the word while I manage the logistics of the evacuation.', 25549), -- 14397
(24681, 66, 0, 0, 0, 0, 0, 0, 0, 'It\'s almost over, $n.  Only one obstacle remains between us and survival.', 25549), -- 24681
(24679, 0, 0, 0, 0, 0, 0, 0, 0, 'It\'s done, $n.  The dead return to their slumber.', 25549), -- 24679
(24903, 0, 0, 0, 0, 0, 0, 0, 0, 'You present me with the most difficult choice of my life, $n.', 25549), -- 24903
(24904, 0, 0, 0, 0, 0, 0, 0, 0, 'We\'ve driven the Forsaken back.  We hold three out of the four districts.$B$BBut at what cost...', 25549), -- 24904
(24677, 1, 0, 0, 0, 0, 0, 0, 0, 'I am glad to have you here, $n.  We\'re surrounded by Forsaken on all sides and can use all the help we can get.', 25549), -- 24677
(24617, 1, 0, 0, 0, 0, 0, 0, 0, 'You\'re all right, $n!  I\'ve been waiting for this day for a long time, it truly is great to see you friend.$B$BI\'ve heard of what you\'ve done and I\'m thankful... especially for Lorna -- she\'s all I\'ve left.  I will send for her right away.', 25549), -- 24617
(24616, 1, 66, 0, 0, 0, 0, 0, 0, 'Well done, $n.  The scout never had a chance.', 25549), -- 24616
(24438, 1, 25, 0, 0, 0, 0, 0, 0, 'Thanks for stopping, $n.  Our carriage got hit pretty bad.$B$BThe one in front of us got it worse.', 25549), -- 24438
(14412, 0, 0, 0, 0, 0, 0, 0, 0, 'Excellent!  I\'m almost done here.', 25549), -- 14412
(14400, 1, 0, 0, 0, 0, 0, 0, 0, 'You\'re a peach, $n.  Thanks!', 25549), -- 14400
(14399, 0, 0, 0, 0, 0, 0, 0, 0, 'Why thank you, $n.  I hope you didn\'t peek!$B$BWhere are your manners, dear?', 25549), -- 14399
(14416, 0, 0, 0, 0, 0, 0, 0, 0, 'We\'ve got the horses, I\'ll make sure Duskhaven gets them.', 25549); -- 14416


-- Quest Poi
DELETE FROM `quest_poi` WHERE (`QuestID`=14382 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=14382 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=14382 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14369 AND `BlobIndex`=9 AND `Idx1`=1) OR (`QuestID`=14369 AND `BlobIndex`=5 AND `Idx1`=0) OR (`QuestID`=14366 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14336 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14321 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14293 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=14293 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=26129 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14157 AND `BlobIndex`=2 AND `Idx1`=0) OR (`QuestID`=14280 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14099 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14078 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14368 AND `BlobIndex`=3 AND `Idx1`=3) OR (`QuestID`=14368 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=14368 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=14368 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14212 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14294 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14094 AND `BlobIndex`=3 AND `Idx1`=3) OR (`QuestID`=14094 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=14094 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=14094 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14093 AND `BlobIndex`=3 AND `Idx1`=3) OR (`QuestID`=14093 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=14093 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=14093 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14091 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14348 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=14348 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14320 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14313 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14222 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=14222 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14218 AND `BlobIndex`=7 AND `Idx1`=7) OR (`QuestID`=14218 AND `BlobIndex`=6 AND `Idx1`=6) OR (`QuestID`=14218 AND `BlobIndex`=5 AND `Idx1`=5) OR (`QuestID`=14218 AND `BlobIndex`=4 AND `Idx1`=4) OR (`QuestID`=14218 AND `BlobIndex`=3 AND `Idx1`=3) OR (`QuestID`=14218 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=14218 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=14218 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14204 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=14204 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14154 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=14154 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24930 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=24930 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=24930 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14098 AND `BlobIndex`=3 AND `Idx1`=2) OR (`QuestID`=14098 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=14098 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14367 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14347 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=14347 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14221 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14214 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14159 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=28850 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14291 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `WoDUnk1`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(14382, 2, 2, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14382
(14382, 1, 1, 0, 264796, 36399, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14382
(14382, 0, 0, 0, 264795, 36397, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14382
(14369, 9, 1, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14369
(14369, 5, 0, 0, 255603, 36634, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14369
(14366, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14366
(14336, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14336
(14321, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14321
(14293, 0, 1, 0, 264587, 35753, 654, 611, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14293
(14293, 0, 0, -1, 0, 0, 654, 611, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14293
(26129, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 26129
(14157, 2, 0, -1, 0, 0, 654, 611, 0, 0, 3, 0, 0, 0, 0, 25549), -- 14157
(14280, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14280
(14099, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14099
(14078, 0, 0, -1, 0, 0, 654, 611, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14078
(14368, 3, 3, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14368
(14368, 2, 2, 0, 264865, 36289, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14368
(14368, 1, 1, 0, 264864, 36288, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14368
(14368, 0, 0, 0, 264863, 36287, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14368
(14212, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14212
(14294, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14294
(14094, 3, 3, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14094
(14094, 2, 2, 0, 265006, 46896, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14094
(14094, 1, 1, -1, 0, 0, 638, 539, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14094
(14094, 0, 0, 0, 265006, 46896, 638, 539, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14094
(14093, 3, 3, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14093
(14093, 2, 2, 0, 264929, 34884, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14093
(14093, 1, 1, -1, 0, 0, 638, 539, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14093
(14093, 0, 0, 0, 264929, 34884, 638, 539, 0, 0, 3, 0, 0, 0, 0, 25549), -- 14093
(14091, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14091
(14348, 1, 1, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14348
(14348, 0, 0, 26, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14348
(14320, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14320
(14313, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14313
(14222, 1, 1, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14222
(14222, 0, 0, 0, 264452, 35627, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14222
(14218, 7, 7, -1, 0, 0, 654, 611, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14218
(14218, 6, 6, 0, 264948, 35229, 654, 611, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14218
(14218, 5, 5, 0, 264948, 35229, 654, 611, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14218
(14218, 4, 4, 0, 264948, 35229, 654, 611, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14218
(14218, 3, 3, 0, 264948, 35229, 654, 611, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14218
(14218, 2, 2, 0, 264948, 35229, 654, 611, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14218
(14218, 1, 1, 0, 264948, 35229, 654, 611, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14218
(14218, 0, 0, 0, 264948, 35229, 654, 611, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14218
(14204, 1, 1, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14204
(14204, 0, 0, 0, 263905, 35463, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14204
(14154, 1, 1, 30, 0, 0, 654, 545, 0, 0, 7, 0, 0, 0, 0, 25549), -- 14154
(14154, 0, 0, -1, 0, 0, 654, 545, 0, 0, 3, 0, 0, 0, 0, 25549), -- 14154
(24930, 2, 2, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24930
(24930, 1, 1, 0, 265434, 35118, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24930
(24930, 0, 0, 0, 265434, 35118, 638, 539, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24930
(14098, 3, 2, -1, 0, 0, 654, 611, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14098
(14098, 1, 1, 0, 267179, 35830, 654, 545, 0, 0, 3, 0, 0, 0, 0, 25549), -- 14098
(14098, 0, 0, 0, 267179, 35830, 654, 545, 0, 0, 3, 0, 0, 0, 0, 25549), -- 14098
(14367, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14367
(14347, 1, 1, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14347
(14347, 0, 0, 0, 262806, 34511, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14347
(14221, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14221
(14214, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14214
(14159, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14159
(28850, 0, 0, -1, 0, 0, 654, 611, 0, 0, 1, 0, 0, 0, 0, 25549), -- 28850
(14291, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549); -- 14291

DELETE FROM `quest_poi` WHERE (`QuestID`=26706 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=26706 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24681 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=24681 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=24681 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24675 AND `BlobIndex`=4 AND `Idx1`=2) OR (`QuestID`=24675 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=24675 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24674 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=24674 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24677 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24593 AND `BlobIndex`=3 AND `Idx1`=3) OR (`QuestID`=24593 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=24593 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=24593 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24627 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=24627 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24483 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24472 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=24472 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=24472 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24468 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=24468 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24438 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14466 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14401 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=14401 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14416 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=14416 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14403 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14397 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14395 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=14395 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14368 AND `BlobIndex`=3 AND `Idx1`=3) OR (`QuestID`=14368 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=14368 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=14368 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14382 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=14382 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=14382 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14369 AND `BlobIndex`=9 AND `Idx1`=1) OR (`QuestID`=14369 AND `BlobIndex`=5 AND `Idx1`=0) OR (`QuestID`=24679 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=24679 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24602 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=24602 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=24602 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24903 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24904 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=24904 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24628 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=24628 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24501 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=24501 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24495 AND `BlobIndex`=3 AND `Idx1`=3) OR (`QuestID`=24495 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=24495 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=24495 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24484 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=24484 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14406 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14386 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=14386 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24678 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24902 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24676 AND `BlobIndex`=3 AND `Idx1`=3) OR (`QuestID`=24676 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=24676 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=24676 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24592 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=24592 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=24592 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24617 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14465 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14405 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14412 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=14412 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14400 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=14400 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14398 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14396 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24680 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24920 AND `BlobIndex`=7 AND `Idx1`=7) OR (`QuestID`=24920 AND `BlobIndex`=6 AND `Idx1`=6) OR (`QuestID`=24920 AND `BlobIndex`=5 AND `Idx1`=5) OR (`QuestID`=24920 AND `BlobIndex`=4 AND `Idx1`=4) OR (`QuestID`=24920 AND `BlobIndex`=3 AND `Idx1`=3) OR (`QuestID`=24920 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=24920 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=24920 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24575 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=24575 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=24575 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24672 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24673 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24646 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=24646 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24616 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=24616 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24578 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14404 AND `BlobIndex`=3 AND `Idx1`=3) OR (`QuestID`=14404 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=14404 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=14404 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14399 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=14399 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `WoDUnk1`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(26706, 1, 1, 0, 254200, 43729, 654, 545, 0, 0, 7, 0, 0, 0, 0, 25549), -- 26706
(26706, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 26706
(24681, 2, 2, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24681
(24681, 1, 1, 0, 265366, 37921, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24681
(24681, 0, 0, 0, 265364, 37916, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24681
(24675, 4, 2, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24675
(24675, 1, 1, 0, 266831, 50219, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24675
(24675, 0, 0, 0, 266831, 50219, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24675
(24674, 1, 1, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24674
(24674, 0, 0, 0, 265172, 37802, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24674
(24677, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24677
(24593, 3, 3, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24593
(24593, 2, 2, 0, 266555, 201952, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24593
(24593, 1, 1, 0, 266554, 201951, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24593
(24593, 0, 0, 0, 266553, 201950, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24593
(24627, 1, 1, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24627
(24627, 0, 0, 0, 266711, 37757, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24627
(24483, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24483
(24472, 2, 2, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24472
(24472, 1, 1, 0, 265446, 49742, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24472
(24472, 0, 0, 0, 265445, 36293, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24472
(24468, 1, 1, 0, 255768, 37078, 654, 545, 0, 0, 7, 0, 0, 0, 0, 25549), -- 24468
(24468, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24468
(24438, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24438
(14466, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14466
(14401, 1, 1, -1, 0, 0, 654, 545, 0, 0, 7, 0, 0, 0, 0, 25549), -- 14401
(14401, 0, 0, 0, 264872, 49281, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14401
(14416, 1, 1, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14416
(14416, 0, 0, 0, 261452, 36560, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14416
(14403, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14403
(14397, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14397
(14395, 1, 1, 0, 256573, 36450, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14395
(14395, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14395
(14368, 3, 3, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14368
(14368, 2, 2, 0, 264865, 36289, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14368
(14368, 1, 1, 0, 264864, 36288, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14368
(14368, 0, 0, 0, 264863, 36287, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14368
(14382, 2, 2, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14382
(14382, 1, 1, 0, 264796, 36399, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14382
(14382, 0, 0, 0, 264795, 36397, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14382
(14369, 9, 1, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14369
(14369, 5, 0, 0, 255603, 36634, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14369
(24679, 1, 1, 0, 265108, 38147, 654, 545, 0, 0, 7, 0, 0, 0, 0, 25549), -- 24679
(24679, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24679
(24602, 2, 2, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24602
(24602, 1, 1, 0, 265438, 49921, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24602
(24602, 0, 0, 0, 265438, 49921, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24602
(24903, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24903
(24904, 0, 1, 0, 265467, 38854, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24904
(24904, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24904
(24628, 1, 1, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24628
(24628, 0, 0, 0, 265213, 50017, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24628
(24501, 1, 1, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24501
(24501, 0, 0, 0, 265584, 37045, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24501
(24495, 3, 3, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24495
(24495, 2, 2, 0, 256540, 49760, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24495
(24495, 1, 1, -1, 0, 0, 638, 539, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24495
(24495, 0, 0, 0, 256540, 49760, 638, 539, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24495
(24484, 1, 1, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24484
(24484, 0, 0, 0, 253933, 36813, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24484
(14406, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14406
(14386, 1, 1, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14386
(14386, 0, 0, 0, 267072, 36312, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14386
(24678, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24678
(24902, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24902
(24676, 3, 3, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24676
(24676, 2, 2, 0, 265134, 37685, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24676
(24676, 1, 1, 0, 265133, 37686, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24676
(24676, 0, 0, 0, 265132, 37692, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24676
(24592, 2, 2, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24592
(24592, 1, 1, 0, 265566, 37733, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24592
(24592, 0, 0, 0, 265565, 37735, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24592
(24617, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24617
(14465, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14465
(14405, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14405
(14412, 1, 1, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14412
(14412, 0, 0, 0, 264483, 36488, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14412
(14400, 1, 1, -1, 0, 0, 654, 545, 0, 0, 7, 0, 0, 0, 0, 25549), -- 14400
(14400, 0, 0, 0, 265575, 49279, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14400
(14398, 0, 0, -1, 0, 0, 654, 678, 0, 0, 7, 0, 0, 0, 0, 25549), -- 14398
(14396, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14396
(24680, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24680
(24920, 7, 7, -1, 0, 0, 638, 539, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24920
(24920, 6, 6, 0, 265635, 38363, 638, 539, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24920
(24920, 5, 5, 0, 265634, 38287, 638, 539, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24920
(24920, 4, 4, 0, 265634, 38287, 638, 539, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24920
(24920, 3, 3, 0, 265634, 38287, 638, 539, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24920
(24920, 2, 2, -1, 0, 0, 654, 611, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24920
(24920, 1, 1, 0, 265635, 38363, 654, 611, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24920
(24920, 0, 0, 0, 265635, 38363, 654, 611, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24920
(24575, 2, 2, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24575
(24575, 1, 1, 27, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24575
(24575, 0, 0, 0, 266403, 201775, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24575
(24672, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24672
(24673, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24673
(24646, 1, 1, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24646
(24646, 0, 0, 0, 256045, 50086, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24646
(24616, 1, 1, 0, 266512, 37953, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24616
(24616, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24616
(24578, 0, 0, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 24578
(14404, 3, 3, -1, 0, 0, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14404
(14404, 2, 2, 0, 265423, 49339, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14404
(14404, 1, 1, 0, 265422, 49338, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14404
(14404, 0, 0, 0, 265421, 49337, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549), -- 14404
(14399, 1, 1, -1, 0, 0, 654, 545, 0, 0, 7, 0, 0, 0, 0, 25549), -- 14399
(14399, 0, 0, 0, 265253, 49280, 654, 545, 0, 0, 1, 0, 0, 0, 0, 25549); -- 14399


-- Quest Poi Points
DELETE FROM `quest_poi_points` WHERE (`QuestID`=14382 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=14382 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=14382 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14369 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=14369 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=14369 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=14369 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=14369 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=14369 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=14369 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=14369 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=14369 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=14369 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=14369 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14366 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14336 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14321 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14293 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=14293 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=26129 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14157 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14280 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14099 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14078 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14368 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=14368 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=14368 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=14368 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14212 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14294 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14094 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=14094 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=14094 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=14094 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=14094 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=14094 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=14094 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=14094 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=14094 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=14094 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=14094 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=14094 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=14094 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=14094 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=14094 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=14094 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=14094 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=14094 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=14094 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=14094 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14093 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=14093 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=14093 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=14093 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=14093 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=14093 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=14093 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=14093 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=14093 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=14093 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=14093 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=14093 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=14093 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=14093 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=14093 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=14093 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14091 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14348 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=14348 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=14348 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=14348 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=14348 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=14348 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=14348 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=14348 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=14348 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14320 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14313 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14222 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=14222 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=14222 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=14222 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=14222 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=14222 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=14222 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=14222 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=14222 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=14222 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14218 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=14218 AND `Idx1`=6 AND `Idx2`=2) OR (`QuestID`=14218 AND `Idx1`=6 AND `Idx2`=1) OR (`QuestID`=14218 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=14218 AND `Idx1`=5 AND `Idx2`=3) OR (`QuestID`=14218 AND `Idx1`=5 AND `Idx2`=2) OR (`QuestID`=14218 AND `Idx1`=5 AND `Idx2`=1) OR (`QuestID`=14218 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=14218 AND `Idx1`=4 AND `Idx2`=3) OR (`QuestID`=14218 AND `Idx1`=4 AND `Idx2`=2) OR (`QuestID`=14218 AND `Idx1`=4 AND `Idx2`=1) OR (`QuestID`=14218 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=14218 AND `Idx1`=3 AND `Idx2`=6) OR (`QuestID`=14218 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=14218 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=14218 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=14218 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=14218 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=14218 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=14218 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=14218 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=14218 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=14218 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=14218 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=14218 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=14218 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=14218 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=14218 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=14218 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=14218 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=14218 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=14218 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=14218 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=14218 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=14218 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=14218 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=14218 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=14218 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=14218 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=14218 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=14218 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=14218 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=14218 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=14218 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=14218 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=14218 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14204 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=14204 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=14204 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=14204 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=14204 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=14204 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=14204 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=14204 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14154 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=14154 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24930 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=24930 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=24930 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=24930 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=24930 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=24930 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=24930 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=24930 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=24930 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=24930 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=24930 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=24930 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=24930 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=24930 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=24930 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=24930 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=24930 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=24930 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=24930 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14098 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=14098 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=14098 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=14098 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=14098 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=14098 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=14098 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=14098 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=14098 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=14098 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=14098 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=14098 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14367 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14347 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=14347 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=14347 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=14347 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=14347 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=14347 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=14347 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=14347 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=14347 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=14347 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14221 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14214 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14159 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=28850 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14291 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES
(14382, 2, 0, -1844, 2567, 25549), -- 14382
(14382, 1, 0, -2197, 2595, 25549), -- 14382
(14382, 0, 0, -2101, 2692, 25549), -- 14382
(14369, 1, 0, -1844, 2567, 25549), -- 14369
(14369, 0, 9, -2211, 2475, 25549), -- 14369
(14369, 0, 8, -2243, 2554, 25549), -- 14369
(14369, 0, 7, -2115, 2683, 25549), -- 14369
(14369, 0, 6, -2103, 2686, 25549), -- 14369
(14369, 0, 5, -1958, 2711, 25549), -- 14369
(14369, 0, 4, -1943, 2694, 25549), -- 14369
(14369, 0, 3, -1933, 2563, 25549), -- 14369
(14369, 0, 2, -1978, 2528, 25549), -- 14369
(14369, 0, 1, -2058, 2470, 25549), -- 14369
(14369, 0, 0, -2179, 2462, 25549), -- 14369
(14366, 0, 0, -1865, 2267, 25549), -- 14366
(14336, 0, 0, -1921, 2309, 25549), -- 14336
(14321, 0, 0, -1865, 2267, 25549), -- 14321
(14293, 1, 0, -1673, 1345, 25549), -- 14293
(14293, 0, 0, -1786, 1438, 25549), -- 14293
(26129, 0, 0, -1768, 1348, 25549), -- 26129
(14157, 0, 0, -1749, 1426, 25549), -- 14157
(14280, 0, 0, -1697, 1309, 25549), -- 14280
(14099, 0, 0, -1633, 1304, 25549), -- 14099
(14078, 0, 0, -1405, 1447, 25549), -- 14078
(14368, 3, 0, -1843, 2564, 25549), -- 14368
(14368, 2, 0, -1935, 2541, 25549), -- 14368
(14368, 1, 0, -1932, 2562, 25549), -- 14368
(14368, 0, 0, -1987, 2509, 25549), -- 14368
(14212, 0, 0, -1540, 1571, 25549), -- 14212
(14294, 0, 0, -1741, 1663, 25549), -- 14294
(14094, 3, 0, -1465, 1404, 25549), -- 14094
(14094, 2, 8, -1574, 1401, 25549), -- 14094
(14094, 2, 7, -1561, 1433, 25549), -- 14094
(14094, 2, 6, -1524, 1442, 25549), -- 14094
(14094, 2, 5, -1441, 1441, 25549), -- 14094
(14094, 2, 4, -1419, 1429, 25549), -- 14094
(14094, 2, 3, -1430, 1399, 25549), -- 14094
(14094, 2, 2, -1466, 1362, 25549), -- 14094
(14094, 2, 1, -1510, 1328, 25549), -- 14094
(14094, 2, 0, -1549, 1305, 25549), -- 14094
(14094, 1, 0, -1465, 1404, 25549), -- 14094
(14094, 0, 8, -1574, 1401, 25549), -- 14094
(14094, 0, 7, -1561, 1433, 25549), -- 14094
(14094, 0, 6, -1524, 1442, 25549), -- 14094
(14094, 0, 5, -1441, 1441, 25549), -- 14094
(14094, 0, 4, -1419, 1429, 25549), -- 14094
(14094, 0, 3, -1430, 1399, 25549), -- 14094
(14094, 0, 2, -1466, 1362, 25549), -- 14094
(14094, 0, 1, -1510, 1328, 25549), -- 14094
(14094, 0, 0, -1549, 1305, 25549), -- 14094
(14093, 3, 0, -1438, 1401, 25549), -- 14093
(14093, 2, 6, -1595, 1336, 25549), -- 14093
(14093, 2, 5, -1572, 1441, 25549), -- 14093
(14093, 2, 4, -1523, 1459, 25549), -- 14093
(14093, 2, 3, -1442, 1451, 25549), -- 14093
(14093, 2, 2, -1376, 1427, 25549), -- 14093
(14093, 2, 1, -1371, 1347, 25549), -- 14093
(14093, 2, 0, -1477, 1323, 25549), -- 14093
(14093, 1, 0, -1438, 1401, 25549), -- 14093
(14093, 0, 6, -1575, 1345, 25549), -- 14093
(14093, 0, 5, -1572, 1441, 25549), -- 14093
(14093, 0, 4, -1523, 1459, 25549), -- 14093
(14093, 0, 3, -1442, 1451, 25549), -- 14093
(14093, 0, 2, -1376, 1427, 25549), -- 14093
(14093, 0, 1, -1371, 1347, 25549), -- 14093
(14093, 0, 0, -1477, 1323, 25549), -- 14093
(14091, 0, 0, -1438, 1401, 25549), -- 14091
(14348, 1, 0, -1921, 2309, 25549), -- 14348
(14348, 0, 7, -2008, 2288, 25549), -- 14348
(14348, 0, 6, -2002, 2319, 25549), -- 14348
(14348, 0, 5, -1979, 2383, 25549), -- 14348
(14348, 0, 4, -1942, 2404, 25549), -- 14348
(14348, 0, 3, -1932, 2407, 25549), -- 14348
(14348, 0, 2, -1898, 2384, 25549), -- 14348
(14348, 0, 1, -1904, 2313, 25549), -- 14348
(14348, 0, 0, -1932, 2246, 25549), -- 14348
(14320, 0, 0, -1926, 2409, 25549), -- 14320
(14313, 0, 0, -1863, 2266, 25549), -- 14313
(14222, 1, 0, -1620, 1498, 25549), -- 14222
(14222, 0, 8, -1614, 1515, 25549), -- 14222
(14222, 0, 7, -1610, 1527, 25549), -- 14222
(14222, 0, 6, -1603, 1534, 25549), -- 14222
(14222, 0, 5, -1559, 1568, 25549), -- 14222
(14222, 0, 4, -1555, 1569, 25549), -- 14222
(14222, 0, 3, -1550, 1564, 25549), -- 14222
(14222, 0, 2, -1546, 1560, 25549), -- 14222
(14222, 0, 1, -1586, 1508, 25549), -- 14222
(14222, 0, 0, -1602, 1505, 25549), -- 14222
(14218, 7, 0, -1540, 1571, 25549), -- 14218
(14218, 6, 2, -1712, 1684, 25549), -- 14218
(14218, 6, 1, -1697, 1692, 25549), -- 14218
(14218, 6, 0, -1710, 1671, 25549), -- 14218
(14218, 5, 3, -1745, 1590, 25549), -- 14218
(14218, 5, 2, -1733, 1596, 25549), -- 14218
(14218, 5, 1, -1716, 1591, 25549), -- 14218
(14218, 5, 0, -1748, 1570, 25549), -- 14218
(14218, 4, 3, -1674, 1672, 25549), -- 14218
(14218, 4, 2, -1675, 1680, 25549), -- 14218
(14218, 4, 1, -1657, 1671, 25549), -- 14218
(14218, 4, 0, -1665, 1671, 25549), -- 14218
(14218, 3, 6, -1697, 1598, 25549), -- 14218
(14218, 3, 5, -1702, 1611, 25549), -- 14218
(14218, 3, 4, -1703, 1625, 25549), -- 14218
(14218, 3, 3, -1673, 1637, 25549), -- 14218
(14218, 3, 2, -1663, 1641, 25549), -- 14218
(14218, 3, 1, -1666, 1626, 25549), -- 14218
(14218, 3, 0, -1680, 1580, 25549), -- 14218
(14218, 2, 10, -1465, 1515, 25549), -- 14218
(14218, 2, 9, -1480, 1522, 25549), -- 14218
(14218, 2, 8, -1492, 1552, 25549), -- 14218
(14218, 2, 7, -1478, 1571, 25549), -- 14218
(14218, 2, 6, -1470, 1581, 25549), -- 14218
(14218, 2, 5, -1453, 1594, 25549), -- 14218
(14218, 2, 4, -1446, 1597, 25549), -- 14218
(14218, 2, 3, -1419, 1585, 25549), -- 14218
(14218, 2, 2, -1412, 1573, 25549), -- 14218
(14218, 2, 1, -1407, 1526, 25549), -- 14218
(14218, 2, 0, -1432, 1514, 25549), -- 14218
(14218, 1, 8, -1581, 1623, 25549), -- 14218
(14218, 1, 7, -1592, 1639, 25549), -- 14218
(14218, 1, 6, -1580, 1675, 25549), -- 14218
(14218, 1, 5, -1576, 1682, 25549), -- 14218
(14218, 1, 4, -1554, 1708, 25549), -- 14218
(14218, 1, 3, -1542, 1697, 25549), -- 14218
(14218, 1, 2, -1515, 1665, 25549), -- 14218
(14218, 1, 1, -1555, 1626, 25549), -- 14218
(14218, 1, 0, -1573, 1618, 25549), -- 14218
(14218, 0, 6, -1515, 1621, 25549), -- 14218
(14218, 0, 5, -1507, 1690, 25549), -- 14218
(14218, 0, 4, -1445, 1682, 25549), -- 14218
(14218, 0, 3, -1436, 1675, 25549), -- 14218
(14218, 0, 2, -1432, 1670, 25549), -- 14218
(14218, 0, 1, -1425, 1610, 25549), -- 14218
(14218, 0, 0, -1485, 1593, 25549), -- 14218
(14204, 1, 0, -1790, 1427, 25549), -- 14204
(14204, 0, 6, -1807, 1446, 25549), -- 14204
(14204, 0, 5, -1808, 1529, 25549), -- 14204
(14204, 0, 4, -1742, 1513, 25549), -- 14204
(14204, 0, 3, -1730, 1506, 25549), -- 14204
(14204, 0, 2, -1716, 1482, 25549), -- 14204
(14204, 0, 1, -1729, 1462, 25549), -- 14204
(14204, 0, 0, -1756, 1438, 25549), -- 14204
(14154, 1, 0, -1680, 1437, 25549), -- 14154
(14154, 0, 0, -1680, 1442, 25549), -- 14154
(24930, 2, 0, -1767, 1353, 25549), -- 24930
(24930, 1, 8, -1723, 1354, 25549), -- 24930
(24930, 1, 7, -1764, 1398, 25549), -- 24930
(24930, 1, 6, -1795, 1466, 25549), -- 24930
(24930, 1, 5, -1747, 1490, 25549), -- 24930
(24930, 1, 4, -1682, 1415, 25549), -- 24930
(24930, 1, 3, -1660, 1388, 25549), -- 24930
(24930, 1, 2, -1654, 1379, 25549), -- 24930
(24930, 1, 1, -1662, 1344, 25549), -- 24930
(24930, 1, 0, -1680, 1337, 25549), -- 24930
(24930, 0, 8, -1723, 1354, 25549), -- 24930
(24930, 0, 7, -1764, 1398, 25549), -- 24930
(24930, 0, 6, -1795, 1466, 25549), -- 24930
(24930, 0, 5, -1747, 1490, 25549), -- 24930
(24930, 0, 4, -1682, 1415, 25549), -- 24930
(24930, 0, 3, -1660, 1388, 25549), -- 24930
(24930, 0, 2, -1654, 1379, 25549), -- 24930
(24930, 0, 1, -1662, 1344, 25549), -- 24930
(24930, 0, 0, -1680, 1337, 25549), -- 24930
(14098, 2, 0, -1438, 1401, 25549), -- 14098
(14098, 1, 6, -1572, 1336, 25549), -- 14098
(14098, 1, 5, -1583, 1363, 25549), -- 14098
(14098, 1, 4, -1566, 1431, 25549), -- 14098
(14098, 1, 3, -1538, 1439, 25549), -- 14098
(14098, 1, 2, -1499, 1371, 25549), -- 14098
(14098, 1, 1, -1487, 1338, 25549), -- 14098
(14098, 1, 0, -1552, 1309, 25549), -- 14098
(14098, 0, 3, -1460, 1416, 25549), -- 14098
(14098, 0, 2, -1464, 1440, 25549), -- 14098
(14098, 0, 1, -1425, 1437, 25549), -- 14098
(14098, 0, 0, -1399, 1404, 25549), -- 14098
(14367, 0, 0, -1844, 2567, 25549), -- 14367
(14347, 1, 0, -1921, 2309, 25549), -- 14347
(14347, 0, 8, -2065, 2291, 25549), -- 14347
(14347, 0, 7, -2068, 2298, 25549), -- 14347
(14347, 0, 6, -2078, 2340, 25549), -- 14347
(14347, 0, 5, -2050, 2414, 25549), -- 14347
(14347, 0, 4, -2034, 2422, 25549), -- 14347
(14347, 0, 3, -1917, 2406, 25549), -- 14347
(14347, 0, 2, -1906, 2356, 25549), -- 14347
(14347, 0, 1, -1981, 2210, 25549), -- 14347
(14347, 0, 0, -2019, 2208, 25549), -- 14347
(14221, 0, 0, -1620, 1498, 25549), -- 14221
(14214, 0, 0, -1804, 1407, 25549), -- 14214
(14159, 0, 0, -1814, 1428, 25549), -- 14159
(28850, 0, 0, -1680, 1442, 25549), -- 28850
(14291, 0, 0, -1768, 1348, 25549); -- 14291

DELETE FROM `quest_poi_points` WHERE (`QuestID`=26706 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=26706 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24681 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=24681 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=24681 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=24681 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=24681 AND `Idx1`=0 AND `Idx2`=11) OR (`QuestID`=24681 AND `Idx1`=0 AND `Idx2`=10) OR (`QuestID`=24681 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=24681 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=24681 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=24681 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=24681 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=24681 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=24681 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=24681 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=24681 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=24681 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24675 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=24675 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=24675 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=24675 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=24675 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=24675 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=24675 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=24675 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=24675 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=24675 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=24675 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=24675 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=24675 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=24675 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24674 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=24674 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24677 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24593 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=24593 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=24593 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=24593 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24627 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=24627 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=24627 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=24627 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=24627 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=24627 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=24627 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=24627 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=24627 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=24627 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24483 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24472 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=24472 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=24472 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=24472 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=24472 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=24472 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=24472 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=24472 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=24472 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24468 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=24468 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=24468 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=24468 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=24468 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=24468 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=24468 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=24468 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=24468 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=24468 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=24468 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=24468 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=24468 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24438 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14466 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14401 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=14401 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14416 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=14416 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=14416 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=14416 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=14416 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=14416 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14403 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14397 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14395 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=14395 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=14395 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=14395 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=14395 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=14395 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=14395 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=14395 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=14395 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=14395 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=14395 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14368 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=14368 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=14368 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=14368 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14382 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=14382 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=14382 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14369 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=14369 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=14369 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=14369 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=14369 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=14369 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=14369 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=14369 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=14369 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=14369 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=14369 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24679 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=24679 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24602 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=24602 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=24602 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=24602 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=24602 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=24602 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=24602 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=24602 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=24602 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=24602 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=24602 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=24602 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=24602 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24903 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24904 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=24904 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24628 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=24628 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=24628 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=24628 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=24628 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=24628 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=24628 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=24628 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=24628 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24501 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=24501 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24495 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=24495 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=24495 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=24495 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=24495 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=24495 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=24495 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=24495 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=24495 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=24495 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=24495 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=24495 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=24495 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=24495 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=24495 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=24495 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24484 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=24484 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=24484 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=24484 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=24484 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=24484 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=24484 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=24484 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14406 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14386 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=14386 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24678 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24902 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24676 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=24676 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=24676 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=24676 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=24676 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=24676 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=24676 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=24676 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=24676 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=24676 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=24676 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=24676 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24592 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=24592 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=24592 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24617 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14465 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14405 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14412 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=14412 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=14412 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=14412 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=14412 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=14412 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=14412 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=14412 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14400 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=14400 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14398 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14396 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24680 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24920 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=24920 AND `Idx1`=6 AND `Idx2`=11) OR (`QuestID`=24920 AND `Idx1`=6 AND `Idx2`=10) OR (`QuestID`=24920 AND `Idx1`=6 AND `Idx2`=9) OR (`QuestID`=24920 AND `Idx1`=6 AND `Idx2`=8) OR (`QuestID`=24920 AND `Idx1`=6 AND `Idx2`=7) OR (`QuestID`=24920 AND `Idx1`=6 AND `Idx2`=6) OR (`QuestID`=24920 AND `Idx1`=6 AND `Idx2`=5) OR (`QuestID`=24920 AND `Idx1`=6 AND `Idx2`=4) OR (`QuestID`=24920 AND `Idx1`=6 AND `Idx2`=3) OR (`QuestID`=24920 AND `Idx1`=6 AND `Idx2`=2) OR (`QuestID`=24920 AND `Idx1`=6 AND `Idx2`=1) OR (`QuestID`=24920 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=24920 AND `Idx1`=5 AND `Idx2`=7) OR (`QuestID`=24920 AND `Idx1`=5 AND `Idx2`=6) OR (`QuestID`=24920 AND `Idx1`=5 AND `Idx2`=5) OR (`QuestID`=24920 AND `Idx1`=5 AND `Idx2`=4) OR (`QuestID`=24920 AND `Idx1`=5 AND `Idx2`=3) OR (`QuestID`=24920 AND `Idx1`=5 AND `Idx2`=2) OR (`QuestID`=24920 AND `Idx1`=5 AND `Idx2`=1) OR (`QuestID`=24920 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=24920 AND `Idx1`=4 AND `Idx2`=2) OR (`QuestID`=24920 AND `Idx1`=4 AND `Idx2`=1) OR (`QuestID`=24920 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=24920 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=24920 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=24920 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=24920 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=24920 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=24920 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=24920 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=24920 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=24920 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=24920 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=24920 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=24920 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=24920 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=24920 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=24920 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24575 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=24575 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=24575 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=24575 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=24575 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=24575 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=24575 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=24575 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=24575 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=24575 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=24575 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=24575 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24672 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24673 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24646 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=24646 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24616 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=24616 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24578 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14404 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=14404 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=14404 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=14404 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14399 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=14399 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES
(26706, 1, 0, -1274, 2125, 25549), -- 26706
(26706, 0, 0, -1299, 2129, 25549), -- 26706
(24681, 2, 0, -1322, 2120, 25549), -- 24681
(24681, 1, 2, -1222, 2610, 25549), -- 24681
(24681, 1, 1, -1193, 2604, 25549), -- 24681
(24681, 1, 0, -1270, 2588, 25549), -- 24681
(24681, 0, 11, -1418, 2315, 25549), -- 24681
(24681, 0, 10, -1422, 2408, 25549), -- 24681
(24681, 0, 9, -1399, 2515, 25549), -- 24681
(24681, 0, 8, -1369, 2565, 25549), -- 24681
(24681, 0, 7, -1294, 2629, 25549), -- 24681
(24681, 0, 6, -1146, 2615, 25549), -- 24681
(24681, 0, 5, -1065, 2596, 25549), -- 24681
(24681, 0, 4, -983, 2534, 25549), -- 24681
(24681, 0, 3, -944, 2461, 25549), -- 24681
(24681, 0, 2, -963, 2440, 25549), -- 24681
(24681, 0, 1, -1070, 2382, 25549), -- 24681
(24681, 0, 0, -1259, 2308, 25549), -- 24681
(24675, 2, 0, -1366, 1217, 25549), -- 24675
(24675, 1, 5, -1582, 1016, 25549), -- 24675
(24675, 1, 4, -1603, 1080, 25549), -- 24675
(24675, 1, 3, -1366, 1055, 25549), -- 24675
(24675, 1, 2, -1328, 1044, 25549), -- 24675
(24675, 1, 1, -1285, 989, 25549), -- 24675
(24675, 1, 0, -1551, 950, 25549), -- 24675
(24675, 0, 6, -1553, 1145, 25549), -- 24675
(24675, 0, 5, -1579, 1186, 25549), -- 24675
(24675, 0, 4, -1540, 1191, 25549), -- 24675
(24675, 0, 3, -1446, 1177, 25549), -- 24675
(24675, 0, 2, -1431, 1143, 25549), -- 24675
(24675, 0, 1, -1474, 1132, 25549), -- 24675
(24675, 0, 0, -1520, 1132, 25549), -- 24675
(24674, 1, 0, -1373, 1230, 25549), -- 24674
(24674, 0, 0, -1207, 912, 25549), -- 24674
(24677, 0, 0, -1369, 1210, 25549), -- 24677
(24593, 3, 0, -2070, 1278, 25549), -- 24593
(24593, 2, 0, -2076, 1265, 25549), -- 24593
(24593, 1, 0, -2067, 1261, 25549), -- 24593
(24593, 0, 0, -2061, 1270, 25549), -- 24593
(24627, 1, 0, -2070, 1278, 25549), -- 24627
(24627, 0, 8, -2314, 1622, 25549), -- 24627
(24627, 0, 7, -2314, 1661, 25549), -- 24627
(24627, 0, 6, -2313, 1688, 25549), -- 24627
(24627, 0, 5, -2195, 1682, 25549), -- 24627
(24627, 0, 4, -2075, 1583, 25549), -- 24627
(24627, 0, 3, -2018, 1514, 25549), -- 24627
(24627, 0, 2, -2019, 1449, 25549), -- 24627
(24627, 0, 1, -2056, 1417, 25549), -- 24627
(24627, 0, 0, -2118, 1416, 25549), -- 24627
(24483, 0, 0, -2457, 1556, 25549), -- 24483
(24472, 2, 0, -2222, 1810, 25549), -- 24472
(24472, 1, 0, -2278, 1969, 25549), -- 24472
(24472, 0, 6, -2394, 1791, 25549), -- 24472
(24472, 0, 5, -2394, 1992, 25549), -- 24472
(24472, 0, 4, -2359, 1993, 25549), -- 24472
(24472, 0, 3, -2310, 1970, 25549), -- 24472
(24472, 0, 2, -2266, 1829, 25549), -- 24472
(24472, 0, 1, -2318, 1789, 25549), -- 24472
(24472, 0, 0, -2351, 1784, 25549), -- 24472
(24468, 1, 11, -2091, 1700, 25549), -- 24468
(24468, 1, 10, -2114, 1752, 25549), -- 24468
(24468, 1, 9, -2114, 1780, 25549), -- 24468
(24468, 1, 8, -2101, 1817, 25549), -- 24468
(24468, 1, 7, -2070, 1861, 25549), -- 24468
(24468, 1, 6, -2015, 1877, 25549), -- 24468
(24468, 1, 5, -1966, 1856, 25549), -- 24468
(24468, 1, 4, -1921, 1801, 25549), -- 24468
(24468, 1, 3, -1913, 1759, 25549), -- 24468
(24468, 1, 2, -1958, 1715, 25549), -- 24468
(24468, 1, 1, -1992, 1694, 25549), -- 24468
(24468, 1, 0, -2057, 1692, 25549), -- 24468
(24468, 0, 0, -2222, 1810, 25549), -- 24468
(24438, 0, 0, -2222, 1810, 25549), -- 24438
(14466, 0, 0, -1518, 2608, 25549), -- 14466
(14401, 1, 0, -2143, 2427, 25549), -- 14401
(14401, 0, 0, -2112, 2330, 25549), -- 14401
(14416, 1, 0, -2060, 2254, 25549), -- 14416
(14416, 0, 4, -2270, 2167, 25549), -- 14416
(14416, 0, 3, -2253, 2238, 25549), -- 14416
(14416, 0, 2, -2114, 2186, 25549), -- 14416
(14416, 0, 1, -2084, 2170, 25549), -- 14416
(14416, 0, 0, -2180, 2161, 25549), -- 14416
(14403, 0, 0, -2300, 2279, 25549), -- 14403
(14397, 0, 0, -1902, 2256, 25549), -- 14397
(14395, 1, 9, -2114, 2506, 25549), -- 14395
(14395, 1, 8, -2126, 2509, 25549), -- 14395
(14395, 1, 7, -2090, 2613, 25549), -- 14395
(14395, 1, 6, -2022, 2706, 25549), -- 14395
(14395, 1, 5, -1991, 2708, 25549), -- 14395
(14395, 1, 4, -1902, 2673, 25549), -- 14395
(14395, 1, 3, -1905, 2588, 25549), -- 14395
(14395, 1, 2, -1918, 2561, 25549), -- 14395
(14395, 1, 1, -1932, 2542, 25549), -- 14395
(14395, 1, 0, -1966, 2497, 25549), -- 14395
(14395, 0, 0, -1898, 2526, 25549), -- 14395
(14368, 3, 0, -1843, 2564, 25549), -- 14368
(14368, 2, 0, -1935, 2541, 25549), -- 14368
(14368, 1, 0, -1932, 2562, 25549), -- 14368
(14368, 0, 0, -1987, 2509, 25549), -- 14368
(14382, 2, 0, -1844, 2567, 25549), -- 14382
(14382, 1, 0, -2197, 2595, 25549), -- 14382
(14382, 0, 0, -2101, 2692, 25549), -- 14382
(14369, 1, 0, -1844, 2567, 25549), -- 14369
(14369, 0, 9, -2211, 2475, 25549), -- 14369
(14369, 0, 8, -2243, 2554, 25549), -- 14369
(14369, 0, 7, -2115, 2683, 25549), -- 14369
(14369, 0, 6, -2103, 2686, 25549), -- 14369
(14369, 0, 5, -1958, 2711, 25549), -- 14369
(14369, 0, 4, -1943, 2694, 25549), -- 14369
(14369, 0, 3, -1933, 2563, 25549), -- 14369
(14369, 0, 2, -1978, 2528, 25549), -- 14369
(14369, 0, 1, -2058, 2470, 25549), -- 14369
(14369, 0, 0, -2179, 2462, 25549), -- 14369
(24679, 1, 0, -1627, 1914, 25549), -- 24679
(24679, 0, 0, -1728, 1872, 25549), -- 24679
(24602, 2, 0, -1728, 1872, 25549), -- 24602
(24602, 1, 5, -1583, 1977, 25549), -- 24602
(24602, 1, 4, -1542, 1963, 25549), -- 24602
(24602, 1, 3, -1552, 1902, 25549), -- 24602
(24602, 1, 2, -1568, 1858, 25549), -- 24602
(24602, 1, 1, -1616, 1832, 25549), -- 24602
(24602, 1, 0, -1671, 1830, 25549), -- 24602
(24602, 0, 5, -1715, 1928, 25549), -- 24602
(24602, 0, 4, -1709, 1970, 25549), -- 24602
(24602, 0, 3, -1656, 1999, 25549), -- 24602
(24602, 0, 2, -1652, 1967, 25549), -- 24602
(24602, 0, 1, -1657, 1942, 25549), -- 24602
(24602, 0, 0, -1672, 1911, 25549), -- 24602
(24903, 0, 0, -1645, 1645, 25549), -- 24903
(24904, 1, 0, -1678, 1612, 25549), -- 24904
(24904, 0, 0, -1664, 1590, 25549), -- 24904
(24628, 1, 0, -2064, 1259, 25549), -- 24628
(24628, 0, 7, -2302, 1586, 25549), -- 24628
(24628, 0, 6, -2297, 1631, 25549), -- 24628
(24628, 0, 5, -2209, 1693, 25549), -- 24628
(24628, 0, 4, -1999, 1571, 25549), -- 24628
(24628, 0, 3, -2004, 1474, 25549), -- 24628
(24628, 0, 2, -2012, 1382, 25549), -- 24628
(24628, 0, 1, -2042, 1330, 25549), -- 24628
(24628, 0, 0, -2127, 1326, 25549), -- 24628
(24501, 1, 0, -2457, 1556, 25549), -- 24501
(24501, 0, 0, -2246, 1289, 25549), -- 24501
(24495, 3, 0, -2460, 1544, 25549), -- 24495
(24495, 2, 6, -2469, 1320, 25549), -- 24495
(24495, 2, 5, -2481, 1479, 25549), -- 24495
(24495, 2, 4, -2436, 1512, 25549), -- 24495
(24495, 2, 3, -2418, 1475, 25549), -- 24495
(24495, 2, 2, -2405, 1380, 25549), -- 24495
(24495, 2, 1, -2406, 1330, 25549), -- 24495
(24495, 2, 0, -2451, 1319, 25549), -- 24495
(24495, 1, 0, -2460, 1544, 25549), -- 24495
(24495, 0, 6, -2469, 1320, 25549), -- 24495
(24495, 0, 5, -2481, 1479, 25549), -- 24495
(24495, 0, 4, -2436, 1512, 25549), -- 24495
(24495, 0, 3, -2418, 1475, 25549), -- 24495
(24495, 0, 2, -2405, 1380, 25549), -- 24495
(24495, 0, 1, -2406, 1330, 25549), -- 24495
(24495, 0, 0, -2451, 1319, 25549), -- 24495
(24484, 1, 0, -2457, 1556, 25549), -- 24484
(24484, 0, 6, -2447, 1309, 25549), -- 24484
(24484, 0, 5, -2466, 1310, 25549), -- 24484
(24484, 0, 4, -2474, 1346, 25549), -- 24484
(24484, 0, 3, -2481, 1387, 25549), -- 24484
(24484, 0, 2, -2440, 1464, 25549), -- 24484
(24484, 0, 1, -2404, 1444, 25549), -- 24484
(24484, 0, 0, -2294, 1302, 25549), -- 24484
(14406, 0, 0, -2060, 2254, 25549), -- 14406
(14386, 1, 0, -1844, 2567, 25549), -- 14386
(14386, 0, 0, -1950, 2701, 25549), -- 14386
(24678, 0, 0, -1728, 1872, 25549), -- 24678
(24902, 0, 0, -1664, 1590, 25549), -- 24902
(24676, 3, 0, -1369, 1210, 25549), -- 24676
(24676, 2, 0, -1108, 1107, 25549), -- 24676
(24676, 1, 0, -1129, 1148, 25549), -- 24676
(24676, 0, 8, -1120, 1083, 25549), -- 24676
(24676, 0, 7, -1183, 1127, 25549), -- 24676
(24676, 0, 6, -1187, 1180, 25549), -- 24676
(24676, 0, 5, -1176, 1181, 25549), -- 24676
(24676, 0, 4, -1153, 1177, 25549), -- 24676
(24676, 0, 3, -1136, 1167, 25549), -- 24676
(24676, 0, 2, -1115, 1139, 25549), -- 24676
(24676, 0, 1, -1104, 1089, 25549), -- 24676
(24676, 0, 0, -1102, 1075, 25549), -- 24676
(24592, 2, 0, -2045, 977, 25549), -- 24592
(24592, 1, 0, -1922, 985, 25549), -- 24592
(24592, 0, 0, -2103, 791, 25549), -- 24592
(24617, 0, 0, -2070, 1278, 25549), -- 24617
(14465, 0, 0, -1583, 2555, 25549), -- 14465
(14405, 0, 0, -1902, 2256, 25549), -- 14405
(14412, 1, 0, -2300, 2279, 25549), -- 14412
(14412, 0, 6, -2359, 2251, 25549), -- 14412
(14412, 0, 5, -2376, 2284, 25549), -- 14412
(14412, 0, 4, -2367, 2297, 25549), -- 14412
(14412, 0, 3, -2326, 2333, 25549), -- 14412
(14412, 0, 2, -2318, 2320, 25549), -- 14412
(14412, 0, 1, -2318, 2254, 25549), -- 14412
(14412, 0, 0, -2324, 2247, 25549), -- 14412
(14400, 1, 0, -2115, 2434, 25549), -- 14400
(14400, 0, 0, -2116, 2432, 25549), -- 14400
(14398, 0, 0, -2143, 2432, 25549), -- 14398
(14396, 0, 0, -1898, 2526, 25549), -- 14396
(24680, 0, 0, -1322, 2120, 25549), -- 24680
(24920, 7, 0, -1645, 1645, 25549), -- 24920
(24920, 6, 11, -1225, 1453, 25549), -- 24920
(24920, 6, 10, -1278, 1506, 25549), -- 24920
(24920, 6, 9, -1299, 1531, 25549), -- 24920
(24920, 6, 8, -1349, 1773, 25549), -- 24920
(24920, 6, 7, -1291, 1777, 25549), -- 24920
(24920, 6, 6, -1060, 1722, 25549), -- 24920
(24920, 6, 5, -908, 1653, 25549), -- 24920
(24920, 6, 4, -835, 1561, 25549), -- 24920
(24920, 6, 3, -835, 1544, 25549), -- 24920
(24920, 6, 2, -886, 1465, 25549), -- 24920
(24920, 6, 1, -1051, 1402, 25549), -- 24920
(24920, 6, 0, -1053, 1402, 25549), -- 24920
(24920, 5, 7, -1303, 1748, 25549), -- 24920
(24920, 5, 6, -1194, 1728, 25549), -- 24920
(24920, 5, 5, -1181, 1719, 25549), -- 24920
(24920, 5, 4, -1166, 1707, 25549), -- 24920
(24920, 5, 3, -1142, 1686, 25549), -- 24920
(24920, 5, 2, -1112, 1624, 25549), -- 24920
(24920, 5, 1, -1120, 1550, 25549), -- 24920
(24920, 5, 0, -1273, 1482, 25549), -- 24920
(24920, 4, 2, -824, 1562, 25549), -- 24920
(24920, 4, 1, -816, 1552, 25549), -- 24920
(24920, 4, 0, -818, 1540, 25549), -- 24920
(24920, 3, 5, -1111, 1472, 25549), -- 24920
(24920, 3, 4, -1115, 1479, 25549), -- 24920
(24920, 3, 3, -1078, 1486, 25549), -- 24920
(24920, 3, 2, -1003, 1489, 25549), -- 24920
(24920, 3, 1, -939, 1449, 25549), -- 24920
(24920, 3, 0, -1060, 1443, 25549), -- 24920
(24920, 2, 0, -1645, 1645, 25549), -- 24920
(24920, 1, 4, -1320, 1734, 25549), -- 24920
(24920, 1, 3, -1326, 1749, 25549), -- 24920
(24920, 1, 2, -1316, 1743, 25549), -- 24920
(24920, 1, 1, -1311, 1729, 25549), -- 24920
(24920, 1, 0, -1313, 1718, 25549), -- 24920
(24920, 0, 2, -1349, 1773, 25549), -- 24920
(24920, 0, 1, -1339, 1773, 25549), -- 24920
(24920, 0, 0, -1341, 1764, 25549), -- 24920
(24575, 2, 0, -1369, 1210, 25549), -- 24575
(24575, 1, 4, -1136, 855, 25549), -- 24575
(24575, 1, 3, -1202, 890, 25549), -- 24575
(24575, 1, 2, -1204, 1089, 25549), -- 24575
(24575, 1, 1, -1024, 988, 25549), -- 24575
(24575, 1, 0, -1072, 841, 25549), -- 24575
(24575, 0, 5, -1184, 952, 25549), -- 24575
(24575, 0, 4, -1187, 1058, 25549), -- 24575
(24575, 0, 3, -1019, 997, 25549); -- 24575

INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES
(24575, 0, 2, -1016, 981, 25549), -- 24575
(24575, 0, 1, -1064, 850, 25549), -- 24575
(24575, 0, 0, -1097, 836, 25549), -- 24575
(24672, 0, 0, -2213, 1152, 25549), -- 24672
(24673, 0, 0, -2457, 1556, 25549), -- 24673
(24646, 1, 0, -2070, 1278, 25549), -- 24646
(24646, 0, 0, -2119, 1630, 25549), -- 24646
(24616, 1, 0, -2238, 1429, 25549), -- 24616
(24616, 0, 0, -2273, 1447, 25549), -- 24616
(24578, 0, 0, -2273, 1447, 25549), -- 24578
(14404, 3, 0, -2300, 2279, 25549), -- 14404
(14404, 2, 0, -2337, 2257, 25549), -- 14404
(14404, 1, 0, -2347, 2304, 25549), -- 14404
(14404, 0, 0, -2362, 2261, 25549), -- 14404
(14399, 1, 0, -2156, 2372, 25549), -- 14399
(14399, 0, 0, -2157, 2371, 25549); -- 14399


-- Quest Details
DELETE FROM `quest_details` WHERE `ID` IN (14347 /*14347*/, 14222 /*14222*/, 14294 /*14294*/, 14204 /*14204*/, 14154 /*14154*/, 14291 /*14291*/, 14099 /*14099*/, 14094 /*14094*/, 14091 /*14091*/, 14078 /*14078*/, 14368 /*14368*/, 14367 /*14367*/, 14336 /*14336*/, 14321 /*14321*/, 14320 /*14320*/, 14313 /*14313*/, 14221 /*14221*/, 14159 /*14159*/, 14093 /*14093*/, 14369 /*14369*/, 14366 /*14366*/, 14348 /*14348*/, 14212 /*14212*/, 28850 /*28850*/, 24930 /*24930*/, 14157 /*14157*/, 14098 /*14098*/, 14382 /*14382*/, 14218 /*14218*/, 14293 /*14293*/, 14214 /*14214*/, 26129 /*26129*/, 14280 /*14280*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(14347, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14347
(14222, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14222
(14294, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14294
(14204, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14204
(14154, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14154
(14291, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14291
(14099, 25, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14099
(14094, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14094
(14091, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14091
(14078, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14078
(14368, 18, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14368
(14367, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14367
(14336, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14336
(14321, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14321
(14320, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14320
(14313, 1, 5, 274, 0, 0, 0, 0, 0, 25549), -- 14313
(14221, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14221
(14159, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14159
(14093, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14093
(14369, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14369
(14366, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14366
(14348, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14348
(14212, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14212
(28850, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 28850
(24930, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 24930
(14157, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14157
(14098, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14098
(14382, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14382
(14218, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14218
(14293, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14293
(14214, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14214
(26129, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 26129
(14280, 1, 0, 0, 0, 0, 0, 0, 0, 25549); -- 14280

DELETE FROM `quest_details` WHERE `ID` IN (24678 /*24678*/, 24903 /*24903*/, 24902 /*24902*/, 24904 /*24904*/, 24675 /*24675*/, 24592 /*24592*/, 24673 /*24673*/, 24593 /*24593*/, 24646 /*24646*/, 24628 /*24628*/, 24616 /*24616*/, 24501 /*24501*/, 24484 /*24484*/, 14404 /*14404*/, 14401 /*14401*/, 14386 /*14386*/, 24679 /*24679*/, 24674 /*24674*/, 24575 /*24575*/, 24483 /*24483*/, 24472 /*24472*/, 24468 /*24468*/, 24438 /*24438*/, 14399 /*14399*/, 14398 /*14398*/, 14397 /*14397*/, 14395 /*14395*/, 14396 /*14396*/, 24680 /*24680*/, 24920 /*24920*/, 24676 /*24676*/, 24627 /*24627*/, 24617 /*24617*/, 24578 /*24578*/, 24495 /*24495*/, 14466 /*14466*/, 14465 /*14465*/, 14400 /*14400*/, 14406 /*14406*/, 14403 /*14403*/, 26706 /*26706*/, 24681 /*24681*/, 24602 /*24602*/, 24677 /*24677*/, 24672 /*24672*/, 14405 /*14405*/, 14412 /*14412*/, 14416 /*14416*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(24678, 1, 0, 0, 0, 0, 0, 0, 0, 25549), -- 24678
(24903, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 24903
(24902, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 24902
(24904, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 24904
(24675, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 24675
(24592, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 24592
(24673, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 24673
(24593, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 24593
(24646, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 24646
(24628, 1, 0, 0, 0, 0, 0, 0, 0, 25549), -- 24628
(24616, 1, 25, 0, 0, 0, 0, 0, 0, 25549), -- 24616
(24501, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 24501
(24484, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 24484
(14404, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14404
(14401, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14401
(14386, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14386
(24679, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 24679
(24674, 1, 0, 0, 0, 0, 0, 0, 0, 25549), -- 24674
(24575, 1, 274, 0, 0, 0, 0, 0, 0, 25549), -- 24575
(24483, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 24483
(24472, 1, 6, 5, 0, 0, 0, 0, 0, 25549), -- 24472
(24468, 1, 25, 0, 0, 0, 0, 0, 0, 25549), -- 24468
(24438, 1, 0, 0, 0, 0, 0, 0, 0, 25549), -- 24438
(14399, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14399
(14398, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14398
(14397, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14397
(14395, 25, 6, 1, 0, 0, 0, 0, 0, 25549), -- 14395
(14396, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14396
(24680, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 24680
(24920, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 24920
(24676, 1, 0, 0, 0, 0, 0, 0, 0, 25549), -- 24676
(24627, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 24627
(24617, 25, 0, 0, 0, 0, 0, 0, 0, 25549), -- 24617
(24578, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 24578
(24495, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 24495
(14466, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14466
(14465, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14465
(14400, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14400
(14406, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14406
(14403, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14403
(26706, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 26706
(24681, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 24681
(24602, 1, 0, 0, 0, 0, 0, 0, 0, 25549), -- 24602
(24677, 274, 0, 0, 0, 0, 0, 0, 0, 25549), -- 24677
(24672, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 24672
(14405, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14405
(14412, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- 14412
(14416, 0, 0, 0, 0, 0, 0, 0, 0, 25549); -- 14416


-- Quest Request Items
DELETE FROM `quest_request_items` WHERE `ID` IN (14094 /*14094*/, 14154 /*14154*/);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(14094, 0, 0, 0, 0, 'Have you salvaged the supplies, $n?', 25549), -- 14094
(14154, 0, 0, 0, 0, 'Getting there!  Careful or we\'ll lose him!', 25549); -- 14154

DELETE FROM `quest_request_items` WHERE `ID` IN (24646 /*24646*/, 14399 /*14399*/, 26706 /*26706*/, 24628 /*24628*/, 24495 /*24495*/, 24472 /*24472*/, 14400 /*14400*/, 24602 /*24602*/, 14404 /*14404*/, 14401 /*14401*/, 24675 /*24675*/);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(24646, 0, 0, 0, 0, 'Do you have the scythe, $n?', 25549), -- 24646
(14399, 0, 0, 0, 0, 'How goes it, dear?  Will you be staying for tea?', 25549), -- 14399
(26706, 0, 0, 0, 0, 'The only risks worth taking are the ones that lead to victories worth having.', 25549), -- 26706
(24628, 0, 0, 0, 0, 'You\'ve returned, $n.', 25549), -- 24628
(24495, 0, 0, 0, 0, 'Any luck finding those pages?', 25549), -- 24495
(24472, 0, 0, 0, 0, 'How did it go, $n?', 25549), -- 24472
(14400, 0, 0, 0, 0, 'Did you find everything okay, dear?', 25549), -- 14400
(24602, 0, 0, 0, 0, 'You\'re back, $n.', 25549), -- 24602
(14404, 0, 0, 0, 0, 'Do you have my supplies, $n?', 25549), -- 14404
(14401, 0, 0, 0, 0, 'You\'re such a charming young $gman:lady;, $n.', 25549), -- 14401
(24675, 0, 0, 0, 0, 'Did you get what I needed, $n?', 25549); -- 24675


-- Quest Template
DELETE FROM `quest_template` WHERE `ID` IN (14348 /*14348*/, 14336 /*14336*/, 14320 /*14320*/, 14313 /*14313*/, 14159 /*14159*/, 14291 /*14291*/, 46277 /*46277*/, 14369 /*14369*/, 14366 /*14366*/, 14212 /*14212*/, 14204 /*14204*/, 26129 /*26129*/, 14154 /*14154*/, 28850 /*28850*/, 14157 /*14157*/, 14093 /*14093*/, 46735 /*46735*/, 14368 /*14368*/, 14367 /*14367*/, 14375 /*14375*/, 14221 /*14221*/, 14214 /*14214*/, 14280 /*14280*/, 46736 /*46736*/, 14382 /*14382*/, 14347 /*14347*/, 14321 /*14321*/, 14222 /*14222*/, 14218 /*14218*/, 14294 /*14294*/, 14293 /*14293*/, 24930 /*24930*/, 14099 /*14099*/, 14094 /*14094*/, 14098 /*14098*/, 14091 /*14091*/, 14078 /*14078*/);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MaxScalingLevel`, `QuestPackageID`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardXPMultiplier`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardMoneyMultiplier`, `RewardBonusMoney`, `RewardDisplaySpell1`, `RewardDisplaySpell2`, `RewardDisplaySpell3`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `RewardArtifactXPDifficulty`, `RewardArtifactXPMultiplier`, `RewardArtifactCategoryID`, `Flags`, `FlagsEx`, `RewardSkillLineID`, `RewardNumSkillUps`, `PortraitGiver`, `PortraitTurnIn`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `ItemDrop1`, `ItemDrop2`, `ItemDrop3`, `ItemDrop4`, `ItemDropQuantity1`, `ItemDropQuantity2`, `ItemDropQuantity3`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardChoiceItemDisplayID1`, `RewardChoiceItemDisplayID2`, `RewardChoiceItemDisplayID3`, `RewardChoiceItemDisplayID4`, `RewardChoiceItemDisplayID5`, `RewardChoiceItemDisplayID6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionCapIn1`, `RewardFactionCapIn2`, `RewardFactionCapIn3`, `RewardFactionCapIn4`, `RewardFactionCapIn5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `RewardFactionFlags`, `AreaGroupID`, `TimeAllowed`, `AllowableRaces`, `QuestRewardID`, `Expansion`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RewardCurrencyID1`, `RewardCurrencyID2`, `RewardCurrencyID3`, `RewardCurrencyID4`, `RewardCurrencyQty1`, `RewardCurrencyQty2`, `RewardCurrencyQty3`, `RewardCurrencyQty4`, `PortraitGiverText`, `PortraitGiverName`, `PortraitTurnInText`, `PortraitTurnInName`, `AcceptedSoundKitID`, `CompleteSoundKitID`, `VerifiedBuild`) VALUES
(14348, 2, 5, 0, 1875, 5, 4714, 0, 0, 14366, 5, 1, 100, 5, 1, 270, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 131080, 0, 0, 0, 0, 0, 2723, 0, 0, 0, 5, 0, 0, 0, 49202, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'You Can\'t Take \'Em Alone', 'Use the Black Gunpowder Kegs to blow up 4 Horrid Abominations.', 'Look here, $n.  The big fat ones -- abominations, they\'re called -- they don\'t go down easy, so don\'t tackle them on your own.$B$BBut I have an idea so crazy it might just work.  Or it might get you killed, if we\'re not careful, I suppose.$B$BThere\'s barrels of gunpowder beneath the sheds and by the windmills.  Grab them and toss \'em right on the abominations\' heads.  I\'ll take care of the rest with this trusty old blunderbuss.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14348
(14336, 2, 5, 0, 0, 5, 4714, 0, 0, 0, 3, 1, 50, 3, 1, 120, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 16777224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 3, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Kill or Be Killed', 'Speak to Prince Liam Greymane outside of Duskhaven.', 'The reefs have always protected us from a coastal attack.  The earthquakes must\'ve opened a passage for the Forsaken ships.$B$BQuick, $n.  Slow down the attackers while I get the rest of the militia ready.$B$BI think I can hear the Prince and some of our men engaging the Forsaken even as we speak.  Speak to Liam and see how you can be of use.$B$BOh... and make sure he doesn\'t get himself killed.  I\'m afraid he might be a little reckless in his current state.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14336
(14320, 2, 5, 0, 0, 5, 4714, 0, 0, 0, 5, 1, 100, 5, 1, 270, 0, 0, 0, 69296, 0, 0, 0, 0, 1, 0, 2097160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'In Need of Ingredients', 'Find the Crate of Mandrake Essence.', 'Ah, yes.  The effects of the Curse cannot ever be fully cured as far as we know.$B$BWith treatment, however, your mind will remain yours... and not that of a wild animal.$B$BWe are fortunate that the treatment worked on you.  Normally, I can only treat recent infections.$B$BWe\'ll need to continue your medication if we\'re to have you reverse the Curse.$B$BI will need mandrake essence to brew another batch of my serum for you.  You will find a crate stashed beneath a shed southwest of town.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14320
(14313, 2, 5, 0, 0, 5, 4714, 0, 0, 14320, 3, 1, 50, 3, 1, 120, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 2, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Among Humans Again', 'Speak to Krennan Aranas in Duskhaven.', 'So Krennan\'s potion did not kill you?  Well, I suppose that means the human inside of you is in control then.$B$BI guess I won\'t be shooting you after all.  At least not yet.$B$BGo speak to Krennan Aranas and give him the good news.  He\'s in charge of the house where we keep... your kind.$B$BJust remember, $n.  I\'ve got my eye on you.  You so much as try anything funny and you\'ll get a bullet between the eyes.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14313
(14159, 2, 4, 0, 0, 1, 4714, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 67352, 0, 0, 0, 0, 1, 0, 1074266112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'The Rebel Lord\'s Arsenal', 'Speak to Josiah Avery at the Military District in Gilneas City.', 'The arsenal Crowley speaks of is in the cellar of a building just west of here.$B$BIt is unnerving that artillery was smuggled inside the city by my enemies, yet it might end up saving Gilnean lives today.$B$BFind Josiah Avery and requisition the rebel artillery.  We will put the weapons to good use.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14159
(14291, 2, 3, 0, 0, 1, 4714, 0, 0, 14157, 2, 1, 13, 2, 1, 30, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 524288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 2, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Safety in Numbers', 'Speak to King Genn Greymane in the military district.', 'I\'ve taught you all that is practical for now.$B$BIt is time we joined with the other survivors.  The others mentioned that King Greymane and his royal guard are just south of here.$B$BWe should go there and seek safety in numbers.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14291
(46277, 0, -1, 0, 0, 110, 0, 143, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 100729096, 33554432, 0, 0, 0, 0, 152654, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2045, 0, 0, 0, 0, 4, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 6, 'Contribute to Mage Tower', '', '', '', '', 1226, 0, 0, 0, 75, 0, 0, 0, '', '', '', '', 0, 0, 25549), -- 46277
(14369, 2, 6, 0, 1889, 4, 4714, 0, 0, 0, 5, 1, 125, 5, 1, 390, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Unleash the Beast', 'Kill 8 Forsaken Footsoldiers or Sailors.', 'I\'m not going to lie, $n.  I don\'t like the idea of having worgen among our ranks.$B$BWho knows how long \'til Krennan\'s concoction wears off and you\'re trying to chomp one of our heads off.$B$BUntil that time, however, we can make ample use of your ferocity.$B$BI want you to go out in the battlefield and kill as many of those Forsaken as you can, in as brutal a way as you can.$B$BWe\'re going to put the fear of the worgen in them, $n.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14369
(14366, 2, 5, 0, 0, 5, 4714, 0, 0, 14367, 4, 1, 75, 4, 1, 210, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 4, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Holding Steady', 'Speak to Gwen Armstead in Duskhaven.', 'We can take it from here, $n.  Check in with Mayor Armstead.$B$BThese are only a small part of the Forsaken\'s forces.  If we don\'t move quickly we\'re going to have bigger problems on our hands.$B$BSee what you can do to engage the Forsaken army at their landing location.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14366
(14212, 2, 5, 0, 0, 1, 4755, 0, 0, 14218, 4, 1, 75, 4, 1, 210, 0, 0, 0, 101644, 0, 0, 0, 0, 1, 0, 2621440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 4, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Sacrifices', 'Ride with Lord Darius Crowley and round up 30 Bloodfang Stalkers.', 'You don\'t have to do this, $n.  You\'ve done more than enough already.$B$BBut if you decide to stay... I\'d be a fool to turn you away.$B$BMy men have fortified their position inside the cathedral and are ready for what comes next.$B$BI\'m about to head there and take as many of these flea-ridden devils with me as I can.  You\'re welcome to come along for the ride.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14212
(14204, 2, 4, 0, 575, 1, 4714, 0, 0, 14214, 5, 1, 75, 5, 1, 210, 0, 0, 0, 43511, 0, 0, 48707, 0, 1, 0, 524288, 0, 0, 0, 0, 0, 66247, 0, 0, 0, 1, 0, 0, 0, 48707, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'From the Shadows', 'Defeat 6 Bloodfang Lurkers.', 'He turned into one of them... didn\'t he?  How do we even begin to fight an enemy that can do this to us?$B$BMy father\'s arsenal\'s certainly a good start, I suppose.$B$BWorgen are hiding in the alleys ahead.  Take one of my mastiffs to find them more easily.$B$BWe\'re going to need to clear the way ahead if we\'re going to move these cannons above ground.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14204
(26129, 2, 3, 0, 0, 1, 4714, 0, 0, 0, 1, 1, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 524288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 1, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Brothers In Arms', 'Speak to King Genn Greymane at the Military District in Gilneas City.', 'Listen, $n.  For the first time since the civil war I agree with Greymane.  Now is the time to put aside our quarrel.$B$BIt sure doesn\'t look like these beasts care much whether you\'re a rebel or a royal.$B$BSend word back to Greymane.  My men will join his.$B$BThere\'s a safehouse not far from here, in Josiah\'s cellar.  My lads stashed some heavy artillery there.$B$BTell our king that my arsenals are now at his disposal.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 26129
(14154, 2, 4, 0, 574, 1, 4755, 0, 0, 26129, 5, 1, 75, 5, 1, 210, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'By the Skin of His Teeth', 'Hold back the worgen atop the Gilneas City Prison for 2 minutes.', 'One of those mangy fleabags got Dempsey real good.  We cannot move him until we stabilize his bleeding.$B$BGive us a hand holding back these mongrels.  A couple of minutes is all we need, $Gbrother:sister;!', 'Survive while holding back the worgen for 2 minutes.', 'Speak to Lord Darius Crowley at the top of Stoneward Prison in Gilneas City.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14154
(28850, 2, 3, 0, 0, 1, 4755, 0, 0, 14154, 1, 1, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 524416, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 1, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 52430847, 0, 0, 'The Prison Rooftop', 'Speak to Darius Crowley upstairs in the Stoneward Prison in Gilneas City.', 'I don\'t understand why the king wants to waste time saving his hide, but if you want to risk your life, then be my guest.$B$BCrowley and his men are holed up upstairs, probably plotting against the king as we speak!', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 28850
(14157, 2, 4, 0, 0, 1, 4755, 0, 0, 28850, 1, 1, 7, 1, 1, 30, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 524288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 1, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Old Divisions', 'Speak to Captain Broderick inside Stoneward Prison in Gilneas City.', 'Lord Darius Crowley has been called many things.  Rebel.  Traitor.  Terrorist.$B$BBefore the civil war I called him... friend.$B$BI never blamed him for leading an insurrection against me.  His land and people were separated from Gilneas by a stone wall... but we had no choice.$B$BRegardless... Crowley is exactly the type of person we need now.$B$BEnter Stoneward Prison and ask Captain Broderick about Crowley\'s whereabouts.  I\'d send my own men, but there\'s still bad blood.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14157
(14093, 2, 2, 0, 0, 1, 4755, 0, 0, 14099, 6, 1, 65, 6, 1, 120, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 524288, 0, 0, 0, 0, 0, 55004, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 6, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 1, 0, 0, 4294967295, 0, 0, 'All Hell Breaks Loose', 'Prince Liam Greymane wants you to slay 6 Rampaging Worgen.', 'Worgen!  My father had warned me that Archmage Arugal\'s creations had run amok.$B$BBut where are they coming from?$B$BI suppose it doesn\'t matter.  Help us make quick work of them.  We\'ll show them what we Gilneans are made of!', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14093
(46735, 0, -1, 0, 0, 110, 0, 143, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 100728840, 33554432, 0, 0, 0, 0, 152654, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2045, 0, 0, 0, 0, 4, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Contribute to Command Center', '', '', '', '', 1226, 0, 0, 0, 75, 0, 0, 0, '', '', '', '', 0, 0, 25549), -- 46735
(14368, 2, 6, 0, 1888, 5, 4714, 0, 0, 0, 5, 1, 125, 5, 1, 390, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Save the Children!', 'Rescue Cynthia, Ashley and James in the Hammond Farmstead.', 'The military will not allow me outside the cellar, but my children are still in my farm!  Please, you must go find them.$B$BThe Forsaken have no regard for innocent life -- my kids are in great danger!$B$BTheir names are Cynthia, Ashley and James.  If you find them, bring them back here.  I\'ll be forever in your debt.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14368
(14367, 2, 6, 0, 0, 5, 4714, 0, 0, 0, 3, 1, 65, 3, 1, 180, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 16777224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 3, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'The Allens\' Storm Cellar', 'Speak to Lord Godfrey inside the storm cellar of the Allen Farmstead in Gilneas.', 'Lord Godfrey is leading the attack near the Forsaken\'s landing area.  See what you can do to help us keep the Forsaken back.$B$BI\'ve been told Godfrey has commandeered the storm cellar in the Allen Farmstead, far to the west.  Seek him there.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14367
(14375, 0, 5, 0, 0, 1, 4714, 0, 0, 0, 5, 1, 0, 0, 1, 270, 0, 0, 0, 68639, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Last Chance at Humanity', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14375
(14221, 2, 5, 0, 0, 1, 4755, 0, 0, 14222, 3, 1, 50, 3, 1, 120, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2621440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 3, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Never Surrender, Sometimes Retreat', 'Speak to Lord Darius Crowley inside the Light\'s Dawn Cathedral.', 'We had enough ammunition to carry on the civil war for another month.  Yet the worgen\'s numbers are such that we\'re nearly spent.$B$BWe don\'t want to be caught out here in the open when that happens.  Fall back inside the cathedral and report to the boss.  I\'m sure old Crowley will know what to do next.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14221
(14214, 2, 4, 0, 0, 1, 4755, 0, 0, 14293, 2, 1, 0, 0, 1, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 524288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 2, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Message to Greymane', 'Speak to King Genn Greymane in the Military District.', 'It\'s time, $n.  We\'ll take it from here.$B$BTell King Greymane that my father\'s arsenal will be at his disposal.  There\'s more than enough firepower here to blow the worgen from here to the north sea.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14214
(14280, 2, 2, 0, 0, 1, 4714, 21, 0, 14291, 5, 1, 35, 5, 1, 90, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 524288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 1, 0, 0, 4294967295, 0, 0, 'The Winds Know Your Name... Apparently', 'Speak to Celestine of the Harvest in the Military District.', 'Most of us made it here alive... but there are worgen on this side of the city as well.$B$BWe\'re going to continue heading south once everyone\'s accounted for.$B$BThat reminds me, someone was asking about you.  It was that harvest-witch, Celestine; she said the winds spoke your name.$B$BYou\'d best hurry, $n.  We\'re going to need you to get back to the worgen-smashing once you\'re done conversing with nature.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14280
(46736, 0, -1, 0, 0, 110, 0, 143, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 100728840, 33554432, 0, 0, 0, 0, 152654, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2045, 0, 0, 0, 0, 4, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Contribute to Nether Disruptor', '', '', '', '', 1226, 0, 0, 0, 75, 0, 0, 0, '', '', '', '', 0, 0, 25549), -- 46736
(14382, 2, 6, 0, 1901, 4, 4714, 0, 0, 0, 5, 1, 125, 5, 1, 390, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Two By Sea', 'Use the Forsaken Catapults to board the Forsaken ships and slay Captain Morris and Captain Anson.', 'The Forsaken catapults are kicking the snot out of us, $n.  And even if we do take care of them, they\'ve two ships with rows of cannons at the ready.$B$BI\'ve a plan to kill two birds with one stone.  You\'re the stone in this plan.$B$BTake out the machinists manning the catapults.  After this, use the catapults to launch yourself aboard the Forsaken ships.$B$BIf your aim isn\'t terrible, you should be able to land safely.  Once onboard, go below decks and take care of each ship\'s captain.  Good luck, $c.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14382
(14347, 2, 5, 0, 1874, 5, 4714, 0, 0, 14366, 5, 1, 100, 5, 1, 270, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Hold the Line', 'Kill 10 Forsaken Invaders.', '$n!  I\'m still not sure if you\'re alive or dead... human or worgen...$B$BI\'m not even sure if I\'m really awake.  But THIS I am sure of...$B$BWe\'re going to kill a great many of these motherless Forsaken.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14347
(14321, 2, 5, 0, 0, 5, 4714, 0, 0, 14336, 5, 1, 100, 5, 1, 270, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Invasion', 'Speak to Gwen Armstead in Duskhaven.', '<A long knife with a skull ornament on its hilt sticks out of the militiaman\'s ribs.  As you look around for clues, you spot a pair of savage-looking warships at the shore.>$B$B<Gilneas is being invaded.  Bring word back to Duskhaven\'s Mayor, Gwen Armstead.>', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14321
(14222, 2, 5, 0, 0, 1, 4755, 0, 0, 0, 7, 1, 300, 7, 1, 390, 0, 0, 0, 93477, 0, 0, 0, 0, 1, 0, 2621440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 1, 0, 0, 4294967295, 0, 0, 'Last Stand', 'Kill 8 Frenzied Stalkers.', 'We\'ve got a good chokepoint here, $n.  Feel free to say a prayer if that\'s your sort of thing.$B$BTake courage and let\'s kill these mutts.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14222
(14218, 2, 5, 0, 9647, 1, 4755, 0, 0, 14221, 5, 1, 100, 5, 1, 270, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 524288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'By Blood and Ash', 'Slay 80 Bloodfang Stalkers using the Rebel Cannons.', 'The time has come, $n.  If we\'re going to put a dent in their numbers, the time is now.$B$BWe have the position.$B$BWe have the firepower.$B$BAll that remains to be seen is whether we have the courage... and I sure don\'t see a coward standing in front of me.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14218
(14294, 2, 4, 0, 0, 1, 4755, 0, 0, 0, 1, 1, 7, 1, 1, 30, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 524288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 1, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Time to Regroup', 'Speak to King Genn Greymane at Greymane Court in Gilneas City.', 'We\'ve done all we can here.  Let King Greymane know we\'ve bought some time.$B$BI\'ve a feeling it won\'t be long \'til the worgen are back in force.$B$BWe\'ll need to fall back to Greymane Court to the west, if that\'s the case.  It\'s the last place we can hold out without being trapped like fish in a barrel.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14294
(14293, 2, 4, 0, 0, 1, 4755, 0, 0, 0, 3, 1, 35, 3, 1, 120, 0, 0, 0, 93555, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 3, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Save Krennan Aranas', 'Rescue Krennan Aranas.', 'All these years after the war and Crowley was still hiding enough firepower in that cellar to level half of the district.$B$BIt might have to come to that, unfortunately.$B$BWe can\'t open fire just yet, there is a civilian trapped on the other side of the prison.$B$BNot just any civilian, either.  Krennan Aranas is one of the most brilliant alchemists this world has known.$B$BOne of his potions saved my daughter, Tess, from dying soon after being born.$B$BTake my horse and rescue him.  Krennan must live.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14293
(24930, 2, 3, 0, 9646, 1, 4755, 0, 0, 0, 4, 1, 40, 4, 1, 120, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 524288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 4, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'While You\'re At It', 'Kill 5 Bloodfang Worgen.', 'Fine by me if King Greymane wants you to risk your life to rescue a known traitor.$B$BDo me a favor and do something useful while you\'re out there and kill these cursed fleabags.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 24930
(14099, 2, 3, 0, 0, 1, 4755, 0, 0, 0, 5, 1, 50, 5, 1, 150, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 524288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Royal Orders', 'Speak to Gwen Armstead in the Military District to the southeast.', 'It\'s time for you to leave, $n.  Go to the Military District with the other civilians.$B$BCheck in with Gwen Armstead when you cross the bridge to the southeast... see if everyone\'s okay.$B$BI will stay here with the guards and cover the civilians\' retreat.$B$BGo now.  That is an order!', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14099
(14094, 2, 2, 0, 0, 1, 4755, 0, 0, 0, 6, 1, 65, 6, 1, 120, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 524288, 0, 0, 0, 0, 0, 52040, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 6, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Salvage the Supplies', 'Salvage 4 Supply Crates.', 'Listen, $n.  We can\'t let our supplies get destroyed.$B$BWith Gilneas walled off from the outside world, we won\'t last through winter if we lose much more of our stock.$B$BPlease help me salvage what you can.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14094
(14098, 2, 2, 0, 0, 1, 4755, 0, 0, 14099, 6, 1, 65, 6, 1, 120, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 524288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 6, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Evacuate the Merchant Square', 'Evacuate 3 Civilian Homes.', 'The civilians aren\'t safe here anymore.  Not even inside their homes.$B$BWe\'re doing our best to stop the worgen from getting indoors, but their numbers are too great.$B$BHelp us by evacuating the civilian homes.  My father\'s army in the prison district will be able to better protect them.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14098
(14091, 2, 2, 0, 0, 1, 4755, 0, 0, 0, 5, 1, 35, 5, 1, 90, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 17301504, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 1, 0, 0, 4294967295, 0, 0, 'Something\'s Amiss', 'Return to Prince Liam Greymane in the Merchant Square.', 'The lieutenant appears to have died from severe wounds.  The prince might want to hear this news.$B$BYou hear the sound of fighting coming from the market.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14091
(14078, 2, 1, 0, 0, 1, 4755, 0, 0, 14091, 5, 1, 15, 5, 1, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 524288, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 1, 0, 0, 4294967295, 0, 0, 'Lockdown!', 'Find Lieutenant Walden in the northwestern end of the Merchant Square.', 'What are you still doing here, citizen?  Haven\'t you heard?  The city\'s under complete lockdown.$B$BGo see Lieutenant Walden -- he\'ll give you further directions for evacuation.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549); -- 14078

DELETE FROM `quest_template` WHERE `ID` IN (26706 /*26706*/, 24679 /*24679*/, 24904 /*24904*/, 24593 /*24593*/, 24646 /*24646*/, 24578 /*24578*/, 24483 /*24483*/, 14467 /*14467*/, 14404 /*14404*/, 14401 /*14401*/, 14406 /*14406*/, 14398 /*14398*/, 31725 /*31725*/, 24602 /*24602*/, 24678 /*24678*/, 24902 /*24902*/, 24675 /*24675*/, 24674 /*24674*/, 24575 /*24575*/, 24673 /*24673*/, 24628 /*24628*/, 24617 /*24617*/, 24501 /*24501*/, 24484 /*24484*/, 14405 /*14405*/, 14399 /*14399*/, 14403 /*14403*/, 14395 /*14395*/, 14396 /*14396*/, 14386 /*14386*/, 24680 /*24680*/, 24920 /*24920*/, 24676 /*24676*/, 24592 /*24592*/, 24672 /*24672*/, 24627 /*24627*/, 24616 /*24616*/, 24495 /*24495*/, 24472 /*24472*/, 24468 /*24468*/, 14397 /*14397*/, 24681 /*24681*/, 24903 /*24903*/, 24677 /*24677*/, 24438 /*24438*/, 14466 /*14466*/, 14465 /*14465*/, 14412 /*14412*/, 14400 /*14400*/, 14416 /*14416*/);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MaxScalingLevel`, `QuestPackageID`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardXPMultiplier`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardMoneyMultiplier`, `RewardBonusMoney`, `RewardDisplaySpell1`, `RewardDisplaySpell2`, `RewardDisplaySpell3`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `RewardArtifactXPDifficulty`, `RewardArtifactXPMultiplier`, `RewardArtifactCategoryID`, `Flags`, `FlagsEx`, `RewardSkillLineID`, `RewardNumSkillUps`, `PortraitGiver`, `PortraitTurnIn`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `ItemDrop1`, `ItemDrop2`, `ItemDrop3`, `ItemDrop4`, `ItemDropQuantity1`, `ItemDropQuantity2`, `ItemDropQuantity3`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardChoiceItemDisplayID1`, `RewardChoiceItemDisplayID2`, `RewardChoiceItemDisplayID3`, `RewardChoiceItemDisplayID4`, `RewardChoiceItemDisplayID5`, `RewardChoiceItemDisplayID6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionCapIn1`, `RewardFactionCapIn2`, `RewardFactionCapIn3`, `RewardFactionCapIn4`, `RewardFactionCapIn5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `RewardFactionFlags`, `AreaGroupID`, `TimeAllowed`, `AllowableRaces`, `QuestRewardID`, `Expansion`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RewardCurrencyID1`, `RewardCurrencyID2`, `RewardCurrencyID3`, `RewardCurrencyID4`, `RewardCurrencyQty1`, `RewardCurrencyQty2`, `RewardCurrencyQty3`, `RewardCurrencyQty4`, `PortraitGiverText`, `PortraitGiverName`, `PortraitTurnInText`, `PortraitTurnInName`, `AcceptedSoundKitID`, `CompleteSoundKitID`, `VerifiedBuild`) VALUES
(26706, 2, 12, 0, 0, 12, 4714, 0, 0, 0, 7, 1, 1500, 7, 1, 7800, 0, 0, 0, 95840, 0, 0, 0, 0, 1, 0, 2097288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 7, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Endgame', 'Jump on a Hippogryph when Tobias signals you and destroy the Horde Gunship.', 'We need to get rid of that flying gunship if our people have any chance of escaping.$B$BHere\'s the plan.  Keel Harbor had its share of rebel sympathizers in the old days.  I\'ve managed to round up a hefty amount of incendiary explosives from one of our storehouses.$B$BWe\'re going to hit the enemy with a force small enough to fly undetected.  The night elf hippogryphs should do the trick.$B$BTobias will give you the signal when we\'re ready to go.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 26706
(24679, 2, 11, 0, 0, 5, 4714, 0, 0, 24680, 5, 1, 400, 5, 1, 2220, 0, 0, 0, 0, 0, 0, 51956, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51956, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Patriarch\'s Blessing', 'Place the Blessed Offerings at Aderic\'s Tomb.', 'You\'ve done it, $n.  Even in these times we must honor our dead.$B$BTake these offerings and place them at Aderic\'s tomb.$B$BLet\'s hope that\'s enough to placate the ghosts of our ancestors.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 24679
(24904, 2, 11, 0, 2100, 5, 4714, 0, 0, 24902, 7, 1, 1300, 7, 1, 3300, 0, 0, 0, 0, 0, 0, 50334, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50334, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 7, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'The Battle for Gilneas City', 'Achieve victory in the Battle for Gilneas City.', 'The time has come, $n.  We\'ve rallied and armed every available Gilnean.$B$BIt is time to meet the enemy head on.  Time to settle the score with Sylvanas and her Forsaken dogs once and for all.$B$BLiam is heading the assault from this gate.  King Greymane and my father are leading the assault on the other districts.$B$BYou have a crucial role to play in this as well.  Take this rapier.  Use it to inspire our men and women in combat.  Speak to Krennan Aranas to take part in the battle for Gilneas City.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 24904
(24593, 2, 9, 0, 2050, 5, 4714, 0, 0, 24673, 5, 1, 300, 5, 1, 780, 0, 0, 0, 72829, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Neither Human Nor Beast', 'Drink from the Well of Tranquility, the Well of Balance and the Well of Fury.', 'It is time, $n.  This... alchemy that has kept the beast inside you at bay will not last for long.$B$BThe first cursed worgen were night elf druids like our new allies.  They, however, abandoned the balance that the rest of their kind embraced and allowed the beast to take over their minds.$B$BIt is only fitting that their brethren be the ones that deliver us from the Curse.  Go, $C.  Drink from the waters of Tal\'doren and make peace with yourself.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 24593
(24646, 2, 9, 0, 0, 5, 4714, 0, 0, 24593, 4, 1, 200, 4, 1, 570, 0, 0, 0, 0, 0, 0, 50134, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50134, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 4, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Take Back What\'s Ours', 'Blow the Horn of Tal\'doren at the Woods\' End Cabin and retrieve the Mysterious Artifact inside.', 'Ever since the Forsaken invaded Gilneas, we\'ve tried to keep the location of the Scythe of Elune secret.   We moved it at night to one of many safe locations.  The Dark Rangers got close, but never found it... until now.$B$BThey were last spotted at the Woods\' End Cabin, west of here.  Blow this horn when you find them and Tobias and his trackers will engage the Dark Rangers.$B$BOnly then will it be safe for you to venture inside the cabin and take back the scythe.  Hurry, $n.  It must not reach Sylvanas.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 24646
(24578, 2, 8, 0, 0, 5, 4714, 0, 0, 24616, 3, 1, 110, 3, 1, 330, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 3, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 1, 0, 0, 4294967295, 0, 0, 'The Blackwald', 'Investigate the Bradshaw mill just outside Stormglen Village.', 'It took a while, but I think I\'ve put together what happened here.  At least partially.$B$BThere were survivors of the Curse in this town.  They joined others in the mountains, in Tempest\'s Reach.$B$BEveryone left, except the man who kept the journal, old man Bradshaw.  He noticed that the worgen attacks had stopped all of a sudden and decided to venture into the Blackwald.$B$BThere is an abandoned mill just northeast of town, it was where Bradshaw lived.  See if you can find any clues there.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 24578
(24483, 2, 8, 0, 0, 5, 4714, 0, 0, 24484, 3, 1, 0, 0, 1, 330, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 3, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Stormglen', 'Speak to Gwen Armstead in Stormglen.', 'Our carriage drivers were told to regroup in the fishing town of Stormglen.  Our scouts report there might be shelter and supplies to be found there.$B$BMeet Gwen Armstead there, she\'ll be in charge of taking care of our people.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 24483
(14467, 0, 7, 0, 0, 4, 0, 0, 0, 0, 2, 1, 0, 0, 1, 120, 0, 0, 0, 69257, 0, 0, 0, 0, 1, 0, 2097160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 2, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Alas, Gilneas!', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14467
(14404, 2, 7, 0, 0, 4, 4714, 0, 0, 14405, 4, 1, 125, 4, 1, 360, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 52039, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 4, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Not Quite Shipshape', 'Obtain Planks of Wood, Coal Tar and Shipwright\'s Tools.', 'Evacuation, you say?  Well, we had that very same idea all on our own after these Forsaken started showing up.$B$BWe were thinking the water would be the safest way out of here.$B$BUnfortunately our boats didn\'t come out from that last earthquake unscathed.$B$BI need some additional supplies to finish my repairs: wood, tar and my tools.  Get them for me so that my brothers and I can make it out of here.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14404
(14401, 2, 7, 0, 1920, 4, 4714, 0, 0, 14402, 4, 1, 125, 4, 1, 360, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 4, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Grandma\'s Cat', 'Retrieve Chance the cat.', 'Right!  About the evacuation, dear.$B$BI just cannot leave without my cat.  He\'s an adorable orange tabby.$B$BChance\'s favorite spot to play is a broken down cart near an arbor northeast of here.$B$BBring him here and we\'ll be on our way.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14401
(14406, 2, 7, 0, 0, 4, 4714, 0, 0, 14416, 1, 1, 17, 1, 1, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 1, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'The Crowley Orchard', 'Speak to Lorna Crowley at the Crowley Orchard.', 'Of course you remember Lord Darius Crowley\'s daughter, Lorna.$B$BShe never quite recovered after losing her father in Gilneas City.  She\'s basically led the life of a hermit.  The only visitor she\'s allowed into her house has been Krennan... and he won\'t say a word about the whole thing.$B$BSend word to her about the evacuation.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14406
(14398, 2, 7, 0, 0, 4, 4714, 0, 0, 14399, 3, 1, 0, 0, 1, 240, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 3, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Grandma Wahl', 'Find Grandma Wahl at the Wahl Cottage.', 'It\'s not going to be easy to get Grandma Wahl to come with us.  You must do whatever you can to convince her, though.$B$BYou\'ll find her at the Wahl Cottage.  Please, $n.  Do not lose your patience with her.  Her mind is old and she\'s not entirely lucid.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14398
(31725, 2, -1, 0, 0, 1, -394, 102, 0, 31726, 5, 1, 125, 5, 1, 23700, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 524288, 2176, 0, 0, 0, 0, 89125, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18875469, 0, 0, 'Lindsay', 'Defeat Lindsay in a pet battle.', 'Are you ready to show off what you can do? There\'s a little girl up in Redridge Mountains that has made a real storm on the battle scene.$b$bFind Lindsay at the dock at Camp Everstill. She may be young, but her impressive record is nothing to be scoffed at!', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 31725
(24602, 2, 11, 0, 0, 5, 4714, 0, 0, 24679, 5, 1, 400, 5, 1, 2220, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Laid to Rest', 'Obtain 5 Unearthed Mementos.', 'In our hurried escape for safety, we disturbed the resting homes of our ancestors, $n.  A grave sin, if you\'ll pardon the pun.$B$BIt is tradition that a small memento be buried on top of a Gilnean\'s graveyard, beneath the shallow earth.  The stampede of people fleeing these tunnels has unearthed these mementos and angered the spirits.$B$BFind them and bring them to me.  We\'ll see to it that the dead return to their eternal slumber.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 24602
(24678, 2, 11, 0, 0, 5, 4714, 0, 0, 24602, 5, 1, 400, 5, 1, 2220, 0, 0, 0, 0, 0, 0, 50220, 0, 1, 0, 268566536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50220, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Knee-Deep', 'Use the Half-Burnt Torch to get to the other side of the tunnel beneath Gilneas City.', 'It\'s time to pack it in, $n.  Most of our people have made it through -- it\'s your turn now.$B$BTake this torch, you\'re going to need it.  The tunnel is full of nasty, knee-biting critters of the worst kind.  Use it to keep them at bay.$B$BSpeak to Krennan on the other side.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 24678
(24902, 2, 11, 0, 0, 5, 4755, 0, 0, 24903, 6, 1, 800, 6, 1, 2760, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 6, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'The Hunt For Sylvanas', 'Follow Tobias Mistmantle in the Hunt for Sylvanas.', 'It\'s true then?  Gilneas has lost her favorite son.$B$BWe will mourn when this is all over but not a day sooner.$B$BWe will not allow ourselves the luxury of grief while the enemy still breathes Gilnean air.$B$BMy father\'s men are ready to strike while we still have the Banshee Queen\'s trail.  Just say the word if you\'re ready.  Liam deserves swift vengeance.', 'Hunt for Sylvanas', 'Return to Lorna Crowley at Greymane Square in Gilneas City.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 24902
(24675, 2, 10, 0, 0, 5, 4714, 0, 0, 0, 6, 1, 350, 5, 1, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 33554440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 6, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Last Meal', 'Obtain 10 Sides of Stag Meat.', 'I\'m not dumb, $n.  I know what\'s ahead of us.$B$BOur people are going to go through those gates and fight against an enemy that is better trained, has more numbers and better weapons than us.$B$BEven if we succeed, it\'ll be at a great cost.  For most of us, today\'s meal will be the last.$B$BI cannot fight, but I sure can cook.  Bring me meat from the stags that roam this area and I will ensure that the last meal these folks get will be their best.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 24675
(24674, 2, 11, 0, 2076, 5, 4714, 0, 0, 0, 4, 1, 300, 4, 1, 1680, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 134217736, 0, 0, 0, 7864, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 4, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 1, 0, 0, 4294967295, 0, 0, 'Slaves to No One', 'Slay Brothogg the Slavedriver inside Emberstone Mine.', 'I was one of the few that escaped, $n.  When the Forsaken took over our town and our mine, they treated us with utmost cruelty.$B$BThose of us who were weak and could not endure hard labor were worked to death by the abomination known as Brothogg.$B$BMy wife was among his victims, $c, and I swore that one day her death would be avenged.  I am too frail now, but you can deliver justice... for my wife... for Gilneas!', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 'Get rid of this... this... ABOMINATION.', 'Brothogg the Slavemaster', '', '', 890, 878, 25549), -- 24674
(24575, 2, 10, 0, 0, 5, 4714, 0, 0, 0, 5, 1, 350, 5, 1, 960, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49881, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 4, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Liberation Day', 'Free 5 Enslaved Villagers inside the Emberstone Mine.', 'We recently found out that the villagers at Emberstone survived most of the ravages of the Curse.$B$BUnfortunately their village wasn\'t as fortunate when it came to the Forsaken invasion.$B$BThe Forsaken have taken the villagers prisoner and are forcing them to work the nearby mine as slaves.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 24575
(24673, 2, 9, 0, 0, 5, 4714, 0, 0, 24672, 3, 1, 150, 3, 1, 390, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 3, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Return to Stormglen', 'Speak to Gwen Armstead in Stormglen.', 'It\'ll be a long time before our nation comes together again.  The old political divisions pale in comparison to what divides us now.$B$BYet if there was ever a time for us to come together and unite against a common enemy, it is now.  And it is you, $n, who have proven able to bridge the gap between our people.$B$BReturn to Stormglen and tell them it is safe to go through the Blackwald on their way to Tempest\'s Reach.  We will take care of any Forsaken who follow them.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 24673
(24628, 2, 11, 0, 0, 5, 4714, 0, 0, 0, 4, 1, 300, 4, 1, 1680, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 4, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Preparations', 'Bring 6 Moonleafs to Vassandra.', 'What you know as the Curse began as a heresy among our brethren.$B$BFaced with a losing battle against demonic forces, the Druids of the Pack eschewed the balance they were sworn to and allowed the beast to overtake them.$B$BThey were banished to the Emerald Dream where they live in eternal slumber under a tree identical to this one, but not before their curse spread to others.$B$BToday our ceremony will restore balance to your people. Bring me the leaf that grows only in Tal\'doren\'s vicinity.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 24628
(24617, 2, 9, 0, 0, 5, 4706, 0, 0, 24627, 5, 1, 300, 5, 1, 780, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Tal\'doren, the Wild Home', 'Speak to Darius Crowley at Tal\'doren, in the heart of the Blackwald.', 'There are others like you, $n.  And they too, were lost and confused.$B$BThere is a place where you belong.$B$BTal\'doren, the wild home, was once home to an order of druids who took the shape of wolves.$B$BIt is there that you will find the answers you seek.  It is also there that you will find someone who can offer guidance.  An old friend.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 24617
(24501, 2, 9, 0, 2006, 5, 4714, 0, 0, 0, 5, 1, 300, 5, 1, 780, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 134217736, 0, 0, 0, 22185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Queen-Sized Troubles', 'Slay Rygna at Rygna\'s Lair.', 'The spiders keep coming in alarming numbers, $n.  You\'re going to have to go into their lair and kill the broodmother.$B$BWe\'ve spotted the giant spider known as Rygna at the edge of the Blackwald in an area covered in thick webs.  It\'ll be dangerous, but we\'re all counting on you.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 'Find her in that cave, and come back alive. We\'re counting on you.', 'Rygna', '', '', 890, 878, 25549), -- 24501
(24484, 2, 8, 0, 0, 5, 4714, 0, 0, 24501, 5, 1, 225, 5, 1, 660, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 1, 0, 0, 4294967295, 0, 0, 'Pest Control', 'Kill 6 Vilebrood Skitterers in Stormglen.', 'Well, what do you know, $n?  All this time and Stormglen\'s been left mostly intact.$B$BIt\'s too bad the Forsaken are still working their way inland, but it\'ll make a fine place to rest our feet for a night or two.$B$BThe other half of town is overrun with spiders, so I\'ve asked the villagers to stay away from there.$B$BPerhaps you\'d like to lend a hand in clearing the spiders out?  I\'m certain our injured men and women will sleep more soundly if they know someone\'s keeping those eight-legged beasts at bay.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 24484
(14405, 2, 7, 0, 0, 4, 4714, 0, 0, 14465, 3, 1, 85, 3, 1, 240, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 3, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Escape By Sea', 'Return to Gwen Armstead in Duskhaven.', 'Thanks for your help, $n.  This ship is ready to sail.$B$BNow you go and tell Miss Armstead that we\'re not going to be part of the land evacuation.$B$BWe Haywards have been men of the sea for generations.  If we\'re to leave our home, then we\'ll do so by sea.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14405
(14399, 2, 7, 0, 0, 4, 4714, 0, 0, 14400, 4, 1, 125, 4, 1, 360, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 4, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Grandma\'s Lost It Alright', 'Find the Linen-Wrapped Book.', 'Leave?  Now?$B$BWell, if I must, then I must.  But will you be a sweetheart and find something for me?$B$BI\'ve lost my favorite book and won\'t leave without it.$B$B<After you explain the gravity of the situation, Grandma Wahl shakes her head condescendingly.>$B$BDear, just find the book will you?', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14399
(14403, 2, 7, 0, 0, 4, 4714, 0, 0, 0, 3, 1, 85, 3, 1, 240, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 16777224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 3, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'The Hayward Brothers', 'Speak to Sebastian Hayward at the Hayward Fishery.', 'The Hayward Fishery can be found far to the south.  The Hayward brothers have been running it for years.$B$BThey don\'t make it to town very often, except to trade their fish.  Send word to them that the evacuation is underway.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14403
(14395, 2, 6, 0, 1914, 4, 4714, 0, 0, 14397, 5, 1, 125, 5, 1, 390, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Gasping for Breath', 'Rescue 4 Drowning Watchmen.', '$n!  I was on my way when it happened.$B$BNo time to waste.  A good half of the town watch was in the area that collapsed.  Get in there and save as many as you can.$B$BMake sure to get them out of the water and onto shore.  I\'ll make sure they get any aid they need.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14395
(14396, 2, 6, 0, 0, 4, 4714, 0, 0, 14395, 3, 1, 65, 3, 1, 180, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 3, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'As the Land Shatters', 'Speak to Prince Liam Greymane at the Allen Farmstead.', 'What in the world was that, $n?$B$BThose were not cannons or catapults, that is for sure.$B$BGo outside and see what is going on.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14396
(14386, 2, 6, 0, 1905, 4, 4714, 0, 0, 0, 4, 1, 100, 4, 1, 270, 0, 0, 0, 69027, 0, 0, 49240, 0, 1, 0, 138412040, 0, 0, 0, 21746, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49240, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 4, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Leader of the Pack', 'Use the Mastiff Whistle to help you slay Dark Ranger Thyala.', 'Excellent work so far, $n.  Our scouts have identified the leader of the Forsaken ground assault.$B$BOne of Sylvanas\' handpicked dark rangers is overseeing the battlefront from the Walden house near the shore.  Take this whistle and use it when you\'re close to her.$B$BI\'ll have my men let loose our attack mastiffs to take her down.  Be careful, $n.  You don\'t want to engage her alone.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 'Don\'t forget to use the whistle!', 'Dark Ranger Thyala', '', '', 890, 878, 25549), -- 14386
(24680, 2, 12, 0, 0, 5, 4714, 0, 0, 24681, 1, 1, 50, 1, 1, 510, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 1, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Keel Harbor', 'Speak to Lord Darius Crowley at Keel Harbor in Gilneas.', 'We might\'ve lost our city, but at least it looks like the dead have forgiven us.$B$BMeet with the rest of the survivors in Keel Harbor.$B$BI\'m sure there\'s plenty to do before we\'re in the clear.  Genn hasn\'t arrived yet, so I suppose Lord Crowley will be in charge there.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 24680
(24920, 2, 11, 0, 0, 5, 4755, 0, 0, 24678, 6, 1, 800, 6, 1, 2760, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 6, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Slowing the Inevitable', 'Use the Captured Riding Bat to destroy 6 Forsaken Catapults and 40 Invading Forsaken.', 'As much as I want to exact swift and brutal revenge... I must honor my son\'s memory first.  He cared for his people first and foremost.$B$BThe Undertaker\'s Pass goes underground below Northgate River.  You must prevent the plague from being deployed while we evacuate our men, women and children to Aderic\'s Repose.$B$BWe captured one of the Forsaken\'s dreaded bombing bats.  I want you to fly the infernal beast as best you can and unleash hell upon those who seek to bring the Plague to our people.  Hurry!', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 24920
(24676, 2, 11, 0, 0, 5, 4714, 0, 0, 24904, 5, 1, 400, 5, 1, 2220, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Push Them Out', 'Slay 4 Forsaken Infantry, Executor Cornell and Valnov the Mad in Emberstone Village.', 'The people are free, but the town is still occupied by the Forsaken.  They\'re cut off from their main force, so if we\'re to drive them out, now\'s our chance.$B$BTheir leader, Executor Cornell, is known  for his unbound ruthlessness.  Also among them is Valnov the Mad, a so-called scientist who carries out inhuman experiments on villagers too old to work the mines.$B$BTake care of them all.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 24676
(24592, 2, 10, 0, 2049, 5, 4714, 0, 0, 0, 6, 1, 700, 6, 1, 1200, 0, 0, 0, 0, 0, 0, 50218, 0, 1, 0, 8, 0, 0, 0, 0, 0, 58255, 0, 0, 0, 1, 0, 0, 0, 0, 0, 50218, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Betrayal at Tempest\'s Reach', 'Drink Krennan\'s Potion of Stealth in Tempest\'s Reach and assassinate Baron Ashbury and Lord Walden.', 'King Greymane has been taken prisoner by Lord Godfrey in Tempest\'s Reach!$B$BHe managed to convince two of the eastern lords to go with his plan.  The fool seems to think he can strike a deal with the Forsaken by turning Greymane over to them.$B$BListen carefully, $n.  We need to resolve this with as little bloodshed as possible.$B$BThis potion will allow you to sneak in undetected.  We need you to assassinate the traitorous lords before this gets out of hand!', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 24592
(24672, 2, 9, 0, 0, 5, 4714, 0, 0, 24592, 4, 1, 200, 4, 1, 570, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 4, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 1, 0, 0, 4294967295, 0, 0, 'Onwards and Upwards', 'Find Krennan Aranas on the road to Tempest\'s Reach.', 'I will do as Darius asked and have our people move through the Blackwald.$B$BYou ought to catch up with King Greymane.  He and Krennan went into Tempest\'s Reach after Lord Godfrey confirmed survivors had made their dwelling there.$B$BFollow the road out of Stormglen into the mountains.  I asked Krennan to wait for you at the bridge before Tempest\'s Reach.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 24672
(24627, 2, 9, 0, 0, 5, 4714, 0, 0, 0, 5, 1, 300, 5, 1, 780, 0, 0, 0, 71042, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'At Our Doorstep', 'Kill 6 Howling Banshees.', 'The night elves have taught us much during this time, $n.  They\'ve taught us who we are and where we come from.$B$BThanks to them... thanks to this place... we\'re no longer mere beasts.  We have regained free will.$B$BThe Forsaken aren\'t here for our land alone.$B$BThey\'re looking for something we possess.  An artifact capable of uncontrollably spreading the Curse to all humanity.  We cannot let them find it.$B$BSylvanas\'s banshees have come very close.  Help my trackers take them out.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 24627
(24616, 2, 9, 0, 2057, 5, 4714, 0, 0, 24617, 5, 1, 300, 5, 1, 780, 0, 0, 0, 0, 0, 0, 49944, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49944, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Losing Your Tail', 'Use Belysra\'s Talisman to defeat the Dark Scout.', 'You must have many questions, $n.  And they will be answered in time.$B$BI know why you\'re here and what you\'re looking for.$B$BI can\'t lead you there with the enemy tracking you.$B$BOne of Sylvanas\'s scouts has been following your tracks.  You can\'t lead the Forsaken to the place you seek.  Take this talisman and walk along the road just north of here.$B$BLet the ranger lure you to her trap and use the power of the talisman to break free and counterattack.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 24616
(24495, 2, 8, 0, 0, 5, 4714, 0, 0, 0, 5, 1, 225, 5, 1, 660, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 1, 0, 0, 4294967295, 0, 0, 'Pieces of the Past', 'Obtain 6 Old Journal Pages.', 'I found a journal by a man named Bradshaw.  Unfortunately it\'s missing many pages.  Especially towards the end.$B$BIf you find enough of the pages I might be able to piece together what happened here after the Curse broke out.$B$BWho knows... maybe the people in this town found a way out.   Maybe there are still survivors out there.$B$B Maybe my father is still alive.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 24495
(24472, 2, 8, 0, 0, 5, 4714, 0, 0, 0, 5, 1, 225, 5, 1, 660, 0, 0, 0, 95840, 0, 0, 0, 0, 1, 0, 2097160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Introductions Are in Order', 'Kill 4 Ogre Minions and obtain Koroth\'s Banner in Koroth\'s Den.', 'The Forsaken are right on our heels and now these ogres are trying to flank us, $n.$B$BThey\'re servants of the ettin Koroth -- the meanest, most destructive force in all of Gilneas.$B$BIf we can bait Koroth into charging the Forsaken\'s forward force, we should be able to cover our retreat and buy some time.$B$BThe only way this can work is if we make Koroth furious.  It won\'t be enough to just kill his minions.  We need to swipe his most prized possession, a tiger-skinned banner.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 24472
(24468, 2, 8, 0, 1996, 5, 4714, 0, 0, 24472, 5, 1, 225, 5, 1, 660, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Stranded at the Marsh', 'Rescue 5 Crash Survivors at the Hailwood Marsh.', 'The ogres got two of our stagecoaches: this one and one that fell into the marsh just north of here.$B$BI want you to head there and rescue any survivors while we hatch up a plan to deal with these ogres.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 24468
(14397, 2, 7, 0, 0, 4, 4714, 0, 0, 0, 2, 1, 45, 2, 1, 120, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 16777224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 2, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Evacuation', 'Speak to Gwen Armstead in Duskhaven.', 'We\'ve escaped death through dumb luck, $n.  But luck is running out.$B$BThe coast is becoming flooded even as we speak.  And from the look of it, the landmass beneath us hasn\'t quite settled yet.$B$BI hate to say this, but we have to leave.  Curses, $n.... I cannot lose my homeland twice in one lifetime.  Yet these earthquakes are not an enemy we can defeat.$B$BTell Gwen Armstead to start the evacuation.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14397
(24681, 2, 12, 0, 2083, 5, 4714, 0, 0, 0, 6, 1, 1000, 6, 1, 6600, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 6, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'They Have Allies, But So Do We', 'Use the Night Elven Glaivethrower to slay 40 Orc Raiders, 8 Wolfmaw Outriders and 4 Orcish War Machines.', 'The night elves made good on their promise.  They\'ve brought ships and are ready to offer us sanctuary in their lands.$B$BUnfortunately, the Forsaken\'s allies have arrived as well.$B$BThe orcs are advancing upon us while the Horde gunship prevents the transport ships from taking our people to safety.$B$BThe druids are holding the enemy back, but won\'t last long.  Fortunately, the elven ships were carrying siege weapons.  Take one of the glaive throwers and meet the enemy head on.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 24681
(24903, 2, 11, 0, 0, 5, 4755, 0, 0, 24920, 4, 1, 300, 4, 1, 1680, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 4, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Vengeance or Survival', 'Speak to King Genn Greymane at Greymane Court in Gilneas City.', 'Tell Greymane that we have trackers on Sylvanas and tell him about the Plague.$B$BThe decision will be his.  Launch an all out attack against the leader of the Forsaken or try to evacuate our survivors.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 24903
(24677, 2, 10, 0, 0, 5, 4714, 0, 0, 24575, 3, 1, 175, 3, 1, 480, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 3, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Flank the Forsaken', 'Speak to Lord Hewell to obtain a ride to the Livery Outpost and report to Lorna Crowley.', 'I thank you, $n.  We can\'t rest on our laurels, however.$B$BWe found out about a mining town, currently under Forsaken occupation.  We sent some of my men, along with Crowley\'s daughter to the nearby livery stables to begin operations there.  Liam should be joining them shortly.$B$BI\'ll stay here and organize the final push for Gilneas City.  Speak to Lord Hewell to secure a horse to get you there.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 24677
(24438, 2, 8, 0, 0, 4, 4714, 0, 0, 24468, 5, 1, 225, 5, 1, 660, 0, 0, 0, 95679, 0, 0, 0, 0, 1, 0, 2097160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Exodus', 'Board a carriage below Greymane Manor.', 'We have no choice, $n.  We must move further inland.$B$BI don\'t like it one bit, but we\'re vulnerable here.$B$BReturn to the stables below the manor.  Let\'s get everybody on carriages and send them eastbound.  I pray it\'s not too late.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 24438
(14466, 2, 7, 0, 0, 4, 4714, 0, 0, 0, 2, 1, 45, 2, 1, 120, 0, 0, 0, 68954, 0, 0, 0, 0, 1, 0, 1048584, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 2, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'The King\'s Observatory', 'Speak to King Genn Greymane in the observatory inside Greymane Manor.', 'You ought to speak to Genn.  He\'s been locked up in his observatory ever since this ordeal started.$B$BI\'m sure he\'s working on a plan for his people.  He\'s a very stubborn individual.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14466
(14465, 2, 7, 0, 0, 4, 4714, 0, 0, 14466, 2, 1, 45, 2, 1, 120, 0, 0, 0, 82892, 0, 0, 0, 0, 1, 0, 2097160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 2, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'To Greymane Manor', 'Speak to Queen Mia Greymane inside Greymane Manor.', 'It\'s time for everyone to head to safety.  That includes you, $n.  Head to Greymane Manor, the others will be there shortly.$B$BDon\'t worry about me, I\'ll make sure that everyone makes it out of here in one piece.  Yes, even the few ferals we have in the pens.$B$BOnce you get there, speak to Queen Greymane about the gravity of the situation.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14465
(14412, 2, 7, 0, 1930, 4, 4714, 0, 0, 0, 4, 1, 125, 4, 1, 360, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 4, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'Washed Up', 'Kill 6 Forsaken Castaways.', 'Those Forsaken ships sank way too close to our Fishery.  All the survivors are making their way here and, as you can see, we\'re a bit outnumbered.$B$BHelp us hold them back while I finish making repairs to the boats.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14412
(14400, 2, 7, 0, 0, 4, 4714, 0, 0, 14401, 3, 1, 85, 3, 1, 240, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 3, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'I Can\'t Wear This', 'Get Grandma\'s Good Clothes.', 'What was it you wanted again?$B$BOh, right.  The evacuation orders.$B$BWell I can\'t be expected to go out in public like this, can I?$B$BGo get me my good clothes.  They\'re on the clothesline right outside.$B$B<You struggle in vain to convince Grandma Wahl that what she\'s wearing will do.>$B$BYou young people truly have no manners.  Were you raised by ogres?  Now go get my clothes, sweetie.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549), -- 14400
(14416, 2, 7, 0, 1933, 4, 4714, 0, 0, 14463, 4, 1, 125, 4, 1, 360, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1134, 0, 0, 0, 0, 4, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 4294967295, 0, 0, 'The Hungry Ettin', 'Bring 5 Mountain Horses to Lorna Crowley at the Crowley Orchard.', 'Listen, $n.  We\'re not going to make it very far without transportation, are we?$B$BIf we just hightail it out of here, the forsaken will catch up to us in no time at all.$B$BRounding up some horses from the stable grounds southeast of here would normally be a breeze, but there\'s one snag.$B$BThat last quake must\'ve spooked Koroth, the ettin, down from the mountains.  If we don\'t get our horses soon, I fear that he will.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 25549); -- 14416


-- Quest Objectives
DELETE FROM `quest_objectives` WHERE `ID` IN (265475 /*265475*/, 289167 /*289167*/, 264865 /*264865*/, 264864 /*264864*/, 264863 /*264863*/, 289536 /*289536*/, 255603 /*255603*/, 267253 /*267253*/, 263905 /*263905*/, 264929 /*264929*/, 289535 /*289535*/, 264796 /*264796*/, 264795 /*264795*/, 262806 /*262806*/, 264452 /*264452*/, 264948 /*264948*/, 264587 /*264587*/, 265434 /*265434*/, 265006 /*265006*/, 267179 /*267179*/);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES
(265475, 14348, 0, 0, 0, 36233, 4, 0, 0, 0, 'Gunpowder thrown at abomination', 25549), -- 265475
(289167, 46277, 4, 0, -1, 1342, 100, 0, 0, 0, '', 25549), -- 289167
(264865, 14368, 0, 2, 2, 36289, 1, 0, 0, 0, 'James rescued', 25549), -- 264865
(264864, 14368, 0, 1, 1, 36288, 1, 0, 0, 0, 'Ashley rescued', 25549), -- 264864
(264863, 14368, 0, 0, 0, 36287, 1, 0, 0, 0, 'Cynthia rescued', 25549), -- 264863
(289536, 46736, 4, 0, -1, 1342, 100, 0, 0, 0, '', 25549), -- 289536
(255603, 14369, 0, 0, 0, 36634, 8, 0, 0, 0, 'Forsaken Combatant slain', 25549), -- 255603
(267253, 14212, 0, 0, 0, 35582, 30, 0, 0, 0, 'Bloodfang Stalker rounded up', 25549), -- 267253
(263905, 14204, 0, 0, 0, 35463, 6, 0, 0, 0, '', 25549), -- 263905
(264929, 14093, 0, 0, 0, 34884, 6, 0, 0, 0, '', 25549), -- 264929
(289535, 46735, 4, 0, -1, 1342, 100, 0, 0, 0, '', 25549), -- 289535
(264796, 14382, 0, 1, 1, 36399, 1, 1, 0, 0, '', 25549), -- 264796
(264795, 14382, 0, 0, 0, 36397, 1, 1, 0, 0, '', 25549), -- 264795
(262806, 14347, 0, 0, 0, 34511, 10, 0, 0, 0, '', 25549), -- 262806
(264452, 14222, 0, 0, 0, 35627, 8, 0, 0, 0, '', 25549), -- 264452
(264948, 14218, 0, 0, 0, 35229, 80, 0, 0, 0, '', 25549), -- 264948
(264587, 14293, 0, 0, 0, 35753, 1, 0, 0, 0, 'Krennan Aranas rescued', 25549), -- 264587
(265434, 24930, 0, 0, 0, 35118, 5, 0, 0, 0, '', 25549), -- 265434
(265006, 14094, 1, 0, 0, 46896, 4, 0, 1, 0, '', 25549), -- 265006
(267179, 14098, 0, 0, 0, 35830, 3, 0, 0, 0, 'Market Homes Evacuated', 25549); -- 267179

DELETE FROM `quest_objectives` WHERE `ID` IN (254200 /*254200*/, 265108 /*265108*/, 265467 /*265467*/, 266555 /*266555*/, 266554 /*266554*/, 266553 /*266553*/, 256045 /*256045*/, 265423 /*265423*/, 265422 /*265422*/, 265421 /*265421*/, 264872 /*264872*/, 268950 /*268950*/, 265438 /*265438*/, 266831 /*266831*/, 265172 /*265172*/, 266403 /*266403*/, 265213 /*265213*/, 265584 /*265584*/, 253933 /*253933*/, 265253 /*265253*/, 256573 /*256573*/, 267072 /*267072*/, 265366 /*265366*/, 265365 /*265365*/, 265364 /*265364*/, 264483 /*264483*/, 265575 /*265575*/, 261452 /*261452*/, 265635 /*265635*/, 265634 /*265634*/, 265134 /*265134*/, 265133 /*265133*/, 265132 /*265132*/, 265566 /*265566*/, 265565 /*265565*/, 266711 /*266711*/, 266512 /*266512*/, 256540 /*256540*/, 265446 /*265446*/, 265445 /*265445*/, 255768 /*255768*/);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES
(254200, 26706, 0, 0, 0, 43729, 1, 0, 0, 0, 'Gunship destroyed', 25549), -- 254200
(265108, 24679, 0, 0, 0, 38147, 1, 0, 0, 0, 'Offering placed', 25549), -- 265108
(265467, 24904, 0, 0, 0, 38854, 1, 0, 0, 0, 'Battle for Gilneas City Complete', 25549), -- 265467
(266555, 24593, 2, 2, 2, 201952, 1, 0, 0, 0, '', 25549), -- 266555
(266554, 24593, 2, 1, 1, 201951, 1, 0, 0, 0, '', 25549), -- 266554
(266553, 24593, 2, 0, 0, 201950, 1, 0, 0, 0, '', 25549), -- 266553
(256045, 24646, 1, 0, 0, 50086, 1, 0, 1, 0, '', 25549), -- 256045
(265423, 14404, 1, 2, 2, 49339, 1, 0, 1, 0, '', 25549), -- 265423
(265422, 14404, 1, 1, 1, 49338, 1, 0, 1, 0, '', 25549), -- 265422
(265421, 14404, 1, 0, 0, 49337, 1, 0, 1, 0, '', 25549), -- 265421
(264872, 14401, 1, 0, 0, 49281, 1, 0, 1, 0, '', 25549), -- 264872
(268950, 31725, 11, 0, 0, 65651, 1, 1, 0, 0, 'Defeat Lindsay', 25549), -- 268950
(265438, 24602, 1, 0, 0, 49921, 5, 0, 1, 0, '', 25549), -- 265438
(266831, 24675, 1, 0, 0, 50219, 10, 0, 1, 0, '', 25549), -- 266831
(265172, 24674, 0, 0, 0, 37802, 1, 1, 0, 0, '', 25549), -- 265172
(266403, 24575, 2, 0, 0, 201775, 5, 0, 0, 0, 'Enslaved Gilnean freed', 25549), -- 266403
(265213, 24628, 1, 0, 0, 50017, 6, 0, 1, 0, '', 25549), -- 265213
(265584, 24501, 0, 0, 0, 37045, 1, 1, 0, 0, '', 25549), -- 265584
(253933, 24484, 0, 0, 0, 36813, 6, 0, 0, 0, '', 25549), -- 253933
(265253, 14399, 1, 0, 0, 49280, 1, 0, 1, 0, '', 25549), -- 265253
(256573, 14395, 0, 0, 0, 36450, 4, 0, 0, 0, 'Drowning Watchman rescued', 25549), -- 256573
(267072, 14386, 0, 0, 0, 36312, 1, 1, 0, 0, '', 25549), -- 267072
(265366, 24681, 0, 2, 2, 37921, 4, 0, 0, 0, '', 25549), -- 265366
(265365, 24681, 0, 1, 1, 37938, 8, 0, 0, 0, '', 25549), -- 265365
(265364, 24681, 0, 0, 0, 37916, 40, 0, 0, 0, '', 25549), -- 265364
(264483, 14412, 0, 0, 0, 36488, 6, 0, 0, 0, '', 25549), -- 264483
(265575, 14400, 1, 0, 0, 49279, 1, 0, 1, 0, '', 25549), -- 265575
(261452, 14416, 0, 0, 0, 36560, 5, 0, 0, 0, 'Mountain Horse rescued', 25549), -- 261452
(265635, 24920, 0, 1, 1, 38363, 40, 0, 0, 0, 'Invading Forsaken', 25549), -- 265635
(265634, 24920, 0, 0, 0, 38287, 6, 0, 0, 0, '', 25549), -- 265634
(265134, 24676, 0, 2, 2, 37685, 1, 1, 0, 0, '', 25549), -- 265134
(265133, 24676, 0, 1, 1, 37686, 1, 1, 0, 0, '', 25549), -- 265133
(265132, 24676, 0, 0, 0, 37692, 4, 0, 0, 0, '', 25549), -- 265132
(265566, 24592, 0, 1, 1, 37733, 1, 1, 0, 0, '', 25549), -- 265566
(265565, 24592, 0, 0, 0, 37735, 1, 1, 0, 0, '', 25549), -- 265565
(266711, 24627, 0, 0, 0, 37757, 6, 0, 0, 0, '', 25549), -- 266711
(266512, 24616, 0, 0, 0, 37953, 1, 1, 0, 0, '', 25549), -- 266512
(256540, 24495, 1, 0, 0, 49760, 6, 0, 1, 0, '', 25549), -- 256540
(265446, 24472, 1, 1, 1, 49742, 1, 0, 1, 0, '', 25549), -- 265446
(265445, 24472, 0, 0, 0, 36293, 4, 0, 0, 0, '', 25549), -- 265445
(255768, 24468, 0, 0, 0, 37078, 5, 0, 0, 0, 'Crash Survivor rescued', 25549); -- 255768


-- Quest Visual Effect
DELETE FROM `quest_visual_effect` WHERE (`ID`=264587 AND `Index`=0);
INSERT INTO `quest_visual_effect` (`ID`, `Index`, `VisualEffect`, `VerifiedBuild`) VALUES
(264587, 0, 2914, 25549);

DELETE FROM `quest_visual_effect` WHERE (`ID`=265467 AND `Index`=0) OR (`ID`=268950 AND `Index`=0);
INSERT INTO `quest_visual_effect` (`ID`, `Index`, `VisualEffect`, `VerifiedBuild`) VALUES
(265467, 0, 1976, 25549),
(268950, 0, 988, 25549);


-- Puerta del sótano (195430)
DELETE FROM `gameobject` WHERE `guid`=94600;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES 
(94600, 195430, 654, 4755, 4756, 1, 0, 0, 379, -1, -1790.04, 1435.53, 21.7363, 1.66817, -0.0106378, 0.0138349, 0.740533, 0.671794, 120, 255, 1, 0, '', 25383);

DELETE FROM `gameobject_addon` WHERE `guid`=94600;
INSERT INTO `gameobject_addon` (`guid`, `parent_rotation0`, `parent_rotation1`, `parent_rotation2`, `parent_rotation3`, `invisibilityType`, `invisibilityValue`, `WorldEffectID`) VALUES 
(94600, 0, 0, 0.942641, -0.333807, 0, 0, 0);

UPDATE `gameobject_template` SET  `Data0`=0 AND `Data1`=0 AND `Data2`=11000  WHERE entry=195430;


-- Spell Area
DELETE FROM `spell_area` WHERE `spell`=59073 AND `area`=4757 AND `quest_start`=0 AND `aura_spell`=0 AND `teamId`=-1 AND `racemask`=0 AND `gender`=2;

DELETE FROM `spell_area` WHERE `spell`=59073 AND `area`=4756 AND `quest_start`=14078 AND `aura_spell`=0 AND `teamId`=-1 AND `racemask`=0 AND `gender`=2;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(59073, 4756, 14078, 14159, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=59073 AND `area`=4757 AND `quest_start`=14078 AND `aura_spell`=0 AND `teamId`=-1 AND `racemask`=0 AND `gender`=2;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(59073, 4757, 14078, 14159, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=59074 AND `area`=4757 AND `quest_start`=14159 AND `aura_spell`=0 AND `teamId`=-1 AND `racemask`=0 AND `gender`=2;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(59074, 4757, 14159, 14293, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=59087 AND `area`=4757 AND `quest_start`=14293 AND `aura_spell`=0 AND `teamId`=-1 AND `racemask`=0 AND `gender`=2;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(59087, 4757, 14293, 0, 0, -1, 0, 2, 3, 64, 0);

-- Vehicle Template Accessory
DELETE FROM vehicle_template_accessory WHERE entry IN (36283,35905,35231);
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(36283, 36292, 2, 0, '36283 - 36292', 0, 0),
(35905, 35907, 1, 0, '35905 - 35907', 3, 5000),
(35231, 35230, 1, 0, '35231 - 35230', 3, 5000);

DELETE FROM vehicle_template_accessory WHERE entry IN (37939,38363,44928,38755,43336,43337);
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(37939, 37938, 0, 0, '37939 - 37938', 0, 0),
(38363, 38366, 0, 0, '38363 - 38366', 0, 0),
(44928, 51409, 6, 0, '44928 - 51409', 0, 0),
(44928, 43907, 4, 0, '44928 - 43907', 0, 0),
(44928, 36138, 3, 0, '44928 - 36138', 0, 0),
(44928, 44460, 2, 0, '44928 - 44460', 0, 0),
(44928, 38853, 1, 0, '44928 - 38853', 0, 0),
(38755, 43338, 0, 0, '38755 - 43338', 0, 0),
(38755, 43338, 1, 0, '38755 - 43338', 0, 0),
(43336, 43338, 1, 0, '43336 - 43338', 0, 0),
(43336, 43338, 0, 0, '43336 - 43338', 0, 0),
(43337, 51409, 6, 0, '43337 - 51409', 0, 0),
(43337, 37946, 5, 0, '43337 - 37946', 0, 0),
(43337, 43907, 4, 0, '43337 - 43907', 0, 0),
(43337, 36138, 3, 0, '43337 - 36138', 0, 0),
(43337, 44460, 2, 0, '43337 - 44460', 0, 0),
(43337, 38853, 1, 0, '43337 - 38853', 0, 0),
(44928, 37946, 5, 0, '44928 - 37946', 0, 0);


-- NPC Spellclick Spells
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (35317,44427,44429,36283,36287,36288,36289);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(35317, 43671, 0, 0),
(44427, 56685, 0, 0),
(44429, 56685, 0, 0),
(36283, 69434, 0, 0),
(36289, 68596, 0, 0),
(36288, 68598, 0, 0),
(36287, 68597, 0, 0);

DELETE FROM npc_spellclick_spells WHERE npc_entry IN (36440,36459,36540,44928,38755,37807,38377,38150,38615,43747,53522);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(36440, 68735, 0, 0),
(36459, 68743, 0, 0),
(36540, 94654, 0, 0),
(44928, 72767, 0, 0),
(38755, 72767, 0, 0),
(37807, 69434, 0, 0),
(38377, 69434, 0, 0),
(38150, 71238, 0, 0),
(38615, 72472, 0, 0),
(43747, 81877, 0, 0),
(53522, 99339, 0, 0);


-- Captive Worgen (36698,36797,36798)
UPDATE creature_template SET modelid1=30294 AND modelid2=30293 AND modelid3=30295 AND modelid4=0 WHERE entry IN (36698);
UPDATE creature_template SET modelid1=30295 AND modelid2=30294 AND modelid3=30293 AND modelid4=0 WHERE entry IN (36797);
UPDATE creature_template SET modelid1=30293 AND modelid2=30295 AND modelid3=30294 AND modelid4=0 WHERE entry IN (36798);


-- Spell Area
DELETE FROM `spell_area` WHERE `spell`=68481 AND `area`=4786 AND `quest_start`=14375 AND `aura_spell`=0 AND `teamId`=-1 AND `racemask`=0 AND `gender`=2;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68481, 4786, 14375, 14321, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68482 AND `area`=4786 AND `quest_start`=14321 AND `aura_spell`=0 AND `teamId`=-1 AND `racemask`=0 AND `gender`=2;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68482, 4786, 14321, 0, 0, -1, 0, 2, 3, 64, 0);


-- Creature Text
DELETE FROM creature_text WHERE CreatureID=35230 AND  GroupID=1 AND  ID=0;


-- Vehicle Template Accessory
DELETE FROM vehicle_template_accessory WHERE entry IN (36283,35905,35231);
INSERT INTO vehicle_template_accessory (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(36283, 36292, 2, 0, '36283 - 36292', 0, 0),
(35905, 35907, 1, 0, '35905 - 35907', 3, 300000),
(35231, 35230, 1, 0, '35231 - 35230', 3, 300000);


-- NPC Spellclick Spells
UPDATE creature_template SET npcflag =16777216 WHERE  entry IN (44427,44429);
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (35231,44427,44429);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(35231, 63151, 1, 0),
(44427, 67001, 1, 0),
(44429, 82992, 1, 0);


-- Crowley's Horse (35231) ***npc_crowley_horse_35231***
UPDATE `creature_template` SET `AIName`='SmartAI', `spell1`=67063, `unit_flags`=10, MovementType = 2 WHERE `entry` IN (35231);


-- Lord Darius Crowley (35230)
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (35230);
DELETE FROM smart_scripts WHERE entryorguid IN (35231,3523100);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35231, 0, 0, 0, 54, 0, 100, 512, 0, 0, 0, 0, '', 80, 3523100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lord Darius Crowley - Crowley Hors Start Script'),
(35231, 0, 1, 0, 40, 0, 100, 512, 10, 35231, 0, 0, '', 54, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lord Darius Crowley - WP Paused'),
(35231, 0, 2, 3, 40, 0, 100, 512, 22, 35231, 0, 0, '', 11, 68576, 4, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lord Darius Crowley - Despawn'),
(35231, 0, 3, 0, 61, 0, 100, 512, 0, 0, 0, 0, '', 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lord Darius Crowley - WP Reached Despawn'),
(35231, 0, 4, 0, 6, 0, 100, 512, 0, 0, 0, 0, '', 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lord Darius Crowley - On Die'),
(35231, 0, 5, 6, 60, 0, 100, 512, 4500, 4500, 4500, 4500, '', 1, 1, 1, 0, 0, 0, 0, 19, 35230, 5, 0, 0, 0, 0, 0, 'Lord Darius Crowley - WP Reached'),
(35231, 0, 6, 7, 61, 0, 100, 512, 0, 0, 0, 0, '', 28, 67063, 0, 0, 0, 0, 0, 19, 35230, 5, 0, 0, 0, 0, 0, 'Lord Darius Crowley - Remove Buff'),
(35231, 0, 7, 8, 61, 0, 100, 512, 0, 0, 0, 0, '', 28, 67063, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Lord Darius Crowley - Remove Buff'),
(35231, 0, 8, 0, 61, 0, 100, 512, 0, 0, 0, 0, '', 28, 67063, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lord Darius Crowley - Remove Buff'),
(3523100, 9, 0, 0, 0, 0, 100, 512, 1500, 1500, 1500, 1500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1735.01, 1653.01, 20.49, 0, 'Lord Darius Crowley - '),
(3523100, 9, 1, 0, 0, 0, 100, 512, 100, 100, 100, 100, '', 97, 15, 15, 0, 1709, 20, 0, 1, 0, 0, 0, -1714.02, 1666.37, 20.57, 0, 'Lord Darius Crowley - '),
(3523100, 9, 2, 0, 0, 0, 100, 512, 0, 0, 0, 0, '', 1, 0, 1, 0, 0, 0, 0, 19, 35230, 5, 0, 0, 0, 0, 0, 'Lord Darius Crowley - '),
(3523100, 9, 3, 0, 0, 0, 100, 512, 1800, 1800, 1800, 1800, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1695.77, 1662.28, 20.5008, 0, 'Lord Darius Crowley - '),
(3523100, 9, 4, 0, 0, 0, 100, 512, 1800, 1800, 1800, 1800, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1678.26, 1648.95, 20.6123, 0, 'Lord Darius Crowley - '),
(3523100, 9, 5, 0, 0, 0, 100, 512, 1500, 1500, 1500, 1500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1669.8, 1634.52, 20.4897, 0, 'Lord Darius Crowley - '),
(3523100, 9, 6, 0, 0, 0, 100, 512, 3000, 3000, 3000, 3000, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1678.61, 1615.53, 20.4897, 0, 'Lord Darius Crowley - '),
(3523100, 9, 7, 0, 0, 0, 100, 512, 1500, 1500, 1500, 1500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1692.43, 1613.71, 20.4897, 0, 'Lord Darius Crowley - '),
(3523100, 9, 8, 0, 0, 0, 100, 512, 1500, 1500, 1500, 1500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1703.6, 1621.72, 20.4897, 0, 'Lord Darius Crowley - '),
(3523100, 9, 9, 0, 0, 0, 100, 512, 2800, 2800, 2800, 2800, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1673.3, 1701.64, 20.4992, 0, 'Lord Darius Crowley - '),
(3523100, 9, 10, 0, 0, 0, 100, 512, 4800, 4800, 4800, 4800, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1681.95, 1703.72, 20.4992, 0, 'Lord Darius Crowley - '),
(3523100, 9, 11, 0, 0, 0, 100, 512, 5200, 5200, 5200, 5200, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1646.58, 1708.64, 20.4918, 0, 'Lord Darius Crowley - '),
(3523100, 9, 12, 0, 0, 0, 100, 512, 4200, 4200, 4200, 4200, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1611.8, 1710.91, 22.6814, 0, 'Lord Darius Crowley - '),
(3523100, 9, 13, 0, 0, 0, 100, 512, 5200, 5200, 5200, 5200, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1589.02, 1710.71, 20.4852, 0, 'Lord Darius Crowley - '),
(3523100, 9, 14, 0, 0, 0, 100, 512, 3000, 3000, 3000, 3000, '', 97, 15, 15, 0, 1709, 20, 0, 1, 0, 0, 0, -1572.31, 1709.16, 20.4861, 0, ''),
(3523100, 9, 15, 0, 0, 0, 100, 512, 1500, 1500, 1500, 1500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1549.35, 1705.51, 20.4861, 0, 'Lord Darius Crowley - '),
(3523100, 9, 16, 0, 0, 0, 100, 512, 3400, 3400, 3400, 3400, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1522.72, 1696.79, 20.4861, 0, 'Lord Darius Crowley - '),
(3523100, 9, 17, 0, 0, 0, 100, 512, 4300, 4300, 4300, 4300, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1490.45, 1679.68, 20.4861, 0, 'Lord Darius Crowley - '),
(3523100, 9, 18, 0, 0, 0, 100, 512, 4700, 4700, 4700, 4700, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1435.31, 1623.39, 20.4861, 0, 'Lord Darius Crowley - '),
(3523100, 9, 19, 0, 0, 0, 100, 512, 4500, 4500, 4500, 4500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1418.88, 1592.74, 20.4861, 0, 'Lord Darius Crowley - '),
(3523100, 9, 20, 0, 0, 0, 100, 512, 4500, 4500, 4500, 4500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1414.37, 1575.23, 20.4802, 0, 'Lord Darius Crowley - '),
(3523100, 9, 21, 0, 0, 0, 100, 512, 3000, 3000, 3000, 3000, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1416.5, 1566.34, 20.4821, 0, 'Lord Darius Crowley - '),
(3523100, 9, 22, 0, 0, 0, 100, 512, 3000, 3000, 3000, 3000, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1444.24, 1553.16, 20.4839, 0, 'Lord Darius Crowley - '),
(3523100, 9, 23, 0, 0, 0, 100, 512, 3000, 3000, 3000, 3000, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1469.58, 1560.96, 20.4839, 0, 'Lord Darius Crowley - '),
(3523100, 9, 24, 0, 0, 0, 100, 512, 2500, 2500, 2500, 2500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1505.88, 1566.46, 20.4858, 0, 'Lord Darius Crowley - '),
(3523100, 9, 25, 0, 0, 0, 100, 512, 2500, 2500, 2500, 2500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1517.87, 1568.61, 26.2918, 0, 'Lord Darius Crowley - '),
(3523100, 9, 26, 0, 0, 0, 100, 512, 2500, 2500, 2500, 2500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1535.83, 1572.85, 28.9941, 0, 'Lord Darius Crowley - '),
(3523100, 9, 27, 0, 0, 0, 100, 512, 4500, 4500, 4500, 4500, '', 41, 1, 0, 0, 0, 0, 0, 19, 35230, 5, 0, 0, 0, 0, 0, 'Lord Darius Crowley - '),
(3523100, 9, 28, 0, 0, 0, 100, 512, 100, 100, 100, 100, '', 28, 67063, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Lord Darius Crowley - '),
(3523100, 9, 29, 0, 0, 0, 100, 512, 0, 0, 0, 0, '', 11, 68576, 4, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lord Darius Crowley - ');


-- Creature Text
UPDATE creature_text SET sound = 0 WHERE Sound = 19634 AND creatureID <> 35906;
UPDATE creature_text SET BroadcastTextID = 36618 WHERE creatureID = 34571;
UPDATE creature_text SET BroadcastTextID = 39313 WHERE creatureID = 34851;
UPDATE creature_text SET BroadcastTextID = 44235 WHERE creatureID = 34913;
UPDATE creature_text SET BroadcastTextID = 35240 WHERE creatureID = 34981;
UPDATE creature_text SET BroadcastTextID = 38602 WHERE creatureID = 35112;
UPDATE creature_text SET BroadcastTextID = 38601 WHERE creatureID = 35115;
UPDATE creature_text SET BroadcastTextID = 35498 WHERE creatureID = 35230;
UPDATE creature_text SET BroadcastTextID = 38739 WHERE creatureID = 35369;
UPDATE creature_text SET BroadcastTextID = 38744 WHERE creatureID = 35378;
UPDATE creature_text SET BroadcastTextID = 36092 WHERE creatureID = 35550;
UPDATE creature_text SET BroadcastTextID = 36091 WHERE creatureID = 35550;
UPDATE creature_text SET BroadcastTextID = 36038 WHERE creatureID = 35836;
UPDATE creature_text SET BroadcastTextID = 36039 WHERE creatureID = 35836;
UPDATE creature_text SET BroadcastTextID = 36094 WHERE creatureID = 35840;
UPDATE creature_text SET BroadcastTextID = 36078 WHERE creatureID = 35905;
UPDATE creature_text SET BroadcastTextID = 38729 WHERE creatureID = 35907;
UPDATE creature_text SET BroadcastTextID = 36617 WHERE creatureID = 36132;
UPDATE creature_text SET BroadcastTextID = 36209 WHERE creatureID = 36207;
UPDATE creature_text SET BroadcastTextID = 36312 WHERE creatureID = 36231;
UPDATE creature_text SET BroadcastTextID = 36310 WHERE creatureID = 36231;
UPDATE creature_text SET BroadcastTextID = 36315 WHERE creatureID = 36231;
UPDATE creature_text SET BroadcastTextID = 36336 WHERE creatureID = 36330;
UPDATE creature_text SET BroadcastTextID = 36344 WHERE creatureID = 36331;
UPDATE creature_text SET BroadcastTextID = 36340 WHERE creatureID = 36332;
UPDATE creature_text SET BroadcastTextID = 36341 WHERE creatureID = 36332;
UPDATE creature_text SET BroadcastTextID = 50192 WHERE creatureID = 50415;
UPDATE creature_text SET BroadcastTextID = 50264 WHERE creatureID = 50474;


-- Spell Area
DELETE FROM `spell_area` WHERE `spell`=59073 AND `area`=4755 AND `quest_start`=14078 AND `aura_spell`=0 AND `teamId`=-1 AND `racemask`=0 AND `gender`=2;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(59073, 4755, 14078, 14159, 0, -1, 0, 2, 3, 64, 64);


-- Captive Worgen (36698,36797,36798)
UPDATE creature_template SET modelid1=30294 AND modelid2=30293 AND modelid3=30295 AND modelid4=0 WHERE entry IN (36698);
UPDATE creature_template SET modelid1=30293 AND modelid2=30294 AND modelid3=30295 AND modelid4=0 WHERE entry IN (36797);
UPDATE creature_template SET modelid1=30295 AND modelid2=30294 AND modelid3=30293 AND modelid4=0 WHERE entry IN (36798);


-- Lord Darius Crowley (35077)
DELETE FROM `creature` WHERE `guid`=223581;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`)VALUES 
(223581, 35077, 654, 4755, 4757, 1, 0, 170, 0, -1, 0, 0, -1679.73, 1442.12, 52.3705, 0.750492, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 25383);


-- Sean Dempsey (35081)
DELETE FROM `creature` WHERE `guid`=223582;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES 
(223582, 35081, 654, 4755, 4757, 1, 0, 170, 0, -1, 0, 0, -1682.17, 1439.67, 52.3705, 0.837758, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 25383);


-- Vincent Hersham (35123)
DELETE FROM `creature` WHERE `guid`=223577;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES 
(223577, 35123, 654, 4755, 4757, 1, 0, 170, 0, -1, 0, 0, -1682.8, 1441.26, 52.3705, 5.48033, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 25383);


-- Tobias Mistmantle (35124)
DELETE FROM `creature` WHERE `guid`=223578;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES 
(223578, 35124, 654, 4755, 4757, 1, 0, 170, 0, -1, 0, 0, -1678.51, 1438.79, 52.3704, 6.25315, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 25383);


-- NN (195466)
DELETE FROM `gameobject` WHERE `guid`=94653;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES 
(94653, 195466, 654, 4755, 4757, 1, 0, 171, 0, -1, -1805.29, 1399.5, 20.261, 1.26536, 0.0655289, 0.0184669, 0.591166, 0.803671, 120, 255, 1, 0, '', 25383);


-- NN (195465)
DELETE FROM `gameobject` WHERE `guid`=94652;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES 
(94652, 195465, 654, 4755, 4757, 1, 0, 171, 0, -1, -1794.13, 1402.51, 20.1318, 2.15548, -0.038096, -0.0252781, 0.880382, 0.472057, 120, 255, 1, 0, '', 25383);


-- NN (195454)
DELETE FROM `gameobject` WHERE `guid`=94651;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES 
(94651, 195454, 654, 4755, 4757, 1, 0, 171, 0, -1, -1764.93, 1415.87, 20.1221, 1.40499, 0, 0, 0.646124, 0.763233, 120, 255, 1, 0, '', 25383);


-- NN (195453)
DELETE FROM `gameobject` WHERE `guid`=94650;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES 
(94650, 195453, 654, 4755, 4757, 1, 0, 171, 0, -1, -1769.5, 1405.62, 20.0667, 5.89672, -0.0201735, 0.0687904, -0.189473, 0.979266, 120, 255, 1, 0, '', 25383);


-- NN (195466)
DELETE FROM `gameobject` WHERE `guid`=73397;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES 
(73397, 195466, 654, 4755, 4757, 1, 0, 172, 0, -1, -1805.29, 1399.5, 20.261, 1.26536, 0.0655289, 0.0184669, 0.591166, 0.803671, 120, 255, 1, 0, '', 25383);


-- NN (195465)
DELETE FROM `gameobject` WHERE `guid`=73407;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES 
(73407, 195465, 654, 4755, 4757, 1, 0, 172, 0, -1, -1794.13, 1402.51, 20.1318, 2.15548, -0.038096, -0.0252781, 0.880382, 0.472057, 120, 255, 1, 0, '', 25383);


-- NN (195454)
DELETE FROM `gameobject` WHERE `guid`=76954;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES 
(76954, 195454, 654, 4755, 4757, 1, 0, 172, 0, -1, -1764.93, 1415.87, 20.1221, 1.40499, 0, 0, 0.646124, 0.763233, 120, 255, 1, 0, '', 25383);


-- NN (195453)
DELETE FROM `gameobject` WHERE `guid`=79316;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES 
(79316, 195453, 654, 4755, 4757, 1, 0, 172, 0, -1, -1769.5, 1405.62, 20.0667, 5.89672, -0.0201735, 0.0687904, -0.189473, 0.979266, 120, 255, 1, 0, '', 25383);


-- NPC Text
DELETE FROM `npc_text` WHERE `ID` IN (15443 /*15443*/, 16330 /*16330*/, 14847 /*14847*/);
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextId0`, `BroadcastTextId1`, `BroadcastTextId2`, `BroadcastTextId3`, `BroadcastTextId4`, `BroadcastTextId5`, `BroadcastTextId6`, `BroadcastTextId7`, `VerifiedBuild`) VALUES
(15443, 1, 0, 0, 0, 0, 0, 0, 0, 38799, 0, 0, 0, 0, 0, 0, 0, 27547),
(16330, 1, 0, 0, 0, 0, 0, 0, 0, 42896, 0, 0, 0, 0, 0, 0, 0, 27547),
(14847, 1, 0, 0, 0, 0, 0, 0, 0, 36075, 0, 0, 0, 0, 0, 0, 0, 27547);


-- Gossip Menu
DELETE FROM `gossip_menu` WHERE (`MenuId`=13111 AND `TextId`=18430) OR (`MenuId`=11061 AND `TextId`=15377) OR (`MenuId`=11061 AND `TextId`=15443) OR (`MenuId`=14175 AND `TextId`=15029) OR (`MenuId`=11672 AND `TextId`=16330) OR (`MenuId`=14290 AND `TextId`=14835) OR (`MenuId`=14176 AND `TextId`=14832) OR (`MenuId`=14177 AND `TextId`=14847) OR (`MenuId`=11794 AND `TextId`=16542) OR (`MenuId`=11795 AND `TextId`=16543) OR (`MenuId`=11070 AND `TextId`=15395);
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES
(13111, 18430, 27547),
(11061, 15377, 27547),
(11061, 15443, 27547),
(14175, 15029, 27547),
(11672, 16330, 27547),
(14290, 14835, 27547),
(14176, 14832, 27547),
(14177, 14847, 27547),
(11794, 16542, 27547),
(11795, 16543, 27547),
(11070, 15395, 27547);


-- Gossip Menu Option
DELETE FROM `gossip_menu_option` WHERE (`MenuId`=11672 AND `OptionIndex`=0) OR (`MenuId`=12195 AND `OptionIndex`=4) OR (`MenuId`=12195 AND `OptionIndex`=0) OR (`MenuId`=12186 AND `OptionIndex`=4) OR (`MenuId`=12186 AND `OptionIndex`=0) OR (`MenuId`=12196 AND `OptionIndex`=4) OR (`MenuId`=12196 AND `OptionIndex`=0) OR (`MenuId`=12188 AND `OptionIndex`=4) OR (`MenuId`=12188 AND `OptionIndex`=0) OR (`MenuId`=12191 AND `OptionIndex`=0) OR (`MenuId`=12185 AND `OptionIndex`=4) OR (`MenuId`=12185 AND `OptionIndex`=0) OR (`MenuId`=12198 AND `OptionIndex`=4) OR (`MenuId`=12198 AND `OptionIndex`=0) OR (`MenuId`=12190 AND `OptionIndex`=4) OR (`MenuId`=12190 AND `OptionIndex`=0);
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `VerifiedBuild`) VALUES
(11672, 0, 1, 'I would like to buy from you.', 2583, 27547),
(12195, 4, 3, 'Train me in Herbalism.', 47112, 27547),
(12195, 0, 3, 'Train me in Alchemy.', 47109, 27547),
(12186, 4, 3, 'Train me in Herbalism.', 47112, 27547),
(12186, 0, 3, 'Train me in Alchemy.', 47109, 27547),
(12196, 4, 3, 'Train me in Herbalism.', 47112, 27547),
(12196, 0, 3, 'Train me in Alchemy.', 47109, 27547),
(12188, 4, 3, 'Train me in Herbalism.', 47112, 27547),
(12188, 0, 3, 'Train me in Alchemy.', 47109, 27547),
(12191, 0, 3, 'Train me in Alchemy.', 47109, 27547),
(12185, 4, 3, 'Train me in Herbalism.', 47112, 27547),
(12185, 0, 3, 'Train me in Alchemy.', 47109, 27547),
(12198, 4, 3, 'Train me in Herbalism.', 47112, 27547),
(12198, 0, 3, 'Train me in Alchemy.', 47109, 27547),
(12190, 4, 3, 'Train me in Herbalism.', 47112, 27547),
(12190, 0, 3, 'Train me in Alchemy.', 47109, 27547);

UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=12271, `VerifiedBuild`=27547 WHERE (`MenuId`=6944 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=47112, `VerifiedBuild`=27547 WHERE (`MenuId`=12180 AND `OptionIndex`=4);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=47109, `VerifiedBuild`=27547 WHERE (`MenuId`=12180 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=38484, `VerifiedBuild`=27547 WHERE (`MenuId`=11061 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=64115, `VerifiedBuild`=27547 WHERE (`MenuId`=9821 AND `OptionIndex`=2);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=56613, `VerifiedBuild`=27547 WHERE (`MenuId`=9821 AND `OptionIndex`=1);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=64115, `VerifiedBuild`=27547 WHERE (`MenuId`=9821 AND `OptionIndex`=2);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=56613, `VerifiedBuild`=27547 WHERE (`MenuId`=9821 AND `OptionIndex`=1);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=47112, `VerifiedBuild`=27547 WHERE (`MenuId`=12180 AND `OptionIndex`=4);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=47109, `VerifiedBuild`=27547 WHERE (`MenuId`=12180 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=64115, `VerifiedBuild`=27547 WHERE (`MenuId`=9821 AND `OptionIndex`=2);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=56613, `VerifiedBuild`=27547 WHERE (`MenuId`=9821 AND `OptionIndex`=1);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=64115, `VerifiedBuild`=27547 WHERE (`MenuId`=9821 AND `OptionIndex`=2);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=56613, `VerifiedBuild`=27547 WHERE (`MenuId`=9821 AND `OptionIndex`=1);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=47112, `VerifiedBuild`=27547 WHERE (`MenuId`=12180 AND `OptionIndex`=4);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=47109, `VerifiedBuild`=27547 WHERE (`MenuId`=12180 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=2547, `VerifiedBuild`=27547 WHERE (`MenuId`=83 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=2547, `VerifiedBuild`=27547 WHERE (`MenuId`=83 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=2547, `VerifiedBuild`=27547 WHERE (`MenuId`=83 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=2547, `VerifiedBuild`=27547 WHERE (`MenuId`=83 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=47112, `VerifiedBuild`=27547 WHERE (`MenuId`=12180 AND `OptionIndex`=4);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=47109, `VerifiedBuild`=27547 WHERE (`MenuId`=12180 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=64115, `VerifiedBuild`=27547 WHERE (`MenuId`=9821 AND `OptionIndex`=2);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=56613, `VerifiedBuild`=27547 WHERE (`MenuId`=9821 AND `OptionIndex`=1);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=64115, `VerifiedBuild`=27547 WHERE (`MenuId`=9821 AND `OptionIndex`=2);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=56613, `VerifiedBuild`=27547 WHERE (`MenuId`=9821 AND `OptionIndex`=1);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=47112, `VerifiedBuild`=27547 WHERE (`MenuId`=12180 AND `OptionIndex`=4);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=47109, `VerifiedBuild`=27547 WHERE (`MenuId`=12180 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=47112, `VerifiedBuild`=27547 WHERE (`MenuId`=12180 AND `OptionIndex`=4);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=47109, `VerifiedBuild`=27547 WHERE (`MenuId`=12180 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=44404, `VerifiedBuild`=27547 WHERE (`MenuId`=11794 AND `OptionIndex`=1);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=44403, `VerifiedBuild`=27547 WHERE (`MenuId`=11794 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=44406, `VerifiedBuild`=27547 WHERE (`MenuId`=11795 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=44404, `VerifiedBuild`=27547 WHERE (`MenuId`=11794 AND `OptionIndex`=1);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=44403, `VerifiedBuild`=27547 WHERE (`MenuId`=11794 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=44406, `VerifiedBuild`=27547 WHERE (`MenuId`=11795 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=44404, `VerifiedBuild`=27547 WHERE (`MenuId`=11794 AND `OptionIndex`=1);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=44403, `VerifiedBuild`=27547 WHERE (`MenuId`=11794 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=44404, `VerifiedBuild`=27547 WHERE (`MenuId`=11794 AND `OptionIndex`=1);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=44403, `VerifiedBuild`=27547 WHERE (`MenuId`=11794 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=64115, `VerifiedBuild`=27547 WHERE (`MenuId`=9821 AND `OptionIndex`=2);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=56613, `VerifiedBuild`=27547 WHERE (`MenuId`=9821 AND `OptionIndex`=1);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=47112, `VerifiedBuild`=27547 WHERE (`MenuId`=12191 AND `OptionIndex`=4);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=47112, `VerifiedBuild`=27547 WHERE (`MenuId`=12180 AND `OptionIndex`=4);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=47109, `VerifiedBuild`=27547 WHERE (`MenuId`=12180 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=47112, `VerifiedBuild`=27547 WHERE (`MenuId`=12180 AND `OptionIndex`=4);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=47109, `VerifiedBuild`=27547 WHERE (`MenuId`=12180 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=47112, `VerifiedBuild`=27547 WHERE (`MenuId`=12180 AND `OptionIndex`=4);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=47109, `VerifiedBuild`=27547 WHERE (`MenuId`=12180 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=47112, `VerifiedBuild`=27547 WHERE (`MenuId`=12180 AND `OptionIndex`=4);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=47109, `VerifiedBuild`=27547 WHERE (`MenuId`=12180 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=47112, `VerifiedBuild`=27547 WHERE (`MenuId`=12191 AND `OptionIndex`=4);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=47112, `VerifiedBuild`=27547 WHERE (`MenuId`=12180 AND `OptionIndex`=4);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=47112, `VerifiedBuild`=27547 WHERE (`MenuId`=12180 AND `OptionIndex`=4);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=2547, `VerifiedBuild`=27547 WHERE (`MenuId`=83 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=2547, `VerifiedBuild`=27547 WHERE (`MenuId`=83 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=2547, `VerifiedBuild`=27547 WHERE (`MenuId`=83 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=2547, `VerifiedBuild`=27547 WHERE (`MenuId`=83 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=2547, `VerifiedBuild`=27547 WHERE (`MenuId`=83 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=2547, `VerifiedBuild`=27547 WHERE (`MenuId`=83 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=2547, `VerifiedBuild`=27547 WHERE (`MenuId`=83 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=2547, `VerifiedBuild`=27547 WHERE (`MenuId`=83 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=2547, `VerifiedBuild`=27547 WHERE (`MenuId`=83 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=2547, `VerifiedBuild`=27547 WHERE (`MenuId`=83 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=2547, `VerifiedBuild`=27547 WHERE (`MenuId`=83 AND `OptionIndex`=0);


-- Gossip Menu Option Action
DELETE FROM `gossip_menu_option_action` WHERE (`MenuId`=11795 AND `OptionIndex`=0) OR (`MenuId`=11794 AND `OptionIndex`=1);
INSERT INTO `gossip_menu_option_action` (`MenuId`, `OptionIndex`, `ActionMenuId`, `ActionPoiId`) VALUES
(11795, 0, 11794, 44125),
(11794, 1, 11795, 44125);


-- Points of Interest
DELETE FROM points_of_interest WHERE ID = 44125;
INSERT INTO points_of_interest (ID, PositionX, PositionY, Icon, Flags, Importance, Name, VerifiedBuild) VALUES
(44125, -1884.02, 2244.08, 7, 99, 0, "Chris Moller Pie Vendor", 27547);


-- Gossip Menu Option Trainer
DELETE FROM `gossip_menu_option_trainer` WHERE (`MenuId`=12180 AND `OptionIndex`=0) OR (`MenuId`=12180 AND `OptionIndex`=4);
INSERT INTO `gossip_menu_option_trainer` (`MenuId`, `OptionIndex`, `TrainerId`) VALUES
(12180, 0, 59),
(12180, 4, 388);

UPDATE `gossip_menu_option_trainer` SET `TrainerId`=877 WHERE (`MenuId`=5855 AND `OptionIndex`=0);
UPDATE `gossip_menu_option_trainer` SET `TrainerId`=877 WHERE (`MenuId`=5855 AND `OptionIndex`=0);
UPDATE `gossip_menu_option_trainer` SET `TrainerId`=877 WHERE (`MenuId`=5855 AND `OptionIndex`=0);
UPDATE `gossip_menu_option_trainer` SET `TrainerId`=877 WHERE (`MenuId`=5855 AND `OptionIndex`=0);


-- Trainer
DELETE FROM `trainer` WHERE `Id`=877;
INSERT INTO `trainer` (`Id`, `Type`, `Greeting`, `VerifiedBuild`) VALUES
(877, 2, 'Here, let me show you how to bind those wounds....', 27547);


-- Trainer Spell
DELETE FROM `trainer_spell` WHERE (`TrainerId`=877 AND `SpellId`=7928) OR (`TrainerId`=877 AND `SpellId`=7929) OR (`TrainerId`=877 AND `SpellId`=3278) OR (`TrainerId`=877 AND `SpellId`=3277) OR (`TrainerId`=877 AND `SpellId`=3276) OR (`TrainerId`=877 AND `SpellId`=18630) OR (`TrainerId`=877 AND `SpellId`=10840) OR (`TrainerId`=877 AND `SpellId`=10841) OR (`TrainerId`=877 AND `SpellId`=18629);
INSERT INTO `trainer_spell` (`TrainerId`, `SpellId`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqAbility1`, `ReqAbility2`, `ReqAbility3`, `ReqLevel`, `VerifiedBuild`) VALUES
(877, 7928, 4750, 0, 0, 0, 0, 0, 0, 27547),
(877, 7929, 4750, 0, 0, 0, 0, 0, 0, 27547),
(877, 3278, 950, 0, 0, 0, 0, 0, 0, 27547),
(877, 3277, 238, 0, 0, 0, 0, 0, 0, 27547),
(877, 3276, 95, 0, 0, 0, 0, 0, 0, 27547),
(877, 18630, 19000, 0, 0, 0, 0, 0, 0, 27547),
(877, 10840, 9500, 0, 0, 0, 0, 0, 0, 27547),
(877, 10841, 9500, 0, 0, 0, 0, 0, 0, 27547),
(877, 18629, 19000, 0, 0, 0, 0, 0, 0, 27547);

UPDATE `trainer_spell` SET `ReqAbility1`=33388, `VerifiedBuild`=27547 WHERE (`TrainerId`=46 AND `SpellId`=33392);
UPDATE `trainer_spell` SET `MoneyCost`=90, `VerifiedBuild`=27547 WHERE (`TrainerId`=59 AND `SpellId`=2331);
UPDATE `trainer_spell` SET `MoneyCost`=225, `VerifiedBuild`=27547 WHERE (`TrainerId`=59 AND `SpellId`=2334);
UPDATE `trainer_spell` SET `MoneyCost`=45, `VerifiedBuild`=27547 WHERE (`TrainerId`=59 AND `SpellId`=3170);
UPDATE `trainer_spell` SET `MoneyCost`=900, `VerifiedBuild`=27547 WHERE (`TrainerId`=59 AND `SpellId`=2337);
UPDATE `trainer_spell` SET `MoneyCost`=135, `VerifiedBuild`=27547 WHERE (`TrainerId`=59 AND `SpellId`=2332);
UPDATE `trainer_spell` SET `MoneyCost`=285000, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=264639);
UPDATE `trainer_spell` SET `MoneyCost`=28500, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=88015);
UPDATE `trainer_spell` SET `MoneyCost`=33250, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=88006);
UPDATE `trainer_spell` SET `MoneyCost`=48, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=6412);
UPDATE `trainer_spell` SET `MoneyCost`=95, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=6415);
UPDATE `trainer_spell` SET `MoneyCost`=76, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=93741);
UPDATE `trainer_spell` SET `MoneyCost`=95, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=6499);
UPDATE `trainer_spell` SET `MoneyCost`=190, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=2544);
UPDATE `trainer_spell` SET `MoneyCost`=95, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=2541);
UPDATE `trainer_spell` SET `MoneyCost`=48, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=2539);
UPDATE `trainer_spell` SET `MoneyCost`=428, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=3399);
UPDATE `trainer_spell` SET `MoneyCost`=285, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=6500);
UPDATE `trainer_spell` SET `MoneyCost`=142, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=2546);
UPDATE `trainer_spell` SET `MoneyCost`=475, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=3400);
UPDATE `trainer_spell` SET `MoneyCost`=4750, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=18238);
UPDATE `trainer_spell` SET `MoneyCost`=475, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=4094);
UPDATE `trainer_spell` SET `MoneyCost`=3800, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=21175);
UPDATE `trainer_spell` SET `MoneyCost`=6175, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=46684);
UPDATE `trainer_spell` SET `MoneyCost`=6175, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=46688);
UPDATE `trainer_spell` SET `MoneyCost`=6175, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=18244);
UPDATE `trainer_spell` SET `MoneyCost`=6175, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=18243);
UPDATE `trainer_spell` SET `MoneyCost`=5700, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=18240);
UPDATE `trainer_spell` SET `MoneyCost`=285000, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=264639);
UPDATE `trainer_spell` SET `MoneyCost`=28500, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=88015);
UPDATE `trainer_spell` SET `MoneyCost`=33250, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=88006);
UPDATE `trainer_spell` SET `MoneyCost`=48, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=6412);
UPDATE `trainer_spell` SET `MoneyCost`=95, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=6415);
UPDATE `trainer_spell` SET `MoneyCost`=76, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=93741);
UPDATE `trainer_spell` SET `MoneyCost`=95, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=6499);
UPDATE `trainer_spell` SET `MoneyCost`=190, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=2544);
UPDATE `trainer_spell` SET `MoneyCost`=95, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=2541);
UPDATE `trainer_spell` SET `MoneyCost`=48, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=2539);
UPDATE `trainer_spell` SET `MoneyCost`=428, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=3399);
UPDATE `trainer_spell` SET `MoneyCost`=285, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=6500);
UPDATE `trainer_spell` SET `MoneyCost`=142, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=2546);
UPDATE `trainer_spell` SET `MoneyCost`=475, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=3400);
UPDATE `trainer_spell` SET `MoneyCost`=4750, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=18238);
UPDATE `trainer_spell` SET `MoneyCost`=475, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=4094);
UPDATE `trainer_spell` SET `MoneyCost`=3800, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=21175);
UPDATE `trainer_spell` SET `MoneyCost`=6175, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=46684);
UPDATE `trainer_spell` SET `MoneyCost`=6175, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=46688);
UPDATE `trainer_spell` SET `MoneyCost`=6175, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=18244);
UPDATE `trainer_spell` SET `MoneyCost`=6175, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=18243);
UPDATE `trainer_spell` SET `MoneyCost`=5700, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=18240);
UPDATE `trainer_spell` SET `MoneyCost`=285000, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=264639);
UPDATE `trainer_spell` SET `MoneyCost`=28500, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=88015);
UPDATE `trainer_spell` SET `MoneyCost`=33250, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=88006);
UPDATE `trainer_spell` SET `MoneyCost`=48, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=6412);
UPDATE `trainer_spell` SET `MoneyCost`=95, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=6415);
UPDATE `trainer_spell` SET `MoneyCost`=76, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=93741);
UPDATE `trainer_spell` SET `MoneyCost`=95, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=6499);
UPDATE `trainer_spell` SET `MoneyCost`=190, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=2544);
UPDATE `trainer_spell` SET `MoneyCost`=95, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=2541);
UPDATE `trainer_spell` SET `MoneyCost`=48, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=2539);
UPDATE `trainer_spell` SET `MoneyCost`=428, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=3399);
UPDATE `trainer_spell` SET `MoneyCost`=285, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=6500);
UPDATE `trainer_spell` SET `MoneyCost`=142, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=2546);
UPDATE `trainer_spell` SET `MoneyCost`=475, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=3400);
UPDATE `trainer_spell` SET `MoneyCost`=4750, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=18238);
UPDATE `trainer_spell` SET `MoneyCost`=475, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=4094);
UPDATE `trainer_spell` SET `MoneyCost`=3800, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=21175);
UPDATE `trainer_spell` SET `MoneyCost`=6175, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=46684);
UPDATE `trainer_spell` SET `MoneyCost`=6175, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=46688);
UPDATE `trainer_spell` SET `MoneyCost`=6175, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=18244);
UPDATE `trainer_spell` SET `MoneyCost`=6175, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=18243);
UPDATE `trainer_spell` SET `MoneyCost`=5700, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=18240);
UPDATE `trainer_spell` SET `MoneyCost`=285000, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=264639);
UPDATE `trainer_spell` SET `MoneyCost`=28500, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=88015);
UPDATE `trainer_spell` SET `MoneyCost`=33250, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=88006);
UPDATE `trainer_spell` SET `MoneyCost`=48, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=6412);
UPDATE `trainer_spell` SET `MoneyCost`=95, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=6415);
UPDATE `trainer_spell` SET `MoneyCost`=76, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=93741);
UPDATE `trainer_spell` SET `MoneyCost`=95, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=6499);
UPDATE `trainer_spell` SET `MoneyCost`=190, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=2544);
UPDATE `trainer_spell` SET `MoneyCost`=95, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=2541);
UPDATE `trainer_spell` SET `MoneyCost`=48, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=2539);
UPDATE `trainer_spell` SET `MoneyCost`=428, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=3399);
UPDATE `trainer_spell` SET `MoneyCost`=285, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=6500);
UPDATE `trainer_spell` SET `MoneyCost`=142, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=2546);
UPDATE `trainer_spell` SET `MoneyCost`=475, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=3400);
UPDATE `trainer_spell` SET `MoneyCost`=4750, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=18238);
UPDATE `trainer_spell` SET `MoneyCost`=475, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=4094);
UPDATE `trainer_spell` SET `MoneyCost`=3800, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=21175);
UPDATE `trainer_spell` SET `MoneyCost`=6175, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=46684);
UPDATE `trainer_spell` SET `MoneyCost`=6175, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=46688);
UPDATE `trainer_spell` SET `MoneyCost`=6175, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=18244);
UPDATE `trainer_spell` SET `MoneyCost`=6175, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=18243);
UPDATE `trainer_spell` SET `MoneyCost`=5700, `VerifiedBuild`=27547 WHERE (`TrainerId`=136 AND `SpellId`=18240);
UPDATE `trainer_spell` SET `MoneyCost`=142, `VerifiedBuild`=27547 WHERE (`TrainerId`=102 AND `SpellId`=7430);
UPDATE `trainer_spell` SET `MoneyCost`=238, `VerifiedBuild`=27547 WHERE (`TrainerId`=102 AND `SpellId`=3931);
UPDATE `trainer_spell` SET `MoneyCost`=238, `VerifiedBuild`=27547 WHERE (`TrainerId`=102 AND `SpellId`=3929);
UPDATE `trainer_spell` SET `MoneyCost`=190, `VerifiedBuild`=27547 WHERE (`TrainerId`=102 AND `SpellId`=3977);
UPDATE `trainer_spell` SET `MoneyCost`=142, `VerifiedBuild`=27547 WHERE (`TrainerId`=102 AND `SpellId`=3925);
UPDATE `trainer_spell` SET `MoneyCost`=124, `VerifiedBuild`=27547 WHERE (`TrainerId`=102 AND `SpellId`=3923);
UPDATE `trainer_spell` SET `MoneyCost`=109, `VerifiedBuild`=27547 WHERE (`TrainerId`=102 AND `SpellId`=3922);
UPDATE `trainer_spell` SET `MoneyCost`=142, `VerifiedBuild`=27547 WHERE (`TrainerId`=103 AND `SpellId`=226106);
UPDATE `trainer_spell` SET `MoneyCost`=142, `VerifiedBuild`=27547 WHERE (`TrainerId`=103 AND `SpellId`=226107);
UPDATE `trainer_spell` SET `MoneyCost`=95, `VerifiedBuild`=27547 WHERE (`TrainerId`=103 AND `SpellId`=226105);
UPDATE `trainer_spell` SET `MoneyCost`=142, `VerifiedBuild`=27547 WHERE (`TrainerId`=103 AND `SpellId`=9065);
UPDATE `trainer_spell` SET `MoneyCost`=190, `VerifiedBuild`=27547 WHERE (`TrainerId`=103 AND `SpellId`=3759);
UPDATE `trainer_spell` SET `MoneyCost`=95, `VerifiedBuild`=27547 WHERE (`TrainerId`=103 AND `SpellId`=2162);
UPDATE `trainer_spell` SET `MoneyCost`=95, `VerifiedBuild`=27547 WHERE (`TrainerId`=103 AND `SpellId`=2161);
UPDATE `trainer_spell` SET `MoneyCost`=142, `VerifiedBuild`=27547 WHERE (`TrainerId`=103 AND `SpellId`=3756);
UPDATE `trainer_spell` SET `MoneyCost`=95, `VerifiedBuild`=27547 WHERE (`TrainerId`=103 AND `SpellId`=2160);
UPDATE `trainer_spell` SET `MoneyCost`=48, `VerifiedBuild`=27547 WHERE (`TrainerId`=103 AND `SpellId`=3816);
UPDATE `trainer_spell` SET `MoneyCost`=71, `VerifiedBuild`=27547 WHERE (`TrainerId`=103 AND `SpellId`=3753);
UPDATE `trainer_spell` SET `MoneyCost`=48, `VerifiedBuild`=27547 WHERE (`TrainerId`=103 AND `SpellId`=2153);
UPDATE `trainer_spell` SET `MoneyCost`=380, `VerifiedBuild`=27547 WHERE (`TrainerId`=387 AND `SpellId`=50598);
UPDATE `trainer_spell` SET `MoneyCost`=380, `VerifiedBuild`=27547 WHERE (`TrainerId`=387 AND `SpellId`=50605);
UPDATE `trainer_spell` SET `MoneyCost`=380, `VerifiedBuild`=27547 WHERE (`TrainerId`=387 AND `SpellId`=50612);
UPDATE `trainer_spell` SET `MoneyCost`=142, `VerifiedBuild`=27547 WHERE (`TrainerId`=387 AND `SpellId`=52739);
UPDATE `trainer_spell` SET `MoneyCost`=48, `VerifiedBuild`=27547 WHERE (`TrainerId`=387 AND `SpellId`=52843);
UPDATE `trainer_spell` SET `MoneyCost`=48, `VerifiedBuild`=27547 WHERE (`TrainerId`=387 AND `SpellId`=48248);
UPDATE `trainer_spell` SET `MoneyCost`=285, `VerifiedBuild`=27547 WHERE (`TrainerId`=387 AND `SpellId`=53462);
UPDATE `trainer_spell` SET `MoneyCost`=48, `VerifiedBuild`=27547 WHERE (`TrainerId`=387 AND `SpellId`=58484);
UPDATE `trainer_spell` SET `MoneyCost`=48, `VerifiedBuild`=27547 WHERE (`TrainerId`=387 AND `SpellId`=58472);
UPDATE `trainer_spell` SET `MoneyCost`=95, `VerifiedBuild`=27547 WHERE (`TrainerId`=59 AND `SpellId`=2331);
UPDATE `trainer_spell` SET `MoneyCost`=238, `VerifiedBuild`=27547 WHERE (`TrainerId`=59 AND `SpellId`=2334);
UPDATE `trainer_spell` SET `MoneyCost`=48, `VerifiedBuild`=27547 WHERE (`TrainerId`=59 AND `SpellId`=3170);
UPDATE `trainer_spell` SET `MoneyCost`=950, `VerifiedBuild`=27547 WHERE (`TrainerId`=59 AND `SpellId`=2337);
UPDATE `trainer_spell` SET `MoneyCost`=142, `VerifiedBuild`=27547 WHERE (`TrainerId`=59 AND `SpellId`=2332);


-- Creature Default Trainer
DELETE FROM `creature_default_trainer` WHERE `CreatureId`=4753;
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES
(4753, 46);


-- NPC Vendor
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=27547 WHERE (`entry`=55285 AND `item`=73839 AND `ExtendedCost`=0 AND `type`=1); -- Swift Mountain Horse
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=27547 WHERE (`entry`=55285 AND `item`=73838 AND `ExtendedCost`=0 AND `type`=1); -- Mountain Horse
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=27547 WHERE (`entry`=50307 AND `item`=64894 AND `ExtendedCost`=0 AND `type`=1); -- Shroud of Gilneas
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=27547 WHERE (`entry`=50307 AND `item`=64893 AND `ExtendedCost`=0 AND `type`=1); -- Cape of Gilneas
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=27547 WHERE (`entry`=50307 AND `item`=64892 AND `ExtendedCost`=0 AND `type`=1); -- Mantle of Gilneas
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=27547 WHERE (`entry`=50307 AND `item`=67532 AND `ExtendedCost`=0 AND `type`=1); -- Gilnean Satchel
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=27547 WHERE (`entry`=50307 AND `item`=64882 AND `ExtendedCost`=0 AND `type`=1); -- Gilneas Tabard
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=27547 WHERE (`entry`=50305 AND `item`=64887 AND `ExtendedCost`=0 AND `type`=1); -- Cape of Darnassus
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=27547 WHERE (`entry`=50305 AND `item`=64888 AND `ExtendedCost`=0 AND `type`=1); -- Mantle of Darnassus
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=27547 WHERE (`entry`=50305 AND `item`=64886 AND `ExtendedCost`=0 AND `type`=1); -- Shroud of Darnassus
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=27547 WHERE (`entry`=50305 AND `item`=67526 AND `ExtendedCost`=0 AND `type`=1); -- Darnassian Satchel
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=27547 WHERE (`entry`=50305 AND `item`=45579 AND `ExtendedCost`=0 AND `type`=1); -- Darnassus Tabard
UPDATE `npc_vendor` SET `slot`=25, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1); -- Virtuoso Inking Set
UPDATE `npc_vendor` SET `slot`=24, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1); -- Jeweler's Kit
UPDATE `npc_vendor` SET `slot`=23, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=39354 AND `ExtendedCost`=0 AND `type`=1); -- Light Parchment
UPDATE `npc_vendor` SET `slot`=22, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=6260 AND `ExtendedCost`=0 AND `type`=1); -- Blue Dye
UPDATE `npc_vendor` SET `slot`=21, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=2324 AND `ExtendedCost`=0 AND `type`=1); -- Bleach
UPDATE `npc_vendor` SET `slot`=20, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=2604 AND `ExtendedCost`=0 AND `type`=1); -- Red Dye
UPDATE `npc_vendor` SET `slot`=19, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=6529 AND `ExtendedCost`=0 AND `type`=1); -- Shiny Bauble
UPDATE `npc_vendor` SET `slot`=18, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=4289 AND `ExtendedCost`=0 AND `type`=1); -- Salt
UPDATE `npc_vendor` SET `slot`=17, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=3371 AND `ExtendedCost`=0 AND `type`=1); -- Crystal Vial
UPDATE `npc_vendor` SET `slot`=16, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1); -- Weak Flux
UPDATE `npc_vendor` SET `slot`=15, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=2320 AND `ExtendedCost`=0 AND `type`=1); -- Coarse Thread
UPDATE `npc_vendor` SET `slot`=14, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=30817 AND `ExtendedCost`=0 AND `type`=1); -- Simple Flour
UPDATE `npc_vendor` SET `slot`=13, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=2678 AND `ExtendedCost`=0 AND `type`=1); -- Mild Spices
UPDATE `npc_vendor` SET `slot`=12, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=6217 AND `ExtendedCost`=0 AND `type`=1); -- Copper Rod
UPDATE `npc_vendor` SET `slot`=11, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=6256 AND `ExtendedCost`=0 AND `type`=1); -- Fishing Pole
UPDATE `npc_vendor` SET `slot`=10, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1); -- Blacksmith Hammer
UPDATE `npc_vendor` SET `slot`=9, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=85663 AND `ExtendedCost`=0 AND `type`=1); -- Herbalist's Spade
UPDATE `npc_vendor` SET `slot`=8, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1); -- Mining Pick
UPDATE `npc_vendor` SET `slot`=7, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=7005 AND `ExtendedCost`=0 AND `type`=1); -- Skinning Knife
UPDATE `npc_vendor` SET `slot`=6, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=5042 AND `ExtendedCost`=0 AND `type`=1); -- Red Ribboned Wrapping Paper
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=4470 AND `ExtendedCost`=0 AND `type`=1); -- Simple Wood
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=4498 AND `ExtendedCost`=0 AND `type`=1); -- Brown Leather Satchel
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=4496 AND `ExtendedCost`=0 AND `type`=1); -- Small Brown Pouch
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=4540 AND `ExtendedCost`=0 AND `type`=1); -- Tough Hunk of Bread
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=159 AND `ExtendedCost`=0 AND `type`=1); -- Refreshing Spring Water
UPDATE `npc_vendor` SET `slot`=25, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1); -- Virtuoso Inking Set
UPDATE `npc_vendor` SET `slot`=24, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1); -- Jeweler's Kit
UPDATE `npc_vendor` SET `slot`=23, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=39354 AND `ExtendedCost`=0 AND `type`=1); -- Light Parchment
UPDATE `npc_vendor` SET `slot`=22, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=6260 AND `ExtendedCost`=0 AND `type`=1); -- Blue Dye
UPDATE `npc_vendor` SET `slot`=21, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=2324 AND `ExtendedCost`=0 AND `type`=1); -- Bleach
UPDATE `npc_vendor` SET `slot`=20, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=2604 AND `ExtendedCost`=0 AND `type`=1); -- Red Dye
UPDATE `npc_vendor` SET `slot`=19, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=6529 AND `ExtendedCost`=0 AND `type`=1); -- Shiny Bauble
UPDATE `npc_vendor` SET `slot`=18, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=4289 AND `ExtendedCost`=0 AND `type`=1); -- Salt
UPDATE `npc_vendor` SET `slot`=17, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=3371 AND `ExtendedCost`=0 AND `type`=1); -- Crystal Vial
UPDATE `npc_vendor` SET `slot`=16, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1); -- Weak Flux
UPDATE `npc_vendor` SET `slot`=15, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=2320 AND `ExtendedCost`=0 AND `type`=1); -- Coarse Thread
UPDATE `npc_vendor` SET `slot`=14, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=30817 AND `ExtendedCost`=0 AND `type`=1); -- Simple Flour
UPDATE `npc_vendor` SET `slot`=13, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=2678 AND `ExtendedCost`=0 AND `type`=1); -- Mild Spices
UPDATE `npc_vendor` SET `slot`=12, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=6217 AND `ExtendedCost`=0 AND `type`=1); -- Copper Rod
UPDATE `npc_vendor` SET `slot`=11, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=6256 AND `ExtendedCost`=0 AND `type`=1); -- Fishing Pole
UPDATE `npc_vendor` SET `slot`=10, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1); -- Blacksmith Hammer
UPDATE `npc_vendor` SET `slot`=9, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=85663 AND `ExtendedCost`=0 AND `type`=1); -- Herbalist's Spade
UPDATE `npc_vendor` SET `slot`=8, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1); -- Mining Pick
UPDATE `npc_vendor` SET `slot`=7, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=7005 AND `ExtendedCost`=0 AND `type`=1); -- Skinning Knife
UPDATE `npc_vendor` SET `slot`=6, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=5042 AND `ExtendedCost`=0 AND `type`=1); -- Red Ribboned Wrapping Paper
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=4470 AND `ExtendedCost`=0 AND `type`=1); -- Simple Wood
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=4498 AND `ExtendedCost`=0 AND `type`=1); -- Brown Leather Satchel
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=4496 AND `ExtendedCost`=0 AND `type`=1); -- Small Brown Pouch
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=4540 AND `ExtendedCost`=0 AND `type`=1); -- Tough Hunk of Bread
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=27547 WHERE (`entry`=38783 AND `item`=159 AND `ExtendedCost`=0 AND `type`=1); -- Refreshing Spring Water
UPDATE `npc_vendor` SET `slot`=25, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1); -- Virtuoso Inking Set
UPDATE `npc_vendor` SET `slot`=24, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1); -- Jeweler's Kit
UPDATE `npc_vendor` SET `slot`=23, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=39354 AND `ExtendedCost`=0 AND `type`=1); -- Light Parchment
UPDATE `npc_vendor` SET `slot`=22, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=6260 AND `ExtendedCost`=0 AND `type`=1); -- Blue Dye
UPDATE `npc_vendor` SET `slot`=21, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=2324 AND `ExtendedCost`=0 AND `type`=1); -- Bleach
UPDATE `npc_vendor` SET `slot`=20, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=2604 AND `ExtendedCost`=0 AND `type`=1); -- Red Dye
UPDATE `npc_vendor` SET `slot`=19, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=6529 AND `ExtendedCost`=0 AND `type`=1); -- Shiny Bauble
UPDATE `npc_vendor` SET `slot`=18, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=4289 AND `ExtendedCost`=0 AND `type`=1); -- Salt
UPDATE `npc_vendor` SET `slot`=17, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=3371 AND `ExtendedCost`=0 AND `type`=1); -- Crystal Vial
UPDATE `npc_vendor` SET `slot`=16, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1); -- Weak Flux
UPDATE `npc_vendor` SET `slot`=15, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=2320 AND `ExtendedCost`=0 AND `type`=1); -- Coarse Thread
UPDATE `npc_vendor` SET `slot`=14, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=30817 AND `ExtendedCost`=0 AND `type`=1); -- Simple Flour
UPDATE `npc_vendor` SET `slot`=13, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=2678 AND `ExtendedCost`=0 AND `type`=1); -- Mild Spices
UPDATE `npc_vendor` SET `slot`=12, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=6217 AND `ExtendedCost`=0 AND `type`=1); -- Copper Rod
UPDATE `npc_vendor` SET `slot`=11, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=6256 AND `ExtendedCost`=0 AND `type`=1); -- Fishing Pole
UPDATE `npc_vendor` SET `slot`=10, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1); -- Blacksmith Hammer
UPDATE `npc_vendor` SET `slot`=9, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=85663 AND `ExtendedCost`=0 AND `type`=1); -- Herbalist's Spade
UPDATE `npc_vendor` SET `slot`=8, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1); -- Mining Pick
UPDATE `npc_vendor` SET `slot`=7, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=7005 AND `ExtendedCost`=0 AND `type`=1); -- Skinning Knife
UPDATE `npc_vendor` SET `slot`=6, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=5042 AND `ExtendedCost`=0 AND `type`=1); -- Red Ribboned Wrapping Paper
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=4470 AND `ExtendedCost`=0 AND `type`=1); -- Simple Wood
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=4498 AND `ExtendedCost`=0 AND `type`=1); -- Brown Leather Satchel
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=4496 AND `ExtendedCost`=0 AND `type`=1); -- Small Brown Pouch
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=4540 AND `ExtendedCost`=0 AND `type`=1); -- Tough Hunk of Bread
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=159 AND `ExtendedCost`=0 AND `type`=1); -- Refreshing Spring Water
UPDATE `npc_vendor` SET `slot`=25, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1); -- Virtuoso Inking Set
UPDATE `npc_vendor` SET `slot`=24, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1); -- Jeweler's Kit
UPDATE `npc_vendor` SET `slot`=23, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=39354 AND `ExtendedCost`=0 AND `type`=1); -- Light Parchment
UPDATE `npc_vendor` SET `slot`=22, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=6260 AND `ExtendedCost`=0 AND `type`=1); -- Blue Dye
UPDATE `npc_vendor` SET `slot`=21, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=2324 AND `ExtendedCost`=0 AND `type`=1); -- Bleach
UPDATE `npc_vendor` SET `slot`=20, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=2604 AND `ExtendedCost`=0 AND `type`=1); -- Red Dye
UPDATE `npc_vendor` SET `slot`=19, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=6529 AND `ExtendedCost`=0 AND `type`=1); -- Shiny Bauble
UPDATE `npc_vendor` SET `slot`=18, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=4289 AND `ExtendedCost`=0 AND `type`=1); -- Salt
UPDATE `npc_vendor` SET `slot`=17, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=3371 AND `ExtendedCost`=0 AND `type`=1); -- Crystal Vial
UPDATE `npc_vendor` SET `slot`=16, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1); -- Weak Flux
UPDATE `npc_vendor` SET `slot`=15, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=2320 AND `ExtendedCost`=0 AND `type`=1); -- Coarse Thread
UPDATE `npc_vendor` SET `slot`=14, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=30817 AND `ExtendedCost`=0 AND `type`=1); -- Simple Flour
UPDATE `npc_vendor` SET `slot`=13, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=2678 AND `ExtendedCost`=0 AND `type`=1); -- Mild Spices
UPDATE `npc_vendor` SET `slot`=12, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=6217 AND `ExtendedCost`=0 AND `type`=1); -- Copper Rod
UPDATE `npc_vendor` SET `slot`=11, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=6256 AND `ExtendedCost`=0 AND `type`=1); -- Fishing Pole
UPDATE `npc_vendor` SET `slot`=10, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1); -- Blacksmith Hammer
UPDATE `npc_vendor` SET `slot`=9, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=85663 AND `ExtendedCost`=0 AND `type`=1); -- Herbalist's Spade
UPDATE `npc_vendor` SET `slot`=8, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1); -- Mining Pick
UPDATE `npc_vendor` SET `slot`=7, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=7005 AND `ExtendedCost`=0 AND `type`=1); -- Skinning Knife
UPDATE `npc_vendor` SET `slot`=6, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=5042 AND `ExtendedCost`=0 AND `type`=1); -- Red Ribboned Wrapping Paper
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=4470 AND `ExtendedCost`=0 AND `type`=1); -- Simple Wood
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=4498 AND `ExtendedCost`=0 AND `type`=1); -- Brown Leather Satchel
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=4496 AND `ExtendedCost`=0 AND `type`=1); -- Small Brown Pouch
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=4540 AND `ExtendedCost`=0 AND `type`=1); -- Tough Hunk of Bread
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=27547 WHERE (`entry`=42853 AND `item`=159 AND `ExtendedCost`=0 AND `type`=1); -- Refreshing Spring Water
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=27547 WHERE (`entry`=68993 AND `item`=37460 AND `ExtendedCost`=0 AND `type`=1); -- Rope Pet Leash
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=27547 WHERE (`entry`=68993 AND `item`=37460 AND `ExtendedCost`=0 AND `type`=1); -- Rope Pet Leash
UPDATE `npc_vendor` SET `slot`=25, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1); -- Virtuoso Inking Set
UPDATE `npc_vendor` SET `slot`=24, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1); -- Jeweler's Kit
UPDATE `npc_vendor` SET `slot`=23, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=39354 AND `ExtendedCost`=0 AND `type`=1); -- Light Parchment
UPDATE `npc_vendor` SET `slot`=22, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=6260 AND `ExtendedCost`=0 AND `type`=1); -- Blue Dye
UPDATE `npc_vendor` SET `slot`=21, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2324 AND `ExtendedCost`=0 AND `type`=1); -- Bleach
UPDATE `npc_vendor` SET `slot`=20, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2604 AND `ExtendedCost`=0 AND `type`=1); -- Red Dye
UPDATE `npc_vendor` SET `slot`=19, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=6529 AND `ExtendedCost`=0 AND `type`=1); -- Shiny Bauble
UPDATE `npc_vendor` SET `slot`=18, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=4289 AND `ExtendedCost`=0 AND `type`=1); -- Salt
UPDATE `npc_vendor` SET `slot`=17, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=3371 AND `ExtendedCost`=0 AND `type`=1); -- Crystal Vial
UPDATE `npc_vendor` SET `slot`=16, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1); -- Weak Flux
UPDATE `npc_vendor` SET `slot`=15, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2320 AND `ExtendedCost`=0 AND `type`=1); -- Coarse Thread
UPDATE `npc_vendor` SET `slot`=14, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=30817 AND `ExtendedCost`=0 AND `type`=1); -- Simple Flour
UPDATE `npc_vendor` SET `slot`=13, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2678 AND `ExtendedCost`=0 AND `type`=1); -- Mild Spices
UPDATE `npc_vendor` SET `slot`=12, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=6217 AND `ExtendedCost`=0 AND `type`=1); -- Copper Rod
UPDATE `npc_vendor` SET `slot`=11, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=6256 AND `ExtendedCost`=0 AND `type`=1); -- Fishing Pole
UPDATE `npc_vendor` SET `slot`=10, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1); -- Blacksmith Hammer
UPDATE `npc_vendor` SET `slot`=9, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=85663 AND `ExtendedCost`=0 AND `type`=1); -- Herbalist's Spade
UPDATE `npc_vendor` SET `slot`=8, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1); -- Mining Pick
UPDATE `npc_vendor` SET `slot`=7, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=7005 AND `ExtendedCost`=0 AND `type`=1); -- Skinning Knife
UPDATE `npc_vendor` SET `slot`=6, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=5042 AND `ExtendedCost`=0 AND `type`=1); -- Red Ribboned Wrapping Paper
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=4470 AND `ExtendedCost`=0 AND `type`=1); -- Simple Wood
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=4498 AND `ExtendedCost`=0 AND `type`=1); -- Brown Leather Satchel
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=4496 AND `ExtendedCost`=0 AND `type`=1); -- Small Brown Pouch
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=4540 AND `ExtendedCost`=0 AND `type`=1); -- Tough Hunk of Bread
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=159 AND `ExtendedCost`=0 AND `type`=1); -- Refreshing Spring Water
UPDATE `npc_vendor` SET `slot`=25, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1); -- Virtuoso Inking Set
UPDATE `npc_vendor` SET `slot`=24, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1); -- Jeweler's Kit
UPDATE `npc_vendor` SET `slot`=23, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=39354 AND `ExtendedCost`=0 AND `type`=1); -- Light Parchment
UPDATE `npc_vendor` SET `slot`=22, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=6260 AND `ExtendedCost`=0 AND `type`=1); -- Blue Dye
UPDATE `npc_vendor` SET `slot`=21, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2324 AND `ExtendedCost`=0 AND `type`=1); -- Bleach
UPDATE `npc_vendor` SET `slot`=20, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2604 AND `ExtendedCost`=0 AND `type`=1); -- Red Dye
UPDATE `npc_vendor` SET `slot`=19, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=6529 AND `ExtendedCost`=0 AND `type`=1); -- Shiny Bauble
UPDATE `npc_vendor` SET `slot`=18, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=4289 AND `ExtendedCost`=0 AND `type`=1); -- Salt
UPDATE `npc_vendor` SET `slot`=17, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=3371 AND `ExtendedCost`=0 AND `type`=1); -- Crystal Vial
UPDATE `npc_vendor` SET `slot`=16, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1); -- Weak Flux
UPDATE `npc_vendor` SET `slot`=15, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2320 AND `ExtendedCost`=0 AND `type`=1); -- Coarse Thread
UPDATE `npc_vendor` SET `slot`=14, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=30817 AND `ExtendedCost`=0 AND `type`=1); -- Simple Flour
UPDATE `npc_vendor` SET `slot`=13, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2678 AND `ExtendedCost`=0 AND `type`=1); -- Mild Spices
UPDATE `npc_vendor` SET `slot`=12, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=6217 AND `ExtendedCost`=0 AND `type`=1); -- Copper Rod
UPDATE `npc_vendor` SET `slot`=11, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=6256 AND `ExtendedCost`=0 AND `type`=1); -- Fishing Pole
UPDATE `npc_vendor` SET `slot`=10, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1); -- Blacksmith Hammer
UPDATE `npc_vendor` SET `slot`=9, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=85663 AND `ExtendedCost`=0 AND `type`=1); -- Herbalist's Spade
UPDATE `npc_vendor` SET `slot`=8, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1); -- Mining Pick
UPDATE `npc_vendor` SET `slot`=7, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=7005 AND `ExtendedCost`=0 AND `type`=1); -- Skinning Knife
UPDATE `npc_vendor` SET `slot`=6, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=5042 AND `ExtendedCost`=0 AND `type`=1); -- Red Ribboned Wrapping Paper
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=4470 AND `ExtendedCost`=0 AND `type`=1); -- Simple Wood
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=4498 AND `ExtendedCost`=0 AND `type`=1); -- Brown Leather Satchel
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=4496 AND `ExtendedCost`=0 AND `type`=1); -- Small Brown Pouch
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=4540 AND `ExtendedCost`=0 AND `type`=1); -- Tough Hunk of Bread
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=159 AND `ExtendedCost`=0 AND `type`=1); -- Refreshing Spring Water
UPDATE `npc_vendor` SET `slot`=25, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1); -- Virtuoso Inking Set
UPDATE `npc_vendor` SET `slot`=24, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1); -- Jeweler's Kit
UPDATE `npc_vendor` SET `slot`=23, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=39354 AND `ExtendedCost`=0 AND `type`=1); -- Light Parchment
UPDATE `npc_vendor` SET `slot`=22, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=6260 AND `ExtendedCost`=0 AND `type`=1); -- Blue Dye
UPDATE `npc_vendor` SET `slot`=21, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2324 AND `ExtendedCost`=0 AND `type`=1); -- Bleach
UPDATE `npc_vendor` SET `slot`=20, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2604 AND `ExtendedCost`=0 AND `type`=1); -- Red Dye
UPDATE `npc_vendor` SET `slot`=19, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=6529 AND `ExtendedCost`=0 AND `type`=1); -- Shiny Bauble
UPDATE `npc_vendor` SET `slot`=18, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=4289 AND `ExtendedCost`=0 AND `type`=1); -- Salt
UPDATE `npc_vendor` SET `slot`=17, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=3371 AND `ExtendedCost`=0 AND `type`=1); -- Crystal Vial
UPDATE `npc_vendor` SET `slot`=16, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1); -- Weak Flux
UPDATE `npc_vendor` SET `slot`=15, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2320 AND `ExtendedCost`=0 AND `type`=1); -- Coarse Thread
UPDATE `npc_vendor` SET `slot`=14, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=30817 AND `ExtendedCost`=0 AND `type`=1); -- Simple Flour
UPDATE `npc_vendor` SET `slot`=13, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2678 AND `ExtendedCost`=0 AND `type`=1); -- Mild Spices
UPDATE `npc_vendor` SET `slot`=12, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=6217 AND `ExtendedCost`=0 AND `type`=1); -- Copper Rod
UPDATE `npc_vendor` SET `slot`=11, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=6256 AND `ExtendedCost`=0 AND `type`=1); -- Fishing Pole
UPDATE `npc_vendor` SET `slot`=10, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1); -- Blacksmith Hammer
UPDATE `npc_vendor` SET `slot`=9, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=85663 AND `ExtendedCost`=0 AND `type`=1); -- Herbalist's Spade
UPDATE `npc_vendor` SET `slot`=8, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1); -- Mining Pick
UPDATE `npc_vendor` SET `slot`=7, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=7005 AND `ExtendedCost`=0 AND `type`=1); -- Skinning Knife
UPDATE `npc_vendor` SET `slot`=6, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=5042 AND `ExtendedCost`=0 AND `type`=1); -- Red Ribboned Wrapping Paper
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=4470 AND `ExtendedCost`=0 AND `type`=1); -- Simple Wood
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=4498 AND `ExtendedCost`=0 AND `type`=1); -- Brown Leather Satchel
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=4496 AND `ExtendedCost`=0 AND `type`=1); -- Small Brown Pouch
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=4540 AND `ExtendedCost`=0 AND `type`=1); -- Tough Hunk of Bread
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=159 AND `ExtendedCost`=0 AND `type`=1); -- Refreshing Spring Water
UPDATE `npc_vendor` SET `slot`=25, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1); -- Virtuoso Inking Set
UPDATE `npc_vendor` SET `slot`=24, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1); -- Jeweler's Kit
UPDATE `npc_vendor` SET `slot`=23, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=39354 AND `ExtendedCost`=0 AND `type`=1); -- Light Parchment
UPDATE `npc_vendor` SET `slot`=22, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=6260 AND `ExtendedCost`=0 AND `type`=1); -- Blue Dye
UPDATE `npc_vendor` SET `slot`=21, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2324 AND `ExtendedCost`=0 AND `type`=1); -- Bleach
UPDATE `npc_vendor` SET `slot`=20, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2604 AND `ExtendedCost`=0 AND `type`=1); -- Red Dye
UPDATE `npc_vendor` SET `slot`=19, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=6529 AND `ExtendedCost`=0 AND `type`=1); -- Shiny Bauble
UPDATE `npc_vendor` SET `slot`=18, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=4289 AND `ExtendedCost`=0 AND `type`=1); -- Salt
UPDATE `npc_vendor` SET `slot`=17, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=3371 AND `ExtendedCost`=0 AND `type`=1); -- Crystal Vial
UPDATE `npc_vendor` SET `slot`=16, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1); -- Weak Flux
UPDATE `npc_vendor` SET `slot`=15, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2320 AND `ExtendedCost`=0 AND `type`=1); -- Coarse Thread
UPDATE `npc_vendor` SET `slot`=14, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=30817 AND `ExtendedCost`=0 AND `type`=1); -- Simple Flour
UPDATE `npc_vendor` SET `slot`=13, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2678 AND `ExtendedCost`=0 AND `type`=1); -- Mild Spices
UPDATE `npc_vendor` SET `slot`=12, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=6217 AND `ExtendedCost`=0 AND `type`=1); -- Copper Rod
UPDATE `npc_vendor` SET `slot`=11, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=6256 AND `ExtendedCost`=0 AND `type`=1); -- Fishing Pole
UPDATE `npc_vendor` SET `slot`=10, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1); -- Blacksmith Hammer
UPDATE `npc_vendor` SET `slot`=9, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=85663 AND `ExtendedCost`=0 AND `type`=1); -- Herbalist's Spade
UPDATE `npc_vendor` SET `slot`=8, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1); -- Mining Pick
UPDATE `npc_vendor` SET `slot`=7, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=7005 AND `ExtendedCost`=0 AND `type`=1); -- Skinning Knife
UPDATE `npc_vendor` SET `slot`=6, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=5042 AND `ExtendedCost`=0 AND `type`=1); -- Red Ribboned Wrapping Paper
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=4470 AND `ExtendedCost`=0 AND `type`=1); -- Simple Wood
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=4498 AND `ExtendedCost`=0 AND `type`=1); -- Brown Leather Satchel
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=4496 AND `ExtendedCost`=0 AND `type`=1); -- Small Brown Pouch
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=4540 AND `ExtendedCost`=0 AND `type`=1); -- Tough Hunk of Bread
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=159 AND `ExtendedCost`=0 AND `type`=1); -- Refreshing Spring Water
UPDATE `npc_vendor` SET `slot`=6, `VerifiedBuild`=27547 WHERE (`entry`=42953 AND `item`=8952 AND `ExtendedCost`=0 AND `type`=1); -- Roasted Quail
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=27547 WHERE (`entry`=42953 AND `item`=4599 AND `ExtendedCost`=0 AND `type`=1); -- Cured Ham Steak
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=27547 WHERE (`entry`=42953 AND `item`=3771 AND `ExtendedCost`=0 AND `type`=1); -- Wild Hog Shank
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=27547 WHERE (`entry`=42953 AND `item`=3770 AND `ExtendedCost`=0 AND `type`=1); -- Mutton Chop
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=27547 WHERE (`entry`=42953 AND `item`=2287 AND `ExtendedCost`=0 AND `type`=1); -- Haunch of Meat
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=27547 WHERE (`entry`=42953 AND `item`=117 AND `ExtendedCost`=0 AND `type`=1); -- Tough Jerky
UPDATE `npc_vendor` SET `slot`=6, `VerifiedBuild`=27547 WHERE (`entry`=42953 AND `item`=8952 AND `ExtendedCost`=0 AND `type`=1); -- Roasted Quail
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=27547 WHERE (`entry`=42953 AND `item`=4599 AND `ExtendedCost`=0 AND `type`=1); -- Cured Ham Steak
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=27547 WHERE (`entry`=42953 AND `item`=3771 AND `ExtendedCost`=0 AND `type`=1); -- Wild Hog Shank
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=27547 WHERE (`entry`=42953 AND `item`=3770 AND `ExtendedCost`=0 AND `type`=1); -- Mutton Chop
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=27547 WHERE (`entry`=42953 AND `item`=2287 AND `ExtendedCost`=0 AND `type`=1); -- Haunch of Meat
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=27547 WHERE (`entry`=42953 AND `item`=117 AND `ExtendedCost`=0 AND `type`=1); -- Tough Jerky
UPDATE `npc_vendor` SET `slot`=25, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1); -- Virtuoso Inking Set
UPDATE `npc_vendor` SET `slot`=24, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1); -- Jeweler's Kit
UPDATE `npc_vendor` SET `slot`=23, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=39354 AND `ExtendedCost`=0 AND `type`=1); -- Light Parchment
UPDATE `npc_vendor` SET `slot`=22, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=6260 AND `ExtendedCost`=0 AND `type`=1); -- Blue Dye
UPDATE `npc_vendor` SET `slot`=21, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2324 AND `ExtendedCost`=0 AND `type`=1); -- Bleach
UPDATE `npc_vendor` SET `slot`=20, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2604 AND `ExtendedCost`=0 AND `type`=1); -- Red Dye
UPDATE `npc_vendor` SET `slot`=19, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=6529 AND `ExtendedCost`=0 AND `type`=1); -- Shiny Bauble
UPDATE `npc_vendor` SET `slot`=18, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=4289 AND `ExtendedCost`=0 AND `type`=1); -- Salt
UPDATE `npc_vendor` SET `slot`=17, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=3371 AND `ExtendedCost`=0 AND `type`=1); -- Crystal Vial
UPDATE `npc_vendor` SET `slot`=16, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1); -- Weak Flux
UPDATE `npc_vendor` SET `slot`=15, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2320 AND `ExtendedCost`=0 AND `type`=1); -- Coarse Thread
UPDATE `npc_vendor` SET `slot`=14, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=30817 AND `ExtendedCost`=0 AND `type`=1); -- Simple Flour
UPDATE `npc_vendor` SET `slot`=13, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2678 AND `ExtendedCost`=0 AND `type`=1); -- Mild Spices
UPDATE `npc_vendor` SET `slot`=12, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=6217 AND `ExtendedCost`=0 AND `type`=1); -- Copper Rod
UPDATE `npc_vendor` SET `slot`=11, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=6256 AND `ExtendedCost`=0 AND `type`=1); -- Fishing Pole
UPDATE `npc_vendor` SET `slot`=10, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1); -- Blacksmith Hammer
UPDATE `npc_vendor` SET `slot`=9, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=85663 AND `ExtendedCost`=0 AND `type`=1); -- Herbalist's Spade
UPDATE `npc_vendor` SET `slot`=8, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1); -- Mining Pick
UPDATE `npc_vendor` SET `slot`=7, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=7005 AND `ExtendedCost`=0 AND `type`=1); -- Skinning Knife
UPDATE `npc_vendor` SET `slot`=6, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=5042 AND `ExtendedCost`=0 AND `type`=1); -- Red Ribboned Wrapping Paper
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=4470 AND `ExtendedCost`=0 AND `type`=1); -- Simple Wood
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=4498 AND `ExtendedCost`=0 AND `type`=1); -- Brown Leather Satchel
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=4496 AND `ExtendedCost`=0 AND `type`=1); -- Small Brown Pouch
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=4540 AND `ExtendedCost`=0 AND `type`=1); -- Tough Hunk of Bread
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=159 AND `ExtendedCost`=0 AND `type`=1); -- Refreshing Spring Water
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=27547 WHERE (`entry`=68993 AND `item`=37460 AND `ExtendedCost`=0 AND `type`=1); -- Rope Pet Leash
UPDATE `npc_vendor` SET `slot`=25, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1); -- Virtuoso Inking Set
UPDATE `npc_vendor` SET `slot`=24, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1); -- Jeweler's Kit
UPDATE `npc_vendor` SET `slot`=23, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=39354 AND `ExtendedCost`=0 AND `type`=1); -- Light Parchment
UPDATE `npc_vendor` SET `slot`=22, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=6260 AND `ExtendedCost`=0 AND `type`=1); -- Blue Dye
UPDATE `npc_vendor` SET `slot`=21, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2324 AND `ExtendedCost`=0 AND `type`=1); -- Bleach
UPDATE `npc_vendor` SET `slot`=20, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2604 AND `ExtendedCost`=0 AND `type`=1); -- Red Dye
UPDATE `npc_vendor` SET `slot`=19, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=6529 AND `ExtendedCost`=0 AND `type`=1); -- Shiny Bauble
UPDATE `npc_vendor` SET `slot`=18, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=4289 AND `ExtendedCost`=0 AND `type`=1); -- Salt
UPDATE `npc_vendor` SET `slot`=17, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=3371 AND `ExtendedCost`=0 AND `type`=1); -- Crystal Vial
UPDATE `npc_vendor` SET `slot`=16, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1); -- Weak Flux
UPDATE `npc_vendor` SET `slot`=15, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2320 AND `ExtendedCost`=0 AND `type`=1); -- Coarse Thread
UPDATE `npc_vendor` SET `slot`=14, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=30817 AND `ExtendedCost`=0 AND `type`=1); -- Simple Flour
UPDATE `npc_vendor` SET `slot`=13, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2678 AND `ExtendedCost`=0 AND `type`=1); -- Mild Spices
UPDATE `npc_vendor` SET `slot`=12, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=6217 AND `ExtendedCost`=0 AND `type`=1); -- Copper Rod
UPDATE `npc_vendor` SET `slot`=11, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=6256 AND `ExtendedCost`=0 AND `type`=1); -- Fishing Pole
UPDATE `npc_vendor` SET `slot`=10, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1); -- Blacksmith Hammer
UPDATE `npc_vendor` SET `slot`=9, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=85663 AND `ExtendedCost`=0 AND `type`=1); -- Herbalist's Spade
UPDATE `npc_vendor` SET `slot`=8, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1); -- Mining Pick
UPDATE `npc_vendor` SET `slot`=7, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=7005 AND `ExtendedCost`=0 AND `type`=1); -- Skinning Knife
UPDATE `npc_vendor` SET `slot`=6, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=5042 AND `ExtendedCost`=0 AND `type`=1); -- Red Ribboned Wrapping Paper
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=4470 AND `ExtendedCost`=0 AND `type`=1); -- Simple Wood
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=4498 AND `ExtendedCost`=0 AND `type`=1); -- Brown Leather Satchel
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=4496 AND `ExtendedCost`=0 AND `type`=1); -- Small Brown Pouch
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=4540 AND `ExtendedCost`=0 AND `type`=1); -- Tough Hunk of Bread
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=27547 WHERE (`entry`=43558 AND `item`=159 AND `ExtendedCost`=0 AND `type`=1); -- Refreshing Spring Water
UPDATE `npc_vendor` SET `slot`=25, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1); -- Virtuoso Inking Set
UPDATE `npc_vendor` SET `slot`=24, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1); -- Jeweler's Kit
UPDATE `npc_vendor` SET `slot`=23, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=39354 AND `ExtendedCost`=0 AND `type`=1); -- Light Parchment
UPDATE `npc_vendor` SET `slot`=22, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=6260 AND `ExtendedCost`=0 AND `type`=1); -- Blue Dye
UPDATE `npc_vendor` SET `slot`=21, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=2324 AND `ExtendedCost`=0 AND `type`=1); -- Bleach
UPDATE `npc_vendor` SET `slot`=20, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=2604 AND `ExtendedCost`=0 AND `type`=1); -- Red Dye
UPDATE `npc_vendor` SET `slot`=19, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=6529 AND `ExtendedCost`=0 AND `type`=1); -- Shiny Bauble
UPDATE `npc_vendor` SET `slot`=18, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=4289 AND `ExtendedCost`=0 AND `type`=1); -- Salt
UPDATE `npc_vendor` SET `slot`=17, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=3371 AND `ExtendedCost`=0 AND `type`=1); -- Crystal Vial
UPDATE `npc_vendor` SET `slot`=16, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1); -- Weak Flux
UPDATE `npc_vendor` SET `slot`=15, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=2320 AND `ExtendedCost`=0 AND `type`=1); -- Coarse Thread
UPDATE `npc_vendor` SET `slot`=14, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=30817 AND `ExtendedCost`=0 AND `type`=1); -- Simple Flour
UPDATE `npc_vendor` SET `slot`=13, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=2678 AND `ExtendedCost`=0 AND `type`=1); -- Mild Spices
UPDATE `npc_vendor` SET `slot`=12, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=6217 AND `ExtendedCost`=0 AND `type`=1); -- Copper Rod
UPDATE `npc_vendor` SET `slot`=11, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=6256 AND `ExtendedCost`=0 AND `type`=1); -- Fishing Pole
UPDATE `npc_vendor` SET `slot`=10, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1); -- Blacksmith Hammer
UPDATE `npc_vendor` SET `slot`=9, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=85663 AND `ExtendedCost`=0 AND `type`=1); -- Herbalist's Spade
UPDATE `npc_vendor` SET `slot`=8, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1); -- Mining Pick
UPDATE `npc_vendor` SET `slot`=7, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=7005 AND `ExtendedCost`=0 AND `type`=1); -- Skinning Knife
UPDATE `npc_vendor` SET `slot`=6, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=5042 AND `ExtendedCost`=0 AND `type`=1); -- Red Ribboned Wrapping Paper
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=4470 AND `ExtendedCost`=0 AND `type`=1); -- Simple Wood
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=4498 AND `ExtendedCost`=0 AND `type`=1); -- Brown Leather Satchel
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=4496 AND `ExtendedCost`=0 AND `type`=1); -- Small Brown Pouch
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=4540 AND `ExtendedCost`=0 AND `type`=1); -- Tough Hunk of Bread
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=159 AND `ExtendedCost`=0 AND `type`=1); -- Refreshing Spring Water
UPDATE `npc_vendor` SET `slot`=8, `IgnoreFiltering`=1, `VerifiedBuild`=27547 WHERE (`entry`=36717 AND `item`=2493 AND `ExtendedCost`=0 AND `type`=1); -- Wooden Mallet
UPDATE `npc_vendor` SET `slot`=7, `IgnoreFiltering`=1, `VerifiedBuild`=27547 WHERE (`entry`=36717 AND `item`=2490 AND `ExtendedCost`=0 AND `type`=1); -- Tomahawk
UPDATE `npc_vendor` SET `slot`=6, `IgnoreFiltering`=1, `VerifiedBuild`=27547 WHERE (`entry`=36717 AND `item`=2488 AND `ExtendedCost`=0 AND `type`=1); -- Gladius
UPDATE `npc_vendor` SET `slot`=5, `IgnoreFiltering`=1, `VerifiedBuild`=27547 WHERE (`entry`=36717 AND `item`=2495 AND `ExtendedCost`=0 AND `type`=1); -- Walking Stick
UPDATE `npc_vendor` SET `slot`=4, `IgnoreFiltering`=1, `VerifiedBuild`=27547 WHERE (`entry`=36717 AND `item`=2494 AND `ExtendedCost`=0 AND `type`=1); -- Stiletto
UPDATE `npc_vendor` SET `slot`=3, `IgnoreFiltering`=1, `VerifiedBuild`=27547 WHERE (`entry`=36717 AND `item`=2491 AND `ExtendedCost`=0 AND `type`=1); -- Large Axe
UPDATE `npc_vendor` SET `slot`=2, `IgnoreFiltering`=1, `VerifiedBuild`=27547 WHERE (`entry`=36717 AND `item`=2492 AND `ExtendedCost`=0 AND `type`=1); -- Cudgel
UPDATE `npc_vendor` SET `slot`=1, `IgnoreFiltering`=1, `VerifiedBuild`=27547 WHERE (`entry`=36717 AND `item`=2489 AND `ExtendedCost`=0 AND `type`=1); -- Two-Handed Sword
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=27547 WHERE (`entry`=68993 AND `item`=37460 AND `ExtendedCost`=0 AND `type`=1); -- Rope Pet Leash
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=27547 WHERE (`entry`=44125 AND `item`=60379 AND `ExtendedCost`=0 AND `type`=1); -- Mud Pie
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=27547 WHERE (`entry`=44125 AND `item`=60378 AND `ExtendedCost`=0 AND `type`=1); -- Plumpkin Pie
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=27547 WHERE (`entry`=44125 AND `item`=60377 AND `ExtendedCost`=0 AND `type`=1); -- Lots 'o Meat Pie
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=27547 WHERE (`entry`=44125 AND `item`=60376 AND `ExtendedCost`=0 AND `type`=1); -- Very Berry Pie
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=27547 WHERE (`entry`=44125 AND `item`=60375 AND `ExtendedCost`=0 AND `type`=1); -- Cheery Cherry Pie
UPDATE `npc_vendor` SET `slot`=8, `IgnoreFiltering`=1, `VerifiedBuild`=27547 WHERE (`entry`=36717 AND `item`=2493 AND `ExtendedCost`=0 AND `type`=1); -- Wooden Mallet
UPDATE `npc_vendor` SET `slot`=7, `IgnoreFiltering`=1, `VerifiedBuild`=27547 WHERE (`entry`=36717 AND `item`=2490 AND `ExtendedCost`=0 AND `type`=1); -- Tomahawk
UPDATE `npc_vendor` SET `slot`=6, `IgnoreFiltering`=1, `VerifiedBuild`=27547 WHERE (`entry`=36717 AND `item`=2488 AND `ExtendedCost`=0 AND `type`=1); -- Gladius
UPDATE `npc_vendor` SET `slot`=5, `IgnoreFiltering`=1, `VerifiedBuild`=27547 WHERE (`entry`=36717 AND `item`=2495 AND `ExtendedCost`=0 AND `type`=1); -- Walking Stick
UPDATE `npc_vendor` SET `slot`=4, `IgnoreFiltering`=1, `VerifiedBuild`=27547 WHERE (`entry`=36717 AND `item`=2494 AND `ExtendedCost`=0 AND `type`=1); -- Stiletto
UPDATE `npc_vendor` SET `slot`=3, `IgnoreFiltering`=1, `VerifiedBuild`=27547 WHERE (`entry`=36717 AND `item`=2491 AND `ExtendedCost`=0 AND `type`=1); -- Large Axe
UPDATE `npc_vendor` SET `slot`=2, `IgnoreFiltering`=1, `VerifiedBuild`=27547 WHERE (`entry`=36717 AND `item`=2492 AND `ExtendedCost`=0 AND `type`=1); -- Cudgel
UPDATE `npc_vendor` SET `slot`=1, `IgnoreFiltering`=1, `VerifiedBuild`=27547 WHERE (`entry`=36717 AND `item`=2489 AND `ExtendedCost`=0 AND `type`=1); -- Two-Handed Sword
UPDATE `npc_vendor` SET `slot`=8, `IgnoreFiltering`=1, `VerifiedBuild`=27547 WHERE (`entry`=36717 AND `item`=2493 AND `ExtendedCost`=0 AND `type`=1); -- Wooden Mallet
UPDATE `npc_vendor` SET `slot`=7, `IgnoreFiltering`=1, `VerifiedBuild`=27547 WHERE (`entry`=36717 AND `item`=2490 AND `ExtendedCost`=0 AND `type`=1); -- Tomahawk
UPDATE `npc_vendor` SET `slot`=6, `IgnoreFiltering`=1, `VerifiedBuild`=27547 WHERE (`entry`=36717 AND `item`=2488 AND `ExtendedCost`=0 AND `type`=1); -- Gladius
UPDATE `npc_vendor` SET `slot`=5, `IgnoreFiltering`=1, `VerifiedBuild`=27547 WHERE (`entry`=36717 AND `item`=2495 AND `ExtendedCost`=0 AND `type`=1); -- Walking Stick
UPDATE `npc_vendor` SET `slot`=4, `IgnoreFiltering`=1, `VerifiedBuild`=27547 WHERE (`entry`=36717 AND `item`=2494 AND `ExtendedCost`=0 AND `type`=1); -- Stiletto
UPDATE `npc_vendor` SET `slot`=3, `IgnoreFiltering`=1, `VerifiedBuild`=27547 WHERE (`entry`=36717 AND `item`=2491 AND `ExtendedCost`=0 AND `type`=1); -- Large Axe
UPDATE `npc_vendor` SET `slot`=2, `IgnoreFiltering`=1, `VerifiedBuild`=27547 WHERE (`entry`=36717 AND `item`=2492 AND `ExtendedCost`=0 AND `type`=1); -- Cudgel
UPDATE `npc_vendor` SET `slot`=1, `IgnoreFiltering`=1, `VerifiedBuild`=27547 WHERE (`entry`=36717 AND `item`=2489 AND `ExtendedCost`=0 AND `type`=1); -- Two-Handed Sword
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=27547 WHERE (`entry`=68993 AND `item`=37460 AND `ExtendedCost`=0 AND `type`=1); -- Rope Pet Leash
UPDATE `npc_vendor` SET `slot`=25, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1); -- Virtuoso Inking Set
UPDATE `npc_vendor` SET `slot`=24, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1); -- Jeweler's Kit
UPDATE `npc_vendor` SET `slot`=23, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=39354 AND `ExtendedCost`=0 AND `type`=1); -- Light Parchment
UPDATE `npc_vendor` SET `slot`=22, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=6260 AND `ExtendedCost`=0 AND `type`=1); -- Blue Dye
UPDATE `npc_vendor` SET `slot`=21, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=2324 AND `ExtendedCost`=0 AND `type`=1); -- Bleach
UPDATE `npc_vendor` SET `slot`=20, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=2604 AND `ExtendedCost`=0 AND `type`=1); -- Red Dye
UPDATE `npc_vendor` SET `slot`=19, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=6529 AND `ExtendedCost`=0 AND `type`=1); -- Shiny Bauble
UPDATE `npc_vendor` SET `slot`=18, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=4289 AND `ExtendedCost`=0 AND `type`=1); -- Salt
UPDATE `npc_vendor` SET `slot`=17, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=3371 AND `ExtendedCost`=0 AND `type`=1); -- Crystal Vial
UPDATE `npc_vendor` SET `slot`=16, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1); -- Weak Flux
UPDATE `npc_vendor` SET `slot`=15, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=2320 AND `ExtendedCost`=0 AND `type`=1); -- Coarse Thread
UPDATE `npc_vendor` SET `slot`=14, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=30817 AND `ExtendedCost`=0 AND `type`=1); -- Simple Flour
UPDATE `npc_vendor` SET `slot`=13, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=2678 AND `ExtendedCost`=0 AND `type`=1); -- Mild Spices
UPDATE `npc_vendor` SET `slot`=12, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=6217 AND `ExtendedCost`=0 AND `type`=1); -- Copper Rod
UPDATE `npc_vendor` SET `slot`=11, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=6256 AND `ExtendedCost`=0 AND `type`=1); -- Fishing Pole
UPDATE `npc_vendor` SET `slot`=10, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1); -- Blacksmith Hammer
UPDATE `npc_vendor` SET `slot`=9, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=85663 AND `ExtendedCost`=0 AND `type`=1); -- Herbalist's Spade
UPDATE `npc_vendor` SET `slot`=8, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1); -- Mining Pick
UPDATE `npc_vendor` SET `slot`=7, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=7005 AND `ExtendedCost`=0 AND `type`=1); -- Skinning Knife
UPDATE `npc_vendor` SET `slot`=6, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=5042 AND `ExtendedCost`=0 AND `type`=1); -- Red Ribboned Wrapping Paper
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=4470 AND `ExtendedCost`=0 AND `type`=1); -- Simple Wood
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=4498 AND `ExtendedCost`=0 AND `type`=1); -- Brown Leather Satchel
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=4496 AND `ExtendedCost`=0 AND `type`=1); -- Small Brown Pouch
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=4540 AND `ExtendedCost`=0 AND `type`=1); -- Tough Hunk of Bread
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=159 AND `ExtendedCost`=0 AND `type`=1); -- Refreshing Spring Water
UPDATE `npc_vendor` SET `slot`=25, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1); -- Virtuoso Inking Set
UPDATE `npc_vendor` SET `slot`=24, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1); -- Jeweler's Kit
UPDATE `npc_vendor` SET `slot`=23, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=39354 AND `ExtendedCost`=0 AND `type`=1); -- Light Parchment
UPDATE `npc_vendor` SET `slot`=22, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=6260 AND `ExtendedCost`=0 AND `type`=1); -- Blue Dye
UPDATE `npc_vendor` SET `slot`=21, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=2324 AND `ExtendedCost`=0 AND `type`=1); -- Bleach
UPDATE `npc_vendor` SET `slot`=20, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=2604 AND `ExtendedCost`=0 AND `type`=1); -- Red Dye
UPDATE `npc_vendor` SET `slot`=19, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=6529 AND `ExtendedCost`=0 AND `type`=1); -- Shiny Bauble
UPDATE `npc_vendor` SET `slot`=18, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=4289 AND `ExtendedCost`=0 AND `type`=1); -- Salt
UPDATE `npc_vendor` SET `slot`=17, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=3371 AND `ExtendedCost`=0 AND `type`=1); -- Crystal Vial
UPDATE `npc_vendor` SET `slot`=16, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1); -- Weak Flux
UPDATE `npc_vendor` SET `slot`=15, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=2320 AND `ExtendedCost`=0 AND `type`=1); -- Coarse Thread
UPDATE `npc_vendor` SET `slot`=14, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=30817 AND `ExtendedCost`=0 AND `type`=1); -- Simple Flour
UPDATE `npc_vendor` SET `slot`=13, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=2678 AND `ExtendedCost`=0 AND `type`=1); -- Mild Spices
UPDATE `npc_vendor` SET `slot`=12, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=6217 AND `ExtendedCost`=0 AND `type`=1); -- Copper Rod
UPDATE `npc_vendor` SET `slot`=11, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=6256 AND `ExtendedCost`=0 AND `type`=1); -- Fishing Pole
UPDATE `npc_vendor` SET `slot`=10, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1); -- Blacksmith Hammer
UPDATE `npc_vendor` SET `slot`=9, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=85663 AND `ExtendedCost`=0 AND `type`=1); -- Herbalist's Spade
UPDATE `npc_vendor` SET `slot`=8, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1); -- Mining Pick
UPDATE `npc_vendor` SET `slot`=7, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=7005 AND `ExtendedCost`=0 AND `type`=1); -- Skinning Knife
UPDATE `npc_vendor` SET `slot`=6, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=5042 AND `ExtendedCost`=0 AND `type`=1); -- Red Ribboned Wrapping Paper
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=4470 AND `ExtendedCost`=0 AND `type`=1); -- Simple Wood
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=4498 AND `ExtendedCost`=0 AND `type`=1); -- Brown Leather Satchel
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=4496 AND `ExtendedCost`=0 AND `type`=1); -- Small Brown Pouch
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=4540 AND `ExtendedCost`=0 AND `type`=1); -- Tough Hunk of Bread
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=27547 WHERE (`entry`=38853 AND `item`=159 AND `ExtendedCost`=0 AND `type`=1); -- Refreshing Spring Water


-- Creature Equip Template
DELETE FROM `creature_equip_template` WHERE (`CreatureID`=37067 AND `ID`=3) OR (`CreatureID`=37067 AND `ID`=2);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES
(37067, 3, 3367, 0, 0, 0, 0, 0, 0, 0, 0),
(37067, 2, 3346, 0, 0, 0, 0, 0, 0, 0, 0);

UPDATE `creature_equip_template` SET `ItemID2`=0 WHERE (`CreatureID`=4219 AND `ID`=1);
UPDATE `creature_equip_template` SET `ItemID2`=0 WHERE (`CreatureID`=4217 AND `ID`=1);
UPDATE `creature_equip_template` SET `ItemID2`=0 WHERE (`CreatureID`=4214 AND `ID`=1);
UPDATE `creature_equip_template` SET `ItemID2`=0 WHERE (`CreatureID`=43727 AND `ID`=1);


-- Creature Template
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=60 WHERE `entry`=33175; -- Johnathan Staats
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=60 WHERE `entry`=32973; -- Dentaria Silverglade
UPDATE `creature_template` SET `gossip_menu_id`=0, `minlevel`=120, `maxlevel`=120 WHERE `entry`=3841; -- Teldira Moonfeather
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=60, `unit_flags`=537166336, `unit_flags2`=2049, `unit_flags3`=8192 WHERE `entry`=32974; -- Laird
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=60 WHERE `entry`=32972; -- Serendia Oakwhisper
UPDATE `creature_template` SET `gossip_menu_id`=0, `minlevel`=10, `maxlevel`=60 WHERE `entry`=43420; -- Innkeeper Kyteran
UPDATE `creature_template` SET `gossip_menu_id`=0, `minlevel`=10, `maxlevel`=60 WHERE `entry`=43431; -- Periale
UPDATE `creature_template` SET `gossip_menu_id`=0, `minlevel`=10, `maxlevel`=60 WHERE `entry`=33359; -- Nightsaber Rider
UPDATE `creature_template` SET `gossip_menu_id`=0, `minlevel`=10, `maxlevel`=60, `npcflag`=1 WHERE `entry`=49939; -- Kenral Nightwind
UPDATE `creature_template` SET `gossip_menu_id`=0, `minlevel`=10, `maxlevel`=60 WHERE `entry`=32971; -- Ranger Glynda Nal'Shea
UPDATE `creature_template` SET `gossip_menu_id`=0, `minlevel`=10, `maxlevel`=60 WHERE `entry`=32979; -- Gorbold Steelhand
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=60 WHERE `entry`=32977; -- Wizbang Cranktoggle
UPDATE `creature_template` SET `gossip_menu_id`=0, `minlevel`=10, `maxlevel`=60, `npcflag`=1 WHERE `entry`=49923; -- Sentinel Moonwing
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=60 WHERE `entry`=43439; -- Nyrisse
UPDATE `creature_template` SET `gossip_menu_id`=0, `minlevel`=10, `maxlevel`=60 WHERE `entry`=32978; -- Tharnariun Treetender
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=60 WHERE `entry`=43424; -- Ayriala
UPDATE `creature_template` SET `gossip_menu_id`=0, `minlevel`=10, `maxlevel`=60 WHERE `entry`=11037; -- Jenna Lemkenilli
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=60 WHERE `entry`=43436; -- Ceriale Duskwhisper
UPDATE `creature_template` SET `gossip_menu_id`=0, `minlevel`=10, `maxlevel`=60 WHERE `entry`=43429; -- Taryel Firestrike
UPDATE `creature_template` SET `gossip_menu_id`=0, `minlevel`=10, `maxlevel`=60, `npcflag`=1 WHERE `entry`=49940; -- Irlara Morninglight
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=60 WHERE `entry`=4187; -- Harlon Thornguard
UPDATE `creature_template` SET `gossip_menu_id`=0, `minlevel`=10, `maxlevel`=60 WHERE `entry`=43428; -- Faeyrin Willowmoon
UPDATE `creature_template` SET `gossip_menu_id`=0, `minlevel`=10, `maxlevel`=60 WHERE `entry`=51997; -- Stephanie Krutsick
UPDATE `creature_template` SET `gossip_menu_id`=0, `minlevel`=10, `maxlevel`=60 WHERE `entry`=32912; -- Sentinel Lendra
UPDATE `creature_template` SET `speed_run`=0.8571429, `unit_flags2`=2048 WHERE `entry`=63084; -- Poe
UPDATE `creature_template` SET `gossip_menu_id`=0, `minlevel`=10, `maxlevel`=60, `npcflag`=1 WHERE `entry`=49927; -- Lanla Bowleaf
UPDATE `creature_template` SET `gossip_menu_id`=0, `minlevel`=10, `maxlevel`=60, `npcflag`=1 WHERE `entry`=49942; -- Dular
UPDATE `creature_template` SET `gossip_menu_id`=0, `minlevel`=10, `maxlevel`=60, `npcflag`=1, `RangeAttackTime`=2000 WHERE `entry`=49963; -- Laera Dubois
UPDATE `creature_template` SET `gossip_menu_id`=0, `minlevel`=10, `maxlevel`=60, `npcflag`=1, `RangeAttackTime`=2000 WHERE `entry`=49968; -- Lareth Beld
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=60, `faction`=80, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=63083; -- Will Larsons
UPDATE `creature_template` SET `gossip_menu_id`=0, `minlevel`=10, `maxlevel`=60 WHERE `entry`=10085; -- Jaelysia
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=60, `unit_flags`=32768 WHERE `entry`=34056; -- Vigilant Protector
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=60, `speed_run`=1.142857, `unit_flags`=32832 WHERE `entry`=33864; -- Vile Terror
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=60, `unit_flags`=32768 WHERE `entry`=32969; -- Lor'danel Sentinel
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=60, `unit_flags`=33536, `unit_flags2`=2099200 WHERE `entry`=33115; -- Lor'danel Sentinel
UPDATE `creature_template` SET `faction`=188, `speed_walk`=0.16, `speed_run`=0.05714286, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=64375; -- Shimmershell Snail
UPDATE `creature_template` SET `maxlevel`=60, `unit_flags`=32768 WHERE `entry`=32935; -- Corrupted Tide Crawler
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=60, `speed_run`=1.142857, `unit_flags`=32768 WHERE `entry`=32928; -- Vile Spray
UPDATE `creature_template` SET `gossip_menu_id`=0, `npcflag`=1 WHERE `entry`=11042; -- Sylvanna Forestmoon
UPDATE `creature_template` SET `gossip_menu_id`=0 WHERE `entry`=4160; -- Ainethil
UPDATE `creature_template` SET `gossip_menu_id`=0, `npcflag`=1 WHERE `entry`=11041; -- Milla Fairancora
UPDATE `creature_template` SET `gossip_menu_id`=0 WHERE `entry`=4213; -- Taladan
UPDATE `creature_template` SET `gossip_menu_id`=0, `npcflag`=1 WHERE `entry`=11070; -- Lalina Summermoon
UPDATE `creature_template` SET `gossip_menu_id`=0, `minlevel`=120, `maxlevel`=120, `npcflag`=0 WHERE `entry`=47584; -- Aladrel Whitespire
UPDATE `creature_template` SET `gossip_menu_id`=0 WHERE `entry`=48735; -- Gwen Armstead
UPDATE `creature_template` SET `minlevel`=123, `maxlevel`=123, `unit_flags2`=2099200 WHERE `entry`=48736; -- Genn Greymane
UPDATE `creature_template` SET `gossip_menu_id`=0, `npcflag`=0 WHERE `entry`=36479; -- Archmage Mordent Evenshade
UPDATE `creature_template` SET `gossip_menu_id`=0, `npcflag`=1, `RangeAttackTime`=2000 WHERE `entry`=50502; -- Vitus Darkwalker
UPDATE `creature_template` SET `gossip_menu_id`=0, `npcflag`=1 WHERE `entry`=50498; -- Loren the Fence
UPDATE `creature_template` SET `gossip_menu_id`=0, `npcflag`=1 WHERE `entry`=50499; -- Myriam Spellwaker
UPDATE `creature_template` SET `gossip_menu_id`=0, `npcflag`=1 WHERE `entry`=50506; -- Talran of the Wild
UPDATE `creature_template` SET `gossip_menu_id`=0, `npcflag`=1 WHERE `entry`=50507; -- Vassandra Stormclaw
UPDATE `creature_template` SET `gossip_menu_id`=0, `npcflag`=1 WHERE `entry`=50505; -- Lyros Swiftwind
UPDATE `creature_template` SET `gossip_menu_id`=0, `npcflag`=1 WHERE `entry`=50504; -- Belysra Starbreeze
UPDATE `creature_template` SET `gossip_menu_id`=0, `npcflag`=1 WHERE `entry`=50501; -- Sister Almyra
UPDATE `creature_template` SET `gossip_menu_id`=0, `npcflag`=1, `RangeAttackTime`=2000 WHERE `entry`=50500; -- Sergeant Cleese
UPDATE `creature_template` SET `gossip_menu_id`=0, `npcflag`=1, `RangeAttackTime`=2000 WHERE `entry`=50497; -- Huntsman Blake
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120 WHERE `entry`=3468; -- Ancient of Lore
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120, `speed_walk`=1 WHERE `entry`=2041; -- Ancient Protector
UPDATE `creature_template` SET `gossip_menu_id`=0, `npcflag`=17 WHERE `entry`=4211; -- Dannelor
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=60 WHERE `entry`=34396; -- Whitetail Doe
UPDATE `creature_template` SET `gossip_menu_id`=0 WHERE `entry`=52642; -- Foreman Pernic
UPDATE `creature_template` SET `gossip_menu_id`=0 WHERE `entry`=52636; -- Tana Lentner
UPDATE `creature_template` SET `gossip_menu_id`=0 WHERE `entry`=52637; -- Hugo Lentner
UPDATE `creature_template` SET `gossip_menu_id`=0 WHERE `entry`=9047; -- Jenal
UPDATE `creature_template` SET `gossip_menu_id`=0, `npcflag`=3 WHERE `entry`=4138; -- Jeen'ra Nightrunner
UPDATE `creature_template` SET `gossip_menu_id`=0, `npcflag`=3 WHERE `entry`=4205; -- Dorion
UPDATE `creature_template` SET `gossip_menu_id`=0, `npcflag`=1 WHERE `entry`=4219; -- Fylerian Nightwing
UPDATE `creature_template` SET `gossip_menu_id`=0, `npcflag`=3 WHERE `entry`=4218; -- Denatharion
UPDATE `creature_template` SET `gossip_menu_id`=0, `npcflag`=3 WHERE `entry`=4217; -- Mathrengyl Bearwalker
UPDATE `creature_template` SET `gossip_menu_id`=0, `npcflag`=3 WHERE `entry`=4146; -- Jocaste
UPDATE `creature_template` SET `gossip_menu_id`=0 WHERE `entry`=10089; -- Silvaria
UPDATE `creature_template` SET `gossip_menu_id`=0 WHERE `entry`=10056; -- Alassin
UPDATE `creature_template` SET `minlevel`=1, `maxlevel`=1 WHERE `entry`=14602; -- Swift Stormsaber
UPDATE `creature_template` SET `maxlevel`=1 WHERE `entry`=12360; -- Riding Striped Nightsaber
UPDATE `creature_template` SET `gossip_menu_id`=0 WHERE `entry`=4210; -- Alegorn
UPDATE `creature_template` SET `npcflag`=3 WHERE `entry`=4730; -- Lelanai
UPDATE `creature_template` SET `gossip_menu_id`=0, `npcflag`=82 WHERE `entry`=4753; -- Jartsam
UPDATE `creature_template` SET `maxlevel`=1 WHERE `entry`=14555; -- Swift Mistsaber
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120 WHERE `entry`=14379; -- Huntress Ravenoak
UPDATE `creature_template` SET `gossip_menu_id`=0, `npcflag`=1 WHERE `entry`=4215; -- Anishar
UPDATE `creature_template` SET `gossip_menu_id`=0, `npcflag`=3 WHERE `entry`=4163; -- Syurna
UPDATE `creature_template` SET `gossip_menu_id`=0, `npcflag`=3 WHERE `entry`=4214; -- Erion Shadewhisper
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120 WHERE `entry`=4423; -- Darnassian Protector
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120 WHERE `entry`=51371; -- Darnassus Hippogryph Rider
UPDATE `creature_template` SET `gossip_menu_id`=0 WHERE `entry`=4155; -- Idriana
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=7316; -- Sister Aquinne
UPDATE `creature_template` SET `unit_flags`=0 WHERE `entry`=3681; -- Wisp
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120 WHERE `entry`=40552; -- Leora
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120 WHERE `entry`=3838; -- Vesprystus
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=42970; -- Gilneas Refugee
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=42968; -- Krennan Aranas
UPDATE `creature_template` SET `gossip_menu_id`=0 WHERE `entry`=7916; -- Erelas Ambersky
UPDATE `creature_template` SET `gossip_menu_id`=0 WHERE `entry`=10118; -- Nessa Shadowsong
UPDATE `creature_template` SET `gossip_menu_id`=0, `minlevel`=120, `maxlevel`=120 WHERE `entry`=4262; -- Darnassus Sentinel
UPDATE `creature_template` SET `gossip_menu_id`=0 WHERE `entry`=3607; -- Androl Oakhand
UPDATE `creature_template` SET `maxlevel`=20, `faction`=190, `npcflag`=0, `unit_flags`=768, `HoverHeight`=1 WHERE `entry`=53522; -- Baby Octopus
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `speed_run`=1.142857 WHERE `entry`=43567; -- Korm Bonegrind
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `RangeAttackTime`=2000 WHERE `entry`=43767; -- Navigator
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `RangeAttackTime`=2000 WHERE `entry`=43764; -- Admiral Stormblood
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=43791; -- Wyvern
UPDATE `creature_template` SET `unit_flags3`=1 WHERE `entry`=40350; -- Generic Trigger LAB
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=43651; -- Worgen Warrior
UPDATE `creature_template` SET `unit_flags`=33554688, `unit_flags3`=1 WHERE `entry`=43793; -- Gilneas Vehicle Rope
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=43703; -- Gilnean Sharpshooter
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `RangeAttackTime`=2000 WHERE `entry`=42141; -- Gunship Grunt
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `unit_flags2`=2099200 WHERE `entry`=43566; -- Lorna Crowley
UPDATE `creature_template` SET `unit_flags2`=4196352 WHERE `entry`=43718; -- Generic Trigger LAB (Gigantic AOI)
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `speed_walk`=1, `unit_flags2`=32768 WHERE `entry`=37921; -- Orcish War Machine
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `speed_run`=1.142857, `unit_flags2`=0 WHERE `entry`=37939; -- Riding War Wolf
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=37938; -- Wolfmaw Outrider
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=37916; -- Orc Raider
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=43747; -- Hippogryph
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `npcflag`=0, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=43749; -- Tobias Mistmantle
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `npcflag`=2 WHERE `entry`=43727; -- Lorna Crowley
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `unit_flags2`=2099200 WHERE `entry`=37914; -- Towering Ancient
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `unit_flags2`=1073743872 WHERE `entry`=36616; -- Admiral Nightwind
UPDATE `creature_template` SET `unit_flags`=33536 WHERE `entry`=50274; -- Ashley
UPDATE `creature_template` SET `unit_flags`=33536 WHERE `entry`=50275; -- James
UPDATE `creature_template` SET `unit_flags`=33536 WHERE `entry`=50273; -- Cynthia
UPDATE `creature_template` SET `gossip_menu_id`=10841, `npcflag`=641, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=38783; -- Marie Allen
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `npcflag`=2 WHERE `entry`=38149; -- Lord Darius Crowley
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=38781; -- Gilnean Survivor
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `npcflag`=2 WHERE `entry`=38144; -- Krennan Aranas
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=37885; -- Restless Ancestor
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `speed_walk`=1 WHERE `entry`=37884; -- Disturbed Spirit
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=38364; -- Forsaken Plaguesmith
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `unit_flags3`=1 WHERE `entry`=38287; -- Forsaken Catapult
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `unit_flags`=32768 WHERE `entry`=38363; -- Forsaken Invader
UPDATE `creature_template` SET `unit_flags2`=2099200 WHERE `entry`=38344; -- Plague Cloud Bunny
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `unit_flags2`=1073741824, `unit_flags3`=1 WHERE `entry`=38150; -- Glaive Thrower
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `npcflag`=0 WHERE `entry`=38615; -- Captured Riding Bat
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=44388; -- Gilnean Militia
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=38616; -- Forsaken Infantry
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=38618; -- Forsaken Sergeant
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=38617; -- Forsaken General
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `unit_flags`=570458880, `unit_flags2`=2049, `unit_flags3`=8193 WHERE `entry`=39017; -- Gilnean Militia
UPDATE `creature_template` SET `npcflag`=2 WHERE `entry`=38539; -- King Genn Greymane
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `unit_flags3`=8192 WHERE `entry`=38614; -- Prince Liam Greymane
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `unit_flags`=570458880, `unit_flags2`=2049, `unit_flags3`=8193 WHERE `entry`=39015; -- Forsaken Invader
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `unit_flags`=570458880, `unit_flags2`=2049, `unit_flags3`=8193 WHERE `entry`=39016; -- Worgen Warrior
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=38474; -- Prince Liam Greymane
UPDATE `creature_template` SET `gossip_menu_id`=0, `minlevel`=5, `maxlevel`=20 WHERE `entry`=38611; -- Lorna Crowley
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=38613; -- Worgen Warrior
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `unit_flags3`=1 WHERE `entry`=38473; -- Soultethered Banshee
UPDATE `creature_template` SET `speed_walk`=1, `unit_flags2`=2097152, `unit_flags3`=1 WHERE `entry`=38469; -- Lady Sylvanas Windrunner
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `unit_flags2`=0 WHERE `entry`=38331; -- Gorerot
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `unit_flags`=32768 WHERE `entry`=38348; -- Worgen Warrior
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `BaseAttackTime`=1538 WHERE `entry`=38415; -- Lord Darius Crowley
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=38426; -- Lorna Crowley
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `unit_flags3`=1 WHERE `entry`=38424; -- Emberstone Cannon
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=38425; -- Freed Emberstone Villager
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=38464; -- Dark Ranger Elite
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `unit_flags2`=2099200 WHERE `entry`=38420; -- Vile Abomination
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=38210; -- Forsaken Crossbowman
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=38218; -- Prince Liam Greymane
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `unit_flags`=32768 WHERE `entry`=38221; -- Gilnean Militia
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `unit_flags`=32768 WHERE `entry`=38192; -- Forsaken Infantry
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=28332; -- Generic Trigger LAB (Large AOI)
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `unit_flags2`=4194304 WHERE `entry`=38377; -- Damaged Catapult
UPDATE `creature_template` SET `gossip_menu_id`=14175, `minlevel`=5, `maxlevel`=20, `npcflag`=3, `RangeAttackTime`=2000 WHERE `entry`=38467; -- Huntsman Blake
UPDATE `creature_template` SET `gossip_menu_id`=10837, `minlevel`=5, `maxlevel`=20, `npcflag`=1 WHERE `entry`=38465; -- Myriam Spellwaker
UPDATE `creature_template` SET `gossip_menu_id`=10838, `minlevel`=5, `maxlevel`=20, `npcflag`=3 WHERE `entry`=38466; -- Sister Almyra
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=38468; -- Gilnean Mastiff
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=37802; -- Brothogg the Slavemaster
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=37685; -- Valnov the Mad
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `unit_flags`=32768 WHERE `entry`=37686; -- Executor Cornell
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=37692; -- Forsaken Infantry
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=37694; -- Enslaved Villager
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=37701; -- Forsaken Slavedriver
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `speed_walk`=1 WHERE `entry`=37786; -- Brown Stag
UPDATE `creature_template` SET `gossip_menu_id`=10841, `npcflag`=641, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=42853; -- Karen Murray
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `npcflag`=2 WHERE `entry`=37803; -- Marcus
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `npcflag`=2 WHERE `entry`=38143; -- Magda Whitewall
UPDATE `creature_template` SET `npcflag`=2 WHERE `entry`=37783; -- Lorna Crowley
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=38553; -- Krennan Aranas
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=37784; -- Gilnean Militia
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=37785; -- Wild Horse
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=37735; -- Baron Ashbury
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `unit_flags`=0 WHERE `entry`=37718; -- Mountain Mastiff
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=37733; -- Lord Walden
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=1933; -- Sheep
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=37875; -- Lord Godfrey
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `npcflag`=1 WHERE `entry`=38764; -- Lord Hewell
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `npcflag`=2 WHERE `entry`=37876; -- King Genn Greymane
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=37716; -- Tempest's Reach Watchman
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `npcflag`=2 WHERE `entry`=37874; -- Krennan Aranas
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `npcflag`=2 WHERE `entry`=37873; -- Vassandra Stormclaw
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=36814; -- Talran of the Wild
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=37870; -- Lyros Swiftwind
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `npcflag`=2 WHERE `entry`=37195; -- Lord Darius Crowley
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=37197; -- Feral Worgen
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=37489; -- Feral Watcher
UPDATE `creature_template` SET `gossip_menu_id`=11672, `minlevel`=5, `maxlevel`=20, `faction`=2173, `npcflag`=641, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=42953; -- Benjamin Sykes
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=37045; -- Rygna
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `npcflag`=2 WHERE `entry`=37822; -- Belysra Starbreeze
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=50570; -- Whilsey Bottomtooth
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=36813; -- Vilebrood Skitterer
UPDATE `creature_template` SET `gossip_menu_id`=14177, `npcflag`=3, `unit_class`=1 WHERE `entry`=38797; -- Vitus Darkwalker
UPDATE `creature_template` SET `gossip_menu_id`=14175, `npcflag`=3 WHERE `entry`=38798; -- Huntsman Blake
UPDATE `creature_template` SET `gossip_menu_id`=10838, `npcflag`=3 WHERE `entry`=38795; -- Sister Almyra
UPDATE `creature_template` SET `npcflag`=641, `unit_flags`=32768 WHERE `entry`=43558; -- Marie Allen
UPDATE `creature_template` SET `npcflag`=2 WHERE `entry`=37815; -- Lorna Crowley
UPDATE `creature_template` SET `gossip_menu_id`=14290, `npcflag`=3 WHERE `entry`=38799; -- Celestine of the Harvest
UPDATE `creature_template` SET `npcflag`=65536 WHERE `entry`=38792; -- Willa Arnes
UPDATE `creature_template` SET `gossip_menu_id`=10843, `minlevel`=5, `maxlevel`=20, `npcflag`=3 WHERE `entry`=38796; -- Loren the Fence
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `npcflag`=2 WHERE `entry`=37102; -- Gwen Armstead
UPDATE `creature_template` SET `gossip_menu_id`=14176, `npcflag`=3 WHERE `entry`=38793; -- Sergeant Cleese
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=37499; -- Duskhaven Survivor
UPDATE `creature_template` SET `npcflag`=1 WHERE `entry`=38794; -- Myriam Spellwaker
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=37807; -- Forsaken Catapult
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=37806; -- Captain Asther
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=37805; -- Forsaken Soldier
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=36294; -- Koroth the Hillbreaker
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `speed_run`=1.142857, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=0 WHERE `entry`=37492; -- Blackwald Fox
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=38022; -- Veteran Dark Ranger
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `speed_run`=1.142857, `unit_flags`=0 WHERE `entry`=36882; -- Swamp Crocolisk
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=37757; -- Howling Banshee
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=37067; -- Crash Survivor
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=37808; -- Koroth the Hillbreaker
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=36293; -- Ogre Minion
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=38762; -- Ogre Ambusher
UPDATE `creature_template` SET `gossip_menu_id`=0, `minlevel`=5, `maxlevel`=20, `unit_flags2`=1073743872 WHERE `entry`=37065; -- Prince Liam Greymane
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `npcflag`=2 WHERE `entry`=36743; -- King Genn Greymane
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `npcflag`=2 WHERE `entry`=36606; -- Queen Mia Greymane
UPDATE `creature_template` SET `speed_run`=1.142857 WHERE `entry`=43338; -- Stagecoach Horse
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `faction`=2166 WHERE `entry`=37946; -- Duskhaven Watchman
UPDATE `creature_template` SET `faction`=2163 WHERE `entry`=51409; -- Lorna Crowley
UPDATE `creature_template` SET `faction`=2166 WHERE `entry`=43907; -- Duskhaven Watchman
UPDATE `creature_template` SET `faction`=2163 WHERE `entry`=36138; -- Krennan Aranas
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=39660; -- Spirit Healer
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=36528; -- Koroth the Hillbreaker
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=36492; -- Ron Hayward
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=36491; -- Trent Hayward
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=36455; -- Walt Hayward
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=36456; -- Sebastian Hayward
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=36454; -- Tim Hayward
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=36488; -- Forsaken Castaway
UPDATE `creature_template` SET `npcflag`=0, `unit_flags3`=1 WHERE `entry`=36540; -- Mountain Horse
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=36671; -- Forsaken Scout
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `unit_flags`=32768 WHERE `entry`=36461; -- Lucius the Cruel
UPDATE `creature_template` SET `npcflag`=0 WHERE `entry`=36459; -- Chance
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `speed_run`=1.142857, `unit_flags`=0 WHERE `entry`=36512; -- Fox
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=36452; -- Gwen Armstead
UPDATE `creature_template` SET `unit_flags3`=1 WHERE `entry`=36458; -- Grandma Wahl
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=36460; -- Forsaken Survivor
UPDATE `creature_template` SET `gossip_menu_id`=0, `minlevel`=5, `maxlevel`=20, `unit_flags2`=1073743872 WHERE `entry`=36451; -- Prince Liam Greymane
UPDATE `creature_template` SET `npcflag`=0, `unit_flags`=33280 WHERE `entry`=36440; -- Drowning Watchman
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=36399; -- Captain Morris
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=36405; -- Attack Mastiff
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=36396; -- Forsaken Sailor
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=36397; -- Captain Anson
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `unit_flags3`=16 WHERE `entry`=36312; -- Dark Ranger Thyala
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=385; -- Horse
UPDATE `creature_template` SET `gossip_menu_id`=10841, `npcflag`=641, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=36779; -- Marie Allen
UPDATE `creature_template` SET `gossip_menu_id`=0, `npcflag`=0, `unit_flags`=33587968, `unit_flags3`=16 WHERE `entry`=36288; -- Ashley
UPDATE `creature_template` SET `npcflag`=2 WHERE `entry`=36291; -- Melinda Hammond
UPDATE `creature_template` SET `gossip_menu_id`=0, `npcflag`=0, `unit_flags`=33536, `unit_flags3`=16 WHERE `entry`=36289; -- James
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=36236; -- Forsaken Footsoldier
UPDATE `creature_template` SET `gossip_menu_id`=0, `npcflag`=0, `unit_flags`=33536, `unit_flags3`=16 WHERE `entry`=36287; -- Cynthia
UPDATE `creature_template` SET `unit_flags2`=4196352 WHERE `entry`=36140; -- Prince Liam Greymane
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `unit_flags3`=1 WHERE `entry`=36292; -- Forsaken Machinist
UPDATE `creature_template` SET `maxlevel`=20, `unit_flags2`=4196352, `unit_flags3`=16 WHERE `entry`=36231; -- Horrid Abomination
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `unit_flags`=33554688, `unit_flags2`=4196352, `unit_flags3`=1 WHERE `entry`=36283; -- Forsaken Catapult
UPDATE `creature_template` SET `maxlevel`=20, `RangeAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=34511; -- Forsaken Invader
UPDATE `creature_template` SET `minlevel`=3, `maxlevel`=3, `BaseAttackTime`=2000, `RangeAttackTime`=2000 WHERE `entry`=36714; -- Docile Sheep
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `speed_run`=1.142857 WHERE `entry`=38881; -- Fox
UPDATE `creature_template` SET `npcflag`=2, `unit_flags`=537166592, `unit_flags3`=8192 WHERE `entry`=36205; -- Slain Watchman
UPDATE `creature_template` SET `npcflag`=65536 WHERE `entry`=38791; -- Willa Arnes
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `npcflag`=17 WHERE `entry`=50574; -- Amelia Atherton
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=50567; -- Fielding Chesterhill
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=36190; -- Prince Liam Greymane
UPDATE `creature_template` SET `gossip_menu_id`=10843, `npcflag`=3 WHERE `entry`=36630; -- Loren the Fence
UPDATE `creature_template` SET `gossip_menu_id`=11794, `minlevel`=5, `maxlevel`=20, `npcflag`=641, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=44125; -- Chris Moller
UPDATE `creature_template` SET `gossip_menu_id`=10842, `npcflag`=4225, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=36717; -- Gerard Walthorn
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=50252; -- Mary Oxworth
UPDATE `creature_template` SET `gossip_menu_id`=10841, `npcflag`=641, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=36695; -- Samantha Buckley
UPDATE `creature_template` SET `gossip_menu_id`=14177, `npcflag`=3, `unit_class`=1 WHERE `entry`=36652; -- Vitus Darkwalker
UPDATE `creature_template` SET `gossip_menu_id`=14176, `npcflag`=3 WHERE `entry`=36651; -- Sergeant Cleese
UPDATE `creature_template` SET `gossip_menu_id`=10838, `npcflag`=3 WHERE `entry`=36632; -- Sister Almyra
UPDATE `creature_template` SET `gossip_menu_id`=10837, `npcflag`=1 WHERE `entry`=36631; -- Myriam Spellwaker
UPDATE `creature_template` SET `gossip_menu_id`=14290, `npcflag`=3 WHERE `entry`=36628; -- Celestine of the Harvest
UPDATE `creature_template` SET `gossip_menu_id`=14175, `npcflag`=3 WHERE `entry`=36629; -- Huntsman Blake
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=36698; -- Captive Worgen
UPDATE `creature_template` SET `npcflag`=2 WHERE `entry`=36170; -- Lord Godfrey
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `npcflag`=17 WHERE `entry`=50247; -- Jack "All-Trades" Derrington
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=36798; -- Captive Worgen
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=36797; -- Captive Worgen
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `npcflag`=2 WHERE `entry`=34571; -- Gwen Armstead
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=14881; -- Spider
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `npcflag`=2 WHERE `entry`=36132; -- Krennan Aranas
UPDATE `creature_template` SET `unit_flags2`=4196352 WHERE `entry`=36449; -- Generic Trigger LAB - Multiphase (Gigantic)
UPDATE `creature_template` SET `unit_flags2`=4196352 WHERE `entry`=36286; -- Generic Trigger LAB - Multiphase (Gigantic AOI)
UPDATE `creature_template` SET `npcflag`=0 WHERE `entry`=35627; -- Frenzied Stalker
UPDATE `creature_template` SET `gossip_menu_id`=0, `RangeAttackTime`=2000 WHERE `entry`=35566; -- Lord Darius Crowley
UPDATE `creature_template` SET `npcflag`=0, `speed_run`=1.142857 WHERE `entry`=44429; -- Crowley's Horse
UPDATE `creature_template` SET `gossip_menu_id`=14172, `npcflag`=3, `BaseAttackTime`=1500, `unit_flags`=768 WHERE `entry`=44455; -- Sergeant Cleese
UPDATE `creature_template` SET `unit_flags`=33280 WHERE `entry`=35551; -- Prince Liam Greymane
UPDATE `creature_template` SET `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=33536 WHERE `entry`=35911; -- King Genn Greymane
UPDATE `creature_template` SET `RangeAttackTime`=2000, `unit_flags`=33536 WHERE `entry`=35552; -- Lord Darius Crowley
UPDATE `creature_template` SET `npcflag`=3, `BaseAttackTime`=1111 WHERE `entry`=44464; -- Loren the Fence
UPDATE `creature_template` SET `npcflag`=3, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=33280 WHERE `entry`=44465; -- Myriam Spellwaker
UPDATE `creature_template` SET `npcflag`=0, `speed_run`=1.142857, `BaseAttackTime`=1111, `VehicleId`=0 WHERE `entry`=44427; -- Crowley's Horse
UPDATE `creature_template` SET `faction`=35, `RangeAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=44463; -- Baron
UPDATE `creature_template` SET `npcflag`=3, `BaseAttackTime`=1111 WHERE `entry`=44459; -- Celestine of the Harvest
UPDATE `creature_template` SET `npcflag`=3, `BaseAttackTime`=1111 WHERE `entry`=44468; -- Sister Almyra
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=35554; -- Shaken Survivor
UPDATE `creature_template` SET `faction`=2163, `BaseAttackTime`=1111 WHERE `entry`=44460; -- Gwen Armstead
UPDATE `creature_template` SET `npcflag`=3, `BaseAttackTime`=1500 WHERE `entry`=44461; -- Huntsman Blake
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=44470; -- Injured Citizen
UPDATE `creature_template` SET `npcflag`=3, `BaseAttackTime`=1500 WHERE `entry`=44469; -- Vitus Darkwalker
UPDATE `creature_template` SET `unit_flags2`=2099200 WHERE `entry`=35916; -- Bloodfang Ripper
UPDATE `creature_template` SET `npcflag`=0, `unit_flags2`=2099200 WHERE `entry`=35229; -- Bloodfang Stalker
UPDATE `creature_template` SET `maxlevel`=3, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=35915; -- Gilneas City Guard
UPDATE `creature_template` SET `unit_flags3`=1 WHERE `entry`=35914; -- Commandeered Cannon
UPDATE `creature_template` SET `gossip_menu_id`=83 WHERE `entry`=6491; -- Spirit Healer
UPDATE `creature_template` SET `faction`=2163, `unit_flags`=32768 WHERE `entry`=35753; -- Krennan Aranas
UPDATE `creature_template` SET `gossip_menu_id`=0 WHERE `entry`=35550; -- King Genn Greymane
UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags2`=2099200 WHERE `entry`=35505; -- Bloodfang Ripper
UPDATE `creature_template` SET `npcflag`=0, `unit_flags2`=2099200 WHERE `entry`=35463; -- Bloodfang Lurker
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=32768 WHERE `entry`=41561; -- Wary Mastiff
UPDATE `creature_template` SET `BaseAttackTime`=1500 WHERE `entry`=50371; -- Captain Broderick
UPDATE `creature_template` SET `RangeAttackTime`=2000 WHERE `entry`=35077; -- Lord Darius Crowley
UPDATE `creature_template` SET `BaseAttackTime`=1111 WHERE `entry`=35124; -- Tobias Mistmantle
UPDATE `creature_template` SET `npcflag`=3 WHERE `entry`=35871; -- Loren the Fence
UPDATE `creature_template` SET `unit_flags2`=0 WHERE `entry`=47091; -- Wounded Guard
UPDATE `creature_template` SET `gossip_menu_id`=14174, `npcflag`=3, `BaseAttackTime`=1500 WHERE `entry`=35874; -- Huntsman Blake
UPDATE `creature_template` SET `npcflag`=3 WHERE `entry`=35872; -- Myriam Spellwaker
UPDATE `creature_template` SET `npcflag`=3 WHERE `entry`=35870; -- Sister Almyra
UPDATE `creature_template` SET `gossip_menu_id`=0, `npcflag`=3, `BaseAttackTime`=1500 WHERE `entry`=35869; -- Vitus Darkwalker
UPDATE `creature_template` SET `gossip_menu_id`=14172, `npcflag`=3, `BaseAttackTime`=1500 WHERE `entry`=35839; -- Sergeant Cleese
UPDATE `creature_template` SET `npcflag`=4194433, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=68993; -- Fenegan Cobbler
UPDATE `creature_template` SET `gossip_menu_id`=14290, `npcflag`=3 WHERE `entry`=35873; -- Celestine of the Harvest
UPDATE `creature_template` SET `faction`=2163, `unit_flags`=768 WHERE `entry`=51947; -- Gilnean Steed
UPDATE `creature_template` SET `gossip_menu_id`=10841, `npcflag`=641, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=38853; -- Marie Allen
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=35840; -- Gwen Armstead
UPDATE `creature_template` SET `minlevel`=120, `maxlevel`=120 WHERE `entry`=89715; -- Franklin Martin
UPDATE `creature_template` SET `unit_flags2`=2099200 WHERE `entry`=35457; -- Bloodfang Bloodletter
UPDATE `creature_template` SET `npcflag`=0, `unit_flags3`=16 WHERE `entry`=35118; -- Bloodfang Worgen
UPDATE `creature_template` SET `unit_flags2`=2099200 WHERE `entry`=35456; -- Worgen Runt
UPDATE `creature_template` SET `faction`=2174, `unit_flags2`=2099200, `unit_flags3`=16 WHERE `entry`=34884; -- Rampaging Worgen
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=114, `unit_flags`=33555200 WHERE `entry`=35164; -- Gilneas Prison Event Run Marker
UPDATE `creature_template` SET `faction`=2163, `unit_flags`=537166080, `unit_flags2`=2049, `unit_flags3`=8192 WHERE `entry`=44105; -- Slain Citizen
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=35011; -- Gilneas Evacuation Facing Marker (Far)
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=114, `unit_flags`=33555200 WHERE `entry`=35166; -- Gilneas Prison Event Spawn Marker
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=35006; -- Gilneas Market Evacuation Credit
UPDATE `creature_template` SET `unit_flags`=537165824, `unit_flags2`=2049, `unit_flags3`=8192 WHERE `entry`=34863; -- Lieutenant Walden
UPDATE `creature_template` SET `unit_flags`=537166592, `unit_flags2`=2049, `unit_flags3`=8193 WHERE `entry`=39095; -- Slain Guard
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `npcflag`=0, `unit_flags3`=16 WHERE `entry`=35830; -- Gilneas Evacuation Facing Marker (First)
UPDATE `creature_template` SET `unit_flags2`=2099200 WHERE `entry`=34867; -- Shadowy Figure
UPDATE `creature_template` SET `gossip_menu_id`=0 WHERE `entry`=34850; -- Prince Liam Greymane
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=35010; -- Gilneas Evacuation Facing Marker (Near)
UPDATE `creature_template` SET `faction`=188, `unit_flags`=0 WHERE `entry`=6368; -- Cat
UPDATE `creature_template` SET `speed_run`=1.142857 WHERE `entry`=34864; -- Gilneas City Guard
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=35374; -- Generic Trigger LAB - Multiphase
UPDATE `creature_template` SET `unit_flags`=0, `unit_flags3`=17, `VehicleId`=470 WHERE `entry`=35317; -- Rebel Cannon


-- Spell Area
DELETE FROM `spell_area` WHERE `spell`=68481 AND `area`=4786;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68481, 4786, 14375, 14321, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68481 AND `area`=4714;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68481, 4714, 14375, 14321, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68481 AND `area`=4808;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68481, 4808, 14375, 14321, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68481 AND `area`=4818;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68481, 4818, 14375, 14321, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68481 AND `area`=4807;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68481, 4807, 14375, 14321, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68481 AND `area`=4806;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68481, 4806, 14375, 14321, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68481 AND `area`=5720;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68481, 5720, 14375, 14321, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68481 AND `area`=4793;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68481, 4793, 14375, 14321, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68481 AND `area`=4792;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68481, 4792, 14375, 14321, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68482 AND `area`=4786;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68482, 4786, 14321, 14396, 0, -1, 0, 2, 3, 64, 74);

DELETE FROM `spell_area` WHERE `spell`=68482 AND `area`=4714;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68482, 4714, 14321, 14396, 0, -1, 0, 2, 3, 64, 74);

DELETE FROM `spell_area` WHERE `spell`=68482 AND `area`=4808;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68482, 4808, 14321, 14396, 0, -1, 0, 2, 3, 64, 74);

DELETE FROM `spell_area` WHERE `spell`=68482 AND `area`=4818;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68482, 4818, 14321, 14396, 0, -1, 0, 2, 3, 64, 74);

DELETE FROM `spell_area` WHERE `spell`=68482 AND `area`=4807;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68482, 4807, 14321, 14396, 0, -1, 0, 2, 3, 64, 74);

DELETE FROM `spell_area` WHERE `spell`=68482 AND `area`=4806;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68482, 4806, 14321, 14396, 0, -1, 0, 2, 3, 64, 74);

DELETE FROM `spell_area` WHERE `spell`=68482 AND `area`=5720;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68482, 5720, 14321, 14396, 0, -1, 0, 2, 3, 64, 74);

DELETE FROM `spell_area` WHERE `spell`=68482 AND `area`=4793;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68482, 4793, 14321, 14396, 0, -1, 0, 2, 3, 64, 74);

DELETE FROM `spell_area` WHERE `spell`=68482 AND `area`=4792;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68482, 4792, 14321, 14396, 0, -1, 0, 2, 3, 64, 74);

DELETE FROM `spell_area` WHERE `spell`=68483 AND `area`=4786;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68483, 4786, 14396, 14465, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68483 AND `area`=4714;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68483, 4714, 14396, 14465, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68483 AND `area`=4808;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68483, 4808, 14396, 14465, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68483 AND `area`=4818;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68483, 4818, 14396, 14465, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68483 AND `area`=4807;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68483, 4807, 14396, 14465, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68483 AND `area`=4806;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68483, 4806, 14396, 14465, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68483 AND `area`=5720;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68483, 5720, 14396, 14465, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68483 AND `area`=4793;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68483, 4793, 14396, 14465, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68483 AND `area`=4792;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68483, 4792, 14396, 14465, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68483 AND `area`=4817;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68483, 4817, 14396, 24438, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4817;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 4817, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=6545;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 6545, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4714;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 4714, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4730;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 4730, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4787;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 4787, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4794;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 4794, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4731;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 4731, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4788;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 4788, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4732;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 4732, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4734;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 4734, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4842;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 4842, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4482;


-- Crate of Mandrake Essence (196394)
DELETE FROM `gameobject` WHERE `guid`=95443;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES 
(95443, 196394, 654, 0, 0, 1, 0, 181, 0, -1, -1926.27, 2408.62, 30.0234, 5.44543, 0, 0, -0.406736, 0.913545, 7200, 255, 1, 0, '', 26365);


-- Mountain Horse (36540)
UPDATE `creature_template` SET `spell1`='68903' AND `unit_flags`='16777216' WHERE  `entry`=36540;


-- Spell Area
DELETE FROM `spell_area` WHERE `spell`=68481 AND `area`=4786;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68481, 4786, 14375, 14321, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68481 AND `area`=4714;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68481, 4714, 14375, 14321, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68481 AND `area`=4808;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68481, 4808, 14375, 14321, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68481 AND `area`=4818;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68481, 4818, 14375, 14321, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68481 AND `area`=4807;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68481, 4807, 14375, 14321, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68481 AND `area`=4806;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68481, 4806, 14375, 14321, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68481 AND `area`=5720;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68481, 5720, 14375, 14321, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68481 AND `area`=4793;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68481, 4793, 14375, 14321, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68481 AND `area`=4792;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68481, 4792, 14375, 14321, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68482 AND `area`=4786;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68482, 4786, 14321, 14396, 0, -1, 0, 2, 3, 64, 74);

DELETE FROM `spell_area` WHERE `spell`=68482 AND `area`=4714;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68482, 4714, 14321, 14396, 0, -1, 0, 2, 3, 64, 74);

DELETE FROM `spell_area` WHERE `spell`=68482 AND `area`=4808;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68482, 4808, 14321, 14396, 0, -1, 0, 2, 3, 64, 74);

DELETE FROM `spell_area` WHERE `spell`=68482 AND `area`=4818;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68482, 4818, 14321, 14396, 0, -1, 0, 2, 3, 64, 74);

DELETE FROM `spell_area` WHERE `spell`=68482 AND `area`=4807;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68482, 4807, 14321, 14396, 0, -1, 0, 2, 3, 64, 74);

DELETE FROM `spell_area` WHERE `spell`=68482 AND `area`=4806;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68482, 4806, 14321, 14396, 0, -1, 0, 2, 3, 64, 74);

DELETE FROM `spell_area` WHERE `spell`=68482 AND `area`=5720;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68482, 5720, 14321, 14396, 0, -1, 0, 2, 3, 64, 74);

DELETE FROM `spell_area` WHERE `spell`=68482 AND `area`=4793;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68482, 4793, 14321, 14396, 0, -1, 0, 2, 3, 64, 74);

DELETE FROM `spell_area` WHERE `spell`=68482 AND `area`=4792;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68482, 4792, 14321, 14396, 0, -1, 0, 2, 3, 64, 74);

DELETE FROM `spell_area` WHERE `spell`=68483 AND `area`=4786;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68483, 4786, 14396, 14465, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68483 AND `area`=4714;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68483, 4714, 14396, 14465, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68483 AND `area`=4808;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68483, 4808, 14396, 14465, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68483 AND `area`=4818;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68483, 4818, 14396, 14465, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68483 AND `area`=4807;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68483, 4807, 14396, 14465, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68483 AND `area`=4806;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68483, 4806, 14396, 14465, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68483 AND `area`=5720;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68483, 5720, 14396, 14465, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68483 AND `area`=4793;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68483, 4793, 14396, 14465, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68483 AND `area`=4792;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68483, 4792, 14396, 14465, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68483 AND `area`=4817;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68483, 4817, 14396, 24438, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4817;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 4817, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=6545;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 6545, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4714;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 4714, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4730;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 4730, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4787;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 4787, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4794;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 4794, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4731;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 4731, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4788;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 4788, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4732;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 4732, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4734;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 4734, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4842;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 4842, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4482;


-- Spell Area
DELETE FROM `spell_area` WHERE `spell`=68481 AND `area`=4786;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68481, 4786, 14375, 14321, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68481 AND `area`=4714;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68481, 4714, 14375, 14321, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68481 AND `area`=4808;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68481, 4808, 14375, 14321, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68481 AND `area`=4818;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68481, 4818, 14375, 14321, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68481 AND `area`=4807;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68481, 4807, 14375, 14321, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68481 AND `area`=4806;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68481, 4806, 14375, 14321, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68481 AND `area`=5720;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68481, 5720, 14375, 14321, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68481 AND `area`=4793;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68481, 4793, 14375, 14321, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68481 AND `area`=4792;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68481, 4792, 14375, 14321, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68482 AND `area`=4786;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68482, 4786, 14321, 14396, 0, -1, 0, 2, 3, 64, 74);

DELETE FROM `spell_area` WHERE `spell`=68482 AND `area`=4714;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68482, 4714, 14321, 14396, 0, -1, 0, 2, 3, 64, 74);

DELETE FROM `spell_area` WHERE `spell`=68482 AND `area`=4808;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68482, 4808, 14321, 14396, 0, -1, 0, 2, 3, 64, 74);

DELETE FROM `spell_area` WHERE `spell`=68482 AND `area`=4818;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68482, 4818, 14321, 14396, 0, -1, 0, 2, 3, 64, 74);

DELETE FROM `spell_area` WHERE `spell`=68482 AND `area`=4807;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68482, 4807, 14321, 14396, 0, -1, 0, 2, 3, 64, 74);

DELETE FROM `spell_area` WHERE `spell`=68482 AND `area`=4806;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68482, 4806, 14321, 14396, 0, -1, 0, 2, 3, 64, 74);

DELETE FROM `spell_area` WHERE `spell`=68482 AND `area`=5720;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) 
VALUES (68482, 5720, 14321, 14396, 0, -1, 0, 2, 3, 64, 74);

DELETE FROM `spell_area` WHERE `spell`=68482 AND `area`=4793;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68482, 4793, 14321, 14396, 0, -1, 0, 2, 3, 64, 74);

DELETE FROM `spell_area` WHERE `spell`=68482 AND `area`=4792;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68482, 4792, 14321, 14396, 0, -1, 0, 2, 3, 64, 74);

DELETE FROM `spell_area` WHERE `spell`=68483 AND `area`=4786;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68483, 4786, 14396, 14465, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68483 AND `area`=4714;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68483, 4714, 14396, 14465, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68483 AND `area`=4808;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68483, 4808, 14396, 14465, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68483 AND `area`=4818;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68483, 4818, 14396, 14465, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68483 AND `area`=4807;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68483, 4807, 14396, 14465, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68483 AND `area`=4806;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68483, 4806, 14396, 14465, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68483 AND `area`=5720;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68483, 5720, 14396, 14465, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68483 AND `area`=4793;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68483, 4793, 14396, 14465, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68483 AND `area`=4792;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68483, 4792, 14396, 14465, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=68483 AND `area`=4817;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(68483, 4817, 14396, 24438, 0, -1, 0, 2, 3, 64, 64);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4817;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 4817, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=6545;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 6545, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4714;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 4714, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4730;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 4730, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4787;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 4787, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4794;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 4794, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4731;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 4731, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4788;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 4788, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4732;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 4732, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4734;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 4734, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4842;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `teamId`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES 
(69484, 4842, 14467, 0, 0, -1, 0, 2, 3, 64, 0);

DELETE FROM `spell_area` WHERE `spell`=69484 AND `area`=4482;


-- Map Changes in Gilneas
DELETE FROM terrain_swap_defaults WHERE MapId = 654 AND TerrainSwapMap IN (655,656);
INSERT INTO terrain_swap_defaults (MapId, TerrainSwapMap, Comment) VALUES
(654, 655, 'Gilneas Duskhaven Phase 1'),
(654, 656, 'Gilneas Duskhaven Phase 2');

DELETE FROM conditions WHERE SourceTypeOrReferenceId=25 AND SourceEntry IN (638,655,656);
INSERT INTO conditions (SourceTypeOrReferenceId, SourceEntry, ElseGroup, ConditionTypeOrReference, ConditionValue1, ConditionValue2, NegativeCondition) VALUES
(25, 638, 0, 47, 14396, 74, 1),
(25, 655, 0, 47, 14396, 74, 0),
(25, 655, 0, 47, 14467, 74, 1),
(25, 656, 0, 47, 14467, 74, 0);


-- Gilnean Crow (50260)
DELETE FROM `creature_template` WHERE `entry`=50260;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(50260, 0, 0, 0, 0, 0, 36743, 0, 0, 0, 'Gilnean Crow', '', '', NULL, '', 0, 1, 1, 0, 0, 0, 2136, 0, 1, 1.14286, 1, 0, 0, 2000, 2000, 0, 0, 1, 33554432, 2048, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, '', 0, 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 'npc_gilnean_crow', 25549);


-- DBErrors
UPDATE `creature_template` SET `minlevel`='0', `maxlevel`='0' WHERE  `entry` IN (2041,3468,3838,3841,4262,4423,14379,40552,47584,48736,51371,89715);
DELETE FROM `creature_queststarter` WHERE  `id` IN (35118,43749);
DELETE FROM `creature_questender` WHERE  `id` IN (36479,43749);
UPDATE `creature_template` SET `npcflag`='130' WHERE  `entry`=4217;
UPDATE `creature_template` SET `npcflag`='131' WHERE  `entry`=4730;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=37939 AND `spell_id`=46598;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(37939, 46598, 0, 0);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=38363 AND `spell_id`=46598;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(38363, 46598, 0, 0);


-- Gilneas City Guard (34864)
INSERT IGNORE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(34864, 0, 0, 'No one\'s allowed to leave. Prince Liam\'s orders.', 12, 0, 100, 1, 0, 0, 0, 'Gilneas City Guard'),
(34864, 1, 1, 'Stay calm. We have everything under control.', 12, 0, 100, 1, 0, 0, 0, 'Gilneas City Guard'),
(34864, 2, 2, 'It isn\'t safe to leave, there\'s something lurking out there in the woods.', 12, 0, 100, 1, 0, 0, 0, 'Gilneas City Guard');
