SET @NALTIRA := 98207;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_naltira', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 4,
`unit_flags2` = `unit_flags2` |2048,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@NALTIRA, 9820701, 9820702);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_arc_vicious_manafang', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 4,
`InhabitType` = 4,
`unit_flags` = 2,
`unit_flags2` = `unit_flags2` |2048
WHERE `entry` IN (110966, 11096601, 11096602);

UPDATE `creature_template` SET 
`InhabitType` = 4,
`flags_extra` = `flags_extra` |128
WHERE `entry` = 68553;


DELETE FROM `spell_script_names` WHERE `spell_id` IN (199810, 199811, 200227, 199956, 200284, 200024, 224425, 211543);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(199810, 'spell_naltira_blink_strikes'),
(199811, 'spell_naltira_blink_strikes_dmg'),
(200227, 'spell_naltira_tangled_web'),
(200284, 'spell_naltira_tangled_web_dmg'),
(199956, 'spell_naltira_nether_venom'),
(200024, 'spell_naltira_nether_venom_dmg'),
(211543, 'spell_arc_devour');

DELETE FROM `areatrigger_template` WHERE `id` IN (5605);
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(5605, 4, 0, 4.5, 4.5, 5, 5, 0.3, 0.3, 'at_arc_nether_venom', 23420);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN (5605);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(5605, 5605, 0, 0, 0, 0, 0, 0, 300000, 23420);

DELETE FROM `instance_template` WHERE `map` = 1516;
INSERT INTO `instance_template` (`map`, `parent`, `script`, `allowMount`) VALUES (1516, 0, 'instance_the_arcway', 0);

DELETE FROM `creature_template_addon` WHERE `entry` = 110966;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(110966, 0, 0, 50331648, 1, 0, '');