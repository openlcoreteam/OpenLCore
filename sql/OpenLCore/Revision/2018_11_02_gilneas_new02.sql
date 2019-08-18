/*=============
-- Updates - Creatures - GameObjects - Vendor
=============*/
DELETE FROM creature WHERE `guid` IN (72518,72581,224921);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(72518, 123252, 530, 3703, 3703, 0, 0, 0, 0, -1, 0, 0, -1806.32, 5417.35, 0.886856, 2.68444, 180, 0, 0, 87, 0, 0, 0, 0, 0, 0, 0, '', 26365), 
(72581,  98685, 530, 3703, 3703, 0, 0, 0, 0, -1, 0, 0, -1805.35, 5419.72, 0.985384, 2.63731, 180, 0, 0, 87, 0, 0, 0, 0, 0, 0, 0, '', 26365), 
(224921, 101759, 0,   1519, 5428, 0, 0, 0, 0, -1, 0, 0, -8196.54, 399.192, 117.2882, 2.44555, 180, 0, 0, 87, 0, 0, 0, 0, 0, 0, 0, '', 26365);

DELETE FROM `gameobject` WHERE `guid` IN (79317,79319,79320);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(79317, 245436, 530, 3703, 3703, 0, 0, 0, -1806.32, 5417.35, 0.886856, 2.68444, 0, 0, 0.9400492, 0.3410389, 180, 255, 1, 27843),
(79319, 245436, 530, 3703, 3703, 0, 0, 0, -1805.35, 5419.72, 0.985384, 2.63731, 0, 0, 0.9400492, 0.3410389, 180, 255, 1, 27843),
(79320, 245436, 0,   1519, 5428, 0, 0, 0, -8196.54, 399.192, 117.2882, 2.44554, 0, 0, 0.9400492, 0.3410389, 180, 255, 1, 27843);

UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `faction`=35, `gossip_menu_id`= 60002, `npcflag`=3, `scriptname`='npc_vormu' WHERE entry=123252; -- Vormu
UPDATE `creature_template` SET `gossip_menu_id`=19197 WHERE `entry`=101759; -- Kiatke

DELETE FROM `npc_text` WHERE ID=60002;
INSERT INTO `npc_text` (ID, Probability0, BroadcastTextID0) VALUE
(60002, 1, 132373);

DELETE FROM `gossip_menu` WHERE MenuId=60002;
INSERT INTO `gossip_menu` VALUE
(60002, 60002, 0);

DELETE FROM `gossip_menu_option` WHERE MenuId=60002;
INSERT INTO `gossip_menu_option` VALUE
(60002, 0, 0, "Send me into the Black Temple (Timewalking Raid)", 132375, 1, 1, 0);

DELETE FROM `creature_queststarter` WHERE quest=47523;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(123252, 47523);

DELETE FROM `creature_questender` WHERE quest=47523;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(123252, 47523);

DELETE FROM `game_event_creature` WHERE `guid` IN (72518,72581,224921);
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES
(100, 72518),
(100, 72581),
(102, 224921);

DELETE FROM `npc_vendor` WHERE (`entry`=101759 AND `item`=133160 AND `ExtendedCost`=5941 AND `type`=1) OR (`entry`=101759 AND `item`=133159 AND `ExtendedCost`=5941 AND `type`=1) OR (`entry`=101759 AND `item`=133154 AND `ExtendedCost`=5941 AND `type`=1) OR (`entry`=101759 AND `item`=133152 AND `ExtendedCost`=5941 AND `type`=1) OR (`entry`=101759 AND `item`=133151 AND `ExtendedCost`=5941 AND `type`=1) OR (`entry`=101759 AND `item`=151614 AND `ExtendedCost`=5936 AND `type`=1) OR (`entry`=101759 AND `item`=122340 AND `ExtendedCost`=5936 AND `type`=1);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(101759, 39, 133160, 0, 5941, 1, 0, 0, 27843), -- Commendation of Therazane
(101759, 38, 133159, 0, 5941, 1, 0, 0, 27843), -- Commendation of The Earthen Ring
(101759, 37, 133154, 0, 5941, 1, 0, 0, 27843), -- Commendation of the Ramkahen
(101759, 36, 133152, 0, 5941, 1, 0, 0, 27843), -- Commendation of the Guardians of Hyjal
(101759, 35, 133151, 0, 5941, 1, 0, 0, 27843), -- Commendation of the Wildhammer Clan
(101759, 31, 151614, 0, 5936, 1, 0, 0, 27843), -- -Unknown-
(101759, 29, 122340, 0, 5936, 1, 0, 0, 27843); -- Timeworn Heirloom Armor Casing

