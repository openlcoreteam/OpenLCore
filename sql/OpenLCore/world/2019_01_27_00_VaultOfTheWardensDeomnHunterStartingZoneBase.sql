update `npc_spellclick_spells` set `cast_flags` = 1 where `npc_entry` in (103658, 103655, 96659, 99732, 99731, 99709);
update `creature_template` set `npcflag` = 3 where entry = 92980;

DELETE FROM `script_waypoint` WHERE `entry`=99443 AND `pointid`=1;
REPLACE INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `point_comment`) VALUES (99443, 1, 4446.45, -295.896, -235.339, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=99443 AND `pointid`=2;
REPLACE INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `point_comment`) VALUES (99443, 2, 4456.69, -311.004, -207.667, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=99443 AND `pointid`=3;
REPLACE INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `point_comment`) VALUES (99443, 3, 4460.65, -321.54, -187.735, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=99443 AND `pointid`=4;
REPLACE INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `point_comment`) VALUES (99443, 4, 4454.37, -328.542, -165.568, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=99443 AND `pointid`=5;
REPLACE INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `point_comment`) VALUES (99443, 5, 4447.92, -327.422, -153.965, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=99443 AND `pointid`=6;
REPLACE INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `point_comment`) VALUES (99443, 6, 4448.48, -319.545, -144.887, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=99443 AND `pointid`=7;
REPLACE INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `point_comment`) VALUES (99443, 7, 4454.76, -318.391, -127.121, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=99443 AND `pointid`=8;
REPLACE INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `point_comment`) VALUES (99443, 8, 4455.59, -325.278, -107.721, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=99443 AND `pointid`=9;
REPLACE INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `point_comment`) VALUES (99443, 9, 4449.19, -328.938, -85.2078, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=99443 AND `pointid`=10;
REPLACE INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `point_comment`) VALUES (99443, 10, 4444.79, -325.208, -66.8808, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=99443 AND `pointid`=11;
REPLACE INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `point_comment`) VALUES (99443, 11, 4446.59, -317.991, -27.7739, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=99443 AND `pointid`=12;
REPLACE INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `point_comment`) VALUES (99443, 12, 4451.85, -316.278, -6.79571, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=99443 AND `pointid`=13;
REPLACE INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `point_comment`) VALUES (99443, 13, 4454.85, -320.903, 38.564, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=99443 AND `pointid`=14;
REPLACE INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `point_comment`) VALUES (99443, 14, 4454.28, -324.109, 68.72, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=99443 AND `pointid`=15;
REPLACE INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `point_comment`) VALUES (99443, 15, 4451.35, -326.188, 91.9784, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=99443 AND `pointid`=16;
REPLACE INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `point_comment`) VALUES (99443, 16, 4451.14, -327.823, 136.227, NULL);
DELETE FROM `script_waypoint` WHERE `entry`=99443 AND `pointid`=17;
REPLACE INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `point_comment`) VALUES (99443, 17, 4451.24, -351.073, 129.361, NULL);

DELETE FROM `waypoints` WHERE `entry`=92718 AND `pointid`=1;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (92718, 1, 4325.83, -585.576, -281.745, '4325.832 Y: -585.5758 Z: -281.7451');
DELETE FROM `waypoints` WHERE `entry`=92718 AND `pointid`=2;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (92718, 2, 4325.83, -582.826, -281.495, '4325.832 Y: -582.8258 Z: -281.4951');
DELETE FROM `waypoints` WHERE `entry`=92718 AND `pointid`=3;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (92718, 3, 4325.83, -582.826, -281.495, '4325.832 Y: -582.8258 Z: -281.4951');
DELETE FROM `waypoints` WHERE `entry`=92718 AND `pointid`=4;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (92718, 4, 4325.83, -579.576, -281.495, '4325.832 Y: -582.8258 Z: -281.4951');
DELETE FROM `waypoints` WHERE `entry`=92718 AND `pointid`=5;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (92718, 5, 4325.83, -576.826, -281.495, '4325.832 Y: -582.8258 Z: -281.4951');

DELETE FROM `waypoints` WHERE `entry`=99443 AND `pointid`=1;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (99443, 1, 4446.45, -295.896, -235.339, NULL);
DELETE FROM `waypoints` WHERE `entry`=99443 AND `pointid`=2;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (99443, 2, 4456.69, -311.004, -207.667, NULL);
DELETE FROM `waypoints` WHERE `entry`=99443 AND `pointid`=3;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (99443, 3, 4460.65, -321.54, -187.735, NULL);
DELETE FROM `waypoints` WHERE `entry`=99443 AND `pointid`=4;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (99443, 4, 4454.37, -328.542, -165.568, NULL);
DELETE FROM `waypoints` WHERE `entry`=99443 AND `pointid`=5;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (99443, 5, 4447.92, -327.422, -153.965, NULL);
DELETE FROM `waypoints` WHERE `entry`=99443 AND `pointid`=6;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (99443, 6, 4448.48, -319.545, -144.887, NULL);
DELETE FROM `waypoints` WHERE `entry`=99443 AND `pointid`=7;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (99443, 7, 4454.76, -318.391, -127.121, NULL);
DELETE FROM `waypoints` WHERE `entry`=99443 AND `pointid`=8;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (99443, 8, 4455.59, -325.278, -107.721, NULL);
DELETE FROM `waypoints` WHERE `entry`=99443 AND `pointid`=9;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (99443, 9, 4449.19, -328.938, -85.2078, NULL);
DELETE FROM `waypoints` WHERE `entry`=99443 AND `pointid`=10;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (99443, 10, 4444.79, -325.208, -66.8808, NULL);
DELETE FROM `waypoints` WHERE `entry`=99443 AND `pointid`=11;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (99443, 11, 4446.59, -317.991, -27.7739, NULL);
DELETE FROM `waypoints` WHERE `entry`=99443 AND `pointid`=12;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (99443, 12, 4451.85, -316.278, -6.79571, NULL);
DELETE FROM `waypoints` WHERE `entry`=99443 AND `pointid`=13;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (99443, 13, 4454.85, -320.903, 38.564, NULL);
DELETE FROM `waypoints` WHERE `entry`=99443 AND `pointid`=14;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (99443, 14, 4454.28, -324.109, 68.72, NULL);
DELETE FROM `waypoints` WHERE `entry`=99443 AND `pointid`=15;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (99443, 15, 4451.35, -326.188, 91.9784, NULL);
DELETE FROM `waypoints` WHERE `entry`=99443 AND `pointid`=16;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (99443, 16, 4451.14, -327.823, 136.227, NULL);
DELETE FROM `waypoints` WHERE `entry`=99443 AND `pointid`=17;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (99443, 17, 4451.24, -351.073, 129.361, NULL);
DELETE FROM `waypoints` WHERE `entry`=99631 AND `pointid`=1;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (99631, 1, 4337.47, -590.45, -281.415, NULL);
DELETE FROM `waypoints` WHERE `entry`=99631 AND `pointid`=2;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (99631, 2, 4336.72, -590.7, -281.665, NULL);
DELETE FROM `waypoints` WHERE `entry`=99631 AND `pointid`=3;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (99631, 3, 4334.97, -590.95, -281.665, NULL);
DELETE FROM `waypoints` WHERE `entry`=99631 AND `pointid`=4;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (99631, 4, 4333.97, -590.95, -281.665, NULL);
DELETE FROM `waypoints` WHERE `entry`=99631 AND `pointid`=5;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (99631, 5, 4332.72, -590.7, -281.665, NULL);
DELETE FROM `waypoints` WHERE `entry`=99631 AND `pointid`=6;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (99631, 6, 4331.97, -590.2, -281.665, NULL);
DELETE FROM `waypoints` WHERE `entry`=99631 AND `pointid`=7;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (99631, 7, 4331.97, -589.45, -281.665, NULL);
DELETE FROM `waypoints` WHERE `entry`=99631 AND `pointid`=8;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (99631, 8, 4332.22, -588.95, -281.665, NULL);
DELETE FROM `waypoints` WHERE `entry`=99632 AND `pointid`=1;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (99632, 1, 4315.13, -590.317, -281.665, NULL);
DELETE FROM `waypoints` WHERE `entry`=99632 AND `pointid`=2;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (99632, 2, 4316.88, -590.817, -281.665, NULL);
DELETE FROM `waypoints` WHERE `entry`=99632 AND `pointid`=3;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (99632, 3, 4317.88, -590.817, -281.665, NULL);
DELETE FROM `waypoints` WHERE `entry`=99632 AND `pointid`=4;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (99632, 4, 4318.88, -590.816, -281.665, NULL);
DELETE FROM `waypoints` WHERE `entry`=99632 AND `pointid`=5;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (99632, 5, 4319.63, -590.067, -281.665, NULL);
DELETE FROM `waypoints` WHERE `entry`=99632 AND `pointid`=6;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (99632, 6, 4320.13, -589.317, -281.665, NULL);
DELETE FROM `waypoints` WHERE `entry`=99632 AND `pointid`=7;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (99632, 7, 4319.88, -588.817, -281.665, NULL);
DELETE FROM `waypoints` WHERE `entry`=9963100 AND `pointid`=1;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (9963100, 1, 4331.29, -587.508, -281.862, NULL);
DELETE FROM `waypoints` WHERE `entry`=9963100 AND `pointid`=2;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (9963100, 2, 4331.29, -586.508, -281.862, NULL);
DELETE FROM `waypoints` WHERE `entry`=9963100 AND `pointid`=3;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (9963100, 3, 4331.29, -585.758, -281.862, NULL);
DELETE FROM `waypoints` WHERE `entry`=9963100 AND `pointid`=4;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (9963100, 4, 4331.04, -584.758, -281.862, NULL);
DELETE FROM `waypoints` WHERE `entry`=9963100 AND `pointid`=5;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (9963100, 5, 4330.54, -584.258, -281.862, NULL);
DELETE FROM `waypoints` WHERE `entry`=9963100 AND `pointid`=6;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (9963100, 6, 4328.46, -583.66, -281.729, NULL);
DELETE FROM `waypoints` WHERE `entry`=9963101 AND `pointid`=1;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (9963101, 1, 4330.08, -548.288, -281.75, NULL);
DELETE FROM `waypoints` WHERE `entry`=9963200 AND `pointid`=1;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (9963200, 1, 4319.15, -586.838, -281.673, NULL);
DELETE FROM `waypoints` WHERE `entry`=9963200 AND `pointid`=2;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (9963200, 2, 4320.9, -586.338, -281.673, NULL);
DELETE FROM `waypoints` WHERE `entry`=9963200 AND `pointid`=3;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (9963200, 3, 4321.9, -585.088, -281.673, NULL);
DELETE FROM `waypoints` WHERE `entry`=9963200 AND `pointid`=4;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES (9963200, 4, 4323.64, -583.668, -281.753, NULL);

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=133511 AND `spell_effect`=133509 AND `type`=0;
REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (133511, 133509, 0, 'Make the bar go up');

update `creature_template` set `KillCredit1` = 106241 where `entry` = 92290;
update `creature_template` set `KillCredit1` = 106241 where `entry` = 97632;

update `creature_template` set `VehicleId` = 4372 where `entry` = 99443;
update `creature_template` set `ScriptName` = "npc_vault_of_the_wardens_vampiric_felbat" where `entry` = 99443;
update `creature_template` set `KillCredit1` = 106254 where `entry` = 96682;

update `gameobject` set `state` = 1 where `id` = 244588;
update `creature` set `npcflag` = 3 where `guid` = 20542908;
update `creature_template` set `InhabitType` = 4 where `entry` = 99443;
update `creature_template` set `speed_walk` = 7.5 where `entry` = 99443;
update `creature_template` set `speed_run` = 7.5 where `entry` = 99443;

