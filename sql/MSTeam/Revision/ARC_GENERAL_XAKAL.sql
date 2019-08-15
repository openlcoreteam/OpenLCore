SET @XAKAL := 98206;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_general_xakal', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 4,
`unit_flags2` = `unit_flags2` |2048,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@XAKAL, 9820601, 9820602);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_arc_fissure',
`minLevel` = 112,
`maxLevel` = 112,
`faction` = 16,
`flags_extra` = `flags_extra` |128,
`InhabitType` = 8
WHERE `entry` IN (100342, 10034201, 10034202);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_arc_dread_felbat',
`minLevel` = 112,
`maxLevel` = 112,
`faction` = 16,
`InhabitType` = 4
WHERE `entry` IN (100393, 10039301, 10039302);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (197776, 197786);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(197776, 'spell_xakal_fel_fissure'),
(197786, 'spell_arc_bombardment');

DELETE FROM `areatrigger_template` WHERE `id` IN (6940, 8007, 5355);
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(6940, 3, 0, 0, 0, 0, 0, 0, 0, 'at_arc_shadow_slash', 23420),
(8007, 0, 0, 4, 4, 0, 0, 0, 0, 'at_arc_wake_of_shadow', 23420),
(5355, 4, 4, 4.5, 4.5, 5, 5, 0.3, 0.3, 'at_arc_fel_fissure', 23420);

DELETE FROM `areatrigger_template_polygon_vertices` WHERE `AreaTriggerId` IN (6940);
INSERT INTO `areatrigger_template_polygon_vertices` (`AreaTriggerId`, `Idx`, `VerticeX`, `VerticeY`, `VerticeTargetX`, `VerticeTargetY`, `VerifiedBuild`) VALUES
(6940, 3, 0.75, 4, 0, 0, 23420),
(6940, 2, 0.75, -4, 0, 0, 23420),
(6940, 1, -0.75, -4, 0, 0, 23420),
(6940, 0, -0.75, 4, 0, 0, 23420);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN (6940, 8007, 5355);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(6940, 6940, 0, 0, 0, 0, 0, 8286, 20000, 23420),
(8007, 8007, 0, 0, 0, 0, 26, 0, 20000, 23420),
(5355, 5355, 0, 0, 0, 0, 0, 0, 0, 23420);

DELETE FROM `instance_template` WHERE `map` = 1516;
INSERT INTO `instance_template` (`map`, `parent`, `script`, `allowMount`) VALUES (1516, 0, 'instance_the_arcway', 0);

DELETE FROM `creature_text` WHERE `CreatureID` = @XAKAL;
INSERT INTO `creature_text`(`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Probability`, `Sound`, `comment`) VALUES
(@XAKAL, '0', '0', 'Form up, maggots! Secure the breach until we receive orders from Gul\'dan!', '14', '100', '58644', 'XAKAL - INTRO'),
(@XAKAL, '1', '0', 'Good! Some entertainment! I was getting restless!', '14', '100', '58645', 'XAKAL - AGGRO'),
(@XAKAL, '2', '0', 'All who rise against the Legion are doomed!', '14', '100', '58646', 'XAKAL - FEL_FISSURE'),
(@XAKAL, '3', '0', 'All in my shadow will crumble and fall!', '14', '100', '58639', 'XAKAL - SHADOW_SLASH'),
(@XAKAL, '4', '1', 'Reinforcements to me! NOW!', '14', '100', '58638', 'XAKAL - FEL_BATS'),
(@XAKAL, '5', '0', 'More fuel to stop the fel fires.', '14', '100', '58640', 'XAKAL - KILL'),
(@XAKAL, '5', '1', 'Another notch for my fel blade.', '14', '100', '58642', 'XAKAL - KILL_2'),
(@XAKAL, '5', '2', 'No match for the great Xakal!', '14', '100', '58647', 'XAKAL - KILL_3'),
(@XAKAL, '6', '0', 'Gather, minions! Feast on their corpses, where the blacken is still warm.', '14', '100', '58648', 'XAKAL - WIPE'),
(@XAKAL, '7', '0', 'No... NO! None can best... the great Xakal...', '14', '100', '58641', 'XAKAL - DEAD');