UPDATE `npc_vendor` SET `slot`=33, `VerifiedBuild`=27843 WHERE (`entry`=101759 AND `item`=67414 AND `ExtendedCost`=5940 AND `type`=1); -- Bag of Shiny Things
UPDATE `npc_vendor` SET `slot`=32, `VerifiedBuild`=27843 WHERE (`entry`=101759 AND `item`=151615 AND `ExtendedCost`=5938 AND `type`=1); -- -Unknown-
UPDATE `npc_vendor` SET `slot`=30, `VerifiedBuild`=27843 WHERE (`entry`=101759 AND `item`=122341 AND `ExtendedCost`=5938 AND `type`=1); -- Timeworn Heirloom Scabbard
UPDATE `npc_vendor` SET `slot`=28, `VerifiedBuild`=27843 WHERE (`entry`=101759 AND `item`=122339 AND `ExtendedCost`=5937 AND `type`=1); -- Ancient Heirloom Scabbard
UPDATE `npc_vendor` SET `slot`=27, `VerifiedBuild`=27843 WHERE (`entry`=101759 AND `item`=122338 AND `ExtendedCost`=5935 AND `type`=1); -- Ancient Heirloom Armor Casing
UPDATE `npc_vendor` SET `slot`=26, `VerifiedBuild`=27843 WHERE (`entry`=101759 AND `item`=133541 AND `ExtendedCost`=5932 AND `type`=1); -- Fire of the Deep
UPDATE `npc_vendor` SET `slot`=25, `VerifiedBuild`=27843 WHERE (`entry`=101759 AND `item`=133540 AND `ExtendedCost`=5932 AND `type`=1); -- Rotting Skull
UPDATE `npc_vendor` SET `slot`=24, `VerifiedBuild`=27843 WHERE (`entry`=101759 AND `item`=133524 AND `ExtendedCost`=5931 AND `type`=1); -- Signet of the Resolute
UPDATE `npc_vendor` SET `slot`=23, `VerifiedBuild`=27843 WHERE (`entry`=101759 AND `item`=133522 AND `ExtendedCost`=5931 AND `type`=1); -- Ring of Torn Flesh
UPDATE `npc_vendor` SET `slot`=22, `VerifiedBuild`=27843 WHERE (`entry`=101759 AND `item`=133525 AND `ExtendedCost`=5931 AND `type`=1); -- Bones of the Damned
UPDATE `npc_vendor` SET `slot`=21, `VerifiedBuild`=27843 WHERE (`entry`=101759 AND `item`=133531 AND `ExtendedCost`=5931 AND `type`=1); -- Blinding Girdle of Truth
UPDATE `npc_vendor` SET `slot`=20, `VerifiedBuild`=27843 WHERE (`entry`=101759 AND `item`=133533 AND `ExtendedCost`=5931 AND `type`=1); -- Flashing Bracers of Warmth
UPDATE `npc_vendor` SET `slot`=19, `VerifiedBuild`=27843 WHERE (`entry`=101759 AND `item`=133527 AND `ExtendedCost`=5931 AND `type`=1); -- Ghostworld Chestguard
UPDATE `npc_vendor` SET `slot`=18, `VerifiedBuild`=27843 WHERE (`entry`=101759 AND `item`=133534 AND `ExtendedCost`=5931 AND `type`=1); -- Dragonbelly Bracers
UPDATE `npc_vendor` SET `slot`=17, `VerifiedBuild`=27843 WHERE (`entry`=101759 AND `item`=133530 AND `ExtendedCost`=5931 AND `type`=1); -- Cord of Dragon Sinew
UPDATE `npc_vendor` SET `slot`=16, `VerifiedBuild`=27843 WHERE (`entry`=101759 AND `item`=133528 AND `ExtendedCost`=5931 AND `type`=1); -- Decaying Herbalist's Robes
UPDATE `npc_vendor` SET `slot`=15, `VerifiedBuild`=27843 WHERE (`entry`=101759 AND `item`=133529 AND `ExtendedCost`=5931 AND `type`=1); -- Belt of Hidden Keys
UPDATE `npc_vendor` SET `slot`=14, `VerifiedBuild`=27843 WHERE (`entry`=101759 AND `item`=133535 AND `ExtendedCost`=5931 AND `type`=1); -- Bracers of Manifold Pockets
UPDATE `npc_vendor` SET `slot`=13, `VerifiedBuild`=27843 WHERE (`entry`=101759 AND `item`=133521 AND `ExtendedCost`=5931 AND `type`=1); -- Band of Reconstruction
UPDATE `npc_vendor` SET `slot`=12, `VerifiedBuild`=27843 WHERE (`entry`=101759 AND `item`=133520 AND `ExtendedCost`=5931 AND `type`=1); -- Seal of the Grand Architect
UPDATE `npc_vendor` SET `slot`=11, `VerifiedBuild`=27843 WHERE (`entry`=101759 AND `item`=133539 AND `ExtendedCost`=5932 AND `type`=1); -- Reflection of the Light
UPDATE `npc_vendor` SET `slot`=10, `VerifiedBuild`=27843 WHERE (`entry`=101759 AND `item`=133536 AND `ExtendedCost`=5931 AND `type`=1); -- Bracers of the Black Dream
UPDATE `npc_vendor` SET `slot`=9, `VerifiedBuild`=27843 WHERE (`entry`=101759 AND `item`=133532 AND `ExtendedCost`=5931 AND `type`=1); -- Vestal's Irrepressible Girdle
UPDATE `npc_vendor` SET `slot`=8, `VerifiedBuild`=27843 WHERE (`entry`=101759 AND `item`=133526 AND `ExtendedCost`=5931 AND `type`=1); -- Lightwarper Vestments
UPDATE `npc_vendor` SET `slot`=7, `VerifiedBuild`=27843 WHERE (`entry`=101759 AND `item`=133538 AND `ExtendedCost`=5932 AND `type`=1); -- Bottled Wishes
UPDATE `npc_vendor` SET `slot`=6, `VerifiedBuild`=27843 WHERE (`entry`=101759 AND `item`=133537 AND `ExtendedCost`=5932 AND `type`=1); -- Kiroptyric Sigil
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=27843 WHERE (`entry`=101759 AND `item`=133523 AND `ExtendedCost`=5931 AND `type`=1); -- Emergency Descent Loop
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=27843 WHERE (`entry`=101759 AND `item`=133542 AND `ExtendedCost`=5948 AND `type`=1); -- Tosselwrench's Mega-Accurate Simulation Viewfinder
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=27843 WHERE (`entry`=101759 AND `item`=133511 AND `ExtendedCost`=5945 AND `type`=1); -- Gurboggle's Gleaming Bauble
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=27843 WHERE (`entry`=101759 AND `item`=49602 AND `ExtendedCost`=5949 AND `type`=1); -- Earl Black Tea

