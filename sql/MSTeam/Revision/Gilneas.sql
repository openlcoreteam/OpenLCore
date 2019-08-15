/*==================
-- Gilneas More Fixes
==================*/
-- Shadowy Figure (34867)
UPDATE `creature_addon` SET `emote`='540' WHERE  `guid` IN (223338,223331,223317,223334,223312,223345,223330);

DELETE FROM `creature` WHERE  `guid`=223295;
DELETE FROM `creature_addon` WHERE  `guid`=223295;


-- Prince Liam Greymane (34850)
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=34850;


-- Gilneas Evacuation Facing Marker (Near) (35010)
UPDATE `creature_template` SET `InhabitType`='4', `flags_extra`='128' WHERE  `entry`=35010;


-- Gilneas Evacuation Facing Marker (Far) (35011)
UPDATE `creature_template` SET `InhabitType`='4', `flags_extra`='128' WHERE  `entry`=35011;


-- Gilneas Evacuation Facing Marker (First) (35830)
UPDATE `creature_template` SET `InhabitType`='4', `flags_extra`='128' WHERE  `entry`=35830;
UPDATE `creature` SET `PhaseId`='170' WHERE  `id`=35830;


-- Distrito de los Mercaderes Fase 170 + Quest Invisybility
UPDATE `spell_area` SET `quest_start`='14091', `quest_start_status`='2' WHERE  `spell`=59073 AND `area`=4756 AND `quest_start`=14078;
UPDATE `spell_area` SET `quest_start`='14091', `quest_start_status`='2' WHERE  `spell`=49416 AND `area`=4756 AND `quest_start`=14078;
UPDATE `spell_area` SET `quest_start_status`='66' WHERE  `spell`=59073 AND `area`=4756 AND `quest_start`=14091;
UPDATE `spell_area` SET `quest_start_status`='66' WHERE  `spell`=49416 AND `area`=4756 AND `quest_start`=14091;


-- Prince Liam Greymane (34913)
UPDATE `creature_template` SET `flags_extra`='2', `ScriptName`='' WHERE  `entry`=34913;
DELETE FROM `creature_queststarter` WHERE  `id`=34913 AND `quest`=14091;
UPDATE `creature_addon` SET `mount`='0', `emote`='659' WHERE  `guid`=223413;


-- Rampaging Worgen (34884)
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=34884;

UPDATE `smart_scripts` SET `comment`='Rampaging Worgen - Say Line 0' WHERE  `entryorguid`=34884 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `creature` SET `spawntimesecs`='60' WHERE  `id`=34884;

UPDATE `creature_addon` SET `emote`='540' WHERE  `guid` IN (223609,223405,223406,223388,223402,223597,223399,223610,223598,223430,223385);
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE  `guid` IN (223609,223405,223406,223388,223402,223597,223399,223610,223598,223430,223385);

DELETE FROM `creature` WHERE  `guid` IN (223462,223461,223420,223448,223465,223464,223404,223463,223392,223429,223428,223644,223387,223395,223606,223459,223599);
DELETE FROM `creature_addon` WHERE  `guid` IN (223462,223461,223420,223448,223465,223464,223404,223463,223392,223429,223428,223644,223387,223395,223606,223459,223599);

UPDATE `creature_addon` SET `emote`='438' WHERE  `guid` IN (223607,223457,223391,223401);
UPDATE `creature_addon` SET `emote`='433' WHERE  `guid` IN (223426,223403,223389,223400);


-- Gilneas City Guard (34916)
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE  `entry`=34916;

UPDATE `creature` SET `position_x`='-1516.09', `position_y`='1396.20', `position_z`='35.5560', `orientation`='2.68179' WHERE  `guid`=223433;
UPDATE `creature_addon` SET `emote`='333' WHERE  `guid` IN (223447,223433,223431,223418,223396,223424,223409,223394,223449,223454,223453,223455);
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE  `guid` IN (223433,223431,223418,223396,223424,223409,223394);
UPDATE `creature` SET `spawndist`='2', `MovementType`='1' WHERE  `guid` IN (223447,223454,223449,223453,223455);

DELETE FROM `smart_scripts` WHERE `entryorguid`=34916;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(34916, 0, 0, 0, 1, 0, 100, 0, 0, 0, 3000, 3000, '', 49, 0, 0, 0, 0, 0, 0, 11, 34884, 15, 0, 0, 0, 0, 0, 'Gilneas City Guard - Attack Rampaging Worgen');


