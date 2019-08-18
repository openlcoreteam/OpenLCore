SET @VANDROS := 98208;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_advisor_vandros', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`unit_class` = 4,
`unit_flags2` = `unit_flags2` |2048,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@VANDROS, 9820801, 9820802);

UPDATE `creature_template` SET
`ScriptName` = 'npc_arc_chrono_shard',
`minLevel` = 112,
`maxLevel` = 112,
`faction` = 16,
`unit_flags` = `unit_flags` |2|256|33587200
WHERE `entry` IN (103109, 102849);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_arc_timeless_wraith',
`minLevel` = 112,
`maxLevel` = 112,
`faction` = 16
WHERE `entry` = 103130;

DELETE FROM `spell_script_names` WHERE `spell_id` IN (202974, 220871, 203882, 203941, 203914, 203883, 203952);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(202974, 'spell_vandros_force_bomb'),
(220871, 'spell_vandros_unstable_mana'),
(203882, 'spell_vandros_banish_in_time'),
(203914, 'spell_vandros_banish_in_time_buff'),
(203883, 'spell_vandros_banish_in_time_tele'),
(203952, 'spell_arc_breach');

DELETE FROM `areatrigger_template` WHERE `id` IN (5879, 5985, 5903);
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(5879, 0, 0, 2, 2, 0, 0, 0, 0, 'at_arc_force_bomb', 23420), -- SpellId 202975
(5985, 0, 4, 20, 20, 0, 0, 0, 0, '',  23420),-- SpellId 203882
(5903, 3, 2, 0, 0, 0, 0, 0, 0, 'at_arc_force_nova', 23420); -- SpellId 203090

DELETE FROM `areatrigger_template_polygon_vertices` WHERE `AreaTriggerId` = 5903;
INSERT IGNORE INTO `areatrigger_template_polygon_vertices` (`AreaTriggerId`, `Idx`, `VerticeX`, `VerticeY`, `VerticeTargetX`, `VerticeTargetY`, `VerifiedBuild`) VALUES
(5903, 33, 0.4619141, 0.1913452, 73.91016, 30.61469, 23420),
(5903, 32, 0.5, 0, 80, 0, 23420),
(5903, 31, 0.4619141, -0.1913452, 73.91016, -30.61467, 23420),
(5903, 30, 0.3535156, -0.3535461, 56.56836, -56.56854, 23420),
(5903, 29, 0.1914063, -0.4619446, 30.61426, -73.91037, 23420),
(5903, 28, 0, -0.5, 0, -80, 23420),
(5903, 27, -0.1914063, -0.4619446, -30.61426, -73.91037, 23420),
(5903, 26, -0.3535156, -0.3535461, -56.56836, -56.56854, 23420),
(5903, 25, -0.4619141, -0.1913452, -73.91016, -30.61467, 23420),
(5903, 24, -0.5, 0, -80, 0, 23420),
(5903, 23, -0.4619141, 0.1913452, -73.91016, 30.61469, 23420),
(5903, 22, -0.3535156, 0.3535461, -56.56836, 56.56854, 23420),
(5903, 21, -0.1914063, 0.4619446, -30.61426, 73.91037, 23420),
(5903, 20, 0, 0.5, 0, 80, 23420),
(5903, 19, 0.1914063, 0.4619446, 30.61426, 73.91037, 23420),
(5903, 18, 0.3535156, 0.3535461, 56.56836, 56.56854, 23420),
(5903, 17, 0.4619141, 0.1913452, 73.91016, 30.61469, 23420),
(5903, 16, 9.239258, 3.826843, 92.3877, 38.26834, 23420),
(5903, 15, 10, 0, 100, 0, 23420),
(5903, 14, 9.239258, -3.826843, 92.3877, -38.26834, 23420),
(5903, 13, 7.071289, -7.071075, 70.71094, -70.71068, 23420),
(5903, 12, 3.827148, -9.2388, 38.26855, -92.38795, 23420),
(5903, 11, 0, -10, 0, -100, 23420),
(5903, 10, -3.827148, -9.2388, -38.26855, -92.38795, 23420),
(5903, 9, -7.071289, -7.071075, -70.71094, -70.71068, 23420),
(5903, 8, -9.239258, -3.826843, -92.3877, -38.26834, 23420),
(5903, 7, -10, 0, -100, 0, 23420),
(5903, 6, -9.239258, 3.826843, -92.3877, 38.26834, 23420),
(5903, 5, -7.071289, 7.071075, -70.71094, 70.71069, 23420),
(5903, 4, -3.827148, 9.2388, -38.26855, 92.38794, 23420),
(5903, 3, 0, 10, 0, 100, 23420),
(5903, 2, 3.827148, 9.2388, 38.26855, 92.38794, 23420),
(5903, 1, 7.071289, 7.071075, 70.71094, 70.71069, 23420),
(5903, 0, 9.239258, 3.826843, 92.3877, 38.26834, 23420);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN (5879, 5985, 5903);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(5879, 5879, 0, 0, 0, 0, 0, 0, 5000, 23420), -- SpellId: 202975
(5985, 5985, 0, 0, 0, 0, 0, 0, 120000, 23420), -- SpellId : 203882
(5903, 5903, 0, 0, 0, 0, 0, 0, 12500, 23420); -- SpellId : 203090

DELETE FROM `creature_text` WHERE `CreatureID` = @VANDROS;
INSERT INTO `creature_text`(`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Probability`, `Sound`, `comment`) VALUES
(@VANDROS, '0', '0', 'My, my... Someone has made quite a mess down here. It has been too long since we purged these catacombs of refuse. It appears we have a rat infestation.', '14', '100', '58644', 'VANDROS - INTRO'),
(@VANDROS, '1', '0', 'Find the vermin and bring me their heads! Leave no stone unturned!', '14', '100', '58645', 'VANDROS - INTRO2'),
(@VANDROS, '2', '0', 'I have not survived for ten thousand years just to fall to a swarm of rats.', '14', '100', '58646', 'VANDROS - AGGRO'),
(@VANDROS, '3', '0', 'Have you vermin ever witnessed such raw power? I think not.', '14', '100', '58639', 'VANDROS - CHRONO_SHARDS'),
(@VANDROS, '4', '0', 'I am a conduit of the Nightwell\'s glorious power! I am NIGHTBORNE!', '14', '100', '58638', 'VANDROS - BANISH_IN_TIME'),
(@VANDROS, '5', '0', 'Enough! You little beasts are getting out of hand!', '14', '100', '58640', 'VANDROS - REACH_ON_TIME'),
(@VANDROS, '6', '0', 'For the glory of Elisande!', '14', '100', '58642', 'VANDROS - KILL'),
(@VANDROS, '6', '1', 'Think of this as a mercy killing.', '14', '100', '58647', 'VANDROS - KILL'),
(@VANDROS, '6', '2', 'So brave, but so... shortsighted.', '14', '100', '58648', 'VANDROS - KILL'),
(@VANDROS, '7', '0', 'Alas... blind courage only triumphs in the fairy tales.', '14', '100', '58641', 'VANDROS - WIPE'),
(@VANDROS, '8', '0', 'The Grand Magistrix... will have your heads for this...', '14', '100', '58641', 'VANDROS - DEATH');
