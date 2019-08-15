

-- Frightened Citizen (34981)
DELETE FROM `creature_text` WHERE `CreatureID`=34981 AND `GroupID`=1;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(34981, 1, 0, 'Flee! They\'re everywhere!', 12, 0, 100, 1, 0, 0, 35240, 0, 'Frightened Citizen to Player'),
(34981, 1, 1, 'Worgen! Worgen everywhere!', 12, 0, 100, 1, 0, 0, 35238, 0, 'Frightened Citizen to Player'),
(34981, 1, 2, 'Protect me, please!', 12, 0, 100, 1, 0, 0, 35234, 0, 'Frightened Citizen to Player'),
(34981, 1, 3, 'Let\'s go!', 12, 0, 100, 1, 0, 0, 35236, 0, 'Frightened Citizen to Player'),
(34981, 1, 4, 'No time to waste!', 12, 0, 100, 1, 0, 0, 35237, 0, 'Frightened Citizen to Player');


-- Gwen Armstead (35840)
DELETE FROM `creature_text` WHERE `CreatureID`=35840;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(35840, 0, 0, 'We must stick together to survive. Move around in groups.', 12, 0, 100, 1, 0, 0, 36094, 0, 'Gwen Armstead'),
(35840, 1, 0, 'The plan is to keep moving south. We can\'t go back to the Merchant Square. It\'s not safe.', 12, 0, 100, 1, 0, 0, 36093, 0, 'Gwen Armstead'),
(35840, 2, 0, 'The king\'s men will protect us. We\'re almost there.', 12, 0, 100, 1, 0, 0, 36095, 0, 'Gwen Armstead');


-- Josiah Event Trigger (50415)
DELETE FROM `creature_text` WHERE `CreatureID`=50415 AND `GroupID`=1;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(50415, 1, 0, 'You\'ve been bitten by a worgen. It\'s probably nothing, but it sure stings a little.$B$B|TInterface\\Icons\\INV_Misc_monsterfang_02.blp:32|t', 42, 0, 100, 0, 0, 19614, 50192, 0, 'Josiah Event Trigger to Player');


-- Gilneas City Guard (34864)
UPDATE `creature_text` SET `BroadcastTextId`='44373' WHERE  `CreatureID`=34864 AND `GroupID`=0 AND `ID`=0;
UPDATE `creature_text` SET `BroadcastTextId`='44374' WHERE  `CreatureID`=34864 AND `GroupID`=2 AND `ID`=2;


-- Duskhaven Phases
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


-- Captive Worgen (36698,36797,36798)
UPDATE `creature_template` SET `modelid1`=30294 AND `modelid2`=30293 AND `modelid3`=30295 AND `modelid4`=0 WHERE `entry` IN (36698);
UPDATE `creature_template` SET `modelid1`=30293 AND `modelid2`=30294 AND `modelid3`=30295 AND `modelid4`=0 WHERE `entry` IN (36797);
UPDATE `creature_template` SET `modelid1`=30295 AND `modelid2`=30294 AND `modelid3`=30293 AND `modelid4`=0 WHERE `entry` IN (36798);


-- Mountain Horse (36540)
UPDATE `creature_template` SET `spell1`='68903' AND `unit_flags`='16777216' WHERE  `entry`=36540;


-- NN (196399)
DELETE FROM `gameobject` WHERE `guid`=94611;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES 
(94611, 196399, 654, 4714, 4756, 1, 0, 0, 385, -1, -1817.84, 2333.37, 36.3445, 3.79899, 0, 0, -0.946463, 0.322813, 180, 255, 1, 0, '', 25383);

DELETE FROM `gameobject_template_addon` WHERE `entry`=196399;
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`, `mingold`, `maxgold`, `WorldEffectID`) VALUES 
(196399, 0, 6, 0, 0, 0);


-- Puerta del Rey (196412)
DELETE FROM `gameobject` WHERE `guid`=94609;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES 
(94609, 196412, 654, 4755, 4756, 1, 0, 0, 385, -1, -1872.92, 2073.58, 89.1548, 1.54751, 0, 0, 0.698826, 0.715292, 180, 255, 1, 0, '', 25383);

DELETE FROM `gameobject_template_addon` WHERE `entry`=196412;
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`, `mingold`, `maxgold`, `WorldEffectID`) VALUES 
(196412, 0, 6, 0, 0, 0);


