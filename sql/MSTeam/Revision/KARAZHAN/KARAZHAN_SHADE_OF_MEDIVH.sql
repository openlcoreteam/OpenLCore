SET @SHADE_MEDIVH := 114350;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_shade_of_medivh', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 2,
`unit_flags2` = 0,
`InhabitType` = 1,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@SHADE_MEDIVH, 11435001, 11435002);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_kara_guardian_image', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 2,
`InhabitType` = 1,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (114675, 11467501, 11467502);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (228334, 227806, 228269);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(228269, 'spell_shade_medivh_flame_wreath'),
(227806, 'spell_shade_medivh_ceaseless_winter');
(228334, 'spell_shade_medivh_guardian_image');

-- Piercing Missiles
DELETE FROM spell_dbc_override WHERE spell = 227628;
INSERT INTO spell_dbc_override VALUES (227628, 33, 0, 0, 1, 'Interrupt Flag', 698272);

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 227641;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(227641, 227644, 1, 'Piercing Missiles - Shade of Medivh');

DELETE FROM `spell_target_position` WHERE `ID` = 227779;
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `VerifiedBuild`) VALUES
(227779, 0, 1651, -4599.05, -2518.14, 2876.59, 23360),
(227779, 1, 1651, -4599.05, -2518.14, 2876.59, 23360);

DELETE FROM `areatrigger_template` WHERE `id` IN (8809, 8848, 8851);
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(8809, 4, 0, 40, 40, 1, 1, 0.3, 0.3, '', 23420),
(8848, 4, 0, 40, 40, 15, 15, 0.3, 0.3, 'at_kara_ceaseless_winter', 23420),
(8851, 0, 0, 4, 4, 0, 0, 0, 0, 'at_kara_flame_wreath', 23420);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN  (8809, 8848, 8851);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(8809, 8809, 0, 0, 2285, 0, 89, 0, 20000, 23420), -- SpellId : 227779
(8848, 8848, 0, 0, 2307, 0, 0, 0, 20000, 23420), -- SpellId : 227779
(8851, 8851, 2618, 0, 0, 0, 0, 0, 20000, 23420); -- SpellId : 228257

DELETE FROM `creature_text` WHERE `entry` = @SHADE_MEDIVH;
INSERT INTO `creature_text`(`entry`, `groupid`, `id`, `text`, `type`, `probability`, `sound`, `comment`) VALUES
(@SHADE_MEDIVH, '0', '0', 'This is who I am. I was tainted from birth, polluted from before my conception, a bad seed grown to bear bitter fruit.', '14', '100', '58644', 'CURATOR - INTRO'),
(@SHADE_MEDIVH, '1', '0', 'Hello, champions. I\'ve been expecting you.', '14', '100', '58644', 'SHADE_MEDIVH - AGGRO'),
(@SHADE_MEDIVH, '1', '1', 'You\'re just like the others, aren\'t you?', '14', '100', '77558', 'SHADE_MEDIVH - AGGRO'),
(@SHADE_MEDIVH, '2', '0', 'A basic spell... but effective', '14', '100', '77549', 'SHADE_MEDIVH - PIERCING_MISSILES'),
(@SHADE_MEDIVH, '2', '1', 'You grow weaker... I grow stronger!', '14', '100', '77564', 'SHADE_MEDIVH - PIERCING_MISSILES'),
(@SHADE_MEDIVH, '3', '0', 'The inherent nature of fire...', '14', '100', '77561', 'SHADE_MEDIVH - EVOCATION'),
(@SHADE_MEDIVH, '3', '1', 'Burn... just like that dragon!', '14', '100', '77570', 'SHADE_MEDIVH - EVOCATION'),
(@SHADE_MEDIVH, '4', '0', 'A memory, frozen in time!', '14', '100', '77560', 'SHADE_MEDIVH - EVOCATION_END'),
(@SHADE_MEDIVH, '5', '0', 'Keep still. Let it end.', '14', '100', '77555', 'SHADE_MEDIVH - KILL'),
(@SHADE_MEDIVH, '5', '1', 'Winter is here!', '14', '100', '77572', 'SHADE_MEDIVH - DEATH'),
(@SHADE_MEDIVH, '6', '0', 'I suggest staying put.', '14', '100', '77566', 'SHADE_MEDIVH - DEATH'),
(@SHADE_MEDIVH, '6', '1', 'It burns, burns, burns!', '14', '100', '77550', 'SHADE_MEDIVH - DEATH'),
(@SHADE_MEDIVH, '7', '0', 'Carrion for the birds...', '14', '100', '77570', 'SHADE_MEDIVH - DEATH'),
(@SHADE_MEDIVH, '7', '1', 'So many pieces of me...', '14', '100', '77565', 'SHADE_MEDIVH - DEATH'),
(@SHADE_MEDIVH, '8', '0', 'Just. Gets. Easier.', '14', '100', '77557', 'SHADE_MEDIVH - DEATH'),
(@SHADE_MEDIVH, '8', '1', 'A fitting end for a thief!', '14', '100', '58641', 'SHADE_MEDIVH - DEATH'),
(@SHADE_MEDIVH, '8', '2', 'All goes as planned.', '14', '100', '58641', 'SHADE_MEDIVH - DEATH'),
(@SHADE_MEDIVH, '8', '3', 'The tower needed a new decoration.', '14', '100', '77571', 'SHADE_MEDIVH - DEATH'),
(@SHADE_MEDIVH, '9', '0', 'You have no idea what it\'s like to do the things I\'ve done. Harsh things. Necessary things.', '14', '100', '77557', 'SHADE_MEDIVH - DEATH'),
(@SHADE_MEDIVH, '9', '1', 'Once you get used to it, you can kill friends as easily as anyone else.', '14', '100', '58641', 'SHADE_MEDIVH - DEATH'),
(@SHADE_MEDIVH, '10', '0', 'I fought it... for as long as... I could...', '14', '100', '58641', 'SHADE_MEDIVH - DEATH'),
(@SHADE_MEDIVH, '10', '1', 'So... it comes... to this...', '14', '100', '58641', 'SHADE_MEDIVH - DEATH'),
(@SHADE_MEDIVH, '10', '2', 'Atiesh... will be... splintered...', '14', '100', '77569', 'SHADE_MEDIVH - DEATH');