SET @IVANYR := 98203;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_ivanyr', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 4,
`unit_flags2` = `unit_flags2` |2048,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@IVANYR, 9820301, 9820302);

UPDATE `creature_template` SET
`minLevel` = 112,
`maxLevel` = 112,
`faction` = 16,
`unit_flags` = 256
WHERE `entry` IN (98734, 9873401, 9873402);

DELETE FROM spell_dbc_override WHERE spell = 196392;
INSERT INTO spell_dbc_override VALUES (196392, 3, 0, 25, 0, 'Target Fix', 698272);

DELETE FROM spell_dbc_override WHERE spell = 196357;
INSERT INTO spell_dbc_override VALUES (196357, 33, 0, 8, 2, 'Prevent Interrupt', 698272);


DELETE FROM `spell_script_names` WHERE `spell_id` IN (196392, 220581, 196804, 196805);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(196392, 'spell_ivanyr_overcharge_mana'),
(220581, 'spell_ivanyr_charged_bolt'),
(196804, 'spell_ivanyr_nether_link'),
(196805, 'spell_ivanyr_nether_link_dmg');

DELETE FROM `areatrigger_template` WHERE `id` IN (8013, 5285);
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(8013, 0, 0, 2, 2, 0, 0, 0, 0, 'at_arc_charged_bolt', 23420),
(5285, 3, 0, 5.19397, 5.19397, 0, 0, 0, 0, 'at_arc_nether_link', 23420);

DELETE FROM `areatrigger_template_polygon_vertices` WHERE `AreaTriggerId` = 5285;
INSERT IGNORE INTO `areatrigger_template_polygon_vertices` (`AreaTriggerId`, `Idx`, `VerticeX`, `VerticeY`, `VerticeTargetX`, `VerticeTargetY`, `VerifiedBuild`) VALUES
(5285, 2, -9.150391, 17.40723, 0, 0, 23420),
(5285, 1, 13.60913, 10.91553, 0, 0, 23420),
(5285, 0, -0.671875, -4.080078, 0, 0, 23420);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN (5285,8013);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(8013, 8013, 0, 0, 0, 0, 0, 12935, 20000, 23420), -- SpellId : 220569
(5285, 5285, 0, 0, 0, 0, 0, 0, 120000, 23420); -- SpellId : 196806

DELETE FROM `creature_text` WHERE `entry` = @IVANYR;
INSERT INTO `creature_text`(`entry`, `groupid`, `id`, `text`, `type`, `probability`, `sound`, `comment`) VALUES
(@IVANYR, '0', '0', 'Stay back! It\'s mine!', '14', '100', '58644', 'IVANYR - INTRO'),
(@IVANYR, '1', '0', 'Thieves! The mana is MINE! ', '14', '100', '58645', 'IVANYR - AGGRO'),
(@IVANYR, '2', '0', 'Go away!', '14', '100', '58646', 'IVANYR - VOLATILE_MAGIC'),
(@IVANYR, '2', '1', 'Get away from my mana!', '14', '100', '58639', 'IVANYR - VOLATILE_MAGIC'),
(@IVANYR, '3', '0', 'Thieving wretch!', '14', '100', '58638', 'IVANYR - KILL'),
(@IVANYR, '3', '1', 'I warned you!', '14', '100', '58640', 'IVANYR - KILL'),
(@IVANYR, '3', '2', 'I will not be consumed!', '14', '100', '58642', 'IVANYR - KILL'),
(@IVANYR, '4', '0', 'More... more...', '14', '100', '58647', 'IVANYR - DEATH'),
(@IVANYR, '5', '0', 'No! I need more...', '14', '100', '58648', 'IVANYR - OVERCHARGE'),
(@IVANYR, '5', '1', 'No! I will not succumb.', '14', '100', '58641', 'IVANYR - OVERCHARGE');