-- Maiev Shadowsong 92718 SAI
SET @ENTRY := 92718;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,19,0,100,0,38672,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Maiev Shadowsong 92718 - On Quest '' Taken - Say Line 0"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,53,1,92718,0,0,0,0,1,0,0,0,0,0,0,0,"Maiev Shadowsong 92718 - On Quest Taken - Start Waypoint"),
(@ENTRY,0,2,0,58,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Maiev Shadowsong 92718 - On Waypoint Finished - Despawn Instant"),
(@ENTRY,0,3,0,19,0,100,0,40253,0,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Maiev Shadowsong 92718 - On Quest '' Taken - Run Script"),
(@ENTRY,0,4,0,19,0,100,0,38723,0,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Maiev Shadowsong 92718 - On Quest '' Taken - Run Script");

-- Actionlist SAI
SET @ENTRY := 9271800;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,85,223661,0,0,0,0,0,7,0,0,0,0,0,0,0,"Maiev Shadowsong 92718 - On Script - Invoker Cast 'Spell Id223661'"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,85,187864,0,0,0,0,0,7,0,0,0,0,0,0,0,"Maiev Shadowsong 92718 - On Script - Invoker Cast 'Spell Id187864'"),
(@ENTRY,9,2,0,0,0,100,0,100000,100000,0,0,62,1468,0,0,0,0,0,7,0,0,0,4084.27,-298.11,-282.07,3.11803,"Maiev Shadowsong 92718 - On Script - Teleport");

-- Kayn's Cell 103658 SAI
SET @ENTRY := 103658;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,82,16777216,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kayn's Cell 103658 - On Respawn - Add Npc Flag Spellclick"),
(@ENTRY,0,1,2,73,0,100,0,0,0,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kayn's Cell 103658 - On Spellclick - Run Script"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Kayn's Cell 103658 - On Spellclick - Store Targetlist"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,128,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Altruis's Cell 103655 - On Respawn");

-- Actionlist SAI
SET @ENTRY := 10365800;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,1000,1000,0,0,128,3761,1,0,0,0,0,1,0,0,0,0,0,0,0,"Kayn's Cell 103658 - On Script"),
(@ENTRY,9,1,0,0,0,100,0,2000,2000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kayn's Cell 103658 - On Script - Despawn Instant"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,99631,5,0,0,0,0,0,"Kayn's Cell 103658 - On Script - Set Data 0 1"),
(@ENTRY,9,3,0,0,0,100,0,0,0,0,0,100,1,0,0,0,0,0,19,99631,5,0,0,0,0,0,"Kayn's Cell 103658 - On Script - Send Target 1");

-- Kayn Sunfury 99631 SAI
SET @ENTRY := 99631;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,38,0,100,0,0,1,0,0,53,0,99631,0,0,0,0,1,0,0,0,0,0,0,0,"Kayn Sunfury 99631 - On Data Set 0 1 - Start Waypoint"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kayn Sunfury 99631 - On Data Set 0 0 - Say Line 0"),
(@ENTRY,0,2,3,40,0,100,0,8,99631,0,0,17,16,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kayn Sunfury 99631 - On Waypoint 8 Reached - Set Emote State 16"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kayn Sunfury 99631 - On Waypoint 0 Reached - Run Script"),
(@ENTRY,0,4,6,58,0,100,0,0,@ENTRY*100+00,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kayn Sunfury 99631 - On Waypoint Finished - Despawn Instant"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,33,99326,0,0,0,0,0,12,1,0,0,0,0,0,0,"Kayn Sunfury 99631 - On Waypoint Finished - Quest Credit 'Kill Credit: Reunion Finished - Kayn 99326'"),
(@ENTRY,0,7,0,38,0,100,0,0,2,0,0,53,1,@ENTRY*100+01,0,0,0,0,1,0,0,0,0,0,0,0,"Kayn Sunfury 99631 - On Data Set 0 2 - Start Waypoint"),
(@ENTRY,0,8,9,58,0,100,0,0,@ENTRY*100+01,0,0,45,0,1,0,0,0,0,19,92980,10,0,0,0,0,0,"Kayn Sunfury 99631 - On Waypoint Finished - Set Data 0 1"),
(@ENTRY,0,9,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kayn Sunfury 99631 - On Waypoint Finished - Despawn Instant");

-- Actionlist SAI
SET @ENTRY := 9963100;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,2000,2000,0,0,53,0,9963100,0,0,0,0,1,0,0,0,0,0,0,0,"Kayn Sunfury 99631 - On Script - Start Waypoint"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kayn Sunfury 99631 - On Script - Set Emote State 0"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,33,112276,0,0,0,0,0,12,1,0,0,0,0,0,0,"Kayn Sunfury 99631 - On Script - Quest Credit 'Kill Credit: Kayn Picked up Weapons 112276'");

-- Altruis's Cell 103655 SAI
SET @ENTRY := 103655;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,3,11,0,100,0,0,0,0,0,82,16777216,0,0,0,0,0,1,0,0,0,0,0,0,0,"Altruis's Cell 103655 - On Respawn - Add Npc Flag Spellclick"),
(@ENTRY,0,1,2,73,0,100,0,0,0,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Altruis's Cell 103655 - On Spellclick - Run Script"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Altruis's Cell 103655 - On Spellclick - Store Targetlist"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,128,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Altruis's Cell 103655 - On Respawn");

-- Actionlist SAI
SET @ENTRY := 10365500;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,1000,1000,0,0,128,3761,1,0,0,0,0,1,0,0,0,0,0,0,0,"Kayn's Cell 103658 - On Script"),
(@ENTRY,9,1,0,0,0,100,0,2000,2000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Altruis's Cell 103655 - On Script - Despawn Instant"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,99632,20,0,0,0,0,0,"Altruis's Cell 103655 - On Script - Set Data 0 1"),
(@ENTRY,9,3,0,0,0,100,0,0,0,0,0,100,1,0,0,0,0,0,19,99632,20,0,0,0,0,0,"Altruis's Cell 103655 - On Script - Send Target 1");

-- Altruis the Sufferer 99632 SAI
SET @ENTRY := 99632;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,38,0,100,0,0,1,0,0,53,0,99632,0,0,0,0,1,0,0,0,0,0,0,0,"Altruis the Sufferer 99632 - On Data Set 0 1 - Start Waypoint"),
(@ENTRY,0,1,5,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Altruis the Sufferer 99632 - On Data Set 0 0 - Say Line 0"),
(@ENTRY,0,2,3,40,0,100,0,7,99632,0,0,17,16,0,0,0,0,0,1,0,0,0,0,0,0,0,"Altruis the Sufferer 99632 - On Waypoint 7 Reached - Set Emote State 16"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Altruis the Sufferer 99632 - On Waypoint 0 Reached - Run Script"),
(@ENTRY,0,4,6,58,0,100,0,0,@ENTRY*100+00,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Altruis the Sufferer 99632 - On Waypoint Finished - Despawn Instant"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,33,112287,0,0,0,0,0,12,1,0,0,0,0,0,0,"Altruis the Sufferer 99632 - On Waypoint Finished - Quest Credit 'Kill Credit: Reunion Finished - Altruis 112287'"),
(@ENTRY,0,7,0,38,0,100,0,0,2,0,0,53,1,@ENTRY*100+01,0,0,0,0,1,0,0,0,0,0,0,0,"Altruis the Sufferer 99632 - On Data Set 0 2 - Start Waypoint"),
(@ENTRY,0,8,6,58,0,100,0,0,@ENTRY*100+01,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Altruis the Sufferer 99632 - On Waypoint Finished - Despawn Instant");

-- Actionlist SAI
SET @ENTRY := 9963200;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,2000,2000,0,0,53,0,9963200,0,0,0,0,1,0,0,0,0,0,0,0,"Altruis the Sufferer 99632 - On Script - Start Waypoint"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Altruis the Sufferer 99632 - On Script - Set Emote State 0"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,33,112277,0,0,0,0,0,12,1,0,0,0,0,0,0,"Altruis the Sufferer 99632 - On Script - Quest Credit 'Kill Credit: Altruis Picked up Weapons 112277'");

-- Lever SAI
SET @ENTRY := 244923;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,1,20,0,100,0,38672,0,0,0,45,0,2,0,0,0,0,10,20542674,99631,0,0,0,0,0,"Lever - On Quest '' Finished - Set Data 0 2"),
(@ENTRY,1,1,0,61,0,100,0,0,0,0,0,45,0,2,0,0,0,0,10,20542658,99632,0,0,0,0,0,"Lever - On Quest Finished - Set Data 0 2");

-- Kayn Sunfury 92980 SAI
SET @ENTRY := 92980;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,0,1,0,0,80,0,@ENTRY*100+00,0,0,0,0,1,0,0,0,0,0,0,0,"Kayn Sunfury 92980 - On Data Set 0 1 - Run Script");

-- Actionlist SAI
SET @ENTRY := 9298000;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kayn Sunfury 92980 - On Script - Say Line 0"),
(@ENTRY,9,1,0,0,0,100,0,2000,2000,0,0,45,0,1,0,0,0,0,19,92986,10,0,0,0,0,0,"Kayn Sunfury 92980 - On Script - Set Data 0 1"),
(@ENTRY,9,2,0,0,0,100,0,2000,2000,0,0,45,0,1,0,0,0,0,19,96847,20,0,0,0,0,0,"Kayn Sunfury 92980 - On Script - Set Data 0 1");

-- Altruis the Sufferer 92986 SAI
SET @ENTRY := 92986;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,2,19,0,100,0,38689,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Altruis the Sufferer 92986 - On Quest '' Taken - Say Line 1"),
(@ENTRY,0,1,0,38,0,100,0,0,1,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Altruis the Sufferer 92986 - On Data Set 0 1 - Say Line 0"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,85,133508,0,0,0,0,0,7,0,0,0,0,0,0,0,"Altruis the Sufferer 92986 - On Quest Taken - Invoker Cast 'Spell Id133508'"),
(@ENTRY,0,3,0,20,0,100,0,38689,0,0,0,85,133510,0,0,0,0,0,16,0,0,0,0,0,0,0,"Altruis the Sufferer 92986 - On Quest '' Finished - Invoker Cast 'Spell Id133510'");

-- Drelanim Whisperwind 96847 SAI
SET @ENTRY := 96847;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,0,1,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Drelanim Whisperwind 96847 - On Data Set 0 1 - Say Line 0");

-- hackfix i got no idea how to trigger the quest credit else
-- Fel Shocktrooper 92776 SAI
SET @ENTRY := 92776;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,3,0,32,0,100,0,0,0,0,0,85,133511,66,0,0,0,0,7,0,0,0,0,0,0,0,"Fel Shocktrooper 92776 - On Damaged Between 0-0 - Invoker Cast 'Spell Id133511'"),
(@ENTRY,0,4,0,32,0,100,0,0,0,0,0,85,133511,66,0,0,0,0,7,0,0,0,0,0,0,0,"Fel Shocktrooper 92776 - On Damaged Between 0-0 - Invoker Cast 'Spell Id133511'"),
(@ENTRY,0,5,0,32,0,100,0,0,0,0,0,85,133511,66,0,0,0,0,7,0,0,0,0,0,0,0,"Fel Shocktrooper 92776 - On Damaged Between 0-0 - Invoker Cast 'Spell Id133511'"),
(@ENTRY,0,6,0,32,0,100,0,0,0,0,0,85,133511,66,0,0,0,0,7,0,0,0,0,0,0,0,"Fel Shocktrooper 92776 - On Damaged Between 0-0 - Invoker Cast 'Spell Id133511'"),
(@ENTRY,0,7,0,32,0,50,0,0,0,0,0,85,133511,66,0,0,0,0,7,0,0,0,0,0,0,0,"Fel Shocktrooper 92776 - On Damaged Between 0-0 - Invoker Cast 'Spell Id133511'"),
(@ENTRY,0,8,0,32,0,60,0,0,0,0,0,85,133511,66,0,0,0,0,7,0,0,0,0,0,0,0,"Fel Shocktrooper 92776 - On Damaged Between 0-0 - Invoker Cast 'Spell Id133511'"),
(@ENTRY,0,9,0,32,0,70,0,0,0,0,0,85,133511,66,0,0,0,0,7,0,0,0,0,0,0,0,"Fel Shocktrooper 92776 - On Damaged Between 0-0 - Invoker Cast 'Spell Id133511'"),
(@ENTRY,0,10,0,32,0,80,0,0,0,0,0,85,133511,66,0,0,0,0,7,0,0,0,0,0,0,0,"Fel Shocktrooper 92776 - On Damaged Between 0-0 - Invoker Cast 'Spell Id133511'");

-- Savage Felstalker 92782 SAI
SET @ENTRY := 92782;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,3,0,32,0,100,0,0,0,0,0,85,133511,66,0,0,0,0,7,0,0,0,0,0,0,0,"Fel Shocktrooper 92776 - On Damaged Between 0-0 - Invoker Cast 'Spell Id133511'"),
(@ENTRY,0,4,0,32,0,100,0,0,0,0,0,85,133511,66,0,0,0,0,7,0,0,0,0,0,0,0,"Fel Shocktrooper 92776 - On Damaged Between 0-0 - Invoker Cast 'Spell Id133511'"),
(@ENTRY,0,5,0,32,0,100,0,0,0,0,0,85,133511,66,0,0,0,0,7,0,0,0,0,0,0,0,"Fel Shocktrooper 92776 - On Damaged Between 0-0 - Invoker Cast 'Spell Id133511'"),
(@ENTRY,0,6,0,32,0,100,0,0,0,0,0,85,133511,66,0,0,0,0,7,0,0,0,0,0,0,0,"Fel Shocktrooper 92776 - On Damaged Between 0-0 - Invoker Cast 'Spell Id133511'"),
(@ENTRY,0,7,0,32,0,50,0,0,0,0,0,85,133511,66,0,0,0,0,7,0,0,0,0,0,0,0,"Fel Shocktrooper 92776 - On Damaged Between 0-0 - Invoker Cast 'Spell Id133511'"),
(@ENTRY,0,8,0,32,0,60,0,0,0,0,0,85,133511,66,0,0,0,0,7,0,0,0,0,0,0,0,"Fel Shocktrooper 92776 - On Damaged Between 0-0 - Invoker Cast 'Spell Id133511'"),
(@ENTRY,0,9,0,32,0,70,0,0,0,0,0,85,133511,66,0,0,0,0,7,0,0,0,0,0,0,0,"Fel Shocktrooper 92776 - On Damaged Between 0-0 - Invoker Cast 'Spell Id133511'"),
(@ENTRY,0,10,0,32,0,80,0,0,0,0,0,85,133511,66,0,0,0,0,7,0,0,0,0,0,0,0,"Fel Shocktrooper 92776 - On Damaged Between 0-0 - Invoker Cast 'Spell Id133511'");

-- Kayn Sunfury 92984 SAI
SET @ENTRY := 92984;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,38,0,100,0,0,1,0,0,19,33344,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kayn Sunfury 92984 - On Data Set 0 1 - Remove Flag Immune To NPC's"),
(@ENTRY,0,1,3,61,0,100,0,0,0,0,0,2,2804,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kayn Sunfury 92984 - On Data Set 0 0 - Set Faction 2804"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,49,0,0,0,0,0,0,19,92990,20,0,0,0,0,0,"Kayn Sunfury 92984 - On Data Set 0 0 - Start Attacking"),
(@ENTRY,0,4,0,38,0,100,0,0,2,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kayn Sunfury 92984 - On Data Set 0 2 - Run Script"),
(@ENTRY,0,5,0,34,0,100,0,8,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kayn Sunfury 92984 - On Reached Point 0 - Despawn Instant");

-- Actionlist SAI
SET @ENTRY := 9298400;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,5000,5000,0,0,69,0,0,0,0,0,0,10,20542908,92984,0,0,0,0,0,"Kayn Sunfury 92984 - On Script - Move To Closest Creature 'Kayn Sunfury'");

-- Altruis the Sufferer 92985 SAI
SET @ENTRY := 92985;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,38,0,100,0,0,1,0,0,19,33344,0,0,0,0,0,1,0,0,0,0,0,0,0,"Altruis the Sufferer 92985 - On Data Set 0 1 - Remove Flag Immune To NPC's"),
(@ENTRY,0,1,3,61,0,100,0,0,0,0,0,2,2804,0,0,0,0,0,1,0,0,0,0,0,0,0,"Altruis the Sufferer 92985 - On Data Set 0 0 - Set Faction 2804"),
(@ENTRY,0,2,0,11,0,100,0,0,0,0,0,81,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Altruis the Sufferer 92985 - On Respawn - Set Npc Flags Gossip & Questgiver"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,49,0,0,0,0,0,0,19,97632,20,0,0,0,0,0,"Altruis the Sufferer 92985 - On Data Set 0 0 - Start Attacking"),
(@ENTRY,0,4,0,38,0,100,0,0,2,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Altruis the Sufferer 92985 - On Data Set 0 2 - Run Script"),
(@ENTRY,0,5,0,34,0,100,0,8,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Altruis the Sufferer 92985 - On Reached Point 0 - Despawn Instant");

-- Sledge 92990 SAI
SET @ENTRY := 92990;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,45,0,1,0,0,0,0,10,20542913,92984,0,0,0,0,0,"Sledge 92990 - On Aggro - Set Data 0 1"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,10,20542914,92985,0,0,0,0,0,"Sledge 92990 - On Aggro - Set Data 0 1"),
(@ENTRY,0,2,3,4,0,100,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Sledge 92990 - On Aggro - Store Targetlist"),
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,100,1,0,0,0,0,0,19,97632,20,0,0,0,0,0,"Sledge 92990 - On Aggro - Send Target 1"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,97632,20,0,0,0,0,0,"Sledge 92990 - On Aggro - Set Data 0 1"),
(@ENTRY,0,5,6,6,0,100,0,0,0,0,0,45,0,2,0,0,0,0,10,20542913,92984,0,0,0,0,0,"Sledge 92990 - On Just Died - Set Data 0 2"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,45,0,2,0,0,0,0,10,20542914,92985,0,0,0,0,0,"Sledge 92990 - On Just Died - Set Data 0 2");

-- Actionlist SAI
SET @ENTRY := 9298500;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,5000,5000,0,0,69,0,0,0,0,0,0,10,20542909,92985,0,0,0,0,0,"Altruis the Sufferer 92985 - On Script - Move To Closest Creature 'Altruis the Sufferer'");

-- Crusher 97632 SAI
SET @ENTRY := 97632;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,0,1,0,0,49,0,0,0,0,0,0,12,1,0,0,0,0,0,0,"Crusher 97632 - On Data Set 0 1 - Start Attacking");

-- Countermeasures 99732 SAI
SET @ENTRY := 99732;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,204588,0,0,0,33,99732,0,0,0,0,0,7,0,0,0,0,0,0,0,"Countermeasures 99709 - On Spellhit 'Spell Id204588' - Quest Credit 'Countermeasures 99709'");

-- Countermeasures 99731 SAI
SET @ENTRY := 99731;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,204588,0,0,0,33,99731,0,0,0,0,0,7,0,0,0,0,0,0,0,"Countermeasures 99709 - On Spellhit 'Spell Id204588' - Quest Credit 'Countermeasures 99709'");

-- Countermeasures 99709 SAI
SET @ENTRY := 99709;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,204588,0,0,0,33,99709,0,0,0,0,0,7,0,0,0,0,0,0,0,"Countermeasures 99709 - On Spellhit 'Spell Id204588' - Quest Credit 'Countermeasures 99709'");

DELETE FROM `gameobject` WHERE `guid` = 20375675;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(20375675, 243965, 1481, 7705, 7747, 0, 0, 0, 1813.36, 1543.43, 88.3732, 5.74205, 0, 0, 0.267278, -0.963619, 7200, 255, 1, 22423);

DELETE FROM `creature_queststarter` WHERE `id` IN (92718, 92980, 92986, 92984, 97643, 96675, 97644, 97978, 97296, 114562, 116704, 99254);
REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES  
(92718, 38672), -- breaking out
(92980, 38690), -- rise of the illidari
(92986, 38689), -- fel infusion
(92718, 38723), -- stop guldan (Havoc) (https://www.wowhead.com/search?q=stop+gul%27dan)
(92718, 40253), -- stop guldan (Vengeance)
(92984, 39682), -- grand theft felbat
(97643, 39685), -- frozen in time
(97643, 39684), -- beam me up
(96675, 39683), -- forged in fire (Havoc)
(96675, 40254), -- forged in fire (Vengeance)
(96675, 39686), -- all the way up
(97644, 40373), -- -- a new direction (https://www.wowhead.com/search?q=A+New+Direction)
(97644, 39694), -- between us and freedom (havoc H)
(97644, 39688), -- between us and freedom (havoc A)
(97644, 40255), -- between us and freedom (vengeance A)
(97644, 40256), -- between us and freedom (vengeance H)
(97978, 39689), -- Illidari we are leaving (A)
(97978, 39690), -- Illidari we are leaving (H)
(97296, 40976), -- Audience with Warchief
(97296, 39691), -- The Call of War
(114562, 44663), -- Blink of an Eye
(116704, 39047), -- call of the Illidari
(99254, 40816), -- Power To Survive (Altruis)
(99254, 41120), -- Making Arrangements
(99254, 41121), -- By Any Means
(99254, 41119); -- The Hunt

DELETE FROM `creature_questender` WHERE `quest` IN (40253, 38723);
REPLACE INTO `creature_questender` (`id`,`quest`) VALUES (92984, 40253), (92984, 38723);

UPDATE `creature_template` SET `ScriptName` = 'npc_kayn_3' WHERE `entry` = 96665;
UPDATE `creature_template` SET `ScriptName` = 'npc_altruis' WHERE `entry` = 92986;
UPDATE `creature_template` SET `ScriptName` = 'npc_fel_infusion' WHERE `entry` = 92776;
UPDATE `creature_template` SET `ScriptName` = 'npc_fel_infusion' WHERE `entry` = 92782;
UPDATE `creature_template` SET `ScriptName` = 'npc_kayn_cell' WHERE `entry` = 103658;
UPDATE `creature_template` SET `ScriptName` = 'npc_altruis_cell' WHERE `entry` = 103655;
UPDATE `creature_template` SET `ScriptName` = 'npc_korvas_bloodthorn' WHERE `entry` = 97644;
UPDATE `creature_template` SET `ScriptName` = 'npc_khadgar' WHERE `entry` = 97978;
UPDATE `creature_template` SET `ScriptName` = 'npc_maiev_shadowsong' WHERE `entry` = 92718;
UPDATE `creature_template` SET `ScriptName` = 'npc_sledge' WHERE `entry` = 92990;
UPDATE `creature_template` SET `ScriptName` = 'npc_crusher' WHERE `entry` = 97632;
UPDATE `creature_template` SET `ScriptName` = 'npc_immolanth' WHERE `entry` = 96682;
UPDATE `creature_template` SET `ScriptName` = 'npc_vow_ashgolm' WHERE `entry` = 96681;
UPDATE `creature_template` SET `ScriptName` = 'npc_bastillax' WHERE `entry` = 96783;
UPDATE `creature_template` SET `ScriptName` = 'npc_legion_portal' WHERE `entry` = 99501;
UPDATE `creature_template` SET `ScriptName` = 'npc_cyana_immolanth_fight' WHERE `entry` = 96672;
UPDATE `creature_template` SET `ScriptName` = 'npc_khadgars_upgraded_servant' WHERE `entry` = 114562;

UPDATE `creature` SET `ScriptName` = 'npc_kayn_sledge_fight' WHERE `guid` = 20542913;
UPDATE `creature` SET `ScriptName` = 'npc_altruis_crusher_fight' WHERE `guid` = 20542914;
 
UPDATE `gameobject_template` SET `ScriptName` = 'go_reflective_mirror' WHERE `entry` = 244449;
UPDATE `gameobject_template` SET `ScriptName` = 'go_pool_of_judgements' WHERE `entry` = 244455;
UPDATE `gameobject_template` SET `ScriptName` = 'go_warden_ascent' WHERE `entry` = 244644;

UPDATE `creature_template` SET `speed_walk` = 1, `speed_run` = 1 WHERE `entry` = 99632;
UPDATE `creature_template` SET `speed_walk` = 1, `speed_run` = 1 WHERE `entry` = 99631;
UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` IN (92980, 92984);
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` IN (103658, 103655);
UPDATE `creature_template` SET `HealthModifier` = 20 WHERE `entry` = 96682;

UPDATE `quest_template_addon` SET `PrevQuestID` = 38672 WHERE `ID` = 38690; -- Rise of the Illidari
UPDATE `quest_template_addon` SET `PrevQuestID` = 38672, `ScriptName` = 'q_fel_infusion' WHERE `ID` = 38689; -- Fel Infusion
UPDATE `quest_template_addon` SET `ScriptName` = 'q_frozen_in_time' WHERE `ID` = 39685; -- Frozen In Time test script
UPDATE `quest_template_addon` SET `PrevQuestID` = 38690, `NextQuestID` = 39682, `ExclusiveGroup` = 38723 WHERE `ID` = 38723; -- Stop Guldan
UPDATE `quest_template_addon` SET `PrevQuestID` = 38690, `NextQuestID` = 39682, `ExclusiveGroup` = 38723 WHERE `ID` = 40253; -- Stop Guldan

UPDATE `quest_template_addon` SET `PrevQuestID` = 39682, `NextQuestID` = 39686, `ExclusiveGroup` = -39685 WHERE `ID` = 39685; -- Frozen In Time
UPDATE `quest_template_addon` SET `PrevQuestID` = 39682, `NextQuestID` = 39686, `ExclusiveGroup` = -39685 WHERE `ID` = 39684; -- Beam Me Up

UPDATE `quest_template_addon` SET `PrevQuestID` = 39682, `NextQuestID` = 39686, `ExclusiveGroup` = 39683 WHERE `ID` = 39683; -- Forged In Fire
UPDATE `quest_template_addon` SET `PrevQuestID` = 39682, `NextQuestID` = 39686, `ExclusiveGroup` = 39683 WHERE `ID` = 40254; -- Forged In Fire

UPDATE `quest_template_addon` SET `PrevQuestID` = 39686 WHERE `ID` = 40373; -- A New Direction

UPDATE `quest_template_addon` SET `PrevQuestID` = 40373, `NextQuestID` = 39690, `ExclusiveGroup` = 39694 WHERE `ID` = 39694; -- between us and freedom
UPDATE `quest_template_addon` SET `PrevQuestID` = 40373, `NextQuestID` = 39689, `ExclusiveGroup` = 39694 WHERE `ID` = 39688; -- between us and freedom
UPDATE `quest_template_addon` SET `PrevQuestID` = 40373, `NextQuestID` = 39689, `ExclusiveGroup` = 39694 WHERE `ID` = 40255; -- between us and freedom
UPDATE `quest_template_addon` SET `PrevQuestID` = 40373, `NextQuestID` = 39690, `ExclusiveGroup` = 39694 WHERE `ID` = 40256; -- between us and freedom

UPDATE `creature_loot_template` SET `Chance` = 82, `QuestRequired` = 0, `LootMode` = 1, `GroupId` = 0, `MinCount` = 1, `MaxCount` = 1 WHERE `Entry` = 97370 AND `Item` = 133313;

DELETE FROM `spell_script_names` WHERE `spell_id` = 204588; -- activate countermeasures
DELETE FROM `npc_spellclick_spells` WHERE `spell_id` = 204588;
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (204588, 'spell_activate_countermeasure');
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (99709, 204588, 1, 0), (99731, 204588, 1, 0), (99732, 204588, 1, 0);

DELETE FROM `gameobject` WHERE `guid` = 210120188; -- Vault of Silence door
DELETE FROM `gameobject` WHERE `guid` = 20373116; -- small chest
DELETE FROM `gameobject` WHERE `guid` = 20373163; -- small chest
REPLACE INTO `gameobject` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnDifficulties`,`phaseUseFlags`,`PhaseId`,`PhaseGroup`,`terrainSwapMap`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`,`isActive`,`ScriptName`,`VerifiedBuild`) VALUES
(210120188, 244925, 1468, 7814, 7814, 0, 0, 0, 0, -1, 4325.66, -576.49, -281.783, 4.65537, -0, -0, -0.726975, 0.686664, 300, 255, 1, 0, '', 22423);
DELETE FROM `gameobject` WHERE `guid` IN (20373129, 20373134); -- Vault of Betrayer doors
UPDATE `gameobject` SET `state` = 1 WHERE `guid` IN (20373013, 20373001, 20373016, 20373071, 20373066, 20373082, 20372994, 20373064);
DELETE FROM `creature` WHERE `guid` IN (20542659, 20542665);

DELETE FROM `creature_text` WHERE `CreatureID` IN (92718, 99632, 99631, 96682);
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `Comment`) VALUES
(92718, 0, 0, 'I will need your help to stop Gul\'dan. Free the other Illidari, quickly!', 12, 0, 100, 0, 0, 57338, 0, 0, 'Maiev to Player'),
(99632, 0, 0, 'How many years were wasted in that cell?', 12, 0, 100, 0, 0, 57343, 0, 0, 'Altruis on freed'),
(99631, 0, 0, 'I am awake? How is this possible?', 12, 0, 100, 0, 0, 57294, 0, 0, 'Kayn on freed'),
(99631, 1, 0, 'Why did you let THAT one free? He opposed Lord Illidan!', 12, 0, 100, 0, 0, 57320, 0, 0, 'Kayn\'s response of Altruis freed'),
(99632, 1, 0, 'It has been a long time, Kayn. I still believe in the cause. But, I do not blindly follow anyone... even Illidan.', 12, 0, 100, 0, 0, 57285, 0, 0, 'Altruis to Kayn'),
(99631, 2, 0, 'Why would Maiev free us? There could only be one reason...', 12, 0, 100, 0, 0, 57387, 0, 0, 'Kayns to Player when quest rewarded'),
(96682, 0, 0, 'Join me, demon hunters. I will increase your power beyond imagining!', 12, 0, 100, 0, 0, 57358, 0, 0, 'Immolanth on 60 pct'),
(96682, 1, 0, 'The wardens would keep us rotting here forever. Why do you fight on their side?', 12, 0, 100, 0, 0, 57359, 0, 0, 'Immolanth on 20 pct');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=92718;
DELETE FROM `smart_scripts` WHERE `entryorguid`=92718 AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(92718,0,0,0,19,0,100,0,38672,0,0,0,66,0,0,0,0,0,0,21,5,0,0,0,0,0,0,"Maiev - On Quest 'Breaking Out' Taken - Set Orientation Closest Player"),
(92718,0,1,0,19,0,100,0,38672,0,0,0,1,0,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Maiev - On Quest 'Breaking Out' Taken - Say Line 0");

UPDATE `quest_template_addon` SET `ScriptName`='q_breaking_out' WHERE `ID`=38672;
UPDATE `creature_template` SET `ScriptName`='' WHERE `entry`=92718;

-- Wrath Lord Lekos SAI
SET @LORD_LEKOS := 97069;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@LORD_LEKOS;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@LORD_LEKOS AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@LORD_LEKOS,0,0,0,0,0,100,1,0,0,0,0,1,0,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Wrath-Lord Lekos - In Combat - Say Line 0 (No Repeat)"),
(@LORD_LEKOS,0,1,0,0,0,100,0,5000,8000,12000,15000,11,200918,0,0,0,0,0,2,0,0,0,0,0,0,0,"Wrath-Lord Lekos - In Combat - Cast 'Fel Shield Blast'"),
(@LORD_LEKOS,0,2,0,0,0,100,0,10000,10000,10000,25000,11,200929,0,0,0,0,0,2,0,0,0,0,0,0,0,"Wrath-Lord Lekos - In Combat - Cast 'Furious Roar'"),
(@LORD_LEKOS,0,3,0,2,0,100,0,0,40,22000,25000,11,200936,2,0,0,0,0,1,0,0,0,0,0,0,0,"Wrath-Lord Lekos - Between 0-40% Health - Cast 'Spiked Bulwark'");

DELETE FROM `creature_text` WHERE `CreatureID` = 97069;
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(97069, 0, 0, 'Lord Gul\'dan will lead us to victory. You cannot stop us.', 12, 0, 100, 0, 0, 57312, 0, 0, 'Wrath Lord Lekos to Player'),
(97069, 0, 1, 'Your world is the last standing. It, too, will be purged.', 12, 0, 100, 0, 0, 57298, 0, 0, 'Wrath Lord Lekos to Player'),
(97069, 0, 2, 'All goes according to HIS plan.', 12, 0, 100, 0, 0, 57392, 0, 0, 'Wrath Lord on Death');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 19 AND `SourceGroup` =0 AND `SourceEntry` IN (38723, 40253, 39683, 40254, 39694, 39688, 40255, 40256) AND `ConditionValue1` IN (212612, 212613);
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
('19', '0', '38723', '0', '0', '1', '0', '212612', '0', '0', '0', '0', '0', '', 'Allow Quest "Stop Guldan" 38723 only for Havoc DH'),
('19', '0', '40253', '0', '0', '1', '0', '212613', '0', '0', '0', '0', '0', '', 'Allow Quest "Stop Guldan" only for Vengeance DH'),
('19', '0', '39683', '0', '0', '1', '0', '212612', '0', '0', '0', '0', '0', '', 'Allow Quest "Forged In Fire" only for Havoc DH'),
('19', '0', '40254', '0', '0', '1', '0', '212613', '0', '0', '0', '0', '0', '', 'Allow Quest "Forged In Fire" only for Vengeance DH'),
('19', '0', '39694', '0', '0', '1', '0', '212612', '0', '0', '0', '0', '0', '', 'Allow Quest "Between Us And Freedom" only for Havoc DH'),
('19', '0', '39688', '0', '0', '1', '0', '212612', '0', '0', '0', '0', '0', '', 'Allow Quest "Between Us And Freedom" only for Havoc DH'),
('19', '0', '40255', '0', '0', '1', '0', '212613', '0', '0', '0', '0', '0', '', 'Allow Quest "Between Us And Freedom" only for Vengeance DH'),
('19', '0', '40256', '0', '0', '1', '0', '212613', '0', '0', '0', '0', '0', '', 'Allow Quest "Between Us And Freedom" only for Vengeance DH');

-- Kethrazor SAI
SET @KETHRAZOR := 96997;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@KETHRAZOR;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@KETHRAZOR AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@KETHRAZOR,0,0,0,0,0,100,1,0,0,0,0,1,1,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Kethrazor - In Combat - Say Line 0 (No Repeat)"),
(@KETHRAZOR,0,1,0,0,0,100,0,5000,5000,12000,15000,11,201038,0,0,0,0,0,2,0,0,0,0,0,0,0,"Kethrazor - In Combat - Cast 'Mind Spike'"),
(@KETHRAZOR,0,2,0,0,0,100,0,10000,10000,18000,25000,11,201033,0,0,0,0,0,2,0,0,0,0,0,0,0,"Kethrazor - In Combat - Cast 'Seeping Eyes of Kethrazor'"),
(@KETHRAZOR,0,3,0,0,0,100,0,20000,22000,30000,32000,11,200999,0,0,0,0,0,2,0,0,0,0,0,0,0,"Kethrazor - In Combat - Cast 'Explosive Eyes of Kethrazor'"),
(@KETHRAZOR,0,4,0,6,0,100,0,0,0,0,0,1,1,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Kethrazor - On Just Died - Say Line 1");

DELETE FROM `creature_text` WHERE `CreatureID` = 96997;
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
('96997', '0', '0', 'Your efforts are fruitless, demon hunter. Lord Gul\'dan sees all.', '14', '0', '100', '0', '0', '57341', '0', '0', 'Kethrazor to Player'),
('96997', '1', '0', 'In the end, you will all succumb to the Legion...', '14', '0', '100', '0', '0', '57368', '0', '0', 'Kethrazor to Player');

-- Seeping Inquisitor Eye SAI
SET @SEEPING_EYE := 101907;
UPDATE `creature_template` SET `faction`=90, `AIName`="SmartAI" WHERE `entry`=@SEEPING_EYE;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@SEEPING_EYE AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@SEEPING_EYE,0,0,0,0,0,100,0,0,0,0,0,11,201035,0,0,0,0,0,2,0,0,0,0,0,0,0,"Seeping Inquisitor Eye - In Combat - Cast 'Some Aura'");

-- Explosive Inquisitor Eye SAI
SET @EXPLOSIVE_EYE := 101901;
UPDATE `creature_template` SET `faction`=90, `AIName`="SmartAI" WHERE `entry`=@EXPLOSIVE_EYE;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@EXPLOSIVE_EYE AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@EXPLOSIVE_EYE,0,0,0,0,0,100,1,0,0,0,0,11,201028,0,0,0,0,0,1,0,0,0,0,0,0,0,"Explosive Inquisitor Eye - In Combat - Cast 'Explosive Shadows' (No Repeat)"),
(@EXPLOSIVE_EYE,0,1,0,0,0,100,1,0,0,0,0,11,201015,0,0,0,0,0,1,0,0,0,0,0,0,0,"Explosive Inquisitor Eye - In Combat - Cast 'Fixate' (No Repeat)");

-- Glazer SAI
SET @GLAZER := 96680;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@GLAZER;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GLAZER AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GLAZER,0,0,0,1,0,100,1,1000,1000,1000,1000,11,191915,2,0,0,0,0,1,0,0,0,0,0,0,0,"Glazer - Out of Combat - Cast 'Focusing' (No Repeat)"),
(@GLAZER,0,1,0,1,0,100,0,2000,2000,15000,17000,11,196460,2,0,0,0,0,1,0,0,0,0,0,0,0,"Glazer - Out of Combat - Cast 'Lingering Gaze' (No Repeat)"),
(@GLAZER,0,2,0,1,0,100,0,3000,4000,20000,21000,11,196462,2,0,0,0,0,1,0,0,0,0,0,0,0,"Glazer - Out of Combat - Cast 'Pulse'");

