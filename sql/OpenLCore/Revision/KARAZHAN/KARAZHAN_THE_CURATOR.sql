SET @CURATOR := 114247;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_curator', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 2,
`unit_flags2` = 0,
`InhabitType` = 4,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@CURATOR, 11424701, 11424702);

DELETE FROM `creature_template_addon` WHERE `entry` = 114247;

UPDATE `creature_template` SET `faction` = 35 WHERE `entry` IN (114262, 11426201, 11426202);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_kara_volatile_energy', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 2,
`unit_flags2` = `unit_flags2` |2048,
`InhabitType` = 8,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` = 114249;

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (234416, 227256);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(234416, 227267, 1, 'Summon Volatile Energy - The Curator'),
(227256, 227257, 0, 'Overload - The Curator');

DELETE FROM `spell_script_names` WHERE `spell_id` IN (227270, 227269, 227254, 227257, 227278);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(227269, 'spell_kara_arc_lightning'),
(227270, 'spell_kara_arc_lightning_dmg'),
(227254, 'spell_curator_evocation'),
(227257, 'spell_curator_overload'),
(227278, 'spell_curator_power_discharge');

DELETE FROM `areatrigger_template` WHERE `id` = 8780;
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(8780, 0, 0, 6, 6, 0, 0, 0, 0, 'at_kara_power_discharge', 23420);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` = 8780;
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(8780, 8780, 0, 0, 0, 0, 0, 0, 0, 23420); -- SpellId : 227289

DELETE FROM `creature_text` WHERE `entry` = @CURATOR;
INSERT INTO `creature_text`(`entry`, `groupid`, `id`, `text`, `type`, `probability`, `sound`, `comment`) VALUES
(@CURATOR, '0', '0', 'Janitorial units: begin Menagerie decontamination.', '12', '100', '58644', 'CURATOR - INTRO'),
(@CURATOR, '1', '0', 'The Menagerie is for-- ERADICATE! ERADICATE!', '14', '100', '58644', 'CURATOR - AGGRO'),
(@CURATOR, '1', '1', 'Welcome to the-- TERMINATE INTRUDERS! ', '14', '100', '58645', 'CURATOR - AGGRO'),
(@CURATOR, '2', '0', 'Countermeasures deployed.', '12', '100', '58646', 'CURATOR - VOLATILE_ENERGY'),
(@CURATOR, '2', '1', 'DETERENT ACIVATED!', '12', '100', '58639', 'CURATOR - VOLATILE_ENERGY'),
(@CURATOR, '3', '0', 'Overload in progress. Prepare for-- PURGE! PURGE! PURGE!', '12', '100', '58638', 'CURATOR - EVOCATION'),
(@CURATOR, '3', '1', 'Attention guests: DIE! DIE! DIE!', '12', '100', '58640', 'CURATOR - EVOCATION'),
(@CURATOR, '4', '0', 'Deterrent protocols successful.', '12', '100', '58642', 'CURATOR - EVOCATION_END'),
(@CURATOR, '5', '0', 'EXTERMINATED!', '12', '100', '58647', 'CURATOR - KILL'),
(@CURATOR, '6', '0', 'Curator is no longer op... er... ation... al.', '14', '100', '58648', 'CURATOR - DEATH'),
(@CURATOR, '6', '1', 'System... failure... im... mi... nent...', '14', '100', '58641', 'CURATOR - DEATH');