UPDATE `creature_template` SET `npcflag`='0' WHERE  `entry`=15271;
UPDATE `creature_template` SET `npcflag`='0' WHERE  `entry`=15294;

DELETE FROM `smart_scripts` WHERE `entryorguid`=15294 AND `source_type`=0 AND `id`=0 AND `link`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=15294 AND `source_type`=0 AND `id`=1 AND `link`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=15294 AND `source_type`=0 AND `id`=2 AND `link`=0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=15294 AND `source_type`=0 AND `id`=3 AND `link`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=15294 AND `source_type`=0 AND `id`=0 AND `link`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) 
VALUES (15294, 0, 0, 0, 2, 0, 100, 1, 0, 50, 0, 0, '', 11, 31325, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cast Renew at 50% HP');

UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=15297;
DELETE FROM `creature_queststarter` WHERE `id`=15297 AND `quest`=8346;
-- REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES (15297, 8346);
DELETE FROM `creature_questender` WHERE `id`=15297 AND `quest`=8346;
-- REPLACE INTO `creature_questender` (`id`, `quest`) VALUES (15297, 8346);
DELETE FROM `creature_questender` WHERE `id`=15297 AND `quest`=8338;
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES (15297, 8338);
UPDATE `quest_template` SET `AllowableRaces`='512' WHERE  `ID`=8338;

DELETE FROM `smart_scripts` WHERE `entryorguid`=15274 AND `source_type`=0 AND `id`=0 AND `link`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) 
VALUES (15274, 0, 0, 0, 8, 0, 100, 1, 28730, 0, 0, 0, '', 11, 61314, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Mana Wyrm - On Spellhit \'Arcane Torrent\' - Cast \'Quest Credit 8346\' (No Repeat)');
DELETE FROM `smart_scripts` WHERE `entryorguid`=15274 AND `source_type`=0 AND `id`=1 AND `link`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) 
VALUES (15274, 0, 1, 0, 8, 0, 100, 1, 25046, 0, 0, 0, '', 11, 61314, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Mana Wyrm - On Spellhit \'Arcane Torrent\' - Cast \'Quest Credit 8346\' (No Repeat)');
DELETE FROM `smart_scripts` WHERE `entryorguid`=15274 AND `source_type`=0 AND `id`=2 AND `link`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES (15274, 0, 2, 0, 8, 0, 100, 1, 50613, 0, 0, 0, '', 11, 61314, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Mana Wyrm - On Spellhit \'Arcane Torrent\' - Cast \'Quest Credit 8346\' (No Repeat)');
DELETE FROM `smart_scripts` WHERE `entryorguid`=15274 AND `source_type`=0 AND `id`=3 AND `link`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES (15274, 0, 3, 0, 8, 0, 100, 1, 155145, 0, 0, 0, '', 11, 61314, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Mana Wyrm - On Spellhit \'Arcane Torrent\' - Cast \'Quest Credit 8346\' (No Repeat)');

DELETE FROM `creature_queststarter` WHERE `id`=16144 AND `quest`=9067;
REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES (16144, 9067);

DELETE FROM `quest_template_addon` WHERE `ID`=9144;
REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) 
VALUES (9144, 0, 0, 0, 0, 9147, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `quest_template_addon` WHERE `ID`=9147;
REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) 
VALUES (9147, 0, 0, 0, 9144, 9148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `quest_template_addon` WHERE `ID`=9148;
REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) 

VALUES (9148, 0, 0, 0, 9147, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '');


DELETE FROM `creature` WHERE `id`=16364;

DELETE FROM `gameobject` WHERE `guid`=43948;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) 
VALUES (43948, 181260, 530, 3430, 3474, '0', 0, 0, 0, -1, 8191.46, -6335.83, 64.511, 0.129974, 0, 0, 0.0649413, 0.997889, 250, 0, 0, 1, '', 0);
DELETE FROM `gameobject` WHERE `guid`=49512;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) 
VALUES (49512, 300067, 530, 3430, 3914, '0', 0, 0, 0, -1, 8277.38, -7213.13, 137.63, 0.129974, 0, 0, 0.0649413, 0.997889, 250, 0, 0, 1, '', 0);

DELETE FROM `gameobject_addon` WHERE `guid`=43948;
REPLACE INTO `gameobject_addon` (`guid`, `parent_rotation0`, `parent_rotation1`, `parent_rotation2`, `parent_rotation3`, `invisibilityType`, `invisibilityValue`, `WorldEffectID`) VALUES (43948, 0, 0, 0.0649414, 0.997889, 8, 1000, 0);
DELETE FROM `gameobject_addon` WHERE `guid`=49512;
REPLACE INTO `gameobject_addon` (`guid`, `parent_rotation0`, `parent_rotation1`, `parent_rotation2`, `parent_rotation3`, `invisibilityType`, `invisibilityValue`, `WorldEffectID`) VALUES (49512, 0, 0, 0.0649414, 0.997889, 8, 1000, 0);

DELETE FROM `creature` WHERE `guid`=68047;
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) 
VALUES (68047, 16196, 530, 3430, 3430, '0', 0, 0, 0, -1, 0, 0, 8119.48, -6901.8, 70.5113, 1.31326, 250, 0, 0, 247, 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `creature_addon` WHERE `guid`=68047;
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) 
VALUES (68047, 0, 0, 8, 0, 68, 0, 0, 0, NULL);

DELETE FROM `gameobject` WHERE `guid`=66590 AND `id`=181833 AND `map`=532;
DELETE FROM `gameobject_addon` WHERE `guid`=66590;

DELETE FROM `gameobject` WHERE `guid`=43945 AND `id`=182093;