-- Altruis near Glazer SAI
SET @ALTRUIS := 102391;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ALTRUIS;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ALTRUIS AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ALTRUIS,0,0,0,10,0,100,1,1,30,0,0,1,0,10000,0,0,0,0,18,30,0,0,0,0,0,0,"Altruis - Within 1-30 Range Out of Combat LoS - Say Line 0 (No Repeat)"),
(@ALTRUIS,0,1,0,20,0,100,0,39684,0,0,0,1,1,10000,0,0,0,0,1,0,0,0,0,0,0,0,"Altruis - On Quest 'Beam Me Up' Completed - Say Line 1");

DELETE FROM `creature_text` WHERE `CreatureID` = @ALTRUIS;
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `Comment`) VALUES
(@ALTRUIS,0,0,'$n, the creature\'s destructive beam is focused upon me. Redirect the final mirror to shatter its shield!',12,0,100,0,0,57332,0,0,'Altruis to Player'),
(@ALTRUIS,1,0,'The shield is broken! Quickly, everyone out while the creature is stunned!',12,0,100,0,0,57333,0,0,'Altruis to Player');

-- Mirana Starlight SAI
SET @MIRANA := 99451;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@MIRANA;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@MIRANA AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@MIRANA,0,0,0,0,0,100,0,0,0,3400,4700,11,195783,64,0,0,0,0,2,0,0,0,0,0,0,0,"Mirana - In Combat - Cast 'Fan of Blades'"),
(@MIRANA,0,1,0,0,0,100,0,5000,8000,12000,15000,11,191026,0,0,0,0,0,2,0,0,0,0,0,0,0,"Mirana - In Combat - Cast 'Throwing Blade'");

