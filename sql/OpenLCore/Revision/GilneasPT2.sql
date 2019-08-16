/*==================
-- Gilneas Finish 2/5
==================*/

-- Lord Darius Crowley (35552)
UPDATE `creature_template` SET `ScriptName`=''  WHERE  `entry`=35552;

DELETE FROM `smart_scripts` WHERE `entryorguid`=35552;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35552, 0, 0, 0, 19, 0, 100, 0, 14212, 0, 0, 0, '', 85, 67001, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Lord Darius Crowley - On Quest Taken - Player Cast on Self Summon Crowley\'s Horse');


-- Crowley\'s Horse (35231)
UPDATE `creature_template` SET `ScriptName`=''  WHERE  `entry`=35231;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (35231,3523100);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35231, 0, 0, 0, 54, 0, 100, 512, 0, 0, 0, 0, '', 80, 3523100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Crowley\'s Horse - On Just Summoned - Run Actionlist'),
(35231, 0, 1, 0, 40, 0, 100, 512, 10, 35231, 0, 0, '', 54, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Crowley\'s Horse - On WP 12 Reached - Paused WP'),
(35231, 0, 2, 3, 40, 0, 100, 512, 22, 35231, 0, 0, '', 11, 68576, 4, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Crowley\'s Horse - On WP 22 Reached - Cast Eject All Passengers'),
(35231, 0, 3, 0, 61, 0, 100, 512, 0, 0, 0, 0, '', 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Crowley\'s Horse - Despawn'),
(35231, 0, 4, 0, 6, 0, 100, 512, 0, 0, 0, 0, '', 41, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Crowley\'s Horse - On Death - Despawn'),
(35231, 0, 5, 6, 60, 0, 100, 512, 15000, 15000, 15000, 15000, '', 1, 1, 1, 0, 0, 0, 0, 19, 35230, 5, 0, 0, 0, 0, 0, 'Crowley\'s Horse - Event Update - Lord Darius Crowley Say Line 1'),
(35231, 0, 6, 7, 61, 0, 100, 512, 0, 0, 0, 0, '', 28, 67063, 0, 0, 0, 0, 0, 19, 35230, 5, 0, 0, 0, 0, 0, 'Crowley\'s Horse - Remove Aura Throw Torch to Lord Darius Crowley'),
(35231, 0, 7, 8, 61, 0, 100, 512, 0, 0, 0, 0, '', 28, 67063, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Crowley\'s Horse - Remove Aura Throw Torch to Player'),
(35231, 0, 8, 0, 61, 0, 100, 512, 0, 0, 0, 0, '', 28, 67063, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Crowley\'s Horse - Remove Aura Throw Torch to Self'),
(3523100, 9, 0, 0, 0, 0, 100, 512, 1500, 1500, 1500, 1500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1735.01, 1653.01, 20.49, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 1, 0, 0, 0, 100, 512, 100, 100, 100, 100, '', 97, 15, 15, 0, 1709, 20, 0, 1, 0, 0, 0, -1714.02, 1666.37, 20.57, 0, 'Crowley\'s Horse - Jump to Pos'),
(3523100, 9, 2, 0, 0, 0, 100, 512, 0, 0, 0, 0, '', 1, 0, 1, 0, 0, 0, 0, 19, 35230, 5, 0, 0, 0, 0, 0, 'Crowley\'s Horse - Lord Darius Crowley Say Line 0'),
(3523100, 9, 3, 0, 0, 0, 100, 512, 1800, 1800, 1800, 1800, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1695.77, 1662.28, 20.5008, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 4, 0, 0, 0, 100, 512, 1800, 1800, 1800, 1800, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1678.26, 1648.95, 20.6123, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 5, 0, 0, 0, 100, 512, 1500, 1500, 1500, 1500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1669.8, 1634.52, 20.4897, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 6, 0, 0, 0, 100, 512, 3000, 3000, 3000, 3000, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1678.61, 1615.53, 20.4897, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 7, 0, 0, 0, 100, 512, 1500, 1500, 1500, 1500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1692.43, 1613.71, 20.4897, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 8, 0, 0, 0, 100, 512, 1500, 1500, 1500, 1500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1703.6, 1621.72, 20.4897, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 9, 0, 0, 0, 100, 512, 2800, 2800, 2800, 2800, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1673.3, 1701.64, 20.4992, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 10, 0, 0, 0, 100, 512, 4800, 4800, 4800, 4800, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1681.95, 1703.72, 20.4992, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 11, 0, 0, 0, 100, 512, 5200, 5200, 5200, 5200, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1646.58, 1708.64, 20.4918, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 12, 0, 0, 0, 100, 512, 4200, 4200, 4200, 4200, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1611.8, 1710.91, 22.6814, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 13, 0, 0, 0, 100, 512, 5200, 5200, 5200, 5200, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1589.02, 1710.71, 20.4852, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 14, 0, 0, 0, 100, 512, 3000, 3000, 3000, 3000, '', 97, 15, 15, 0, 1709, 20, 0, 1, 0, 0, 0, -1572.31, 1709.16, 20.4861, 0, 'Crowley\'s Horse - Jump to Pos'),
(3523100, 9, 15, 0, 0, 0, 100, 512, 1500, 1500, 1500, 1500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1549.35, 1705.51, 20.4861, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 16, 0, 0, 0, 100, 512, 3400, 3400, 3400, 3400, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1522.72, 1696.79, 20.4861, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 17, 0, 0, 0, 100, 512, 4300, 4300, 4300, 4300, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1490.45, 1679.68, 20.4861, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 18, 0, 0, 0, 100, 512, 4700, 4700, 4700, 4700, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1435.31, 1623.39, 20.4861, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 19, 0, 0, 0, 100, 512, 4500, 4500, 4500, 4500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1418.88, 1592.74, 20.4861, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 20, 0, 0, 0, 100, 512, 4500, 4500, 4500, 4500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1414.37, 1575.23, 20.4802, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 21, 0, 0, 0, 100, 512, 3000, 3000, 3000, 3000, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1416.5, 1566.34, 20.4821, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 22, 0, 0, 0, 100, 512, 3000, 3000, 3000, 3000, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1444.24, 1553.16, 20.4839, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 23, 0, 0, 0, 100, 512, 3000, 3000, 3000, 3000, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1469.58, 1560.96, 20.4839, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 24, 0, 0, 0, 100, 512, 2500, 2500, 2500, 2500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1505.88, 1566.46, 20.4858, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 25, 0, 0, 0, 100, 512, 2500, 2500, 2500, 2500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1517.87, 1568.61, 26.2918, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 26, 0, 0, 0, 100, 512, 2500, 2500, 2500, 2500, '', 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, -1535.83, 1572.85, 28.9941, 0, 'Crowley\'s Horse - Move to Pos'),
(3523100, 9, 27, 0, 0, 0, 100, 512, 4500, 4500, 4500, 4500, '', 41, 1, 0, 0, 0, 0, 0, 19, 35230, 5, 0, 0, 0, 0, 0, 'Crowley\'s Horse - Lord Darius Crowley Despawn'),
(3523100, 9, 28, 0, 0, 0, 100, 512, 100, 100, 100, 100, '', 28, 67063, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Crowley\'s Horse - Remove Aura Throw Torch to Player'),
(3523100, 9, 29, 0, 0, 0, 100, 512, 0, 0, 0, 0, '', 11, 68576, 4, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Crowley\'s Horse - Cast Eject All Passengers');


