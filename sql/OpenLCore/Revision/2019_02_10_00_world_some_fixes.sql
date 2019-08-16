DELETE FROM gameobject WHERE guid = 184384 AND id = 142075;
UPDATE creature_addon SET path_id = 1802240, emote = 0 WHERE guid = 180224;
UPDATE creature SET position_x = -9462.29, position_y = 87.8151, position_z = 58.4211, orientation = 0.733038, spawndist = 0, MovementType = 2 WHERE guid = 180224;
UPDATE creature_template SET AIName = "SmartAI" WHERE entry = 2046;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 2046 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2046*100, 2046*100+1) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(2046, 0, 0, 0, 34, 0, 100, 0, 2, 1, 0, 0, 80, 2046*100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Andrew Krighton - On WP 1 Reached - Start Script"),
(2046, 0, 1, 0, 34, 0, 100, 0, 2, 3, 0, 0, 80, 2046*100+1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Andrew Krighton - On WP 3 Reached - Start Script"),
(2046*100, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 2.37365, "Andrew Krighton - On Script - Set Orientation (2.37365)"),
(2046*100, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 17, 233, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Andrew Krighton - On Script - Set Emote State (233)"),
(2046*100, 9, 2, 0, 0, 0, 100, 0, 17000, 17000, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Andrew Krighton - On Script - Set Emote State (0)"),
(2046*100+1, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0.733038, "Andrew Krighton - On Script - Set Orientation (0.733038)");
DELETE FROM waypoint_data WHERE id = 1802240;
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay) VALUES
(1802240, 1, -9464.05957, 88.933998, 58.3437, 0),
(1802240, 2, -9464.05957, 88.933998, 58.3437, 20000),
(1802240, 3, -9462.29, 87.8151, 58.4211, 0),
(1802240, 4, -9462.29, 87.8151, 58.4211, 60000);
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 177313 AND id = 46982;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (274684, 274851, 274366, 274636, 274555, 274809, 274883, 274849, 274686, 274374, 274884, 274846, 274691, 274378, 274377);
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (274770, 274431, 274816, 274815, 274808, 274381, 274380, 274383);
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (274735, 274369, 274848, 274364, 274885, 274631, 274553, 274633, 274632, 274688, 274733, 274556);
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (274635, 274685, 274728, 274813, 274371, 274807, 274806, 274774, 274845);
DELETE FROM creature WHERE guid = 318123 AND id = 20075;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (274692, 274850, 274768, 274557, 274854, 274637, 274847, 274810, 274730, 274689);
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (274551, 274771, 274769, 274729, 274552, 274772, 274773, 274844, 274687);
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (274640, 274367, 274736, 274554, 274690, 274365, 274638, 274811, 274732, 274370, 274734, 274775, 274778, 274639, 274812);
UPDATE creature_addon SET path_id = 1776330, emote = 0 WHERE guid = 177633;
UPDATE creature SET position_x = -9464.87, position_y = 93.9896, position_z = 58.5271, orientation = 0, spawndist = 0, MovementType = 2 WHERE guid = 177633;
UPDATE creature_template SET AIName = "SmartAI" WHERE entry = 54;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 54 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (54*100, 54*100+1) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(54, 0, 0, 0, 34, 0, 100, 0, 2, 1, 0, 0, 80, 54*100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Corina Steele - On WP 1 Reached - Start Script"),
(54, 0, 1, 0, 34, 0, 100, 0, 2, 3, 0, 0, 80, 54*100+1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Corina Steele - On WP 3 Reached - Start Script"),
(54*100, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0.811598, "Corina Steele - On Script - Set Orientation (0.811598)"),
(54*100, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 17, 233, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Corina Steele - On Script - Set Emote State (233)"),
(54*100, 9, 2, 0, 0, 0, 100, 0, 27000, 27000, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Corina Steele - On Script - Set Emote State (0)"),
(54*100+1, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 3.124597, "Corina Steele - On Script - Set Orientation (3.124597)"),
(54*100+1, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 17, 69, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Corina Steele - On Script - Set Emote State (69)"),
(54*100+1, 9, 2, 0, 0, 0, 100, 0, 16000, 16000, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Corina Steele - On Script - Set Emote State (0)"),
(54*100+1, 9, 3, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0.00000, "Corina Steele - On Script - Set Orientation (0.00000)");
DELETE FROM waypoint_data WHERE id = 1776330;
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, delay) VALUES
(1776330, 1, -9460.31543, 101.147774, 58.344334, 0),
(1776330, 2, -9460.31543, 101.147774, 58.344334, 30000),
(1776330, 3, -9464.87, 93.9896, 58.5271, 0),
(1776330, 4, -9464.87, 93.9896, 58.5271, 80000);
DELETE FROM `waypoints` WHERE `entry` = 3848;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(3848, 1, 2954.25,-3215.41,169.205, 'Kayneth Stillwind '),
(3848, 2, 2966.65,-3213.95,168.914, 'Kayneth Stillwind '),
(3848, 3, 2954.23,-3215.45,169.206, 'Kayneth Stillwind ');
DELETE FROM `smart_scripts` WHERE `entryorguid` = 3848 AND `source_type` = 0 AND id >= 1;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 3848*100 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(3848,0,1,0,25,0,100,0,0,0,0,0,53,0,3848,1,0,0,0,1,0,0,0,0,0,0,0,"Kayneth Stillwind - On Reset - Start Waypoint"),
(3848,0,2,0,40,0,100,0,1,3848,0,0,54,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kayneth Stillwind - On WP 1 Reached - Pause Waypoint"),
(3848,0,3,4,40,0,100,0,2,3848,0,0,54,20000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kayneth Stillwind - On WP 2 Reached - Pause Waypoint"),
(3848,0,4,0,61,0,100,0,2,3848,0,0,80,3848*100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kayneth Stillwind - On WP 2 Reached - Start Script"),
(3848,0,5,0,40,0,100,0,3,3848,0,0,54,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kayneth Stillwind - On WP 3 Reached - Pause Waypoint"),
(3848*100,9,0,0,0,0,100,0,3000,3000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0.965562,"Kayneth Stillwind - On Script - Set Orientation 0.965562"),
(3848*100,9,1,0,0,0,100,0,3000,3000,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kayneth Stillwind - On Script - Set Emote State 69"),
(3848*100,9,2,0,0,0,100,0,3000,3000,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kayneth Stillwind - On Script - Set Emote State 0"),
(3848*100,9,3,0,0,0,100,0,3000,3000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kayneth Stillwind - On Script - Say Line 0");
DELETE FROM `creature_text` WHERE `CreatureID` = 3848;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `Comment`, `BroadcastTextID`) VALUES 
(3848, 0, 0, 'Putting the bottles away, %s sighs.', 16, 0, 100, 0, 0, 0, 'Kayneth Stillwind', 14108);
UPDATE creature SET position_x = 905.604, position_y = -403.547, position_z = -48.7295, spawndist = 0, MovementType = 2 WHERE guid = 321579 AND id = 9056;
DELETE FROM creature_addon WHERE guid = 321579;
INSERT INTO creature_addon (guid, path_id, bytes2) VALUES
(321579, 3215790, 1);
DELETE FROM `smart_scripts` WHERE `entryorguid` = 9056 AND `source_type` = 0 AND `id` >= 5;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (9056*100, 9056*100+1, 9056*100+2) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(9056,0,5,0,34,0,100,0,2,11,0,0,80,9056*100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Fineous Darkvire - On WP 11 Reached - Start Script"),
(9056,0,6,0,34,0,100,0,2,18,0,0,80,9056*100+1,2,0,0,0,0,1,0,0,0,0,0,0,0,"Fineous Darkvire - On WP 18 Reached - Start Script"),
(9056,0,7,0,34,0,100,0,2,23,0,0,80,9056*100+2,2,0,0,0,0,1,0,0,0,0,0,0,0,"Fineous Darkvire - On WP 23 Reached - Start Script"),
(9056*100,9,0,0,0,0,100,0,3000,3000,0,0,17,133,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fineous Darkvire - On Script - Set Emote State (133)"),
(9056*100,9,1,0,0,0,100,0,10000,10000,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fineous Darkvire - On Script - Set Emote State (0)"),
(9056*100+1,9,0,0,0,0,100,0,3000,3000,0,0,17,173,0,0,0,0,0,0,0,0,0,0,0,0,0,"Fineous Darkvire - On Script - Set Emote State (173)"),
(9056*100+1,9,1,0,0,0,100,0,10000,10000,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fineous Darkvire - On Script - Set Emote State (0)"),
(9056*100+2,9,0,0,0,0,100,0,1000,1000,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fineous Darkvire - On Script - Set Unit Field Bytes 1 (8)"),
(9056*100+2,9,1,0,0,0,100,0,4000,4000,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fineous Darkvire - On Script - Set Unit Field Bytes 1 (0)");
DELETE FROM `waypoint_data` WHERE `id` = 3215790;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`) VALUES 
(3215790, 1, 975.107, -354.152, -69.1219, 0, 0),
(3215790, 2, 984.444, -363.944, -65.9066, 0, 0),
(3215790, 3, 984.38, -372.827, -66.4086, 0, 0),
(3215790, 4, 976.479, -381.185, -63.9267, 0, 0),
(3215790, 5, 962.877, -395.447, -60.8377, 0, 0),
(3215790, 6, 950.417, -408.589, -57.1351, 0, 0),
(3215790, 7, 941.736, -417.331, -55.0396, 0, 0),
(3215790, 8, 931.446, -413.318, -55.3833, 0, 0),
(3215790, 9, 923.409, -403.986, -51.104, 0, 0),
(3215790, 10, 914.499, -394.179, -49.4412, 0, 0),
(3215790, 11, 905.604, -403.547, -48.7295, 0, 0),
(3215790, 12, 905.604, -403.547, -48.7295, 0, 15000),
(3215790, 13, 912.664, -392.947, -49.2744, 0, 0),
(3215790, 14, 918.441, -398, -49.6367, 0, 0),
(3215790, 15, 926.414, -407.296, -52.6216, 0, 0),
(3215790, 16, 930.038, -418.35, -55.3877, 0, 0),
(3215790, 17, 930.151, -424.848, -55.8645, 0, 0),
(3215790, 18, 927.594, -433.715, -56.5236, 0, 0),
(3215790, 19, 927.594, -433.715, -56.5236, 0, 15000),
(3215790, 20, 936.123, -427.94, -56.1072, 0, 0),
(3215790, 21, 939.641, -426.605, -55.7614, 0, 0),
(3215790, 22, 944.406, -426.659, -54.9984, 0, 0),
(3215790, 23, 946.326, -428.053, -54.6023, 0, 0),
(3215790, 24, 946.326, -428.053, -54.6023, 0, 8000),
(3215790, 25, 943.776, -418.105, -54.9468, 0, 0),
(3215790, 26, 947.044, -410.439, -55.9664, 0, 0),
(3215790, 27, 955.107, -403.439, -59.5107, 0, 0),
(3215790, 28, 961.657, -396.63, -60.8377, 0, 0),
(3215790, 29, 968.284, -389.058, -60.8377, 0, 0),
(3215790, 30, 978.015, -379.612, -64.6384, 0, 0),
(3215790, 31, 986.547, -370.816, -66.5624, 0, 0),
(3215790, 32, 974.031, -355.625, -69.1521, 0, 0),
(3215790, 33, 967.597, -349.477, -71.3905, 0, 0),
(3215790, 34, 963.267, -343.735, -71.7394, 0, 0);
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 177848 AND id = 448;
DELETE FROM `creature_text` WHERE `CreatureID` IN (448, 46941);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(448, 0, 0, "More bones to gnaw on...", 12, 0, 100, 0, 0, 0, 1871, 0, 'Hogger'),
(448, 0, 1, "Grrrr... fresh meat!", 12, 0, 100, 0, 0, 0, 1870, 0, 'Hogger'),
(448, 1, 0, "Yipe!  Help Hogger!", 14, 0, 0, 0, 0, 0, 46936, 0, 'Hogger'),
(448, 2, 0, "No hurt Hogger!", 14, 0, 0, 0, 0, 0, 47000, 0, 'Hogger'),
(448, 3, 0, "Hogger is stunned!", 41, 0, 0, 0, 0, 0, 46940, 0, 'Hogger'),
(448, 4, 0, "Hogger is eating!  Stop him!", 41, 0, 0, 0, 0, 0, 46939, 0, 'Hogger'),
(448, 5, 0, "Grrr...", 12, 0, 0, 0, 0, 0, 46937, 0, 'Hogger'),
(448, 6, 0, "Nooooo...", 12, 0, 0, 0, 0, 0, 46938, 0, 'Hogger'),
(46941, 0, 0, "Right away, General!", 12, 0, 0, 0, 0, 0, 147279, 0, 'High Sorcerer Andromath');
UPDATE creature_template SET AIName = "", ScriptName = "npc_hogger" WHERE entry = 448;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 448 AND `source_type` = 0;