-- Drelanin Whisperwind SAI
SET @DRELANIN := 96847;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@DRELANIN;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@DRELANIN AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@DRELANIN,0,0,0,10,0,100,1,1,15,0,0,1,0,10000,0,0,0,0,18,15,0,0,0,0,0,0,"Drelanin - Within 1-15 Range Out of Combat LoS - Say Line 0 (No Repeat)"),
(@DRELANIN,0,1,0,0,0,100,0,5000,8000,18000,22000,11,189469,0,0,0,0,0,2,0,0,0,0,0,0,0,"Drelanin - In Combat - Cast 'Turn Kick'"),
(@DRELANIN,0,2,0,0,0,100,0,2000,5000,12000,15000,11,195783,0,0,0,0,0,2,0,0,0,0,0,0,0,"Drelanin - In Combat - Cast 'Fan of Blades'");

DELETE FROM `creature_text` WHERE `CreatureID` = @DRELANIN;
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `Comment`) VALUES
(@DRELANIN,0,0,'I hope Maiev was right about freeing you, demon hunter. Go on - I will hold the line.',12,0,100,0,0,57291,0,0,'Drelanin to Player');

SET @JACE := 96653;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@JACE;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@JACE AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@JACE,0,0,0,10,0,100,1,1,30,0,0,1,0,10000,0,0,0,0,18,30,0,0,0,0,0,0,"Jace Darkweaver - Within 1-30 Range Out of Combat LoS - Say Line 0 (No Repeat)");

