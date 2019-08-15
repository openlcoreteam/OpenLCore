SET @MOROES := 114312;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_moroes', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 2,
`unit_flags2` = 0,
`InhabitType` = 1,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@MOROES, 11431201, 11431202);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_kara_moroes_guest', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16
WHERE `entry` IN (114316, 114317, 114318, 114319, 114320, 114321);

DELETE FROM `creature` WHERE `id` IN (114316, 11431601, 11431602, 114317, 11431701, 11431702, 114318, 11431801, 11431802, 11431901, 11431902, 114320, 11432001, 11432002, 114321, 11432101, 11432102);

UPDATE `creature_template` SET 
`ScriptName` = '', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`flags_extra` = 128
WHERE `entry` IN (114327);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (227736, 227872, 227672);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(227736, 'spell_moroes_vanish'),
(227872, 'spell_moroes_ghastly_purge'),
(227672, 'spell_kara_will_breaker');

DELETE FROM `creature_template_addon` WHERE `entry` = 114327;
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES
(114327, '227472');

DELETE FROM `areatrigger_template` WHERE `id` IN (8782);
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(8782, 0, 4, 5, 5, 0, 0, 0, 0, 'at_kara_whirling_edge', 23420);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN (8782);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(8782, 8782, 0, 0, 0, 0, 0, 0, 0, 23420); -- SpellId: 227472

DELETE FROM `creature_text` WHERE `creatureid` = @MOROES;
INSERT INTO `creature_text`(`creatureid`, `groupid`, `id`, `text`, `type`, `probability`, `sound`, `comment`) VALUES
(@MOROES, '0', '1', 'The master has not been himself for quite some time. Perhaps a feast will brighten his spirit.', '14', '100', '58641', 'MOROES - INTRO'),
(@MOROES, '1', '0', 'I don\'t believe the master is expecting you!', '14', '100', '58644', 'MORES - AGGRO'),
(@MOROES, '1', '1', 'I do so detest party crashers!', '14', '100', '58644', 'MOROES - AGGRO'),
(@MOROES, '1', '2', 'I\'ll drag you out by your scruff!', '14', '100', '58645', 'MOROES - AGGRO'),
(@MOROES, '1', '3', 'May we see your invitation?', '14', '100', '58646', 'MOROES - AGGRO'),
(@MOROES, '2', '0', 'May I take your jacket?', '14', '100', '58639', 'MOROES - COAT_JACKET'),
(@MOROES, '2', '1', 'Mind your manners!', '14', '100', '58638', 'MOROES - COAT_JACKET'),
(@MOROES, '3', '0', 'I insist you dress for dinner!', '14', '100', '58640', 'MOROES - VANISH'),
(@MOROES, '4', '0', 'Stop troubling the master\'s guests!', '14', '100', '58642', 'MOROES - GHASTLY'),
(@MOROES, '5', '0', 'Nothing a good sprinkling of sawdust can\'t handle.', '14', '100', '58647', 'MOROES - KILL'),
(@MOROES, '5', '1', 'I\'ll have the cleaning crew take care of this... mess.', '14', '100', '58648', 'MOROES - KILL'),
(@MOROES, '5', '2', 'Hm! Seems that one had enough for the evening.', '14', '100', '58641', 'MOROES - KILL'),
(@MOROES, '5', '3', 'Stop being such a nuisance!', '14', '100', '58641', 'MOROES - KILL'),
(@MOROES, '6', '0', 'Perhaps your party would be more comfortable at the children\'s table.', '14', '100', '58641', 'MOROES - WIPE'),
(@MOROES, '6', '1', 'The guards really must do a better job of keeping out the ruffians.', '14', '100', '58641', 'MOROES - WIPE'),
(@MOROES, '7', '0', 'Seems I\'ll be... retiring... for... the evening...', '14', '100', '58641', 'MOROES - DEATH'),
(@MOROES, '7', '1', 'Master... I hope... I served you... well...', '14', '100', '58641', 'MOROES - DEATH'),
(@MOROES, '7', '2', 'I fear that I am currently... indisposed...', '14', '100', '58641', 'MOROES - DEATH'),
(@MOROES, '7', '3', 'I will just need... a moment...', '14', '100', '58641', 'MOROES - DEATH');