-- Bloodfang Stalker (35229)
UPDATE `creature_template` SET `flags_extra`='66', `ScriptName`=''  WHERE  `entry`=35229;
DELETE FROM `creature` WHERE  `guid` IN (224144,224078,224074,224075,224073,224077,224072,224121,224119,224131,224129,224135,224127);
DELETE FROM `creature_addon` WHERE  `guid` IN (224144,224078,224074,224075,224073,224077,224072,224121,224119,224131,224129,224135,224127);
UPDATE `creature` SET `spawntimesecs`='30' WHERE  `id`=35229;
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE  `id`=35229;
UPDATE `creature_template_addon` SET `emote`='540' WHERE  `entry`=35229;
UPDATE `creature_addon` SET `emote`='540' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=35229);

DELETE FROM `smart_scripts` WHERE `entryorguid`=35229;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35229, 0, 0, 1, 2, 0, 100, 1, 0, 30, 0, 0, '', 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Stalker - Cast Enrage at 30% HP'),
(35229, 0, 1, 0, 61, 0, 100, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Stalker - Say Text at 30% HP'),
(35229, 0, 2, 3, 8, 0, 100, 512, 67063, 0, 0, 0, '', 33, 35582, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Stalker - On Spellhit - Quest Credit'),
(35229, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, '', 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Stalker - Die');


-- Crowley's Horse (44429)
DELETE FROM `creature` WHERE  `guid`=224297;
DELETE FROM `creature_addon` WHERE  `guid`=224297;


-- Rebel Cannon (35317)
UPDATE `creature_template` SET `InhabitType`='8', `ScriptName`='' WHERE  `entry`=35317;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=35317 AND `SourceEntry`=43671 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=9 AND `ConditionTarget`=0 AND `ConditionValue1`=14218 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(18, 35317, 43671, 0, 0, 9, 0, 14218, 0, 0, 0, 0, 0, '', 'Rebel Cannon - Required Quest Active for Spellclick');


-- Northgate Rebel (36057)
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=36057;
UPDATE `creature_addon` SET `emote`='333' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=36057);

DELETE FROM `smart_scripts` WHERE `entryorguid`=36057;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(36057, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2300, 3900, '', 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Northgate Rebel - Cast Shoot'),
(36057, 0, 1, 0, 9, 0, 100, 0, 0, 5, 12000, 14500, '', 11, 15496, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Northgate Rebel - On Close - Cast Cleave'),
(36057, 0, 2, 0, 1, 0, 100, 0, 0, 0, 2000, 2000, '', 49, 0, 0, 0, 0, 0, 0, 11, 35229, 10, 0, 0, 0, 0, 0, 'Northgate Rebel - Attack Creature Bloodfang Stalker');


-- Lord Darius Crowley (35566)
DELETE FROM `creature` WHERE `guid`=72590;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES 
(72590, 35566, 654, 4755, 4761, 1, 0, 179, 0, -1, 0, 0, -1619.7, 1498.03, 32.8829, 0.785398, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 26365);

DELETE FROM `creature_addon` WHERE `guid`=72590;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(72590, 0, 0, 0, 2, 333, 0, 0, 0, '67503');


-- Frenzied Stalker (35627)
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=35627;
DELETE FROM `creature` WHERE  `guid` IN (224455,224457,224434,224458,224430,224436,224440,224454,224459,224428,224421,224460,224423,224424,224462,224464,224429,224463,224461);
DELETE FROM `creature_addon` WHERE  `guid` IN (224455,224457,224434,224458,224430,224436,224440,224454,224459,224428,224421,224460,224423,224424,224462,224464,224429,224463,224461);
UPDATE `creature_template_addon` SET `emote`='540' WHERE  `entry`=35627;
UPDATE `creature_addon` SET `emote`='540' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=35627);
UPDATE `creature` SET `spawntimesecs`='60' WHERE  `id`=35627;

DELETE FROM `smart_scripts` WHERE `entryorguid`=35627;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35627, 0, 0, 1, 2, 0, 100, 1, 0, 30, 0, 0, '', 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Frenzied Stalker - Cast Enrage at 30% HP'),
(35627, 0, 1, 0, 61, 0, 100, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Frenzied Stalker - Say Text at 30% HP');


-- Northgate Rebel (41015)
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=41015;
UPDATE `creature_template_addon` SET `emote`='333' WHERE  `entry`=41015;
UPDATE `creature_addon` SET `emote`='333' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=41015);