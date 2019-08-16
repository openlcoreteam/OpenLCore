DELETE FROM `creature_text` WHERE `CreatureID`=54404;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
('54404', '0', '0', 'Behold Ragnaros - the Firelord! He who was ancient when this world was young! Bow before him, mortals! Bow before your ending!', '14', '0', '100', '0', '0', '8040', '7657', '0', 'majordomo SAY_SUMMON_MAJ'),
('54404', '1', '0', 'These mortal infidels, my lord! They have invaded your sanctum and seek to steal your secrets!', '14', '0', '100', '0', '0', '8041', '7661', '0', 'majordomo SAY_ARRIVAL2_MAJ');

-- Quest DK (Death's Challenge)
UPDATE `creature_template` SET npcflag = 1 WHERE `entry` = 28406;


DELETE FROM `gameobject_template` WHERE `entry` = 214406;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `RequiredLevel`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES ('214406', '3', '12426', 'Dai-Lo Recess Mallet', '', 'Collecting', '', '0.6', '43', '214406', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '19676', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '20886');

DELETE FROM `gameobject_loot_template` WHERE  `entry` = 214406;
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES ('214406', '74298', '0', '100', '1', '1', '0', '1', '1', '');

SET @DUROTAR_TELESCOPE := 39320;

UPDATE `creature_template` SET `faction`=35, `speed_run`=12, `unit_flags`=768, `type_flags`=1048576, `VehicleId`=686, `AIName`='SmartAI', `InhabitType`=4 WHERE `entry`=@DUROTAR_TELESCOPE;

DELETE FROM `creature_template_addon` WHERE `entry` IN (@DUROTAR_TELESCOPE);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(@DUROTAR_TELESCOPE, 0, 0, 50331648, 0, 0, '');

DELETE FROM `spell_scripts` WHERE `id` IN (73817) AND `datalong` IN (73741);
INSERT INTO `spell_scripts` (`id`, `effIndex`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(73817, 0, 0, 15, 73741, 1, 0, 0, 0, 0, 0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (17) AND `sourceEntry` IN (73741);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `sourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 73741, 0, 0, 9, 0, 25187, 0, 0, 0, 0, 0, '', 'Script Activates If Player Has Not Objective Complete'),
(17, 0, 73741, 0, 0, 31, 0, 4, 0, 0, 0, 0, 0, '', 'Script Activates If Player Has Not Objective Complete');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (22) AND `sourceEntry` IN (@DUROTAR_TELESCOPE);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `sourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, @DUROTAR_TELESCOPE, 0, 0, 1, 0, 85319, 0, 0, 1, 0, 0, '', 'Script Activates If Player Has Not Objective Complete'),
(22, 1, @DUROTAR_TELESCOPE, 0, 0, 9, 0, 25187, 0, 0, 0, 0, 0, '', 'Script Activates If Player Has Not Objective Complete'),
(22, 2, @DUROTAR_TELESCOPE, 0, 1, 1, 0, 85319, 0, 0, 0, 0, 0, '', 'Script Activates If Player Has Objective Complete'),
(22, 2, @DUROTAR_TELESCOPE, 0, 1, 1, 0, 81240, 0, 0, 1, 0, 0, '', 'Script Activates If Player Has Objective Complete'),
(22, 2, @DUROTAR_TELESCOPE, 0, 1, 9, 0, 25187, 0, 0, 0, 0, 0, '', 'Script Activates If Player Has Not Objective Complete'),
(22, 3, @DUROTAR_TELESCOPE, 0, 1, 1, 0, 81240, 0, 0, 0, 0, 0, '', 'Script Activates If Player Has Objective Complete'),
(22, 3, @DUROTAR_TELESCOPE, 0, 1, 1, 0, 81201, 0, 0, 1, 0, 0, '', 'Script Activates If Player Has Objective Complete'),
(22, 3, @DUROTAR_TELESCOPE, 0, 1, 9, 0, 25187, 0, 0, 0, 0, 0, '', 'Script Activates If Player Has Not Objective Complete'),
(22, 4, @DUROTAR_TELESCOPE, 0, 1, 1, 0, 81201, 0, 0, 0, 0, 0, '', 'Script Activates If Player Has Objective Complete'),
(22, 4, @DUROTAR_TELESCOPE, 0, 1, 9, 0, 25187, 0, 0, 0, 0, 0, '', 'Script Activates If Player Has Not Objective Complete');

UPDATE `gameobject_template` SET `displayId`=0 WHERE `entry`=301050;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@DUROTAR_TELESCOPE) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@DUROTAR_TELESCOPE*100,@DUROTAR_TELESCOPE*100+1,@DUROTAR_TELESCOPE*100+2,@DUROTAR_TELESCOPE*100+3) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@DUROTAR_TELESCOPE, 0, 0, 0, 27, 0, 100, 513, 0, 0, 0, 0, 53, 1, @DUROTAR_TELESCOPE*10, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Durotar Telescope - on Passenger Boarded Run WP 1'),
(@DUROTAR_TELESCOPE, 0, 1, 0, 27, 0, 100, 513, 0, 0, 0, 0, 53, 1, @DUROTAR_TELESCOPE*10+1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Durotar Telescope - on Passenger Boarded Run WP 2'),
(@DUROTAR_TELESCOPE, 0, 2, 0, 27, 0, 100, 513, 0, 0, 0, 0, 53, 1, @DUROTAR_TELESCOPE*10+2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Durotar Telescope - on Passenger Boarded Run WP 3'),
(@DUROTAR_TELESCOPE, 0, 3, 0, 27, 0, 100, 513, 0, 0, 0, 0, 53, 1, @DUROTAR_TELESCOPE*10+3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Durotar Telescope - on Passenger Boarded Run WP 4'),
(@DUROTAR_TELESCOPE, 0, 4, 0, 40, 0, 100, 513, 2, @DUROTAR_TELESCOPE*10, 0, 0, 80, @DUROTAR_TELESCOPE*100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Durotar Telescope - on WP Reached - Run Script'),
(@DUROTAR_TELESCOPE, 0, 5, 0, 40, 0, 100, 513, 2, @DUROTAR_TELESCOPE*10+1, 0, 0, 80, @DUROTAR_TELESCOPE*100+1, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Durotar Telescope - on WP Reached - Run Script'),
(@DUROTAR_TELESCOPE, 0, 6, 0, 40, 0, 100, 513, 2, @DUROTAR_TELESCOPE*10+2, 0, 0, 80, @DUROTAR_TELESCOPE*100+2, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Durotar Telescope - on WP Reached - Run Script'),
(@DUROTAR_TELESCOPE, 0, 7, 0, 40, 0, 100, 513, 2, @DUROTAR_TELESCOPE*10+3, 0, 0, 80, @DUROTAR_TELESCOPE*100+3, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Durotar Telescope - on WP Reached - Run Script'),
(@DUROTAR_TELESCOPE*100, 9, 0, 0, 0, 0, 100, 512, 3000, 3000, 0, 0, 33, 39357, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Script - Give Credit'),
(@DUROTAR_TELESCOPE*100, 9, 1, 0, 0, 0, 100, 512, 0, 0, 0, 0, 75, 85319, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Script - Give Credit'),
(@DUROTAR_TELESCOPE*100, 9, 2, 0, 0, 0, 100, 512, 5000, 5000, 0, 0, 5, 15, 0, 0, 0, 0, 0, 10, 253002, 39326, 0, 0, 0, 0, 0, 'Script - Give Credit'),
(@DUROTAR_TELESCOPE*100, 9, 3, 0, 0, 0, 100, 512, 3500, 3500, 0, 0, 62, 1, 0, 0, 0, 0, 0, 23, 0, 0, 0, 393.67, -4581.75, 76.59, 0, 'Script - Give Credit'),
(@DUROTAR_TELESCOPE*100+1, 9, 0, 0, 0, 0, 100, 512, 5000, 5000, 0, 0, 33, 39358, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Script - Give Credit'),
(@DUROTAR_TELESCOPE*100+1, 9, 1, 0, 0, 0, 100, 512, 0, 0, 0, 0, 75, 81240, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Script - Give Credit'),
(@DUROTAR_TELESCOPE*100+1, 9, 2, 0, 0, 0, 100, 512, 3000, 3000, 0, 0, 62, 1, 0, 0, 0, 0, 0, 23, 0, 0, 0, 393.67, -4581.75, 76.59, 0, 'Script - Give Credit'),
(@DUROTAR_TELESCOPE*100+2, 9, 0, 0, 0, 0, 100, 512, 5000, 5000, 0, 0, 33, 39359, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Script - Give Credit'),
(@DUROTAR_TELESCOPE*100+2, 9, 1, 0, 0, 0, 100, 512, 0, 0, 0, 0, 75, 81201, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Script - Give Credit'),
(@DUROTAR_TELESCOPE*100+2, 9, 2, 0, 0, 0, 100, 512, 3000, 3000, 0, 0, 62, 1, 0, 0, 0, 0, 0, 23, 0, 0, 0, 393.67, -4581.75, 76.59, 0, 'Script - Give Credit'),
(@DUROTAR_TELESCOPE*100+3, 9, 0, 0, 0, 0, 100, 512, 6000, 6000, 0, 0, 33, 39360, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Script - Give Credit'),
(@DUROTAR_TELESCOPE*100+3, 9, 1, 0, 0, 0, 100, 512, 0, 0, 0, 0, 28, 81201, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Script - Give Credit'),
(@DUROTAR_TELESCOPE*100+3, 9, 2, 0, 0, 0, 100, 512, 0, 0, 0, 0, 28, 85319, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Script - Give Credit'),
(@DUROTAR_TELESCOPE*100+3, 9, 3, 0, 0, 0, 100, 512, 0, 0, 0, 0, 28, 81240, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Script - Give Credit'),
(@DUROTAR_TELESCOPE*100+3, 9, 4, 0, 0, 0, 100, 512, 4000, 4000, 0, 0, 62, 1, 0, 0, 0, 0, 0, 23, 0, 0, 0, 393.67, -4581.75, 76.59, 0, 'Script - Give Credit');

DELETE FROM `waypoints` WHERE `entry` IN (@DUROTAR_TELESCOPE*10,@DUROTAR_TELESCOPE*10+1,@DUROTAR_TELESCOPE*10+2,@DUROTAR_TELESCOPE*10+3);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(@DUROTAR_TELESCOPE*10, 1, 350.911, -4547.55, 78.0417, 'Raggaran'),
(@DUROTAR_TELESCOPE*10, 2, 60.7847, -4232.33, 38.4023, 'Raggaran'),
(@DUROTAR_TELESCOPE*10+1, 1, 412.066, -4528.23, 78.0417, 'Tekla'),
(@DUROTAR_TELESCOPE*10+1, 2, 555.582, -4146.9, 28.3467, 'Tekla'),
(@DUROTAR_TELESCOPE*10+2, 1, 440.613, -4538.23, 72.097, 'Misha'),
(@DUROTAR_TELESCOPE*10+2, 2, 721.934, -4260.48, 23.069, 'Misha'),
(@DUROTAR_TELESCOPE*10+3, 1, 385.194, -4497.49, 75.3749, 'Zen\'Taji'),
(@DUROTAR_TELESCOPE*10+3, 2, 349.146, -3869.01, 25.069, 'Zen\'Taji');

DELETE FROM `waypoints` WHERE `entry` IN (37676);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(37676, 1 , -8382.52, 1347.97, 102.37  , 'Hot Rod'),
(37676, 2 , -8362.91, 1347.25, 99.9715  , 'Hot Rod'),
(37676, 3 , -8352.51, 1342.95, 94.7431  , 'Hot Rod'),
(37676, 4 , -8340.57, 1336.51, 88.242  , 'Hot Rod'),
(37676, 5 , -8322.75, 1323.39, 87.9191  , 'Hot Rod'),
(37676, 6 , -8313.27, 1316.89, 86.7085  , 'Hot Rod'),
(37676, 7 , -8302.07, 1310.45, 81.252  , 'Hot Rod'),
(37676, 8 , -8293.94, 1306.29, 75.7164  , 'Hot Rod'),
(37676, 9 , -8283.41, 1301.49, 65.4748  , 'Hot Rod'),
(37676, 10, -8269.57, 1296.98, 55.1278  , 'Hot Rod'),
(37676, 11, -8256.46, 1294.53, 47.4715  , 'Hot Rod'),
(37676, 12, -8241.11, 1292.47, 40.31  , 'Hot Rod'),
(37676, 13, -8221.41, 1291.39, 33.7556  , 'Hot Rod'),
(37676, 14, -8197.45, 1291.91, 29.1465  , 'Hot Rod'),
(37676, 15, -8178.56, 1294.47, 26.5851  , 'Hot Rod'),
(37676, 16, -8162.96, 1296.14, 24.5288  , 'Hot Rod'),
(37676, 17, -8146.32, 1297.63, 22.1716  , 'Hot Rod'),
(37676, 18, -8134.82, 1299.55, 20.3719  , 'Hot Rod'),
(37676, 19, -8125.85, 1315.36, 18.6041  , 'Hot Rod'),
(37676, 20, -8122.95, 1341.95, 17.129  , 'Hot Rod'),
(37676, 21, -8121.08, 1356.53, 18.6238  , 'Hot Rod'),
(37676, 22, -8121.32, 1381.11, 23.5487  , 'Hot Rod'),
(37676, 23, -8118.8, 1398.41, 23.0635  , 'Hot Rod'),
(37676, 24, -8116.04, 1414.68, 17.5808  , 'Hot Rod'),
(37676, 25, -8110.85, 1438.41, 10.957  , 'Hot Rod'),
(37676, 26, -8108.87, 1457.72, 9.98003  , 'Hot Rod'),
(37676, 27, -8121.1, 1472.69, 10.5439  , 'Hot Rod'),
(37676, 28, -8122.35, 1499.94, 11.0439  , 'Hot Rod'),
(37676, 29, -8104.85, 1530.19, 9.54393  , 'Hot Rod'),
(37676, 30, -8095.6, 1572.19, 9.04393  , 'Hot Rod'),
(37676, 31, -8095.1, 1604.19, 8.79393  , 'Hot Rod'),
(37676, 32, -8094.35, 1641.44, 9.54393  , 'Hot Rod'),
(37676, 33, -8101.6, 1686.19, 14.7939  , 'Hot Rod'),
(37676, 34, -8112.35, 1697.94, 18.7939  , 'Hot Rod'),
(37676, 35, -8124.35, 1710.19, 27.0439  , 'Hot Rod'),
(37676, 36, -8133.85, 1725.94, 33.0439  , 'Hot Rod'),
(37676, 37, -8137.1, 1736.44, 34.7939  , 'Hot Rod'),
(37676, 38, -8137.85, 1745.69, 35.2939  , 'Hot Rod'),
(37676, 39, -8134.1, 1759.44, 34.0439  , 'Hot Rod'),
(37676, 40, -8126.35, 1771.19, 31.5439  , 'Hot Rod'),
(37676, 41, -8113.1, 1783.69, 28.5439  , 'Hot Rod'),
(37676, 42, -8101.35, 1795.19, 31.2939  , 'Hot Rod'),
(37676, 43, -8085.35, 1821.19, 39.2939  , 'Hot Rod'),
(37676, 44, -8070.6, 1822.94, 42.7939  , 'Hot Rod'),
(37676, 45, -8055.6, 1822.19, 43.0439  , 'Hot Rod'),
(37676, 46, -8040.6, 1822.44, 41.7939  , 'Hot Rod'),
(37676, 47, -8024.6, 1821.69, 35.5439  , 'Hot Rod'),
(37676, 48, -8000.85, 1821.19, 24.7939  , 'Hot Rod'),
(37676, 49, -7976.6, 1829.94, 14.0439  , 'Hot Rod'),
(37676, 50, -7956.85, 1834.69, 9.79393  , 'Hot Rod'),
(37676, 51, -7934.6, 1834.94, 6.54393  , 'Hot Rod'),
(37676, 52, -7902.35, 1836.19, 5.29393  , 'Hot Rod'),
(37676, 53, -7885.85, 1835.69, 4.79393  , 'Hot Rod');

UPDATE `creature_template` SET `speed_walk`=3.2 WHERE `entry`=35075;

DELETE FROM `gossip_menu_option` WHERE `MenuId` IN (12493);
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES 
(12493, 0, 0, 'Okay, Sassy. I\'m ready to go.', 0, 1, 1, 0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (15) AND `SourceGroup` IN (12493);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `sourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 12493, 0, 0, 0, 28, 0, 14126, 0, 0, 0, 0, 0, '', '');

UPDATE `creature_template` SET `npcflag`=16777216, `speed_run`=2.85714, `VehicleId`=592, `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=37676;
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry` IN (37676,35222);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (37676);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(37676, 46598, 1, 0);

DELETE FROM `vehicle_template_accessory` WHERE `entry` IN (37676);
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES 
(37676, 37680, 0, 1, 'Sassy Hardwrench <Your Executive Assistant>', 8, 0);

DELETE FROM `creature_text` WHERE `CreatureID` IN (37680);
INSERT INTO `creature_text` (`CreatureID`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `TextRange`, `comment`) VALUES 
(37680, 0, 0, 'We\'ll have to go around.', 12, 0, 100, 0, 0, 0, 0, 'Sassy Hardwrench'),
(37680, 1, 0, 'OUT OF THE WAY!', 14, 0, 100, 0, 0, 0, 0, 'Sassy Hardwrench'),
(37680, 2, 0, 'Here we are safe, and... OH NO! We\'ve been double-crossed!', 12, 0, 100, 0, 0, 0, 0, 'Sassy Hardwrench');

DELETE FROM `smart_scripts` WHERE `entryorguid`=27959 AND `id`=10;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(27959,0,10,0,61,0,100,0,0,0,0,0,75,50237,0,0,0,0,0,7,0,0,0,0,0,0,0,"Your Inner Turmoil - On Just Died - Add Aura 'Slow Fall' (No Repeat)");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=56578 AND `ElseGroup`=1;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 3, 56578, 0, 1, 31, 0, 3, 30330, 0, 0, 0, 0, '', 'Spell Rapid-Fire Harpoon targets only Jotunheim Proto-Drake');


UPDATE `creature_template` SET `AIName`='SmartAI', `flags_extra`=`flags_extra`|64 WHERE `entry`=30330;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 30330 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(30330, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 48, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Jotunheim Proto-Drake - On Reset - Set Active');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=30337 AND `SourceEntry`=43671;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(18, 30337, 43671, 0, 0, 9, 0, 13069, 0, 0, 0, 0, 0, '', "Spellclick requires Active (taken) quest Shoot 'Em Up.");

UPDATE `smart_scripts` SET `link`=10 WHERE `entryorguid`=27959 AND `source_type`=0 AND `id`=9;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=46704;
INSERT INTO `conditions` VALUES (13, 1, 46704, 0, 0, 31, 0, 3, 26127, 0, 0, 0, 0, '', 'Target Nexus Drake Hatchling');

-- Raelorasz SAI
SET @ENTRY := 26117;
UPDATE `creature_template` SET `AIName`="SmartAI", `ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,9253,1,0,0,85,46764,1,0,0,0,0,7,0,0,0,0,0,0,0,"Raelorasz - On Gossip Option 1 Selected - Invoker Cast 'Push Arcane Prison'"),
(@ENTRY,0,1,0,61,0,100,0,9253,1,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Raelorasz - On Gossip Option 1 Selected - Close Gossip"),
(@ENTRY,0,2,0,60,0,100,0,5000,5000,5000,5000,45,1,26127,0,0,0,0,11,26127,30,0,0,0,0,0,"Raelorasz - On Update - Set Data 1 26127");

-- Nexus Drake Hatchling SAI
SET @ENTRY := 26127;
UPDATE `creature_template` SET `AIName`="SmartAI", `ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY*100+00 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,12000,15000,25000,35000,11,36631,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nexus Drake Hatchling - In Combat - Cast 'Netherbreath'"),
(@ENTRY,0,1,0,0,0,100,0,5000,10000,20000,35000,11,36513,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nexus Drake Hatchling - In Combat - Cast 'Intangible Presence'"),
(@ENTRY,0,2,3,8,0,100,0,46607,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Nexus Drake Hatchling - On Spellhit 'Drake Harpoon' - Store Targetlist"),
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,117,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nexus Drake Hatchling - On Spellhit 'Drake Harpoon' - evade off"),
(@ENTRY,0,4,5,61,0,100,0,0,0,0,0,86,46620,2,12,1,0,0,1,0,0,0,0,0,0,0,"Nexus Drake Hatchling - On Spellhit 'Drake Harpoon' - Cross Cast 'Red Dragonblood'"),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,49,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Nexus Drake Hatchling - On Spellhit 'Drake Harpoon' - Start Attacking"),
(@ENTRY,0,6,0,25,0,100,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nexus Drake Hatchling - On Reset - Remove Flags Immune To Players & Immune To NPC's"),
(@ENTRY,0,7,0,25,0,100,0,0,0,0,0,91,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nexus Drake Hatchling - On Reset - Remove Flag"),
(@ENTRY,0,8,0,38,0,100,1,1,26127,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Nexus Drake Hatchling - On Data Set 1 26127 - Run Script (No Repeat)"),
(@ENTRY,0,9,10,8,0,100,1,46704,0,0,0,11,46703,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nexus Drake Hatchling - On Spellhit 'Raelorasz Fireball' - Cast 'Complete Immolation' (No Repeat)"),
(@ENTRY,0,10,11,61,0,100,0,0,0,0,0,90,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nexus Drake Hatchling - On Spellhit 'Raelorasz Fireball' - Set Flag Standstate Dead (No Repeat)"),
(@ENTRY,0,11,0,61,0,100,0,0,0,0,0,41,4000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nexus Drake Hatchling - On Spellhit 'Raelorasz Fireball' - Despawn In 4000 ms (No Repeat)"),
(@ENTRY,0,12,0,1,0,100,1,0,0,0,0,117,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nexus Drake Hatchling - Ooc - evade on"),
(@ENTRY*100+00,9,0,0,0,0,100,0,0,0,0,0,33,26175,0,0,0,0,0,12,1,0,0,0,0,0,0,"Nexus Drake Hatchling - On Script - Quest Credit ''"),
(@ENTRY*100+00,9,1,0,0,0,100,0,0,0,0,0,28,46607,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nexus Drake Hatchling - On Script - Remove Aura 'Drake Harpoon'"),
(@ENTRY*100+00,9,2,0,0,0,100,0,0,0,0,0,29,0,0,0,0,0,0,19,26175,40,0,0,0,0,0,"Nexus Drake Hatchling - On Script - follow"),
(@ENTRY*100+00,9,3,0,0,0,100,0,3000,3000,0,0,1,0,0,0,0,0,0,19,26117,30,0,0,0,0,0,"Nexus Drake Hatchling - On Script - Say Line 0"),
(@ENTRY*100+00,9,4,0,0,0,100,0,0,0,0,0,86,46704,0,19,26117,30,0,1,0,0,0,0,0,0,0,"Nexus Drake Hatchling - On Script - Cross Cast 'Raelorasz Fireball'"),
(@ENTRY*100+00,9,5,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,19,26117,30,0,0,0,0,0,"Nexus Drake Hatchling - On Script - Say Line 1");

UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=23123;
UPDATE `creature_template` SET `InhabitType`=1 WHERE `entry`=17474;
UPDATE `creature_template` SET `spell2`=0, `spell3`=0, `spell4`=0, `flags_extra` = `flags_extra` |256 WHERE `entry`=17;
UPDATE `creature_template` SET `npcflag`='0' WHERE  `entry`=91904;
UPDATE `creature_template` SET lootid = 62346 WHERE `entry` = 62346 AND lootid = 0;

DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=89783;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 89783, 0, 18, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90408;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90408, 0, 22, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90409;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90409, 0, 60, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90410;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90410, 0, 46, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90411;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90411, 0, 11, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90412;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90412, 0, 37, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90413;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90413, 0, 9, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90414;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90414, 0, 16, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90415;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90415, 0, 9, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90416;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90416, 0, 58, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90417;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90417, 0, 47, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90418;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90418, 0, 32, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90419;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90419, 0, 80, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90420;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90420, 0, 60, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90421;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90421, 0, 19, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90422;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90422, 0, 21, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90423;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90423, 0, 42, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90424;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90424, 0, 37, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90425;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90425, 0, 61, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90429;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90429, 0, 28, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90430;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90430, 0, 45, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90431;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90431, 0, 22, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90432;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90432, 0, 19, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90433;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90433, 0, 49, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90434;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90434, 0, 72, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90435;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90435, 0, 39, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90436;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90436, 0, 43, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90437;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90437, 0, 11, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90438;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90438, 0, 29, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90439;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90439, 0, 78, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90440;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90440, 0, 65, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90441;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90441, 0, 51, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90442;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90442, 0, 19, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90443;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90443, 0, 18, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90444;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90444, 0, 14, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90445;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90445, 0, 11, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90446;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90446, 0, 13, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90447;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90447, 0, 23, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90448;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90448, 0, 39, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90449;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90449, 0, 24, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90450;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90450, 0, 19, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90451;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90451, 0, 34, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90452;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90452, 0, 63, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90453;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90453, 0, 54, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90454;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90454, 0, 6, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90455;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90455, 0, 74, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90456;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90456, 0, 69, 0, 1, 1, 1, 1, '');
DELETE FROM `creature_loot_template` WHERE `Entry`=62346 AND `Item`=90840;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (62346, 90840, 0, 9, 0, 1, 1, 1, 1, '');
