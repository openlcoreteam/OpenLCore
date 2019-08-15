SET @MANA_DEVOURER := 116494;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_mana_devourer', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 2,
`unit_flags2` = 0,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@MANA_DEVOURER, 11649401, 11649402);

UPDATE `creature_template` SET 
`flags_extra` = 128
WHERE `entry` IN (98080, 98081, 98082);

-- Loose Mana
DELETE FROM spell_dbc_override WHERE spell = 227296;
INSERT INTO spell_dbc_override VALUES (227296, 0, 0, 6, 0, 'Effect Fix', 698272);
INSERT INTO spell_dbc_override VALUES (227296, 1, 0, 395, 0, 'Aura Fix', 698272);
INSERT INTO spell_dbc_override VALUES (227296, 3, 0, 1, 0, 'Target Fix', 698272);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (227297, 227524, 227451);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(227297, 'spell_devourer_coalesce_power'),
(227524, 'spell_devourer_energy_void'),
(227451, 'spell_devourer_mana_restore');

DELETE FROM `areatrigger_template` WHERE `id` IN (8791, 9077, 8754);
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(8791, 0, 2, 10, 10, 0, 0, 0, 0, 'at_kara_energy_void', 23420),
(9077, 0, 0, 0.5, 0.5, 0, 0, 0, 0, '', 23420),
(8754, 0, 4, 3, 3, 0, 0, 0, 0, 'at_kara_loose_mana', 23420);

UPDATE `instance_template` SET `script` = 'instance_new_karazhan' WHERE `map` = 1651;

DELETE FROM `creature_model_info` WHERE `DisplayID` = 73157;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`) VALUES
(73157, 8.012421, 10, 2);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN (8791, 9077, 8754);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(8791, 8791, 0, 2294, 0, 0, 85, 0, 120000, 23420), -- SpellId: 227523
(9077, 9077, 0, 0, 0, 0, 0, 0, 10000, 23420), -- SpellId : 230212
(8754, 8754, 0, 0, 0, 0, 0, 375109, 0, 23420); -- SpellId: 227296
