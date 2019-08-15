SET @ATTUMEN := 114262;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_attumen', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 2,
`unit_flags2` = 0,
`InhabitType` = 1,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@ATTUMEN, 11426201, 11426202);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_kara_midnight', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 2,
`InhabitType` = 1,
`VehicleId` = 4990,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (114264, 11426401, 11426402);

UPDATE `creature_template` SET
`ScriptName` = 'npc_kara_intagible_presence',
`minLevel` = 112,
`maxLevel` = 112,
`faction` = 16,
`unit_flags` = 256,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (114315, 11431501, 11431502);


DELETE FROM `spell_script_names` WHERE `spell_id` IN (227338, 227404, 227365);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(227338, 'spell_attumen_riderless'),
(227404, 'spell_attumen_intagible_presence'),
(227365, 'spell_attumen_spectral_charge');

DELETE FROM `areatrigger_template` WHERE `id` IN (8762);
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(8762, 0, 0, 1, 1, 0, 0, 0, 0, 'at_kara_spectral_charge', 23420);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN  (8762);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(8762, 8762, 2271, 0, 0, 0, 0, 9000, 9000, 23420);

DELETE FROM `creature_text` WHERE `CreatureID` = @ATTUMEN;
INSERT INTO `creature_text`(`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Probability`, `Sound`, `comment`) VALUES
(@ATTUMEN, '0', '0', 'Ah, faithful Midnight. For many years, our countless hunts provided game for the master\'s table.', '14', '100', '58644', 'ATTUMEN - INTRO'),
(@ATTUMEN, '1', '0', 'These days we hunt for sport... and the glory of the kill!', '14', '100', '58644', 'ATTUMEN - AGGRO'),
(@ATTUMEN, '1', '1', 'Well, well! Another group of thieves trying to steal my horse!', '14', '100', '58645', 'ATTUMEN - AGGRO'),
(@ATTUMEN, '2', '0', 'My quarry never escapes!', '14', '100', '58646', 'ATTUMEN - INTAGIBLE PRESENCE'),
(@ATTUMEN, '3', '0', 'Rise up, Midnight! Stamp them into dust!', '14', '100', '58639', 'ATTUMEN - MIGHTY_STOMP'),
(@ATTUMEN, '4', '0', 'Time to face my quarry toe-to-toe!', '14', '100', '58638', 'ATTUMEN - FOOT_FIGHT'),
(@ATTUMEN, '5', '0', 'We ride, Midnight! To victory!', '14', '100', '58640', 'ATTUMEN - RIDE_MIDNIGHT'),
(@ATTUMEN, '6', '0', 'Form ranks! Charge!', '14', '100', '58642', 'ATTUMEN - SPECTRAL_CHARGE'),
(@ATTUMEN, '7', '0', 'My trophy collection grows.', '14', '100', '58647', 'ATTUMEN - KILL'),
(@ATTUMEN, '7', '1', 'Easy prey!', '14', '100', '58648', 'ATTUMEN - KILL'),
(@ATTUMEN, '8', '0', 'Well done, Midnight!', '14', '100', '58641', 'ATTUMEN - KILL_MIDNIGHT'),
(@ATTUMEN, '9', '0', 'They had no chance! I kill for a living!', '14', '100', '58641', 'ATTUMEN - WIPE'),
(@ATTUMEN, '10', '0', 'I... have become... the hunted...', '14', '100', '58641', 'ATTUMEN - DEATH');