DELETE FROM `creature_text` WHERE `CreatureID` = @JACE;
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `Comment`) VALUES
(@JACE,0,0,'Kayn and Altruis have already gone ahead. Take this felbat and join them.',12,0,100,0,0,57299,0,0,'Jace Darkweaver to Player');

SET @KORVAS_1 := 97643;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@KORVAS_1;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@KORVAS_1 AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@KORVAS_1,0,0,0,10,0,100,1,1,15,0,0,1,0,10000,0,0,0,0,18,15,0,0,0,0,0,0,"Korvas Bloodthorn - Within 1-15 Range Out of Combat LoS - Say Line 0 (No Repeat)"),
(@KORVAS_1,0,1,0,19,0,100,0,39685,0,0,0,1,1,10000,0,0,0,0,1,0,0,0,0,0,0,0,"Korvas Bloodthorn - On Quest 'Frozen In Time' Taken - Say Line 1"),
(@KORVAS_1,0,2,1,52,0,100,0,1,@KORVAS_1,0,0,1,2,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Korvas Bloodthorn - On Text 1 Over - Say Line 2");

DELETE FROM `creature_text` WHERE `CreatureID` = @KORVAS_1;
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `Comment`) VALUES
(@KORVAS_1,0,0,'This is sheer madness! The Wardens have lost control of their prison',12,0,100,0,0,57323,0,0,'Korvas Bloodthorn to Player'),
(@KORVAS_1,1,0,'Aside from us, the most powerful prisoners were sealed on this level. WERE being the operative word.',12,0,100,0,0,57324,0,0,'Korvas Bloodthorn to Player'),
(@KORVAS_1,2,0,'We cannot afford to lose Kayn and Altruis here. Waste no time and help them, quickly!',12,0,100,0,0,57397,0,0,'Korvas Bloodthorn to Player');

-- Cyana near Immolanth SAI
SET @CYANA := 96672;
DELETE FROM `creature_text` WHERE `CreatureID` = @CYANA;
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `Comment`) VALUES
(@CYANA,0,0,'That was too close for my liking. $n, the demon\'s power is yours.',12,0,100,0,0,57357,0,0,'Cyana to Player');

-- Kayn near Ashgolm SAI
SET @KAYN_1 := 102393;
DELETE FROM `creature_text` WHERE `CreatureID` = @KAYN_1;
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `Comment`) VALUES
(@KAYN_1,0,0,'Well done! The monster is contained. Let\'s meet up with the others.',12,0,100,0,0,55229,0,0,'Kayn to Player');

SET @ALLARI_1 := 96675;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ALLARI_1;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ALLARI_1 AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ALLARI_1,0,0,0,19,0,100,0,39686,0,0,0,1,1,10000,0,0,0,0,1,0,0,0,0,0,0,0,"Allari the Souleater - On Quest 'All the way Up' Taken - Say Line 0");

DELETE FROM `creature_text` WHERE `CreatureID` = @ALLARI_1;
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `Comment`) VALUES
(@ALLARI_1,0,0,'The elevator will be here shortly. The others are waiting for you above.',12,0,100,0,0,57356,0,0,'Allari the Souleater to Player');

SET @KORVAS_2 := 97644;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@KORVAS_2;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@KORVAS_2 AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@KORVAS_2,0,0,0,10,0,100,1,1,15,0,0,1,0,10000,0,0,0,0,18,15,0,0,0,0,0,0,"Korvas Bloodthorn - Within 1-15 Range Out of Combat LoS - Say Line 0 (No Repeat)"),
(@KORVAS_2,0,1,0,19,0,100,0,39694,0,0,0,1,1,10000,0,0,0,0,1,0,0,0,0,0,0,0,"Korvas Bloodthorn - On Quest 'Between Us And Freedom - Say Line 1"),
(@KORVAS_2,0,2,0,19,0,100,0,39688,0,0,0,1,1,10000,0,0,0,0,1,0,0,0,0,0,0,0,"Korvas Bloodthorn - On Quest 'Between Us And Freedom - Say Line 1"),
(@KORVAS_2,0,3,0,19,0,100,0,40255,0,0,0,1,1,10000,0,0,0,0,1,0,0,0,0,0,0,0,"Korvas Bloodthorn - On Quest 'Between Us And Freedom - Say Line 1"),
(@KORVAS_2,0,4,0,19,0,100,0,40256,0,0,0,1,1,10000,0,0,0,0,1,0,0,0,0,0,0,0,"Korvas Bloodthorn - On Quest 'Between Us And Freedom - Say Line 1");

DELETE FROM `creature_text` WHERE `CreatureID` = @KORVAS_2;
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `Comment`) VALUES
(@KORVAS_2,0,0,'Stop this foolish bickering. We do not have time for this!',12,0,100,0,0,57295,0,0,'Korvas Bloodthorn to Player'),
(@KORVAS_2,1,0,'Let\'s keep moving. The others are in the chamber just ahead.',12,0,100,0,0,57361,0,0,'Korvas Bloodthorn to Player');

SET @KHADGAR_1 := 97978;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@KHADGAR_1;
DELETE FROM `creature_text` WHERE `CreatureID` = @KHADGAR_1;
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `Comment`) VALUES
(@KHADGAR_1,0,0,'I am Arhmage Khadgar, leader of the Kirin Tor.',12,0,100,0,0,57302,0,0,'Khadgar to Player'),
(@KHADGAR_1,1,0,'Demon Hunters, Azeroth needs your help.',12,0,100,0,0,57364,0,0,'Khadgar to Player');

-- Stop Guldan Scene
DELETE FROM `scene_template` WHERE `SceneId`=1016 AND `ScriptPackageID`=1423;
REPLACE INTO `scene_template` (`SceneId`,`Flags`,`ScriptPackageID`,`ScriptName`) VALUES
(1016,26,1423,'scene_guldan_stealing_illidan_corpse');

