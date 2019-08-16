SET @NIGHTBANE := 114895;
SET @ARCHANAGOS := 115213;
SET @IMAGE_MEDIVH := 115038;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_nightbane', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 2,
`unit_flags2` = 0,
`InhabitType` = 4,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@NIGHTBANE, 11489501, 11489502);

UPDATE `creature_template` SET
`ScriptName` = 'npc_kara_bonecurse',
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`InhabitType` = 4
WHERE `entry` IN (114903, 11490301, 11490302);

UPDATE `creature_template` SET
`ScriptName` = 'npc_kara_restless_bones',
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16
WHERE `entry` IN (114906, 11490601, 11490602);

UPDATE `creature_template` SET
`ScriptName` = 'npc_kara_image_of_medivh',
`npcflag` = 1
WHERE `entry` IN (115038, 11503801, 11503802);

UPDATE `gameobject_template` SET 
`ScriptName` = 'go_door_entrance'
WHERE `entry` = 259690;

UPDATE `creature_template` SET 
`ScriptName` = 'npc_kara_soul_fragment',
`npcflag` = `npcflag` |16777216,
`unit_flags` = 768
WHERE `entry` IN (115103, 115113, 115101, 115013, 115105);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (228862, 228796, 228829, 228835);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(228862, 'spell_nightbane_charred_earth'),
(228796, 'spell_nightbane_ignite_soul'),
(228829, 'spell_nightbane_burning_bones'),
(228835, 'spell_kara_absorb_vitality');

DELETE FROM `spell_target_position` WHERE `ID` IN (232406);
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `VerifiedBuild`) VALUES
(232406, 0, 1651, -11049.805, -1980.708, 101.889, 23360);

DELETE FROM `areatrigger_template` WHERE `id` IN (8905, 9175);
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(8905, 0, 0, 10, 10, 0, 0, 0, 0, 'at_kara_charred_earth', 24461),
(9175, 4, 0, 10, 10, 4, 4, 0.3, 0.3, '', 24461);

