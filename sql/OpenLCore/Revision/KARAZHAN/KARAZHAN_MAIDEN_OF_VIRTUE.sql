SET @MAIDEN := 113971;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_maiden_of_virtue', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 4,
`unit_flags2` = `unit_flags2` |2048,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@MAIDEN, 11397101, 11397102);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (227508, 227817, 227823);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(227508, 'spell_maiden_mass_repetance'),
(227817, 'spell_maiden_holy_bulwark'),
(227823, 'spell_maiden_holy_wrath');

-- Mass Repentance
DELETE FROM spell_dbc_override WHERE spell = 227508;
INSERT INTO spell_dbc_override VALUES (227508, 34, 0, 1, 1, 'INTERRUPT_HIT_SPELL', 698272);
INSERT INTO spell_dbc_override VALUES (227508, 34, 0, 2, 1, 'INTERRUPT_DAMAGE_TAKEN', 698272);

DELETE FROM `areatrigger_template` WHERE `id` = 8812;
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(8812, 0, 2, 5, 5, 0, 0, 0, 0, 'at_sacred_ground', 23420);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` = 8812;
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(8812, 8812, 0, 2537, 0, 0, 86, 0, 155000, 23420);

DELETE FROM `creature_text` WHERE `entry` = @MAIDEN;
INSERT INTO `creature_text`(`entry`, `groupid`, `id`, `text`, `type`, `probability`, `sound`, `comment`) VALUES
(@MAIDEN, '0', '0', 'And so begins your purification!', '14', '100', '58644', 'MAIDEN - AGGRO'),
(@MAIDEN, '0', '1', 'The stench of corruption is upon you! ', '14', '100', '58645', 'MAIDEN - AGGRO'),
(@MAIDEN, '1', '0', 'All shall be sanctified!', '14', '100', '58646', 'MAIDEN - HOLY_BOLT'),
(@MAIDEN, '2', '0', 'By fire be cleansed!', '14', '100', '58639', 'MAIDEN - HOLY_SHOCK'),
(@MAIDEN, '3', '0', 'The righteous have nothing to fear!', '14', '100', '58638', 'MAIDEN - SACRED_GROUND'),
(@MAIDEN, '3', '1', 'Step into the light, mortals!', '14', '100', '58640', 'MAIDEN - SACRED_GROUND'),
(@MAIDEN, '4', '0', 'Hold, mortals! Open your hearts to virtue!', '14', '100', '58642', 'MAIDEN - MASS_REPETANCE'),
(@MAIDEN, '5', '0', 'Renounce your greed and perversion!', '14', '100', '58647', 'MAIDEN - HOLY_BULWARK'),
(@MAIDEN, '6', '0', 'Repent... or DIE!', '14', '100', '58648', 'MAIDEN - HOLY_WRATH'),
(@MAIDEN, '7', '0', 'Purified!', '14', '100', '58641', 'MAIDEN - KILL'),
(@MAIDEN, '7', '1', 'A teachable moment.', '14', '100', '58641', 'MAIDEN - KILL'),
(@MAIDEN, '8', '0', 'The lesson is complete.', '14', '100', '58641', 'MAIDEN - WIPE'),
(@MAIDEN, '8', '1', 'A pure mind is an orderly mind.', '14', '100', '58641', 'MAIDEN - WIPE'),
(@MAIDEN, '9', '0', 'I will... never... relent...', '14', '100', '58641', 'MAIDEN - DEATH'),
(@MAIDEN, '9', '1', 'You are all... as corrupt... as the Guardian...', '14', '100', '58641', 'MAIDEN - DEATH');