DELETE FROM `gameobject_template` WHERE `entry` IN (246559, 246560, 246562, 246561, 246557, 246556, 246555, 246558);
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `RequiredLevel`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
('246559','3','33263','Small Treasure Chest','','Opening','','1','57','246559','1','0','0','0','0','0','0','0','0','0','0','1','21400','0','0','0','110','3','0','0','0','0','0','0','0','0','0','0','64310','0','0','98','','','22423'),
('246560','3','33263','Small Treasure Chest','','Opening','','1','57','246560','1','0','0','0','0','0','0','0','0','0','0','1','21400','0','0','0','110','3','0','0','0','0','0','0','0','0','0','0','64311','0','0','98','','','22423'),
('246562','3','33263','Small Treasure Chest','','Opening','','1','57','246562','1','0','0','0','0','0','0','0','0','0','0','1','21400','0','0','0','110','3','0','0','0','0','0','0','0','0','0','0','64313','0','0','98','','','22423'),
('246561','3','33263','Small Treasure Chest','','Opening','','1','57','246561','1','0','0','0','0','0','0','0','0','0','0','1','21400','0','0','0','110','3','0','0','0','0','0','0','0','0','0','0','64312','0','0','98','','','22423'),
('246557','3','33263','Small Treasure Chest','','Opening','','1','57','246557','1','0','0','0','0','0','0','0','0','0','0','1','21400','0','0','0','110','3','0','0','0','0','0','0','0','0','0','0','64308','0','0','98','','','22423'),
('246556','3','33263','Small Treasure Chest','','Opening','','1','57','246556','1','0','0','0','0','0','0','0','0','0','0','1','21400','0','0','0','110','3','0','0','0','0','0','0','0','0','0','0','64307','0','0','98','','','22423'),
('246555','3','33263','Small Treasure Chest','','Opening','','1','57','246555','1','0','0','0','0','0','0','0','0','0','0','1','21400','0','0','0','110','3','0','0','0','0','0','0','0','0','0','0','64306','0','0','98','','','22423'),
('246558','3','33263','Small Treasure Chest','','Opening','','1','57','246558','1','0','0','0','0','0','0','0','0','0','0','1','21400','0','0','0','110','3','0','0','0','0','0','0','0','0','0','0','64309','0','0','98','','','22423');