DELETE FROM `creature` WHERE `id` IN (115103, 115113, 115101, 115013, 115105, @NIGHTBANE, 11489501, 11489502);
INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawndifficulties`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(115103, 1651, 8443, 8443, 8388608, 0, 0, 0, -10980.71, -1865.066, 81.81189, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420),
(115105, 1651, 0, 0, 8388608, 0, 0, 0, -10895.200, -1806.410, 91.579, 4.62, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420),
(115101, 1651, 0, 0, 8388608, 0, 0, 0, -10899, -2076.939, 49.55752, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420),
(115013, 1651, 0, 0, 8388608, 0, 0, 0, -10849.97, -2095.043, 92.24573, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420),
(@NIGHTBANE, 1651, 0, 0, 8388608, 0, 0, 0, -11161.1, -1948.520, 91.4738, 2.12048, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420),
(11489501, 1651, 0, 0, 8388608, 0, 0, 0, -11161.1, -1948.520, 91.4738, 2.12048, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420),
(11489502, 1651, 0, 0, 8388608, 0, 0, 0, -11161.1, -1948.520, 91.4738, 2.12048, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 23420);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN (8905, 9175);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(8905, 8905, 0, 0, 0, 0, 0, 0, 60000, 24461), -- SpellId : 228864
(9175, 9175, 0, 0, 0, 0, 93, 0, 60000, 24461); -- SpellId : 228864

DELETE FROM `creature_text` WHERE `entry` IN (@NIGHTBANE, @ARCHANAGOS, @IMAGE_MEDIVH);
INSERT INTO `creature_text`(`entry`, `groupid`, `id`, `text`, `type`, `probability`, `sound`, `comment`) VALUES
(@NIGHTBANE, '0', '0', 'Learn the meaning of torment!', '14', '100', '77532', 'NIGHTBANE - AGGRO'),
(@NIGHTBANE, '0', '1', 'Come forth and burn! ', '14', '100', '77534', 'NIGHTBANE - AGGRO'),
(@NIGHTBANE, '1', '0', 'Burn from the inside!', '14', '100', '77523', 'NIGHTBANE - IGNITE_SOUL'),
(@NIGHTBANE, '1', '1', 'Your soul betrays your allies!', '14', '100', '77522', 'NIGHTBANE - IGNITE_SOUL'),
(@NIGHTBANE, '1', '2', 'Your lifeblood is my weapon!', '14', '100', '77524', 'NIGHTBANE - IGNITE_SOUL'),
(@NIGHTBANE, '2', '0', 'I\'ve toyed with you long enough!', '14', '100', '77545', 'NIGHTBANE - PHASE_AIR'),
(@NIGHTBANE, '2', '1', 'Miserable vermin. I shall exterminate you from the air!', '14', '100', '77528', 'NIGHTBANE - PHASE_AIR'),
(@NIGHTBANE, '3', '0', 'Enough! I will finish you myself!', '14', '100', '77529', 'NIGHTBANE - PHASE_3'),
(@NIGHTBANE, '3', '1', 'I will end you!', '14', '100', '77546', 'NIGHTBANE - PHASE_3'),
(@NIGHTBANE, '3', '2', 'Time to end this!', '14', '100', '77544', 'NIGHTBANE - PHASE_3'),
(@NIGHTBANE, '4', '0', 'Run, cowards!', '14', '100', '77525', 'NIGHTBANE - BELLOWING_ROAR'),
(@NIGHTBANE, '4', '1', 'Weak-willed mortals!', '14', '100', '77526', 'NIGHTBANE - BELLOWING_ROAR'),
(@NIGHTBANE, '4', '2', 'Your courage falters!', '14', '100', '77527', 'NIGHTBANE - BELLOWING_ROAR'),
(@NIGHTBANE, '5', '0', 'I\'ll reduce you to ashes!', '14', '100', '77533', 'NIGHTBANE - KILL'),
(@NIGHTBANE, '5', '1', 'Kindling for the fire!', '14', '100', '77535', 'NIGHTBANE - KILL'),
(@NIGHTBANE, '5', '2', 'Pathetic!', '14', '100', '77536', 'NIGHTBANE - KILL'),
(@NIGHTBANE, '5', '3', 'Who\'s next?!', '14', '100', '77537', 'NIGHTBANE - KILL'),
(@NIGHTBANE, '6', '0', 'Mortals never learn.', '14', '100', '77539', 'NIGHTBANE - WIPE'),
(@NIGHTBANE, '6', '1', 'Pitiful... as expected.', '14', '100', '77538', 'NIGHTBANE - WIPE'),
(@NIGHTBANE, '6', '2', 'You called me here only to die at my feet?', '14', '100', '77540', 'NIGHTBANE - WIPE'),
(@NIGHTBANE, '7', '0', 'It is... never... over...', '14', '100', '77541', 'NIGHTBANE - DEATH'),
(@NIGHTBANE, '7', '1', 'I will... never... be free...', '14', '100', '77542', 'NIGHTBANE - DEATH'),
(@NIGHTBANE, '8', '0', 'Am I damned to answer the summons of mortals for all eternity?', '14', '100', '77530', 'NIGHTBANE - DEATH'),
(@NIGHTBANE, '9', '0', 'So be it! You will suffer for your insolence!', '14', '100', '77531', 'NIGHTBANE - DEATH'),
(@NIGHTBANE, '10', '0', 'The strange chill of a dark presence winds through the air', '41', '100', '0', 'NIGHTBANE - START TIMER'),
(@IMAGE_MEDIVH, '0', '0', 'You\'ve got my attention, dragon. You\'ll find I\'m not as easily scared as the villagers below.', '14', '100', '58641', 'IMAGE_MEDIVH_REPLY'),
(@IMAGE_MEDIVH, '1', '0', 'You dare challenge me at my own dwelling? Your arrogance is astounding, even for a dragon.', '14', '100', '58641', 'IMAGE_MEDIVH_REPLY'),
(@IMAGE_MEDIVH, '2', '0', 'I do not know what you speak of, dragon... but I will not be bullied by this display of insolence. I\'ll leave Karazhan when it suits me!', '14', '100', '58641', 'IMAGE_MEDIVH_REPLY'),
(@IMAGE_MEDIVH, '3', '0', 'He should not have angered me. I must go... recover my strength now...', '14', '100', '58641', 'IMAGE_MEDIVH_REPLY'),
(@ARCHANAGOS, '0', '0', 'Your dabbling in the arcane has gone too far, Medivh. You\'ve attracted the attention of powers beyond your understanding. You must leave Karazhan at once!', '14', '100', '58641', 'IMAGE_OF_ARCANAGOS'),
(@ARCHANAGOS, '1', '0', 'A dark power seeks to use you, Medivh! If you stay, dire days will follow. You must hurry, we don\'t have much time!', '14', '100', '77690', 'IMAGE_OF_ARCANAGOS'),
(@ARCHANAGOS, '2', '0', 'You leave me no alternative. I will stop you by force if you won\'t listen to reason.', '14', '100', '58641', 'IMAGE_OF_ARCANAGOS'),
(@ARCHANAGOS, '3', '0', 'What have you done, wizard? This cannot be! I\'m burning from... within!', '14', '100', '58641', 'IMAGE_OF_ARCANAGOS');