UPDATE `gossip_menu` SET `VerifiedBuild`=27843 WHERE (`MenuId`=19197 AND `TextId`=28133); -- 0
DELETE FROM `gossip_menu_option` WHERE (`MenuId`=19197 AND `OptionIndex`=1);
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `VerifiedBuild`) VALUES
(19197, 1, 1, 'I would like to buy from you.', 2583, 27843);

UPDATE `gameobject_template` SET `VerifiedBuild`=27843 WHERE `entry`=206110; -- Portal to Moonglade
UPDATE `gameobject_template` SET `VerifiedBuild`=27843 WHERE `entry`=203800; -- Barrel of Canal Fish
UPDATE `gameobject_template` SET `VerifiedBuild`=27843 WHERE `entry`=210181; -- Deathwing Trophy (0.7)
UPDATE `gameobject_template` SET `Data5`=37429, `VerifiedBuild`=27843 WHERE `entry`=207693; -- Portal to Deepholm
UPDATE `gameobject_template` SET `Data5`=924, `VerifiedBuild`=27843 WHERE `entry`=206594; -- Portal to Tol Barad
UPDATE `gameobject_template` SET `Data0`=90245, `Data5`=57340, `VerifiedBuild`=27843 WHERE `entry`=207691; -- Teleport to Vashj'ir
UPDATE `gameobject_template` SET `VerifiedBuild`=27843 WHERE `entry`=207416; -- Waters of Farseeing
UPDATE `gameobject_template` SET `Data5`=37426, `VerifiedBuild`=27843 WHERE `entry`=207695; -- Portal to Uldum
UPDATE `gameobject_template` SET `Data5`=37428, `VerifiedBuild`=27843 WHERE `entry`=207694; -- Portal to Twilight Highlands
UPDATE `gameobject_template` SET `Data5`=37427, `VerifiedBuild`=27843 WHERE `entry`=207692; -- Portal to Hyjal
UPDATE `gameobject_template` SET `VerifiedBuild`=27843 WHERE `entry`=245436; -- Collision PC Size
UPDATE `gameobject_template` SET `name`='7.0 Stormwind - Lion\'s Rest - Phased WMO', `VerifiedBuild`=27843 WHERE `entry`=259008; -- 7.0 Stormwind - Lion's Rest - Phased WMO