DELETE FROM `gameobject_loot_template` WHERE `entry` IN (246559, 246560, 246562, 246561, 246557, 246556, 246555, 246558);
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `reference`, `chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('246560', '129196', '0', '100', '0', '1', '1', '2', '3', 'Legion Heartstone'),
('246560', '129210', '0', '99', '0', '1', '0', '2', '2', 'Fel Crystal Fragments'),
('246562', '129210', '0', '100', '0', '1', '0', '2', '3', 'Fel Crystal Fragments'),
('246559', '129196', '0', '100', '0', '1', '0', '2', '4', 'Legion Heartstone'),
('246561', '129196', '0', '100', '0', '1', '1', '2', '3', 'Legion Heartstone'),
('246561', '129210', '0', '99', '0', '1', '0', '2', '2', 'Fel Crystal Fragments'),
('246557', '129196', '0', '100', '0', '1', '1', '2', '3', 'Legion Heartstone'),
('246557', '129210', '0', '99', '0', '1', '0', '2', '2', 'Fel Crystal Fragments'),
('246555', '129210', '0', '100', '0', '1', '0', '2', '3', 'Fel Crystal Fragments'),
('246558', '129196', '0', '100', '0', '1', '1', '2', '3', 'Legion Heartstone'),
('246558', '129210', '0', '99', '0', '1', '0', '2', '2', 'Fel Crystal Fragments'),
('246556', '129210', '0', '100', '0', '1', '0', '2', '3', 'Fel Crystal Fragments');

UPDATE `gameobject_template` SET `name`='Small Treasure Chest', `castBarCaption`='Opening' WHERE `entry` IN (244689, 246309, 246353);
UPDATE `creature` SET `spawntimesecs`=120 WHERE `id`=92776 AND `map`=1468;
UPDATE `creature` SET `spawntimesecs`=120 WHERE `id`=92782 AND `map`=1468;

DELETE FROM `graveyard_zone` WHERE `GhostZone` IN (7871, 7866, 7864, 7819, 7873);
REPLACE INTO `graveyard_zone` (`ID`, `GhostZone`, `Faction`, `Comment`) VALUES
(5135, 7871, 0, 'TombOfThePenitent'),
(5136, 7866, 0, 'TheDemonWard'),
(5137, 7864, 0, 'ChamberOfNight'),
(5344, 7819, 0, 'VaultOfTheBetrayer - Corpse Catcher 1'),
(5345, 7819, 0, 'VaultOfTheBetrayer - Corpse Catcher 2'),
(5346, 7819, 0, 'VaultOfTheBetrayer - Corpse Catcher 3'),
(5347, 7819, 0, 'VaultOfTheBetrayer - Corpse Catcher 4'),
(5348, 7819, 0, 'VaultOfTheBetrayer - Corpse Catcher 5'),
(5349, 7819, 0, 'VaultOfTheBetrayer - Corpse Catcher 6'),
(5350, 7819, 0, 'VaultOfTheBetrayer - Corpse Catcher 7'),
(5356, 7873, 0, 'VaultOfSilence');

SET @CGUID := 280000000;
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+250 AND @CGUID+260;
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+250, 39660, 1468, 7814, 7871, 0, 0, 0, 0, 0, 4330.025, -315.0139, -283.7572, 5.090357, 120, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- Spirit Healer (Area: VotW: TombOfThePenitent - Difficulty: 0)
(@CGUID+251, 39660, 1468, 7814, 7873, 0, 0, 0, 0, 0, 4326.024, -598.0903, -281.8333, 5.090357, 120, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- Spirit Healer (Area: VotW: VaultOfSilence - Difficulty: 0)
(@CGUID+252, 39660, 1468, 7814, 7866, 0, 0, 0, 0, 0, 4442.008, -392.8559, 125.8984, 5.090357, 120, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- Spirit Healer (Area: VotW: TheDemonWard - Difficulty: 0)
(@CGUID+253, 39660, 1468, 7814, 7864, 0, 0, 0, 0, 0, 4184.598, -442.408, 269.8069, 5.090357, 120, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- Spirit Healer (Area: VotW: ChamberOfNight - Difficulty: 0)
(@CGUID+254, 39660, 1468, 7814, 7819, 0, 0, 0, 0, 0, 4079.568, -326.8594, -281.1126, 5.090357, 120, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- Spirit Healer (Area: VotW: VaultOfTheBetrayer - Catcher1 - Difficulty: 0)
(@CGUID+255, 39660, 1468, 7814, 7819, 0, 0, 0, 0, 0, 4050.474, -328.2865, -281.46, 5.090357, 120, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- Spirit Healer (Area: VotW: VaultOfTheBetrayer - Catcher2 - Difficulty: 0)
(@CGUID+256, 39660, 1468, 7814, 7819, 0, 0, 0, 0, 0, 4021.382, -327.4861, -281.1126, 5.090357, 120, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- Spirit Healer (Area: VotW: VaultOfTheBetrayer - Catcher3 - Difficulty: 0)
(@CGUID+257, 39660, 1468, 7814, 7819, 0, 0, 0, 0, 0, 4020.778, -297.4115, -281.46, 5.090357, 120, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- Spirit Healer (Area: VotW: VaultOfTheBetrayer - Catcher4 - Difficulty: 0)
(@CGUID+258, 39660, 1468, 7814, 7819, 0, 0, 0, 0, 0, 4023.035, -270.283, -281.1126, 5.090357, 120, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- Spirit Healer (Area: VotW: VaultOfTheBetrayer - Catcher5 - Difficulty: 0)
(@CGUID+259, 39660, 1468, 7814, 7819, 0, 0, 0, 0, 0, 4050.985, -268.4618, -281.4599, 5.090357, 120, 0, 0, 0, 0, 0, 0, 0, 0, 25549), -- Spirit Healer (Area: VotW: VaultOfTheBetrayer - Catcher6 - Difficulty: 0)
(@CGUID+260, 39660, 1468, 7814, 7819, 0, 0, 0, 0, 0, 4079.085, -269.4063, -281.1126, 5.090357, 120, 0, 0, 0, 0, 0, 0, 0, 0, 25549); -- Spirit Healer (Area: VotW: VaultOfTheBetrayer - Catcher7 - Difficulty: 0)
UPDATE `creature` SET `npcflag`=16384 WHERE `guid` BETWEEN @CGUID+250 AND @CGUID+260;

UPDATE `creature` SET `npcflag`=0 WHERE `guid`=20542913;

-- Altruis the Sufferer 3 SAI
SET @ALRTUIS_FEL_INFUSION := 92986;
UPDATE `creature` SET `spawntimesecs`=15 WHERE `guid`=20542724 AND `id`=@ALRTUIS_FEL_INFUSION;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ALRTUIS_FEL_INFUSION;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ALRTUIS_FEL_INFUSION AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ALRTUIS_FEL_INFUSION,0,0,0,10,0,100,1,1,15,25000,25000,1,0,10000,0,0,0,0,18,15,0,0,0,0,0,0,"Altruis the Sufferer - Within 1-15 Range Out of Combat LoS - Say Line 1 (No Repeat)"),
(@ALRTUIS_FEL_INFUSION,0,1,0,19,0,100,0,38689,0,0,0,1,0,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Altruis the Sufferer - On Quest 'Fel Infusion' Taken - Say Line 0"),
(@ALRTUIS_FEL_INFUSION,0,2,2,52,0,100,0,0,@ALRTUIS_FEL_INFUSION,0,0,12,@ALRTUIS_FEL_INFUSION*100+00,6,0,0,0,0,8,0,0,0,4321.75,-547.861,-281.497,1.68118,"Altruis the Sufferer - On Text 0 Over - Summon Creature 'Altruis the Sufferer'"),
(@ALRTUIS_FEL_INFUSION,0,3,0,61,0,100,0,0,@ALRTUIS_FEL_INFUSION,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Altruis the Sufferer - On Text 0 Over - Despawn Instant");

DELETE FROM `creature_text` WHERE `CreatureID` = 92986;
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
('92986', '0', '0', 'Time for answers later. There are demons to kill', '12', '0', '100', '0', '0', '57339', '0', '0', 'Altruis the Sufferer to Player'),
('92986', '0', '1', 'The Legion is here.', '12', '0', '100', '0', '0', '57388', '0', '0', 'Altruis the Sufferer to Player');

-- Altruis the Sufferer Summon SAI
SET @ALTRUIS_2_SUMMON := 9298600; -- 909992
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ALTRUIS_2_SUMMON;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ALTRUIS_2_SUMMON AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ALTRUIS_2_SUMMON,0,0,0,61,0,100,0,0,0,0,0,53,1,9298600,0,0,0,0,1,0,0,0,0,0,0,0,'Altruis the Sufferer - On Reset - Start Waypoint'),
(@ALTRUIS_2_SUMMON,0,1,0,54,0,100,0,0,0,0,0,53,1,9298600,0,0,0,0,1,0,0,0,0,0,0,0,'Altruis the Sufferer - Just Spawned - Start WP'),
(@ALTRUIS_2_SUMMON,0,2,0,40,0,100,0,4,9298600,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Altruis the Sufferer - On Waypoint 4 Reached - Despawn Instant');

DELETE FROM `creature_template` WHERE `entry`=@ALTRUIS_2_SUMMON;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ALTRUIS_2_SUMMON,'0','0','0','0','0','63985','0','0','0','Altruis the Sufferer','','Illidari',NULL,NULL,'0','100','100','5','0','0','2839','2','1','1.14286','1','1','0','1000','2000','1','1','1','33536','2048','0','0','0','0','0','0','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','SmartAI','0','3','1','10','1','5','1','1','1','1','0','0','1','0','0','','25549');

DELETE FROM `creature_template_addon` WHERE `entry`=@ALTRUIS_2_SUMMON;
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(@ALTRUIS_2_SUMMON, '0', '0', '0', '1', '0', '0', '0', '0', NULL);

DELETE FROM `creature_equip_template` WHERE `CreatureID`=@ALTRUIS_2_SUMMON;
REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
(@ALTRUIS_2_SUMMON, '1', '128360', '0', '0', '128370', '0', '0', '0', '0', '0', '0');

DELETE FROM `waypoints` WHERE `entry`=9298600;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(9298600, 1, 4323.121, -541.476, -282.968, 'Altruis move'),
(9298600, 2, 4323.689, -538.507, -283.827, 'Altruis move'),
(9298600, 3, 4323.789, -525.309, -287.583, 'Altruis move'),
(9298600, 4, 4322.914, -516.714, -287.720, 'Altruis Despawn');

-- Kayn Sunfury 3 SAI
SET @KAYN_RISE := 92980;
UPDATE `creature` SET `spawntimesecs`=15 WHERE `guid`=20542693 AND `id`=@KAYN_RISE;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@KAYN_RISE;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@KAYN_RISE AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@KAYN_RISE,0,0,0,19,0,100,0,38690,0,0,0,1,0,5000,0,0,0,0,1,0,0,0,0,0,0,0,"Kayn Sunfury - On Quest 'Rise of Illidari' Taken - Say Line 0"),
(@KAYN_RISE,0,1,2,52,0,100,0,0,@KAYN_RISE,0,0,12,@KAYN_RISE*100+00,6,0,0,0,0,8,0,0,0,4330.08,-548.288,-281.751,1.67951,"Kayn Sunfury - On Text 0 Over - Summon Creature 'Kayn Sunfury'"),
(@KAYN_RISE,0,2,0,61,0,100,0,0,@KAYN_RISE,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kayn Sunfury - On Text 0 Over - Despawn Instant");

DELETE FROM `creature_text` WHERE `CreatureID` = 92980;
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
('92980', '0', '0', 'The demons aim to destroy our world. We need to release our alies.', '12', '0', '100', '0', '0', '55352', '0', '0', 'Kayn Sunfury to Player');

-- Kayn Sunfury Summon SAI
SET @KAYN_2_SUMMON := 9298000;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@KAYN_2_SUMMON;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@KAYN_2_SUMMON AND `source_type`=0;
REPLACE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@KAYN_2_SUMMON,0,0,0,61,0,100,0,0,0,0,0,53,1,9298000,0,0,0,0,1,0,0,0,0,0,0,0,'Kayn Sunfury - On Reset - Start WP'),
(@KAYN_2_SUMMON,0,1,0,54,0,100,0,0,0,0,0,53,1,9298000,0,0,0,0,1,0,0,0,0,0,0,0,'Kayn Sunfury - Just Spawned - Start WP'),
(@KAYN_2_SUMMON,0,2,0,40,0,100,0,4,9298000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Kayn Sunfury - On Waypoint 4 Reached - Despawn Instant');

DELETE FROM `creature_template` WHERE `entry`=@KAYN_2_SUMMON;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@KAYN_2_SUMMON,'0','0','0','0','0','61698','0','0','0','Kayn Sunfury','','Illidari',NULL,NULL,'0','100','100','5','0','0','2839','3','1','1.14286','1','1','0','1000','2000','1','1','1','32832','2048','0','0','0','0','0','0','7','4096','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','SmartAI','0','3','1','10','1','5','1','1','1','1','0','0','1','0','0','','25549');

DELETE FROM `creature_template_addon` WHERE `entry`=@KAYN_2_SUMMON;
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(@KAYN_2_SUMMON, '0', '0', '0', '1', '0', '0', '0', '0', NULL);

DELETE FROM `creature_equip_template` WHERE `CreatureID`=@KAYN_2_SUMMON;
REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
(@KAYN_2_SUMMON, '1', '128359', '0', '0', '128371', '0', '0', '0', '0', '0', '0');

DELETE FROM `waypoints` WHERE `entry`=9298000;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(9298000, 1, 4328.037, -540.687, -283.179, 'Kayn move'),
(9298000, 2, 4328.187, -529.856, -286.617, 'Kayn move'),
(9298000, 3, 4328.747, -518.079, -287.721, 'Kayn move'),
(9298000, 4, 4332.642, -506.923, -288.638, 'Kayn Despawn');

UPDATE `creature_template` SET `unit_flags`=768, `npcflag`=1 WHERE `entry`=99501;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=99501;
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(99501, 202064, 1, 0);

SET @CGUID := 280000000;
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+261 AND @CGUID+268;
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(@CGUID+261,96656,1468,0,0,0,0,0,0,-1,0,1,4392.36,-513.713,-281.484,2.7597,300,0,0,1266732,0,0,0,0,0,0,0,'',25549),
(@CGUID+262,96656,1468,0,0,0,0,0,0,-1,0,1,4361.92,-529.656,-274.719,2.26568,300,0,0,1304724,0,0,0,0,0,0,0,'',25549),
(@CGUID+263,96656,1468,0,0,0,0,0,0,-1,0,1,4305.08,-559.763,-281.487,1.12057,300,0,0,1266732,0,0,0,0,0,0,0,'',25549),
(@CGUID+264,96656,1468,0,0,0,0,0,0,-1,0,1,4346.46,-427.373,-281.485,4.42082,300,0,0,1266732,0,0,0,0,0,0,0,'',25549),
(@CGUID+265,96656,1468,0,0,0,0,0,0,-1,0,1,4280.47,-457.641,-287.566,4.61166,300,0,0,1266732,0,0,0,0,0,0,0,'',25549),
(@CGUID+266,96656,1468,0,0,0,0,0,0,-1,0,1,4280.5,-528.708,-274.754,1.61223,300,0,0,1266732,0,0,0,0,0,0,0,'',25549),
(@CGUID+267,96656,1468,0,0,0,0,0,0,-1,0,1,4289.63,-457.4,-274.719,5.52037,300,0,0,1304724,0,0,0,0,0,0,0,'',25549),
(@CGUID+268,96656,1468,0,0,0,0,0,0,-1,0,1,4362.25,-457.504,-274.719,3.95586,300,0,0,1266732,0,0,0,0,0,0,0,'',25549);

UPDATE `creature` SET `spawntimesecs`=60 WHERE `guid` IN (20542822, 20542748, 20542855, 20542737);
UPDATE `creature` SET `spawntimesecs`=30 WHERE `guid` IN (20542615, 20542616);
UPDATE `creature_template` SET `unit_flags`=384 WHERE (entry = 100717);

UPDATE `creature_template_addon` SET `path_id`=99631 WHERE `entry`=99631;
UPDATE `creature_template` SET `MovementType`=2 WHERE `entry`=99631;
DELETE FROM `waypoints` WHERE `entry`=99631;
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(99631,1,4334.12,-590.217,-281.922,''),
(99631,2,4331.97,-589.663,-281.922,''),
(99631,3,4331.98,-589.172,-281.922,''),
(99631,4,4332.24,-588.301,-281.922,''),
(99631,5,4332.14,-587.541,-281.922,''),
(99631,6,4331.09,-584.03,-281.925,''),
(99631,7,4330.39,-583.545,-281.924,''),
(99631,8,4328.46,-583.66,-281.841,'');
DELETE FROM `waypoint_data` WHERE `id`=99631;
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(99631,1,4334.12,-590.217,-281.922,0,0,0,0,100,0),
(99631,2,4331.97,-589.663,-281.922,0,0,0,0,100,0),
(99631,3,4331.98,-589.172,-281.922,0,0,0,0,100,0),
(99631,4,4332.24,-588.301,-281.922,0,0,0,0,100,0),
(99631,5,4332.14,-587.541,-281.922,0,0,0,0,100,0),
(99631,6,4331.09,-584.03,-281.925,0,0,0,0,100,0),
(99631,7,4330.39,-583.545,-281.924,0,0,0,0,100,0),
(99631,8,4328.46,-583.66,-281.841,0,0,0,0,100,0);

UPDATE `creature` SET `PhaseId` = 993 WHERE `guid` = 20542908;
UPDATE `creature` SET `PhaseId` = 993 WHERE `guid` = 20542909;
UPDATE `creature` SET `PhaseId` = 543 WHERE `guid` = 20542912;
UPDATE `creature` SET `PhaseId` = 543 WHERE `guid` = 20542915;
UPDATE `creature` SET `PhaseId` = 543 WHERE `guid` = 20542913;
UPDATE `creature` SET `PhaseId` = 543 WHERE `guid` = 20542914;

DELETE FROM `creature_text` WHERE `CreatureID` = 92985;
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `Comment`) VALUES
(92985,0,0,'Just like old times, eh Kayn?',12,0,100,0,0,57329,0,0,'Altruis the Sufferer to Kayn Sunfury'),
(92985,1,0,'After ten-thousand years of imprisonment, Illidan succumbed to the fel energy within. When he was freed, he was not in his right mind.',12,0,100,0,0,57284,0,0,'Altruis the Sufferer to Kayn Sunfury'),
(92985,2,0,'You followed Illidan blindly, like a dog. Even when he lost his way.',12,0,100,0,0,57326,0,0,'Altruis the Sufferer to Kayn Sunfury'),
(92985,3,0,'I fought as hard as the rest of you! But I did not murder thousands of innocents.',12,0,100,0,0,57386,0,0,'Altruis the Sufferer to Kayn Sunfury'),
(92985,4,0,'Fool! You would trust the warden? She hates us almost as much as the Legion.',12,0,100,0,0,57389,0,0,'Altruis the Sufferer to Kayn Sunfury');

DELETE FROM `creature_text` WHERE `CreatureID` = 92984;
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `Comment`) VALUES
(92984,0,0,'Do not speak to me of old times, Altruis. You betrayed Illidan. You betrayed us all!',12,0,100,0,0,57345,0,0,'Kayn Sunfury to Altruis the Sufferer'),
(92984,1,0,'He was fighting it, as we all do. He needed us to have faith in him, Altruis.',12,0,100,0,0,57325,0,0,'Kayn Sunfury to Altruis the Sufferer'),
(92984,2,0,'He made the hard choices. He sacrificed EVERYTHING. What did you give?',12,0,100,0,0,57321,0,0,'Kayn Sunfury to Altruis the Sufferer'),
(92984,3,0,'You heard the Warden. We are the only ones who can defeat the Legion. We MUST survive this place.',12,0,100,0,0,57322,0,0,'Kayn Sunfury to Altruis the Sufferer'),
(92984,4,0,'You trust no one and believe in nothing, Altruis. You are a leader with no followers.',12,0,100,0,0,57390,0,0,'Kayn Sunfury to Altruis the Sufferer');

UPDATE `creature_template` SET `MovementType`=2 WHERE `entry`=92984;
UPDATE `creature_template` SET `MovementType`=2 WHERE `entry`=92985;

-- UPDATE `creature` SET `ScriptName`='npc_altruis_sufferer_4' WHERE `guid`=20542908;
-- Overlord Saurfang in Orgri
DELETE FROM `creature` WHERE `guid`=280000275;
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(280000275,100636,1,1637,5170,0,0,1178,0,-1,0,1,1606.07,-4376.37,21.8468,3.63639,300,0,0,1305,0,0,1,0,0,0,0,'npc_lord_saurfang',25549);
-- khadgar in Orgri
DELETE FROM `creature` WHERE `guid`=280000276;
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(280000276,97296,1,1637,5170,0,0,1178,0,-1,0,1,1465.72,-4419.58,25.45,0.172787,120,0,0,9145554,5,0,2,0,0,0,0,'',25549);

DELETE FROM `creature_text` WHERE `CreatureID`=100636;
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `Comment`) VALUES
(100636,0,0,'I don\'t like the looks of them, mage. They smell of demon filth.',12,0,100,0,0,57915,0,0,'Lord Saurfang to Player');

DELETE FROM `npc_text` WHERE `ID` IN (30560, 30561, 30562, 30563);
REPLACE INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextId0`, `BroadcastTextId1`, `BroadcastTextId2`, `BroadcastTextId3`, `BroadcastTextId4`, `BroadcastTextId5`, `BroadcastTextId6`, `BroadcastTextId7`, `VerifiedBuild`) VALUES
(30560,1,0,0,0,0,0,0,0,147324,0,0,0,0,0,0,0,25549),
(30561,1,0,0,0,0,0,0,0,147325,0,0,0,0,0,0,0,25549),
(30562,1,0,0,0,0,0,0,0,147326,0,0,0,0,0,0,0,25549),
(30563,1,0,0,0,0,0,0,0,147327,0,0,0,0,0,0,0,25549);