-- NN (196401)
DELETE FROM `gameobject` WHERE `guid`=94605;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES 
(94605, 196401, 654, 4755, 4756, 1, 0, 0, 385, -1, -1681.84, 2507.57, 97.7786, 3.93862, 0, 0, -0.921639, 0.388047, 180, 255, 1, 0, '', 25383);

DELETE FROM `gameobject_template_addon` WHERE `entry`=196401;
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`, `mingold`, `maxgold`, `WorldEffectID`) VALUES 
(196401, 0, 6, 0, 0, 0);


-- Anvil (196880)
DELETE FROM `gameobject` WHERE `guid`=95433;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES 
(95433, 196880, 654, 4714, 4786, 1, 0, 0, 385, -1, -1865.89, 2232.71, 42.3229, 5.37562, 0, 0, -0.43837, 0.898795, 180, 255, 1, 0, '', 26365);


-- Forge (196879)
DELETE FROM `gameobject` WHERE `guid`=95435;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES 
(95435, 196879, 654, 4714, 4786, 1, 0, 0, 385, -1, -1869.11, 2229.79, 42.3233, 1.72787, 0, 0, 0.760405, 0.649449, 180, 255, 1, 0, '', 26365);


-- Terrain Swap Defaults
DELETE FROM `terrain_swap_defaults` WHERE `MapId` = 654 AND `TerrainSwapMap` IN (655,656);
INSERT INTO `terrain_swap_defaults` (`MapId`, `TerrainSwapMap`, Comment) VALUES
(654, 655, 'Gilneas Duskhaven Phase 1'),
(654, 656, 'Gilneas Duskhaven Phase 2');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=25 AND `SourceEntry` IN (638,655,656);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `NegativeCondition`) VALUES
(25, 638, 0, 47, 14396, 74, 1),
(25, 655, 0, 47, 14396, 74, 0),
(25, 655, 0, 47, 14467, 74, 1),
(25, 656, 0, 47, 14467, 74, 0);


-- Rebel Cannon (35317)
DELETE FROM `creature` WHERE `guid` IN (223293,223288,223283,223281,223275,223270,223255);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES 
(223293, 35317, 654, 4755, 4759, 1, 0, 172, 0, -1, 0, 0, -1533.46, 1591.96, 26.5365, 0.944223, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 25383),
(223288, 35317, 654, 4755, 4759, 1, 0, 172, 0, -1, 0, 0, -1540.95, 1596.29, 26.5364, 1.56207, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 25383),
(223283, 35317, 654, 4755, 4759, 1, 0, 172, 0, -1, 0, 0, -1528.7, 1610.23, 20.5689, 1.06465, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 25383),
(223281, 35317, 654, 4755, 4759, 1, 0, 172, 0, -1, 0, 0, -1517.84, 1603.99, 20.5689, 0.802851, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 25383),
(223275, 35317, 654, 4755, 4759, 1, 0, 172, 0, -1, 0, 0, -1528.2, 1588.42, 26.5371, 0.799012, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 25383),
(223270, 35317, 654, 4755, 4759, 1, 0, 172, 0, -1, 0, 0, -1540.18, 1613.62, 20.5689, 0.680678, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 25383),
(223255, 35317, 654, 4755, 4759, 1, 0, 172, 0, -1, 0, 0, -1549.41, 1595.73, 26.5359, 1.71042, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 25383);


-- Drowning Watchman (36440)
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=36440 AND `spell_id`=68735;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(36440, 68735, 3, 0);


-- Crate of Mandrake Essence (196394)
DELETE FROM `gameobject` WHERE `id`=196394;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES 
(95443, 196394, 654, 0, 0, 1, 0, 0, 385, -1, -1926.27, 2408.62, 30.0234, 5.44543, 0, 0, -0.406736, 0.913545, 180, 255, 1, 0, '', 26365);


-- Black Gunpowder Keg (196403)
DELETE FROM `gameobject` WHERE `guid` IN (95450,95449,95452,95456,95468,95467,95458,95459,95469,95470);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES 
(95450, 196403, 654, 4714, 4786, 1, 0, 182, 0, -1, -1904.02, 2312.95, 39.607, 0, 0, 0, 0, 1, 180, 255, 1, 0, '', 26365),
(95449, 196403, 654, 4714, 4786, 1, 0, 182, 0, -1, -1941.55, 2252.75, 35.7991, 0, 0, 0, 0, 1, 180, 255, 1, 0, '', 26365),
(95452, 196403, 654, 4714, 4786, 1, 0, 182, 0, -1, -1931.98, 2245.92, 35.8118, 0, 0, 0, 0, 1, 180, 255, 1, 0, '', 26365),
(95456, 196403, 654, 4714, 4786, 1, 0, 182, 0, -1, -1898.46, 2384.36, 30.1194, 0, 0, 0, 0, 1, 180, 255, 1, 0, '', 26365),
(95468, 196403, 654, 4714, 4786, 1, 0, 182, 0, -1, -1987.77, 2304.11, 30.5889, 0, 0, 0, 0, 1, 180, 255, 1, 0, '', 26365),
(95467, 196403, 654, 4714, 4786, 1, 0, 182, 0, -1, -1961.19, 2370.83, 29.094, 0, 0, 0, 0, 1, 180, 255, 1, 0, '', 26365),
(95458, 196403, 654, 4714, 4786, 1, 0, 182, 0, -1, -2007.88, 2287.72, 29.4369, 0, 0, 0, 0, 1, 180, 255, 1, 0, '', 26365),
(95459, 196403, 654, 4714, 4786, 1, 0, 182, 0, -1, -1942.48, 2404.08, 30.0043, 0, 0, 0, 0, 1, 180, 255, 1, 0, '', 26365),
(95469, 196403, 654, 4714, 4786, 1, 0, 182, 0, -1, -1978.85, 2383.12, 25.1076, 0, 0, 0, 0, 1, 180, 255, 1, 0, '', 26365),
(95470, 196403, 654, 4714, 4786, 1, 0, 182, 0, -1, -1931.51, 2407.5, 29.977, 0, 0, 0, 0, 1, 180, 255, 1, 0, '', 26365);


-- Forsaken Castaway (36488)
UPDATE `creature_template` SET `maxlevel`=12 WHERE `entry`=36488;


-- Doodad_Worgen_Cellar_Door_02 (206693)
DELETE FROM `gameobject` WHERE `guid`=94608;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES 
(94608, 206693, 654, 4755, 4756, 1, 0, 0, 439, -1, -1880.47, 2545.83, 3.08704, 3.82227, 0.019753, 0.00699425, -0.942434, 0.333734, 180, 255, 0, 0, '', 25383);


-- Mountain Horse (36540)
UPDATE `creature_template` SET `spell1`=68903, `unit_flags`=16777216 WHERE `entry`=36540;


-- NN (195466)
DELETE FROM `gameobject_template_addon` WHERE `entry`=195466;
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`, `mingold`, `maxgold`, `WorldEffectID`) VALUES 
(195466, 0, 4, 0, 0, 0);


-- NN (195465)
DELETE FROM `gameobject_template_addon` WHERE `entry`=195465;
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`, `mingold`, `maxgold`, `WorldEffectID`) VALUES 
(195465, 0, 4, 0, 0, 0);


-- NN (195454)
DELETE FROM `gameobject_template_addon` WHERE `entry`=195454;
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`, `mingold`, `maxgold`, `WorldEffectID`) VALUES 
(195454, 0, 4, 0, 0, 0);


-- NN (195453)
DELETE FROM `gameobject_template_addon` WHERE `entry`=195453;
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`, `mingold`, `maxgold`, `WorldEffectID`) VALUES 
(195453, 0, 4, 0, 0, 0);