-- Merchant Square Door (195327)
UPDATE `gameobject_template` SET `Data3`='60000', `Data5`='1', `Data6`='60000', `ScriptName`='' WHERE  `entry`=195327;
UPDATE `gameobject_template_addon` SET `flags`='4' WHERE  `entry`=195327;





DELETE FROM `smart_scripts` WHERE `entryorguid` IN (195327,19532700,19532701);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(195327, 1, 0, 0, 64, 0, 100, 512, 0, 0, 0, 0, '', 87, 19532700, 19532701, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Merchant Square Door - On Gossip Hello - Run Random Actionlist'),
(19532700, 9, 0, 0, 0, 0, 100, 512, 0, 0, 0, 0, '', 12, 34981, 8, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Merchant Square Door - Summon Frightened Citizen'),
(19532700, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, '', 105, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Merchant Square Door - Add Flag Not Selectable'),
(19532700, 9, 2, 0, 60, 0, 100, 0, 60000, 60000, 0, 0, '', 106, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Merchant Square Door - Remove Flag Not Selectable in 60 seg'),
(19532701, 9, 0, 0, 0, 0, 100, 512, 0, 0, 0, 0, '', 12, 35836, 8, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Merchant Square Door - Summon Frightened Citizen'),
(19532701, 9, 1, 0, 0, 0, 100, 512, 0, 0, 0, 0, '', 12, 35660, 8, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Merchant Square Door - Summon Rampaging Worgen'),
(19532701, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, '', 105, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Merchant Square Door - Add Flag Not Selectable'),
(19532701, 9, 3, 0, 60, 0, 100, 0, 60000, 60000, 0, 0, '', 106, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Merchant Square Door - Remove Flag Not Selectable in 60 seg');


-- Rampaging Worgen (35660)
UPDATE `creature_template` SET `unit_flags`='32768', `ScriptName`='' WHERE  `entry`=35660;

DELETE FROM `creature_template_addon` WHERE `entry`=35660;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(35660, 0, 0, 0, 1, 0, 0, 0, 0, '59073 49416');

UPDATE `creature_text` SET `comment`='Rampaging Worgen - Combat Enrage' WHERE  `CreatureID`=35660 AND `GroupID`=0 AND `ID`=0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=35660;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35660, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, '', 89, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rampaging Worgen - On Spawn - Set Random Movement'),
(35660, 0, 1, 2, 2, 0, 100, 1, 0, 30, 0, 0, '', 11, 56646, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rampaging Worgen - Cast Enrage at 30% HP'),
(35660, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rampaging Worgen - Say Line 0'),
(35660, 0, 3, 0, 1, 0, 100, 0, 45000, 45000, 0, 0, '', 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rampaging Worgen - OCC - Despawn in 45 seg');


-- Frightened Citizen (34981)
UPDATE `creature_template` SET `unit_flags`='33280', `flags_extra`='2', `AIName`='SmartAI', `ScriptName`='' WHERE  `entry`=34981;

DELETE FROM `creature_template_addon` WHERE `entry`=34981;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(34981, 0, 0, 0, 1, 431, 0, 0, 0, '59073 49416');

DELETE FROM `smart_scripts` WHERE `entryorguid`=34981;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(34981, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, '', 89, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Frightened Citizen - On Spawn - Set Random Movement'),
(34981, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Frightened Citizen - Say Random Line'),
(34981, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, '', 33, 35830, 0, 0, 0, 0, 0, 18, 10, 0, 0, 0, 0, 0, 0, 'Frightened Citizen - Quest Credit'),
(34981, 0, 3, 0, 1, 0, 100, 0, 10000, 10000, 0, 0, '', 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Frightened Citizen - OCC - Despawn in 10 seg');


-- Frightened Citizen (35836)
UPDATE `creature_template` SET `unit_flags`='33280', `flags_extra`='2', `AIName`='SmartAI', `ScriptName`='' WHERE  `entry`=35836;

DELETE FROM `creature_template_addon` WHERE `entry`=35836;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(35836, 0, 0, 0, 1, 431, 0, 0, 0, '59073 49416');

DELETE FROM `smart_scripts` WHERE `entryorguid`=35836;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35836, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, '', 89, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Frightened Citizen - On Spawn - Set Random Movement'),
(35836, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Frightened Citizen - Say Random Line'),
(35836, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, '', 33, 35830, 0, 0, 0, 0, 0, 18, 10, 0, 0, 0, 0, 0, 0, 'Frightened Citizen - Quest Credit'),
(35836, 0, 3, 0, 1, 0, 100, 0, 10000, 10000, 0, 0, '', 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Frightened Citizen - OCC - Despawn in 10 seg');


-- Salvaged Supplies (46896)
DELETE FROM `creature_loot_template` WHERE  `Item`=46896;


-- Supply Crate (195306)
UPDATE `gameobject` SET `spawntimesecs`='60' WHERE  `id`=195306;


-- Distrito Militar Fase 170
UPDATE `spell_area` SET `quest_start`='14099', `quest_start_status`='66' WHERE  `spell`=59073 AND `area`=4757 AND `quest_start`=14078 AND `aura_spell`=0 AND `teamId`=-1 AND `racemask`=0 AND `gender`=2;


-- Gwen Armstead (35840)
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE  `entry`=35840;

DELETE FROM `smart_scripts` WHERE `entryorguid`=35840;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35840, 0, 0, 0, 1, 0, 100, 0, 2500, 2500, 60000, 60000, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gwen Armstead - Out Of Combat - Say Line 0'),
(35840, 0, 1, 0, 1, 0, 100, 0, 6000, 6000, 60000, 60000, '', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gwen Armstead - Out Of Combat - Say Line 1'),
(35840, 0, 2, 0, 1, 0, 100, 0, 10000, 10000, 60000, 60000, '', 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gwen Armstead - Out Of Combat - Say Line 1');


-- Marie Allen (38853)
DELETE FROM `gossip_menu_option` WHERE `MenuId`=10841 AND `OptionIndex`=0;
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES 
(10841, 0, 1, 'Let me take a look at your merchandise.', 0, 3, 128, 26365);




-- Gilnean Survivor (35233)
UPDATE `creature_addon` SET `emote`='605' WHERE  `guid` IN (223527,223547,223552,223479,223481,223484);
UPDATE `creature_addon` SET `emote`='431' WHERE  `guid` IN (223523,223550,223542);
UPDATE `creature_addon` SET `emote`='20' WHERE  `guid` IN (223525,223554,223544);

DELETE FROM `creature` WHERE  `guid` IN (223540,223551,223543,223485,223545);
DELETE FROM `creature_addon` WHERE  `guid` IN (223540,223551,223543,223485,223545);

UPDATE `creature` SET `position_x`='-1636.82', `position_y`='1307.91', `position_z`='19.6632', `orientation`='5.42632' WHERE  `guid`=223479;


-- Huntsman Blake (35874)
UPDATE `creature_addon` SET `emote`='385' WHERE  `guid`=223493;


-- Wounded Guard (47091)
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=47091;


-- Myriam Spellwaker (35872)
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=35872;


-- Sergeant Cleese (35839)
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=35839;


-- Bloodfang Worgen (35118)
UPDATE `creature_template` SET `flags_extra`='0', `ScriptName`='' WHERE  `entry`=35118;

DELETE FROM `creature` WHERE  `guid` IN (223586,223564,223497,223504,223526,223528,223521,223532,223584,223514,223517,223650,223657,223563,223560,223574,223510,223653);
DELETE FROM `creature_addon` WHERE  `guid` IN (223586,223564,223497,223504,223526,223528,223521,223532,223584,223514,223517,223650,223657,223563,223560,223574,223510,223653);

DELETE FROM `smart_scripts` WHERE `entryorguid`=35118;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35118, 0, 0, 1, 2, 0, 100, 1, 0, 30, 0, 0, '', 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Worgen - Cast Enrage at 30% HP'),
(35118, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Worgen - Say Line 0'),
(35118, 0, 2, 0, 8, 0, 100, 0, 100, 0, 0, 0, '', 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Worgen - On Spellhhit - Quest Credit'),
(35118, 0, 3, 0, 8, 0, 100, 0, 56641, 0, 0, 0, '', 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Worgen - On Spellhhit - Quest Credit'),
(35118, 0, 4, 0, 8, 0, 100, 0, 2098, 0, 0, 0, '', 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Worgen - On Spellhhit - Quest Credit'),
(35118, 0, 5, 0, 8, 0, 100, 0, 348, 0, 0, 0, '', 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Worgen - On Spellhhit - Quest Credit'),
(35118, 0, 6, 0, 8, 0, 100, 0, 5143, 0, 0, 0, '', 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Bloodfang Worgen - On Spellhhit - Quest Credit'),
(35118, 0, 7, 0, 1, 0, 100, 0, 0, 0, 3000, 3000, '', 49, 0, 0, 0, 0, 0, 0, 11, 35232, 15, 0, 0, 0, 0, 0, 'Bloodfang Worgen - Attack Gilnean Royal Guard');

UPDATE `creature_addon` SET `emote`='540' WHERE  `guid` IN (223651,223561,223658,223489,223487,223499,223488,223579,223573,223652);
UPDATE `creature` SET `spawndist`='0', `MovementType`='0' WHERE  `guid` IN (223488,223573);
UPDATE `creature` SET `spawntimesecs`='60' WHERE  `id`=35118;


-- Gilnean Royal Guard (35232)
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE  `entry`=35232;

DELETE FROM `smart_scripts` WHERE `entryorguid`=35232;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35232, 0, 0, 0, 1, 0, 100, 0, 0, 0, 3000, 3000, '', 49, 0, 0, 0, 0, 0, 0, 11, 35118, 15, 0, 0, 0, 0, 0, 'Gilnean Royal Guard - Attack Bloodfang Worgen');

DELETE FROM `creature` WHERE  `guid`=223566;
DELETE FROM `creature_addon` WHERE  `guid`=223566;

UPDATE `creature_addon` SET `emote`='333' WHERE  `guid` IN (223512,223558,223529,223539,223524,223516,223522,223520,223567,223571);
UPDATE `creature` SET `spawndist`='3', `MovementType`='1' WHERE  `guid` IN (223512,223558,223529,223539,223524,223516,223522,223520,223567,223571);

UPDATE `creature_addon` SET `emote`='333' WHERE  `guid` IN (223538,223531,223530,223533,223541,223553,223546,223548,223549);


-- King Genn Greymane (35112)
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=35112;


-- Lord Godfrey (35115)
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=35115;


-- Captain Broderick (50371)
UPDATE `creature_addon` SET `emote`='433' WHERE  `guid`=223570;


-- Lord Darius Crowley (35077)
UPDATE `creature_addon` SET `emote`='540' WHERE  `guid`=223581;


-- Tobias Mistmantle (35124)
UPDATE `creature_addon` SET `emote`='333' WHERE  `guid`=223578;


-- Bloodfang Bloodletter (35457)
UPDATE `creature_template` SET `flags_extra`='64' WHERE  `entry`=35457;
UPDATE `creature_addon` SET `emote`='540' WHERE  `guid`=223686;

DELETE FROM `creature` WHERE  `guid` IN (223613,223469);
DELETE FROM `creature_addon` WHERE  `guid` IN (223613,223469);


-- Worgen Runt (35456)
UPDATE `creature_template` SET `flags_extra`='64' WHERE  `entry`=35456;
UPDATE `creature_addon` SET `emote`='540' WHERE  `guid` IN (223683,223678,223659,223688,223685,223620,223669,223667,223675,223671,223670);

DELETE FROM `smart_scripts` WHERE `entryorguid`=35456;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35456, 0, 0, 1, 2, 0, 100, 1, 0, 30, 0, 0, '', 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Worgen Runt - Cast Enrage at 30% HP'),
(35456, 0, 1, 0, 61, 0, 100, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Worgen Runt - Say Text at 30% HP');

DELETE FROM `creature` WHERE  `guid` IN (223615,223668,223677,223617,223660,223622,223682,223665,223687,223612,223456,223664,223621,223681,223680,223663,223619,223662,223679,223661,223618,223666,223623,223616,223676,223672,223674,223673,223684,223614,223641,223636,223639,223637,223635,223640,223638,223625,223468,223624,223467);
DELETE FROM `creature_addon` WHERE  `guid` IN (223615,223668,223677,223617,223660,223622,223682,223665,223687,223612,223456,223664,223621,223681,223680,223663,223619,223662,223679,223661,223618,223666,223623,223616,223676,223672,223674,223673,223684,223614,223641,223636,223639,223637,223635,223640,223638,223625,223468,223624,223467);


-- Worgen Runt (35188)
UPDATE `creature_template` SET `flags_extra`='64' WHERE  `entry`=35188;


-- Worgen Alpha (35167)
UPDATE `creature_template` SET `flags_extra`='64' WHERE  `entry`=35167;


-- Worgen Alpha (35170)
UPDATE `creature_template` SET `flags_extra`='64' WHERE  `entry`=35170;


-- Cellar Door (195430)
UPDATE `gameobject_template` SET `name`='Cellar Door', `Data2`='8000' WHERE  `entry`=195430;
UPDATE `gameobject_template_addon` SET `faction`='0', `flags`='32' WHERE  `entry`=195430;




-- Cellar Door (195621)
UPDATE `gameobject` SET `PhaseId`='0' WHERE  `guid`=94629;



