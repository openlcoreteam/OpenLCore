SET @VIZADUUM := 114790;

UPDATE `creature_template` SET 
`ScriptName` = 'boss_vizaduum', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`InhabitType` = 4,
`unit_class` = 2,
`unit_flags2` = 0,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@VIZADUUM, 11479001, 11479002);

UPDATE `creature_template` SET
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`InhabitType` = 4,
`flags_extra` = 128
WHERE `entry` IN (114913, 11491301, 11491302);

UPDATE `creature_template` SET
`ScriptName` = 'npc_kara_fel_cannon',
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`speed_walk` = 0.725,
`speed_run` = 0.725,
`flags_extra` = 128
WHERE `entry` IN (115274, 11527401, 11527402);

UPDATE `creature_template` SET
`ScriptName` = 'npc_kara_invisible_vehicle',
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 35,
`InhabitType` = 4,
`speed_walk` = 4,
`speed_run` = 4,
`flags_extra` = 128,
`VehicleId` = 5009
WHERE `entry` IN (115361, 11536101, 11536102);

UPDATE `creature_template` SET
`ScriptName` = 'npc_stabilize_rift',
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`InhabitType` = 4,
`flags_extra` = 128
WHERE `entry` IN (115789, 11578901, 11578902);

UPDATE `creature_template` SET
`faction` = 16,
`flags_extra` = 128,
`InhabitType` = 8
WHERE `entry` = 115493;

DELETE FROM `creature_template_addon` WHERE `entry` IN (115694, 114913);
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES
(115694, '229906');

DELETE FROM `creature` WHERE `id` = 114913 AND `map` = 1651;
INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawndifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
('114913','1651','8443','8443','8388608','0','0','0','0','3397.11','-2142.85','977.435','6.11565','7200','0','0','0','0','0','0','0','0','','23420'),
('114913','1651','8443','8443','8388608','0','0','0','0','3800.63','-1876.49','869.978','4.18863','7200','0','0','0','0','0','0','0','0','','23420');

DELETE FROM `gameobject` WHERE `id` = 265486 AND `map` = 1651;
INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawndifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`) VALUES
('265486','1651','8443','8443','8388608','0','1','3960.62','-2007.71','671.739','4.03272','0','0','-0.902368','0.430965','7200','255','1','','23420'),
('265486','1651','8443','8443','8388608','0','1','3496.74','-1959.66','784.618','5.803','0','0','-0.237792','0.971316','7200','255','1','','23420');

DELETE FROM `spell_script_names` WHERE `spell_id` IN (229159, 229283, 229287, 229246, 229151, 230084);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(229159, 'spell_vizaduum_chaotic_shadows'),
(229283, 'spell_vizaduum_bombardment_charge'),
(229287, 'spell_vizaduum_bombardment_aura'),
(229246, 'spell_vizaduum_fel_beam_charge'),
(229151, 'spell_vizaduum_disintegrate'),
(230084, 'spell_vizaduum_stabilize_rift');

DELETE FROM `areatrigger_template` WHERE `id` IN (8939, 8940, 8941, 8942, 8943, 8944, 8945, 8946, 9009, 8963, 8962, 9054);
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(8939, 0, 0, 3.5, 3.5, 0, 0, 0, 0, 'at_kara_explosive_shadows', 23420),
(8940, 0, 0, 3.5, 3.5, 0, 0, 0, 0, 'at_kara_explosive_shadows', 23420),
(8941, 0, 0, 3.5, 3.5, 0, 0, 0, 0, 'at_kara_explosive_shadows', 23420),
(8942, 0, 0, 3.5, 3.5, 0, 0, 0, 0, 'at_kara_explosive_shadows', 23420),
(8943, 0, 0, 3.5, 3.5, 0, 0, 0, 0, 'at_kara_explosive_shadows', 23420),
(8944, 0, 0, 3.5, 3.5, 0, 0, 0, 0, 'at_kara_explosive_shadows', 23420),
(8945, 0, 0, 3.5, 3.5, 0, 0, 0, 0, 'at_kara_explosive_shadows', 23420),
(8946, 0, 0, 3.5, 3.5, 0, 0, 0, 0, 'at_kara_explosive_shadows', 23420),
(9009, 0, 0, 5, 5, 0, 0, 0, 0, 'at_kara_demonic_portal', 23420),
(8963, 0, 2, 5, 5, 0, 0, 0, 0, 'at_kara_fel_flames', 23420),
(8962, 0, 4, 5, 5, 0, 0, 0, 0, 'at_kara_fel_beam', 23420),
(9054, 0, 4, 12, 12, 0, 0, 0, 0, 'at_kara_soul_harvest', 23420);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN (8939, 8940, 8941, 8942, 8943, 8944, 8945, 8946, 9009, 8962, 8963, 9054);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(8939, 8939, 0, 0, 2382, 0, 0, 30000, 30000, 23420), -- SpellId : 229160
(8940, 8940, 0, 0, 2382, 0, 0, 30000, 30000, 23420), -- SpellId : 229160
(8941, 8941, 0, 0, 2382, 0, 0, 30000, 30000, 23420), -- SpellId : 229160
(8942, 8942, 0, 0, 2382, 0, 0, 30000, 30000, 23420), -- SpellId : 229160
(8943, 8943, 0, 0, 2382, 0, 0, 30000, 30000, 23420), -- SpellId : 229160
(8944, 8944, 0, 0, 2382, 0, 0, 30000, 30000, 23420), -- SpellId : 229160
(8945, 8945, 0, 0, 2382, 0, 0, 30000, 30000, 23420), -- SpellId : 229160
(8946, 8946, 0, 0, 2382, 0, 0, 30000, 30000, 23420), -- SpellId : 229160
(9009, 9009, 0, 0, 0, 0, 0, 0, 30000, 23420), -- SpellId : 229591
(8962, 8962, 0, 0, 0, 0, 98, 0, 8000, 23420), -- SpellId : 229244
(8963, 8963, 0, 0, 0, 0, 98, 0, 120000, 23420), -- SpellId : 229249
(9054, 9054, 0, 0, 0, 0, 0, 0, 0, 23420); -- SpellId : 229906

DELETE FROM `waypoint_data` WHERE `id` IN (11479010, 11479020);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`) VALUES
(11479010, 0, 3717.774, -2079.090, 850.9378 ),
(11479010, 1, 3905.002, -1978.016, 965.4493 ),
(11479010, 2, 3915.754, -1971.380, 930.000 ),
(11479020, 0, 3826.860, -2041.582, 932.946  ),
(11479020, 1, 3659.277, -2061.302, 973.476  ),
(11479020, 2, 3571.789, -2043.062, 1008.941 ),
(11479020, 3, 3470.271, -2010.690, 1045.000 );