DELETE FROM `gossip_menu` WHERE `MenuID` IN (20460, 20461, 20462, 20463);
REPLACE INTO `gossip_menu` (`MenuID`, `TextID`) VALUES
(20460, 30560),
(20461, 30561),
(20462, 30562),
(20463, 30563);

UPDATE `creature_template` SET `minlevel`=100, `maxlevel`=100, `gossip_menu_id`=20460 WHERE `entry`=100636;
UPDATE `creature_template` SET `gossip_menu_id`=20461 WHERE `entry`=101035;
-- Alari the Souleater in Durotar Funeral
DELETE FROM `creature` WHERE `guid`=280000277;
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(280000277,100873,1,14,4982,0,0,1180,0,-1,0,0,1272.81,-4383.71,28.735,3.48624,120,0,0,870,0,0,3,0,0,0,0,'',25549);
-- Lady Sylvana Windrunner in Durotar Funeral
DELETE FROM `creature` WHERE `guid`=280000278;
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(280000278,101035,1,14,4982,0,0,1180,0,-1,0,0,1244.27,-4381.93,28.2979,4.74574,120,0,0,1075122944,0,0,3,0,0,0,0,'npc_lady_sylvana_funeral',25549);
-- Faction Acquisition quests
UPDATE `quest_template_addon` SET `PrevQuestID`=40976 WHERE `ID`=40982; -- Second Sight
UPDATE `quest_template_addon` SET `PrevQuestID`=40982 WHERE `ID`=40983; -- Demons Among Them
UPDATE `quest_template_addon` SET `PrevQuestID`=40983 WHERE `ID`=41002; -- A Weapon of the Horde
-- other quests to not mess up with the DH chain
UPDATE `quest_template_addon` SET `PrevQuestID`=40522 WHERE `ID`=40607; -- Demons Among Us
UPDATE `quest_template_addon` SET `PrevQuestID`=40607 WHERE `ID`=40605; -- Keep Your Friends Close
-- Felblade Spawns
DELETE FROM `creature` WHERE `guid` BETWEEN 280000301 AND 280000320;
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(280000301,101104,1,14,4982,0,0,1181,0,-1,0,0,1234.2,-4423.7,22.5085,1.24287,120,0,0,174,0,0,0,0,0,0,0,'',25549),
(280000302,101104,1,14,4982,0,0,1181,0,-1,0,0,1266.75,-4428.12,26.6402,2.11152,120,0,0,174,0,0,0,0,0,0,0,'',25549),
(280000303,101104,1,14,4982,0,0,1181,0,-1,0,0,1294,-4389.82,26.2693,3.29276,120,0,0,174,0,0,0,0,0,0,0,'',25549),
(280000304,101104,1,14,4982,0,0,1181,0,-1,0,0,1208.96,-4404.49,23.1639,0.0105786,120,0,0,174,0,0,0,0,0,0,0,'',25549),
(280000305,101104,1,14,4982,0,0,1181,0,-1,0,0,1308.13,-4427.31,24.7053,2.7202,120,0,0,174,0,0,0,0,0,0,0,'',25549),
(280000306,102543,1,14,4982,0,0,1181,0,-1,0,1,1264.68,-4398.66,26.3237,2.01098,120,0,0,174,0,0,0,0,0,0,0,'',25549),
(280000307,102543,1,14,4982,0,0,1181,0,-1,0,1,1258.96,-4401.78,25.8567,1.77694,120,0,0,174,0,0,0,0,0,0,0,'',25549),
(280000308,102543,1,14,4982,0,0,1181,0,-1,0,1,1263.19,-4407.53,25.7372,1.65755,120,0,0,174,0,0,0,0,0,0,0,'',25549),
(280000309,102543,1,14,4982,0,0,1181,0,-1,0,1,1249.8,-4409.17,24.6836,2.19241,120,0,0,174,0,0,0,0,0,0,0,'',25549),
(280000310,102543,1,14,4982,0,0,1181,0,-1,0,1,1242.62,-4413.61,23.726,1.96779,120,0,0,174,0,0,0,0,0,0,0,'',25549),
(280000311,102543,1,14,4982,0,0,1181,0,-1,0,1,1248.65,-4419.28,23.8528,2.08481,120,0,0,174,0,0,0,0,0,0,0,'',25549),
(280000312,102543,1,14,4982,0,0,1181,0,-1,0,1,1226.22,-4414.39,22.6062,1.0363,120,0,0,174,0,0,0,0,0,0,0,'',25549),
(280000313,102543,1,14,4982,0,0,1181,0,-1,0,1,1218.39,-4409.72,22.9143,0.719791,120,0,0,174,0,0,0,0,0,0,0,'',25549),
(280000314,102543,1,14,4982,0,0,1181,0,-1,0,1,1216.52,-4417.56,22.0563,0.7677,120,0,0,174,0,0,0,0,0,0,0,'',25549),
(280000315,102543,1,14,4982,0,0,1181,0,-1,0,1,1244.4,-4390.51,28.2295,2.15628,120,0,0,174,0,0,0,0,0,0,0,'',25549),
(280000316,102543,1,14,4982,0,0,1181,0,-1,0,1,1296.29,-4410.06,26.5713,2.26624,120,0,0,174,0,0,0,0,0,0,0,'',25549),
(280000317,102543,1,14,4982,0,0,1181,0,-1,0,1,1293.49,-4434.14,27.1493,1.90103,120,0,0,174,0,0,0,0,0,0,0,'',25549),
(280000318,102543,1,14,4982,0,0,1181,0,-1,0,1,1258.61,-4437.65,26.8017,1.70625,120,0,0,174,0,0,0,0,0,0,0,'',25549),
(280000319,102543,1,14,4982,0,0,1181,0,-1,0,1,1227.55,-4448.21,24.2946,1.55939,120,0,0,174,0,0,0,0,0,0,0,'',25549),
(280000320,102543,1,14,4982,0,0,1181,0,-1,0,1,1224.24,-4394.29,23.6983,0.350657,120,0,0,174,0,0,0,0,0,0,0,'',25549);
UPDATE `creature_template` SET `KillCredit1`=101105, `minlevel`=99, `maxlevel`=99, `faction`=954, `unit_flags`=32768, `unit_flags2`=0 WHERE `entry` IN (102543, 101104);
UPDATE `creature_template_addon` SET `bytes1` = '0' , `auras` = '' WHERE `entry` = '102543';
UPDATE `creature_template` SET `faction` = '1786' WHERE `entry` = '102543';
UPDATE `creature_template` SET `unit_flags2` = '35653632' WHERE `entry` = '102543';
UPDATE `creature_template` SET `HealthScalingExpansion` = '5' , `lootid` = '98486' , `HealthModifier` = '1' WHERE `entry` = '102543';
UPDATE `scene_template` SET `ScriptName`='scene_demons_among_them_horde' WHERE `SceneId`=1453;
UPDATE `creature_template` SET `npcflag` = 2 WHERE `entry`=114562; 

DELETE FROM `creature_text` WHERE `CreatureID` = 116704;
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `Comment`) VALUES
(116704,0,0,'I need to speak with you.',12,0,100,0,0,57295,0,0,'Korvas Bloodthorn to Player'),
(116704,0,1,'Altruis and the others await you at Krasus\' Landing. I\'ll meet you there.',12,0,100,0,0,57295,0,0,'Korvas Bloodthorn to Player'),
(116704,0,2,'Kayn and the others await you at Krasus\' Landing. I\'ll meet you there.',12,0,100,0,0,57295,0,0,'Korvas Bloodthorn to Player'),
(116704,0,3,'Every moment we sit idle, the Legion gains strength.',12,0,100,0,0,57295,0,0,'Korvas Bloodthorn to Player'),
(116704,0,4,'In Lord Illidan\'s absence, you are the ranking member of our order. We can\'t make this decision without you.',12,0,100,0,0,57295,0,0,'Korvas Bloodthorn to Player'),
(116704,0,5,'Let me know when you\'re ready.',12,0,100,0,0,57295,0,0,'Korvas Bloodthorn to Player');

UPDATE `creature_template` SET `npcflag`=2, `AIName`="", `ScriptName`='npc_korvas_bloodthorn_summon', `VerifiedBuild`=25549 WHERE `entry`=116704;
DELETE FROM `creature_equip_template` WHERE `CreatureID`=116704;
REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
(116704,1,128359,0,0,128371,0,0,0,0,0,25549);

UPDATE `creature_template` SET `npcflag`=3, `gossip_menu_id`=20463, `ScriptName`='npc_altruis_sufferer_artifact', `VerifiedBuild`=25549 WHERE `entry`=99254;

UPDATE `quest_template_addon` SET `PrevQuestID`=39047 WHERE `ID`=40816; -- The Power To Survive (Altruis)
UPDATE `quest_template_addon` SET `PrevQuestID`=39261 WHERE `ID`=40814; -- The Power To Survive (Kayn)
UPDATE `quest_template_addon` SET `PrevQuestID`=41120 WHERE `ID`=41121; -- By Any Means
UPDATE `quest_template_addon` SET `PrevQuestID`=41121 WHERE `ID`=41119; -- The Hunt

DELETE FROM `playerchoice_response` WHERE `ChoiceId`=255;
REPLACE INTO `playerchoice_response` (`ChoiceId`, `ResponseId`, `Index`, `ChoiceArtFileId`, `Header`, `Answer`, `Description`, `Confirmation`, `QuestId`, `VerifiedBuild`) VALUES
(255, 640, 2, 0, 'Vengeance', 'Select', 'The mighty Aldrachi were one of the few to stand against the Burning Legion. It took Sargeras to fell their greatest champion, seizing his warblades in the process. Now the traitorous Illidari Carla, servant of Kil\'Jaeden, wields the infamous warblades. The more souls she claims, the more powerful she becomes.\n\n            |cFF000000|Hitem:128832|h[Aldrachi Warblades]|h|r', 'CONFIRM_ARTIFACT_CHOICE', 40818, 25549),
(255, 641, 1, 0, 'Havoc', 'Select', 'These glaives belong to the former demon hunter Varedis Felsoul, who was slain defending the Black Temple many years ago. The Burning Legion\'s master, Kil\'jaeden the Deceiver, raised Varedis in the Twisting Nether and imbued his glaives with a piece of the demon lord\'s chaotic power.\n\n            |cFF000000|Hitem:127829|h[Twinblades of the Deceiver]|h|r', 'CONFIRM_ARTIFACT_CHOICE', 40817, 25549);

DELETE FROM `spell_target_position` WHERE `ID`=192757;
REPLACE INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `VerifiedBuild`) VALUES
(192757, 0, 0, -8544.392578, 462.887299, 104.472054, 22566);

-- Delete Reward From Artifact Quests (Temporarly, only for the implemented ones)
UPDATE `quest_template` SET `RewardAmount1` = 0 WHERE `ID` IN (40817, 40818);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=19 AND `SourceEntry` IN (41120,41803);
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(19,0,41120,0,0,14,0,40818,0,0,0,0,0,"","Quest 'Making Arrangements' can only be taken if quest 'Aldrachi Warblades Chosen' is not taken"),
(19,0,41803,0,0,28,0,40817,0,0,1,0,0,"","Quest 'Asking A Favor' can only be taken if quest 'Twinblades of the Deceiver Chosen' is not completed");

DELETE FROM `creature` WHERE `guid`=280000321;
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(280000321,97296,0,1519,5390,0,0,175,0,-1,0,1,-8540.17,462.07,104.71,5.338177,120,0,0,9145554,5,0,2,0,0,0,0,'',25549);

DELETE FROM `spell_area` WHERE `area` IN (5390);
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `quest_start_status`, `quest_end_status`) VALUES
(57569, 5390, 39689, 39691, 64, 64);

