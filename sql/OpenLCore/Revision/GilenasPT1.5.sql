/*==================
-- Gilneas Finish 1.5/5
==================*/

-- Playercreateinfo Cast Spell
DELETE FROM `playercreateinfo_cast_spell` WHERE `raceMask`=2097152 AND `classMask`=1437 AND `spell`=95759;
DELETE FROM `playercreateinfo_cast_spell` WHERE `raceMask`=2097152 AND `classMask`=1437 AND `spell`=72857;

-- Smart Scripts
UPDATE `smart_scripts` SET `event_param_string`='' WHERE  `event_param_string`='0';


-- Rampaging Worgen (34884)
DELETE FROM `creature` WHERE  `guid`=223458;
DELETE FROM `creature_addon` WHERE  `guid`=223458;


-- Prince Liam Greymane (34913)
DELETE FROM `smart_scripts` WHERE `entryorguid`=34913;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(34913, 0, 0, 0, 1, 0, 100, 0, 1000, 5000, 25000, 35000, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Prince Liam Greymane - OCC - Say Random Text');


-- Gwen Armstead (35840)
DELETE FROM `smart_scripts` WHERE `entryorguid`=35840;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35840, 0, 0, 0, 1, 0, 100, 0, 2500, 2500, 45000, 45000, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gwen Armstead - OCC - Say Line 0'),
(35840, 0, 1, 0, 1, 0, 100, 0, 6000, 6000, 45000, 45000, '', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gwen Armstead - OCC - Say Line 1'),
(35840, 0, 2, 0, 1, 0, 100, 0, 10000, 10000, 45000, 45000, '', 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gwen Armstead - OCC - Say Line 2');


-- Generic Trigger LAB - Multiphase (35374)
UPDATE `creature` SET `PhaseId`='171' WHERE  `guid` IN (223585,223588);


-- Josiah Avery (35369)
UPDATE `creature_template` SET `unit_flags`='33280', `flags_extra`='2', `AIName`='SmartAI', `ScriptName`=''  WHERE  `entry`=35369;
UPDATE `creature_addon` SET `emote`='659' WHERE  `guid`=223587;

DELETE FROM `smart_scripts` WHERE `entryorguid`=35369;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35369, 0, 0, 0, 1, 0, 100, 0, 1000, 5000, 25000, 35000, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Josiah Avery - OCC - Say Line 0'),
(35369, 0, 1, 2, 20, 0, 100, 0, 14159, 0, 0, 0, '', 75, 72870, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Josiah Avery - On Quest Rewarded - Add Aura Worgen Bite'),
(35369, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, '', 85, 67350, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Josiah Avery - Player Cast on Self Summon Josiah');


-- Josiah Avery (35370)
DELETE FROM `creature_template_addon` WHERE `entry`=35370;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(35370, 0, 0, 0, 1, 540, 0, 0, 0, '59074');


-- Josiah Event Trigger (50415)
UPDATE `creature_template` SET `InhabitType`='4', `flags_extra`='128', `AIName`='' WHERE  `entry`=50415;
DELETE FROM `smart_scripts` WHERE `entryorguid`=50415;

DELETE FROM `creature_template_addon` WHERE `entry`=50415;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(50415, 0, 0, 0, 1, 540, 0, 0, 0, '59074');


-- Lorna Crowley (35378)
UPDATE `creature_template` SET `ScriptName`=''  WHERE  `entry`=35378;


-- Bloodfang Lurker (35463)
UPDATE `creature_template` SET `ScriptName`=''  WHERE  `entry`=35463;
UPDATE `creature` SET `spawntimesecs`='60' WHERE  `id`=35463;


-- Gilneas City Guard (35504)
UPDATE `creature_template` SET `ScriptName`=''  WHERE  `entry`=35504;
DELETE FROM `creature` WHERE  `guid` IN (223776,223753,223785,223691,223734,223710,223701,223723,223708,223744,223733,223713);
DELETE FROM `creature_addon` WHERE  `guid` IN (223776,223753,223785,223691,223734,223710,223701,223723,223708,223744,223733,223713);

DELETE FROM `smart_scripts` WHERE `entryorguid`=35504;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35504, 0, 0, 0, 1, 0, 100, 0, 0, 0, 3000, 3000, '', 49, 0, 0, 0, 0, 0, 0, 11, 35505, 15, 0, 0, 0, 0, 0, 'Gilneas City Guard - Attack Bloodfang Ripper');


-- Bloodfang Ripper (35505)
DELETE FROM `creature` WHERE  `guid` IN (223724,223727,223709,223766,223711,223782,223763,223689,223781,223725,223731,223738,223717,223775,223742,223722,223762,223740,223698,223721,223779,223693,223752,223771,223747,223780,223810,223696,223746,223718,223729,223786,223714,223759,223739,223707,223745,223834,223697,223706,223811,223807,223823,223705,223703,223846,223855,223783,223789,223829,223841,223852,223702,223719,223849,223824,223835,223728,223853,223831,223836,223840,223843,223854,223826,223842,223845,223851,223833,223844,223848,223832,223850,223856,223824,223835,223778,223808,223730,223849,223827);
DELETE FROM `creature_addon` WHERE  `guid` IN (223724,223727,223709,223766,223711,223782,223763,223689,223781,223725,223731,223738,223717,223775,223742,223722,223762,223740,223698,223721,223779,223693,223752,223771,223747,223780,223810,223696,223746,223718,223729,223786,223714,223759,223739,223707,223745,223834,223697,223706,223811,223807,223823,223705,223703,223846,223855,223783,223789,223829,223841,223852,223702,223719,223849,223824,223835,223728,223853,223831,223836,223840,223843,223854,223826,223842,223845,223851,223833,223844,223848,223832,223850,223856,223824,223835,223778,223808,223730,223849,223827);
UPDATE `creature` SET `spawndist`='10', `MovementType`='1' WHERE  `id`=35505 AND NOT `MovementType`='2';
UPDATE `creature_template_addon` SET `emote`='540' WHERE  `entry`=35505;
UPDATE `creature_addon` SET `emote`='540' WHERE  `guid` IN (223690,223694,223704,223715,223716,223735,223737,223748,223749,223750,223755,223756,223757,223760,223761,223764,223768,223770,223774,223777,223809,223812,223821,223828,223837);

DELETE FROM `smart_scripts` WHERE `entryorguid`=35505;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35505, 0, 0, 1, 2, 0, 100, 1, 0, 30, 0, 0, '', 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Ripper - Cast Enrage at 30% HP'),
(35505, 0, 1, 0, 61, 0, 100, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Ripper - Say Text at 30% HP'),
(35505, 0, 2, 0, 1, 0, 100, 0, 0, 0, 3000, 3000, '', 49, 0, 0, 0, 0, 0, 0, 11, 35504, 15, 0, 0, 0, 0, 0, 'Bloodfang Ripper - Attack Gilneas City Guard');


-- King Genn Greymane (35550)
UPDATE `creature_template` SET `ScriptName`=''  WHERE  `entry`=35550;


-- King Greymane's Horse (35905)
UPDATE `creature_template` SET `spell1`='0', `ScriptName`=''  WHERE  `entry`=35905;
DELETE FROM `vehicle_template_accessory` WHERE  `entry`=35905 AND `seat_id`=1;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (35905,3590500);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35905, 0, 0, 0, 27, 0, 100, 512, 0, 0, 0, 0, '', 53, 1, 35905, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'King Greymane\'s Horse - On Passanger Boarded - Start WP'),
(35905, 0, 1, 0, 40, 0, 100, 512, 7, 35905, 0, 0, '', 33, 35753, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'King Greymane\'s Horse - On WP 7 Reached - Quest Credit'), -- Replace Spell 68219
(35905, 0, 2, 0, 40, 0, 100, 512, 16, 35905, 0, 0, '', 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'King Greymane\'s Horse - On WP 12 Reached - Despawn in 1 seg');


-- Krennan Aranas (35907)
UPDATE `creature_template` SET `ScriptName`=''  WHERE  `entry`=35907;


-- Krennan Aranas (35753)
UPDATE `creature` SET `spawntimesecs`='5' WHERE  `id`=35753;

DELETE FROM `smart_scripts` WHERE `entryorguid`=35753;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35753, 0, 1, 0, 8, 0, 100, 1, 68219, 0, 0, 0, '', 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Krennan Aranas - On Spellhit - Despawn Instant'),
(35753, 0, 0, 0, 1, 0, 100, 0, 0, 0, 60000, 60000, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Krennan Aranas - OCC - Say Text 0');

UPDATE `spell_area` SET `quest_end`='14293', `quest_start_status`='8', `quest_end_status`='66' WHERE  `spell`=49416 AND `area`=4757 AND `quest_start`=14293 AND `aura_spell`=0 AND `teamId`=-1 AND `racemask`=0 AND `gender`=2;


-- Commandeered Cannon (35914)
UPDATE `creature_template` SET `unit_flags`='33554944', `flags_extra`='2', `ScriptName`=''  WHERE  `entry`=35914;
UPDATE `smart_scripts` SET `action_param1`='46401', `comment`='Commandeered Cannon - On Script - Cast Cosmetic - Cannon Impact' WHERE  `entryorguid`=3591400 AND `source_type`=9 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `action_param1`='46401', `comment`='Commandeered Cannon - On Script - Cast Cosmetic - Cannon Impact' WHERE  `entryorguid`=3591400 AND `source_type`=9 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `action_param1`='46401', `comment`='Commandeered Cannon - On Script - Cast Cosmetic - Cannon Impact' WHERE  `entryorguid`=3591400 AND `source_type`=9 AND `id`=2 AND `link`=0;


-- Lord Godfrey (35906)
UPDATE `creature_template` SET `ScriptName`=''  WHERE  `entry`=35906;

DELETE FROM `smart_scripts` WHERE `entryorguid`=35906;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35906, 0, 0, 1, 20, 0, 100, 0, 14293, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Lord Godfrey - On Quest Reward - Say Line 0'),
(35906, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, '', 28, 72870, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Lord Godfrey - Remove Aura Worgen Bite'),
(35906, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, '', 75, 72872, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Lord Godfrey - Add Aura Infected Bite'),
(35906, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, '', 85, 93555, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Lord Godfrey - Player Cast on Self Forcecast Cannon Camera'),
(35906, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, '', 80, 3591400, 0, 0, 0, 0, 0, 10, 223899, 0, 0, 0, 0, 0, 0, 'Lord Godfrey - Actionlist');


-- Bloodfang Ripper (35916)
UPDATE `creature_template_addon` SET `emote`='540' WHERE  `entry`=35916;
UPDATE `creature_addon` SET `emote`='540' WHERE  `guid` IN (223929,223930,223931,223932,223933,223934,223935,223936,223937,223938,223939,223940,223941);
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE  `id`=35916 AND NOT `MovementType`='2';


-- Afflicted Gilnean (50471)
UPDATE `creature_template_addon` SET `emote`='540' WHERE  `entry`=50471;
UPDATE `creature_addon` SET `emote`='540' WHERE  `guid` IN (223870,223871,223881,223885,223889,223892,223894,223896,223897,223909,223920,223952,223985,223986,224029);
UPDATE `creature` SET `spawndist`='2', `MovementType`='1' WHERE  `guid` IN (223870,223871,223881,223885,223889,223892,223894,223896,223897,223909,223920,223952,223985,223986,224029);
DELETE FROM `creature` WHERE  `guid` IN (223985,223955,223857,223882,223983,223953,223980,223868,223877,223954,223984,223925,223887,223875,223872,223874,223916,223911,223891,223888,223945,223879,224036,223862,223863,223923,223912,223928,223950,223893,223904,224031,223951,223860,224184,223902,223978,223880);
DELETE FROM `creature_addon` WHERE  `guid` IN (223985,223955,223857,223882,223983,223953,223980,223868,223877,223954,223984,223925,223887,223875,223872,223874,223916,223911,223891,223888,223945,223879,224036,223862,223863,223923,223912,223928,223950,223893,223904,224031,223951,223860,224184,223902,223978,223880);


-- Huntsman Blake (44461)
UPDATE `creature_addon` SET `emote`='385' WHERE  `guid`=223995;


-- Loren the Fence (44464)
UPDATE `creature_addon` SET `auras`='34189' WHERE  `guid`=224006;


-- Sister Almyra (44468)
UPDATE `creature_template` SET `ScriptName`=''  WHERE  `entry`=44468;


-- Shaken Survivor (35554)
UPDATE `creature_addon` SET `emote`='455' WHERE  `guid` IN (223999,224002,224005,224012,224015,224016,224017,224018,224019,224023,224024);


-- Crowley's Horse (44427)
DELETE FROM `creature` WHERE  `guid`=224013;
DELETE FROM `creature_addon` WHERE  `guid`=224013;


-- King Genn Greymane (35911)
UPDATE `smart_scripts` SET `target_param1`='224007' WHERE  `entryorguid`=35911 AND `source_type`=0 AND `id`=1 AND `link`=2;
UPDATE `smart_scripts` SET `target_param1`='224008' WHERE  `entryorguid`=35911 AND `source_type`=0 AND `id`=2 AND `link`=3;
UPDATE `smart_scripts` SET `target_param1`='224022' WHERE  `entryorguid`=35911 AND `source_type`=0 AND `id`=3 AND `link`=0;
UPDATE `smart_scripts` SET `target_param2`='35552' WHERE  `entryorguid`=35911 AND `source_type`=0 AND `id`=1 AND `link`=2;
UPDATE `smart_scripts` SET `target_param2`='35911' WHERE  `entryorguid`=35911 AND `source_type`=0 AND `id`=2 AND `link`=3;
UPDATE `smart_scripts` SET `target_param2`='35551' WHERE  `entryorguid`=35911 AND `source_type`=0 AND `id`=3 AND `link`=0;
