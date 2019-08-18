DELETE FROM `creature_loot_template` WHERE  `Entry`=91808 AND `Item`=0;

REPLACE INTO `skinning_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES ('34797', '129912', '0', '100', '0', '1', '0', '1', '2', '');

REPLACE INTO `skinning_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES ('52363', '129913', '0', '100', '0', '30', '0', '2', '7', '');

REPLACE INTO `skinning_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES ('68476', '129914', '0', '100', '0', '30', '0', '2', '7', '');

UPDATE `quest_objectives` SET `ID`='284245', `QuestID`='40139', `Type`='0', `Order`='1', `StorageIndex`='1', `ObjectID`='95676', `Amount`='1', `Flags`='0', `Flags2`='0', `ProgressBarWeight`='0', `Description`='Odyn Defeated', `VerifiedBuild`='25996' WHERE (`ID`='284245');
UPDATE `quest_objectives` SET `ID`='280394', `QuestID`='40139', `Type`='1', `Order`='0', `StorageIndex`='0', `ObjectID`='129920', `Amount`='1', `Flags`='0', `Flags2`='1', `ProgressBarWeight`='0', `Description`='', `VerifiedBuild`='25996' WHERE (`ID`='280394');

UPDATE`quest_poi` SET `QuestID`='40139', `BlobIndex`='0', `Idx1`='5', `ObjectiveIndex`='32', `QuestObjectiveID`='0', `QuestObjectID`='0', `MapID`='1220', `WorldMapAreaId`='1033', `Floor`='33', `Priority`='0', `Flags`='0', `WorldEffectID`='0', `PlayerConditionID`='0', `WoDUnk1`='1082776', `AlwaysAllowMergingBlobs`='0', `VerifiedBuild`='22908' WHERE (`QuestID`='40139') AND (`BlobIndex`='0') AND (`Idx1`='5');
UPDATE `quest_poi` SET `QuestID`='40139', `BlobIndex`='0', `Idx1`='3', `ObjectiveIndex`='1', `QuestObjectiveID`='284245', `QuestObjectID`='95676', `MapID`='1477', `WorldMapAreaId`='1041', `Floor`='2', `Priority`='0', `Flags`='2', `WorldEffectID`='0', `PlayerConditionID`='0', `WoDUnk1`='0', `AlwaysAllowMergingBlobs`='0', `VerifiedBuild`='22908' WHERE (`QuestID`='40139') AND (`BlobIndex`='0') AND (`Idx1`='3');
UPDATE `quest_poi` SET `QuestID`='40139', `BlobIndex`='0', `Idx1`='1', `ObjectiveIndex`='0', `QuestObjectiveID`='280394', `QuestObjectID`='129920', `MapID`='1477', `WorldMapAreaId`='1041', `Floor`='0', `Priority`='0', `Flags`='0', `WorldEffectID`='0', `PlayerConditionID`='0', `WoDUnk1`='1090799', `AlwaysAllowMergingBlobs`='0', `VerifiedBuild`='22908' WHERE (`QuestID`='40139') AND (`BlobIndex`='0') AND (`Idx1`='1');
UPDATE `quest_poi` SET `QuestID`='40139', `BlobIndex`='0', `Idx1`='0', `ObjectiveIndex`='-1', `QuestObjectiveID`='0', `QuestObjectID`='0', `MapID`='1220', `WorldMapAreaId`='1033', `Floor`='0', `Priority`='0', `Flags`='0', `WorldEffectID`='0', `PlayerConditionID`='0', `WoDUnk1`='1082776', `AlwaysAllowMergingBlobs`='0', `VerifiedBuild`='22908' WHERE (`QuestID`='40139') AND (`BlobIndex`='0') AND (`Idx1`='0');
UPDATE `quest_poi` SET `QuestID`='40139', `BlobIndex`='1', `Idx1`='4', `ObjectiveIndex`='1', `QuestObjectiveID`='284245', `QuestObjectID`='95676', `MapID`='1220', `WorldMapAreaId`='1017', `Floor`='0', `Priority`='0', `Flags`='2', `WorldEffectID`='0', `PlayerConditionID`='0', `WoDUnk1`='0', `AlwaysAllowMergingBlobs`='0', `VerifiedBuild`='22908' WHERE (`QuestID`='40139') AND (`BlobIndex`='1') AND (`Idx1`='4');
UPDATE `quest_poi` SET `QuestID`='40139', `BlobIndex`='1', `Idx1`='2', `ObjectiveIndex`='0', `QuestObjectiveID`='280394', `QuestObjectID`='129920', `MapID`='1220', `WorldMapAreaId`='1017', `Floor`='0', `Priority`='0', `Flags`='2', `WorldEffectID`='0', `PlayerConditionID`='0', `WoDUnk1`='0', `AlwaysAllowMergingBlobs`='0', `VerifiedBuild`='22908' WHERE (`QuestID`='40139') AND (`BlobIndex`='1') AND (`Idx1`='2');

 

UPDATE `quest_poi` SET `QuestID`='40138', `BlobIndex`='0', `Idx1`='4', `ObjectiveIndex`='32', `QuestObjectiveID`='0', `QuestObjectID`='0', `MapID`='1220', `WorldMapAreaId`='1033', `Floor`='0', `Priority`='0', `Flags`='0', `WorldEffectID`='0', `PlayerConditionID`='0', `WoDUnk1`='1082776', `AlwaysAllowMergingBlobs`='0', `VerifiedBuild`='22908' WHERE (`QuestID`='40138') AND (`BlobIndex`='0') AND (`Idx1`='4');
UPDATE `quest_poi` SET `QuestID`='40138', `BlobIndex`='0', `Idx1`='3', `ObjectiveIndex`='2', `QuestObjectiveID`='280390', `QuestObjectID`='129914', `MapID`='1098', `WorldMapAreaId`='930', `Floor`='2', `Priority`='0', `Flags`='0', `WorldEffectID`='0', `PlayerConditionID`='0', `WoDUnk1`='766457', `AlwaysAllowMergingBlobs`='0', `VerifiedBuild`='22908' WHERE (`QuestID`='40138') AND (`BlobIndex`='0') AND (`Idx1`='3');
UPDATE `quest_poi` SET `QuestID`='40138', `BlobIndex`='0', `Idx1`='2', `ObjectiveIndex`='1', `QuestObjectiveID`='280389', `QuestObjectID`='129913', `MapID`='757', `WorldMapAreaId`='752', `Floor`='1', `Priority`='0', `Flags`='0', `WorldEffectID`='0', `PlayerConditionID`='0', `WoDUnk1`='586843', `AlwaysAllowMergingBlobs`='0', `VerifiedBuild`='22908' WHERE (`QuestID`='40138') AND (`BlobIndex`='0') AND (`Idx1`='2');
UPDATE `quest_poi` SET `QuestID`='40138', `BlobIndex`='0', `Idx1`='1', `ObjectiveIndex`='0', `QuestObjectiveID`='280388', `QuestObjectID`='129912', `MapID`='649', `WorldMapAreaId`='543', `Floor`='1', `Priority`='0', `Flags`='0', `WorldEffectID`='0', `PlayerConditionID`='0', `WoDUnk1`='311365', `AlwaysAllowMergingBlobs`='0', `VerifiedBuild`='22908' WHERE (`QuestID`='40138') AND (`BlobIndex`='0') AND (`Idx1`='1');
UPDATE `quest_poi` SET `QuestID`='40138', `BlobIndex`='0', `Idx1`='0', `ObjectiveIndex`='-1', `QuestObjectiveID`='0', `QuestObjectID`='0', `MapID`='1220', `WorldMapAreaId`='1033', `Floor`='0', `Priority`='0', `Flags`='0', `WorldEffectID`='0', `PlayerConditionID`='0', `WoDUnk1`='1082776', `AlwaysAllowMergingBlobs`='0', `VerifiedBuild`='22908' WHERE (`QuestID`='40138') AND (`BlobIndex`='0') AND (`Idx1`='0');

REPLACE INTO `creature_questitem` (`CreatureEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES ('68476', '0', '129914', '25549');

REPLACE INTO `creature_questitem` (`CreatureEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES ('52363', '0', '129913', '25549');

REPLACE INTO `creature_questitem` (`CreatureEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES ('34797', '0', '129912', '25549');

UPDATE `creature_template` SET `gossip_menu_id`=20166 WHERE `entry`=95676;

UPDATE `creature_template` SET `VerifiedBuild`=26822 WHERE `entry`=95676; 

UPDATE `quest_template` SET `RewardMoney`=50, `RewardBonusMoney`=150, `AllowableRaces`=18446744073709551615, `VerifiedBuild`=26365 WHERE `ID`=40139;
UPDATE `quest_template` SET `RewardMoney`=50, `RewardBonusMoney`=150, `AllowableRaces`=18446744073709551615, `VerifiedBuild`=26365 WHERE `ID`=40138;
 


 
UPDATE `creature_loot_template` SET `Entry`='99200', `Item`='136578', `Reference`='0', `Chance`='5', `QuestRequired`='1', `LootMode`='1', `GroupId`='0', `MinCount`='1', `MaxCount`='1', `Comment`='' WHERE (`Entry`='99200') AND (`Item`='136578');

UPDATE `creature_questitem` SET `CreatureEntry`='99200', `Idx`='0', `ItemId`='136578', `VerifiedBuild`='25549' WHERE (`CreatureEntry`='99200') AND (`Idx`='0');
 

 

UPDATE `creature_questitem` SET `CreatureEntry`='102672', `Idx`='1', `ItemId`='140654', `VerifiedBuild`='26124' WHERE (`CreatureEntry`='102672') AND (`Idx`='1');

UPDATE `creature_loot_template` SET `Entry`='102672', `Item`='140654', `Reference`='0', `Chance`='2.14035', `QuestRequired`='1', `LootMode`='1', `GroupId`='0', `MinCount`='1', `MaxCount`='1', `Comment`='' WHERE (`Entry`='102672') AND (`Item`='140654');

UPDATE `creature_template` SET `skinloot` = 107803 WHERE `entry` = 107803 AND `skinloot` = 0;
DELETE FROM `skinning_loot_template` WHERE `entry` = '107803';
INSERT INTO `skinning_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('107803', '124113', '0', '99', '0', '1', '0', '1', '2', ''),
('107803', '124119', '0', '5.838045', '0', '1', '0', '1', '4', ''),
('107803', '124124', '0', '1.441058', '0', '1', '0', '1', '1', ''),
('107803', '124439', '0', '13.46273', '0', '1', '0', '3', '8', ''),
('107803', '129746', '0', '2.684158', '0', '1', '0', '1', '1', ''),
('107803', '129888', '0', '8.77552', '0', '1', '0', '1', '1', ''),
('107803', '134812', '0', '44.14098', '0', '1', '0', '1', '1', ''),
('107803', '140856', '0', '14.19752', '0', '1', '0', '1', '1', '');


UPDATE `creature_template` SET `skinloot` = 107805 WHERE `entry` = 107805 AND `skinloot` = 0;
DELETE FROM `skinning_loot_template` WHERE `entry` = '107805';
INSERT INTO `skinning_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('107805', '124113', '0', '100', '0', '1', '0', '1', '2', ''),
('107805', '124119', '0', '4.476987', '0', '1', '0', '1', '4', ''),
('107805', '124124', '0', '1', '0', '1', '0', '1', '1', ''),
('107805', '124439', '0', '26', '0', '1', '0', '3', '8', ''),
('107805', '129746', '0', '1.569038', '0', '1', '0', '1', '1', ''),
('107805', '129888', '0', '4.330544', '0', '1', '0', '1', '1', ''),
('107805', '134812', '0', '2.824268', '0', '1', '0', '1', '1', ''),
('107805', '140856', '0', '13.64017', '0', '1', '0', '1', '1', '');



UPDATE `creature_template` SET `skinloot` = 107852 WHERE `entry` = 107852 AND `skinloot` = 0;
DELETE FROM `skinning_loot_template` WHERE `entry` = '107852';
INSERT INTO `skinning_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('107852', '124113', '0', '99.87218', '0', '1', '0', '1', '2', ''),
('107852', '124119', '0', '2', '0', '1', '0', '1', '4', ''),
('107852', '124124', '0', '3.117821', '0', '1', '0', '1', '1', ''),
('107852', '124439', '0', '13.6165', '0', '1', '0', '3', '8', ''),
('107852', '129746', '0', '2.544349', '0', '1', '0', '1', '1', ''),
('107852', '140856', '0', '1', '0', '1', '0', '1', '1', '');


UPDATE `creature_template` SET `skinloot` = 108538 WHERE `entry` = 108538 AND `skinloot` = 0;
DELETE FROM `skinning_loot_template` WHERE `entry` = '108538';
INSERT INTO `skinning_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('108538', '124113', '0', '99.72981', '0', '1', '0', '1', '2', ''),
('108538', '124119', '0', '9.860799', '0', '1', '0', '1', '4', ''),
('108538', '124124', '0', '2.85319', '0', '1', '0', '1', '1', ''),
('108538', '124439', '0', '12.76154', '0', '1', '0', '3', '8', ''),
('108538', '129864', '0', '0.5447', '0', '1', '0', '1', '1', ''),
('108538', '129888', '0', '4.891492', '0', '1', '0', '1', '1', ''),
('108538', '140856', '0', '51.81134', '0', '1', '0', '1', '1', '');

DELETE FROM `npc_vendor` WHERE `entry`=93524;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(93524, 34, 10290, 0, 0, 1, 0, 0, 22810),
(93524, 33, 4342, 0, 0, 1, 0, 0, 22810),
(93524, 32, 2325, 0, 0, 1, 0, 0, 22810),
(93524, 31, 6261, 0, 0, 1, 0, 0, 22810),
(93524, 30, 4340, 0, 0, 1, 0, 0, 22810),
(93524, 29, 4341, 0, 0, 1, 0, 0, 22810),
(93524, 28, 2605, 0, 0, 1, 0, 0, 22810),
(93524, 27, 6260, 0, 0, 1, 0, 0, 22810),
(93524, 26, 2604, 0, 0, 1, 0, 0, 22810),
(93524, 25, 2324, 0, 0, 1, 0, 0, 22810), 
(93524, 24, 127681, 0, 0, 1, 0, 0, 22810),
(93524, 23, 127037, 0, 0, 1, 0, 0, 22810),
(93524, 22, 38426, 0, 0, 1, 0, 0, 22810),
(93524, 21, 14341, 0, 0, 1, 0, 0, 22810),
(93524, 20, 8343, 0, 0, 1, 0, 0, 22810),
(93524, 19, 4291, 0, 0, 1, 0, 0, 22810),
(93524, 18, 2321, 0, 0, 1, 0, 0, 22810),
(93524, 17, 2320, 0, 0, 1, 0, 0, 22810),
(93524, 16, 139499, 0, 6048, 1, 0, 0, 22810),
(93524, 15, 138011, 0, 6070, 1, 0, 0, 22810),
(93524, 14, 137953, 0, 6071, 1, 0, 0, 22810),
(93524, 13, 137965, 0, 6070, 1, 0, 0, 22810),
(93524, 12, 137967, 0, 6070, 1, 0, 0, 22810),
(93524, 11, 137968, 0, 6070, 1, 0, 0, 22810),
(93524, 10, 137969, 0, 6070, 1, 0, 0, 22810),
(93524, 9, 137970, 0, 6070, 1, 0, 0, 22810),
(93524, 8, 137971, 0, 6070, 1, 0, 0, 22810),
(93524, 7, 137972, 0, 6070, 1, 0, 0, 22810),
(93524, 6, 137955, 0, 6071, 1, 0, 0, 22810),
(93524, 5, 137956, 0, 6071, 1, 0, 0, 22810),
(93524, 4, 137957, 0, 6071, 1, 0, 0, 22810),
(93524, 3, 137958, 0, 6071, 1, 0, 0, 22810),
(93524, 2, 137959, 0, 6071, 1, 0, 0, 22810),
(93524, 1, 137960, 0, 6071, 1, 0, 0, 22810);

DELETE FROM `gossip_menu` WHERE `menuid`='46245'; -- should be empty anyways
INSERT INTO `gossip_menu` (`menuid`, `textid`) VALUES ('46245', '0');
UPDATE `gossip_menu` SET `VerifiedBuild`='23420' WHERE  `MenuId`=46245 AND `TextId`=0;

DELETE FROM `gossip_menu_option` WHERE `menuid`='46245';
INSERT INTO `gossip_menu_option` (`menuid`, `OptionIndex`, `optionicon`, `optiontext`, `OptionBroadcastTextID`, `optiontype`, `OptionNpcFlag`, `VerifiedBuild`) VALUES 
('46245', '0', '0', 'Load me into that cannon, boy!', '0', '1', '1', '23420');


REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
('15', '46245', '0', '0', '0', '9', '0', '27600', '0', '0', '0', '0', '0', '0', '0');

UPDATE `creature_template` SET `gossip_menu_id`='46245', `AIName`='SmartAI' WHERE `entry`='46245';

DELETE FROM `smart_scripts` WHERE `entryorguid`='46245';
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('46245', '0', '0', '0', '62', '0', '100', '0', '46245', '0', '0', '0', '62', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '-9991.34', '-4556.68', '17.14', '0.45', 'On Gossip Select - Teleport to destiny');


UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`='80642';
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('80642', '0', '0', '1', '8', '0', '100', '0', '163085', '0', '0', '0', '33', '80720', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'On Spell Hit - give quest credit slumberbloom'),
('80642', '0', '1', '0', '61', '0', '100', '0', '0', '0', '0', '0', '41', '1000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'On Quest Credit - Despawn 1 second');
 
 
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('58244', '0', '0', '0', '8', '0', '100', '0', '110455', '0', '0', '0', '33', '58351', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'On Spell HIT - Give quest credit Feeding Time'),
('58220', '0', '0', '0', '8', '0', '100', '0', '110455', '0', '0', '0', '33', '58351', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'On Spell HIT - Give quest credit Feeding Time'),
('58243', '0', '0', '0', '8', '0', '100', '0', '110455', '0', '0', '0', '33', '58351', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'On Spell HIT - Give quest credit Feeding Time');
	 
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN(58220,58243,58244);

DELETE FROM `spell_target_position` WHERE `ID` IN (222695,171253,192293,101260,102864,121857,121853,145430,191474,225219,225162,225114,205814,225232,216016,199711,228508,192241,216216,223199);
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `VerifiedBuild`) VALUES
(222695, 0, 1220, -828.72, 4371.78, 738.64, 23420),
(171253, 0, 1159, 1936.9, 341.35, 90.28, 23420),
(192293, 1, 1220, -784.91, 4419.19, 602.48, 23420), 
(101260, 0, 0, -9517.5, 82.3, 59.51, 23420),
(102864, 0, 974, -3618.67, 6315.67, 113.19, 23420), 
(121857, 0, 0, -8998.14, 861.254, 29.6206, 23420), 
(121853, 0, 530, -1824.32, 5417.23, -12.4277, 23420), 
(145430, 0, 870, -651.232, -4903.7, 2.05622, 23420), 
(191474, 0, 1220, -863.07, 4360.98, 855.82, 23420), 
(225219, 0, 1220, 3219.92, 1600.24, 244.52, 23420),
(225162, 0, 1220, 662.94, 6667.55, 142.42, 23420),
(225114, 0, 1220, 2369.11, 6501.17, 246.44, 23420), 
(205814, 0, 1220, 4181.64, 4486.24, 922.82, 23420),
(225232, 0, 1220, 1649.67, 4817.1, 213.85, 23420), 
(216016, 0, 1479, 1028.64, 7225.23, 100.18, 23420), 
(199711, 0, 571, 3597.69, 277.77, 340.85, 23420), 
(228508, 0, 0, 303.22, 347.21, 125, 23420), 
(192241, 1, 1220, -838.31, 4317.46, 744.8, 23420), 
(216216, 0, 1220, 4632.93, 5338.81, 849.12, 23420), 
(223199, 0, 1220, -828.72, 4371.78, 738.64, 23420); 

UPDATE `creature_template` SET `npcflag`=npcflag|2 WHERE `entry`=81948;

DELETE FROM `creature_questender` WHERE `id`=81948 AND `quest`=34646;

INSERT INTO `creature_questender` (`id`,`quest`) VALUES (81948,34646);

DELETE FROM `creature_questender` WHERE `id`=79953 AND `quest`=34692;

INSERT INTO `creature_questender` (`id`,`quest`) VALUES (79953,34692);

UPDATE `creature_template` SET `npcflag`=npcflag|2 WHERE `entry`=80163;

DELETE FROM `creature_queststarter` WHERE `id`=80163 AND `quest`=34820;

INSERT INTO `creature_queststarter` (`id`,`quest`) VALUES (80163,34820);

UPDATE `creature_template` SET `npcflag`=npcflag|2 WHERE `entry`=79966;

DELETE FROM `creature_questender` WHERE `id`=79966 AND `quest`=34820;

INSERT INTO `creature_questender` (`id`,`quest`) VALUES (79966,34820);

DELETE FROM `creature_queststarter` WHERE `id`=79966 AND `quest`=33263;

INSERT INTO `creature_queststarter` (`id`,`quest`) VALUES (79966, 33263);

DELETE FROM `creature_queststarter` WHERE `id`=73877 AND `quest`=33271;

INSERT INTO `creature_queststarter` (`id`,`quest`) VALUES (73877,33271);

UPDATE `creature_template` SET `npcflag`=npcflag|2 WHERE `entry`=76748;

DELETE FROM `creature_questender` WHERE `id`=76748 AND `quest`=33271;

INSERT INTO `creature_questender` (`id`,`quest`) VALUES (76748,33271);

DELETE FROM `creature_queststarter` WHERE `id`=79966 AND `quest`=33461;

INSERT INTO `creature_queststarter` (`id`,`quest`) VALUES (79966,33461);

UPDATE `creature_template` SET `npcflag`=npcflag|2 WHERE `entry`=80159;

DELETE FROM `creature_questender` WHERE `id`=80159 AND `quest`=33461;

INSERT INTO `creature_questender` (`id`,`quest`) VALUES (80159,33461);

DELETE FROM `creature_questender` WHERE `id`=80727 AND `quest`=35014;

DELETE FROM `creature_questender` WHERE `id`=80635 AND `quest`=35014;

INSERT INTO `creature_questender` (`id`,`quest`) VALUES (80635,35014);

DELETE FROM `creature_queststarter` WHERE `id`=79457 AND `quest`=34778;

INSERT INTO `creature_queststarter` (`id`,`quest`) VALUES (79457,34778);

DELETE FROM `creature_questender` WHERE `id`=81912 AND `quest`=34778;

INSERT INTO `creature_questender` (`id`,`quest`) VALUES (81912,34778);

UPDATE `creature_template` SET `npcflag`=npcflag|2 WHERE `entry`=80078;

DELETE FROM `creature_questender` WHERE `id`=80078 AND `quest`=34779;

INSERT INTO `creature_questender` (`id`,`quest`) VALUES (80078,34779);

UPDATE `creature_template` SET `npcflag`=npcflag|2 WHERE `entry`=82348;

DELETE FROM `creature_queststarter` WHERE `id`=82348 AND `quest`=34782;

INSERT INTO `creature_queststarter` (`id`,`quest`) VALUES (82348,34782);

UPDATE `creature_template` SET `npcflag`=npcflag|2 WHERE `entry`=80076;

DELETE FROM `creature_queststarter` WHERE `id`=80076 AND `quest`=34783;

INSERT INTO `creature_queststarter` (`id`,`quest`) VALUES (80076,34783);

DELETE FROM `creature_onkill_reputation` WHERE `creature_id` IN(75927,83894,75839,76177,83846,86684,87597,83019,77890,78437,79508,84767,84990,77935,77134,77131,77042,81820,79507,77133,81864,84989,76263,81983,77080,81819,79510,84957,86372,77130,76595,81985,79511,81984,77812,77132,83021,86591,82996,84880,86190,83011,86807,86530,86531,84055,82940,82990,84337,82921,86600,82981,86553,86515,84367,86529,86139,83020,87341,83018,85191,85450,85460,84099,85454,85459,85455,85458,82934,84180,83017,82960,87337,84094,84112,85457,85456,84026,84096,83023,84334,84871,83004,84873,84027,84283);

INSERT INTO `creature_onkill_reputation` (`creature_id`,`RewOnKillRepFaction1`,`RewOnKillRepFaction2`,`MaxStanding1`,
`IsTeamAward1`,`RewOnkillRepValue1`, `MaxStanding2`,`IsTeamAward2`,`RewOnKillRepValue2`,`TeamDependent`) VALUES
(75927,1710,0,7,0,400,0,0,0,1),(83894,1710,0,7,0,400,0,0,0,1),(75839,1710,0,7,0,400,0,0,0,1),(76177,1710,0,7,0,400,0,0,0,1),(83846,1710,0,7,0,400,0,0,0,1),(86684,1710,0,5,0,400,0,0,0,1),(87597,1710,0,4,0,400,0,0,0,1),(83019,1710,0,6,0,400,0,0,0,1),(77890,1710,0,5,0,40,0,0,0,1),(78437,1710,0,6,0,40,0,0,0,1),(79508,1710,0,7,0,20,0,0,0,1),(84767,1710,0,7,0,20,0,0,0,1),(84990,1710,0,7,0,20,0,0,0,1),(77935,1710,0,7,0,20,0,0,0,1),(77134,1710,0,6,0,20,0,0,0,1),(77131,1710,0,7,0,20,0,0,0,1),(77042,1710,0,7,0,20,0,0,0,1),(81820,1710,0,7,0,20,0,0,0,1),(79507,1710,0,7,0,20,0,0,0,1),(77133,1710,0,7,0,20,0,0,0,1),(81864,1710,0,7,0,20,0,0,0,1),(84989,1710,0,7,0,20,0,0,0,1),(76263,1710,0,7,0,20,0,0,0,1),(81983,1710,0,7,0,20,0,0,0,1),(77080,1710,0,6,0,20,0,0,0,1),(81819,1710,0,7,0,20,0,0,0,1),(79510,1710,0,7,0,20,0,0,0,1),(84957,1710,0,7,0,20,0,0,0,1),(86372,1710,0,7,0,20,0,0,0,1),(77130,1710,0,7,0,20,0,0,0,1),(76595,1710,0,7,0,20,0,0,0,1),(81985,1710,0,7,0,20,0,0,0,1),(79511,1710,0,7,0,20,0,0,0,1),(81984,1710,0,7,0,20,0,0,0,1),(77812,1710,0,7,0,20,0,0,0,1),(77132,1710,0,7,0,20,0,0,0,1),(83021,1710,0,4,0,16,0,0,0,1),(86591,1710,0,7,0,16,0,0,0,1),(82996,1710,0,7,0,10,0,0,0,1),(84880,1710,0,4,0,9,0,0,0,1),(86190,1710,0,7,0,9,0,0,0,1),(83011,1710,0,7,0,9,0,0,0,1),(86807,1710,0,5,0,9,0,0,0,1),(86530,1710,0,7,0,9,0,0,0,1),(86531,1710,0,7,0,9,0,0,0,1),(84055,1710,0,6,0,9,0,0,0,1),(82940,1710,0,7,0,8,0,0,0,1),(82990,1710,0,7,0,8,0,0,0,1),(84337,1710,0,6,0,8,0,0,0,1),(82921,1710,0,7,0,8,0,0,0,1),(86600,1710,0,7,0,8,0,0,0,1),(82981,1710,0,7,0,8,0,0,0,1),(86553,1710,0,7,0,8,0,0,0,1),(86515,1710,0,7,0,8,0,0,0,1),(84367,1710,0,4,0,8,0,0,0,1),(86529,1710,0,6,0,8,0,0,0,1),(86139,1710,0,4,0,8,0,0,0,1),(83020,1710,0,7,0,8,0,0,0,1),(87341,1710,0,7,0,8,0,0,0,1),(83018,1710,0,4,0,8,0,0,0,1),(85191,1710,0,6,0,6,0,0,0,1),(85450,1710,0,7,0,6,0,0,0,1),(85460,1710,0,7,0,6,0,0,0,1),(84099,1710,0,6,0,5,0,0,0,1),(85454,1710,0,7,0,5,0,0,0,1),(85459,1710,0,7,0,5,0,0,0,1),(85455,1710,0,7,0,5,0,0,0,1),(85458,1710,0,7,0,5,0,0,0,1),(82934,1710,0,7,0,5,0,0,0,1),(84180,1710,0,7,0,5,0,0,0,1),(83017,1710,0,7,0,5,0,0,0,1),(82960,1710,0,7,0,5,0,0,0,1),(87337,1710,0,7,0,5,0,0,0,1),(84094,1710,0,7,0,5,0,0,0,1),(84112,1710,0,6,0,5,0,0,0,1),(85457,1710,0,7,0,5,0,0,0,1),(85456,1710,0,7,0,5,0,0,0,1),(84026,1710,0,6,0,5,0,0,0,1),(84096,1710,0,6,0,5,0,0,0,1),(83023,1710,0,7,0,5,0,0,0,1),(84334,1710,0,7,0,5,0,0,0,1),(84871,1710,0,7,0,5,0,0,0,1),(83004,1710,0,6,0,5,0,0,0,1),(84873,1710,0,7,0,5,0,0,0,1),(84027,1710,0,7,0,1,0,0,0,1),(84283,1710,0,7,0,1,0,0,0,1);


UPDATE `creature_template`SET `lootid`=73167 WHERE `entry`=73167;

UPDATE `creature_template` SET `npcflag`=128 WHERE `entry`=16015;

DELETE FROM `npc_vendor` WHERE `entry`=16015;
INSERT INTO `npc_vendor`(`entry`,`item`,`maxcount`,`incrtime`,`ExtendedCost`,`type`) VALUES
(16015, 79249, 0, 0, 0, 1),
(16015, 63388, 0, 0, 0, 1),
(16015, 8846, 5, 240, 0, 1),
(16015, 14256, 1, 3600, 0, 1),
(16015, 64670, 0, 0, 0, 1),
(16015, 21939, 0, 0, 0, 1);

DELETE FROM `creature_onkill_reputation` WHERE `creature_id` IN (10738,7442,7439,7441,7438,7440,10916);
INSERT into `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(10738,576,0,7,0,40,0,0,0,0),
(7442,576,0,7,0,20,0,0,0,0),
(7439,576,0,7,0,20,0,0,0,0),
(7441,576,0,7,0,20,0,0,0,0),
(7438,576,0,7,0,20,0,0,0,0),
(7440,576,0,7,0,20,0,0,0,0),
(10916,576,0,7,0,20,0,0,0,0);

UPDATE `quest_template` SET `RewardFactionID1`=576, `RewardFactionValue1`=0, `RewardFactionOverride1`=1000000 WHERE `ID`=27989;
UPDATE `creature_template` SET `npcflag`=npcflag|4224 WHERE `entry`=20231; 
UPDATE `creature_template` SET `npcflag`=npcflag|4289 WHERE `entry`=66354;
UPDATE `gameobject_template` SET `data1`=221670 WHERE `entry`=221670;
UPDATE `gameobject_template` SET `data1`=222688 WHERE `entry`=222688;
UPDATE `creature_template` SET type_flags=1, TYPE=1, family=26 WHERE `entry`=82829; 
UPDATE `creature_template`SET `lootid`=79516 WHERE `entry`=79516;
UPDATE `creature_template` SET `npcflag`=268435456 WHERE `entry`=62821;

DELETE FROM `creature_onkill_reputation` WHERE `creature_id` IN(73666,73174,73175,73172,73173,73171,72898,72897,73528,72888,73169,72896,73170,72895,72892,72894,72875);

INSERT INTO `creature_onkill_reputation` (`creature_id`,`RewOnKillRepFaction1`,`RewOnKillRepFaction2`,`MaxStanding1`,
`IsTeamAward1`,`RewOnkillRepValue1`, `MaxStanding2`,`IsTeamAward2`,`RewOnKillRepValue2`,`TeamDependent`) VALUES
(73666,1492,0,7,0,50,0,0,0,0),(73174,1492,0,7,0,50,0,0,0,0),(73175,1492,0,7,0,40,0,0,0,0),
(73172,1492,0,7,0,40,0,0,0,0),(73173,1492,0,7,0,40,0,0,0,0),(73171,1492,0,7,0,30,0,0,0,0),
(72898,1492,0,7,0,25,0,0,0,0),(72897,1492,0,7,0,20,0,0,0,0),(73528,1492,0,7,0,20,0,0,0,0),
(72888,1492,0,7,0,20,0,0,0,0),(73169,1492,0,7,0,20,0,0,0,0),(72896,1492,0,7,0,20,0,0,0,0),
(73170,1492,0,7,0,20,0,0,0,0),(72895,1492,0,7,0,15,0,0,0,0),(72892,1492,0,7,0,10,0,0,0,0),
(72894,1492,0,7,0,10,0,0,0,0),(72875,1492,0,7,0,5,0,0,0,0);


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`='127506';
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 127506, 0, 0, 31, 1, 3, 64982, 0, 0, 952, '', 'Korven\'s Experimental Grenades Only On Zan\'thik Amberhusk');

DELETE FROM `item_loot_template` WHERE `entry`=94158;
INSERT INTO `item_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `mincount`, `maxcount`) VALUES
(94158, 74248, 17, 1, 1, 1, 1),
(94158, 74247, 17, 1, 0, 2, 6),
(94158, 72238, 17, 1, 0, 15, 20),
(94158, 74250, 17, 1, 0, 8, 16),
(94158, 82441, 17, 1, 0, 10, 20),
(94158, 38426, 17, 1, 0, 12, 18),
(94158, 72986, 17, 1, 0, 16, 20),
(94158, 74249, 17, 1, 0, 14, 20),
(94158, 72988, 17, 1, 0, 16, 20),
(94158, 72094, 16, 1, 0, 2, 19),
(94158, 72103, 16, 1, 0, 3, 19),
(94158, 72092, 16, 1, 0, 1, 13),
(94158, 72093, 16, 1, 0, 40, 60),
(94158, 72163, 15, 1, 0, 1, 2),
(94158, 72120, 15, 1, 0, 12, 20),
(94158, 79011, 15, 1, 0, 15, 20),
(94158, 72234, 15, 1, 0, 15, 20),
(94158, 72237, 15, 1, 0, 15, 20),
(94158, 72235, 15, 1, 0, 15, 20),
(94158, 79010, 15, 1, 0, 15, 20),
(94158, 76141, 5, 1, 0, 3, 7),
(94158, 76131, 5, 1, 0, 3, 10),
(94158, 76138, 5, 1, 0, 3, 10),
(94158, 76142, 5, 1, 0, 3, 7),
(94158, 76140, 5, 1, 0, 3, 10),
(94158, 76139, 5, 1, 0, 3, 10),
(94158, 76137, 3, 1, 0, 8, 12),
(94158, 76133, 3, 1, 0, 8, 12),
(94158, 76136, 3, 1, 0, 8, 12),
(94158, 76135, 3, 1, 0, 8, 12),
(94158, 76130, 3, 1, 0, 8, 12),
(94158, 87642, 2, 1, 1, 1, 1),
(94158, 87650, 2, 1, 1, 1, 1),
(94158, 87641, 2, 1, 1, 1, 1),
(94158, 76134, 2, 1, 0, 8, 12),
(94158, 87646, 1.9, 1, 1, 1, 1),
(94158, 87652, 1.9, 1, 1, 1, 1),
(94158, 87651, 1.9, 1, 1, 1, 1),
(94158, 87649, 1.9, 1, 1, 1, 1),
(94158, 90724, 1.9, 1, 1, 1, 1),
(94158, 90722, 1.9, 1, 1, 1, 1),
(94158, 90721, 1.8, 1, 1, 1, 1),
(94158, 87643, 1.8, 1, 1, 1, 1),
(94158, 90717, 1.8, 1, 1, 1, 1),
(94158, 90718, 1.8, 1, 1, 1, 1),
(94158, 90723, 1.6, 1, 1, 1, 1),
(94158, 90725, 1.6, 1, 1, 1, 1),
(94158, 90719, 1.6, 1, 1, 1, 1),
(94158, 90720, 1.5, 1, 1, 1, 1);

DELETE FROM `creature_onkill_reputation` WHERE `creature_id`=72892;
INSERT INTO `creature_onkill_reputation` (`creature_id`, `rewonkillrepfaction1`, `maxstanding1`, `isteamaward1`, `rewonkillrepvalue1`, `teamdependent`) VALUES
(72892,1492,7,0,10,0);

DELETE FROM `creature_onkill_reputation` WHERE `creature_id`=72875;
INSERT INTO `creature_onkill_reputation` (`creature_id`, `rewonkillrepfaction1`, `maxstanding1`, `isteamaward1`, `rewonkillrepvalue1`, `teamdependent`) VALUES
(72875,1492,7,0,5,0);

DELETE FROM `creature_onkill_reputation` WHERE `creature_id`IN(70069,67473,69431,69405,69223,69298,69225,69264,69235,69250,69236,69065,69170,69200,69171,67760,69227,69210,69338,69228,69400,69251,69348,69226,69335,69294,69295,69296,69297,69312,69198,69281,69136,69254);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `TeamDependent`) VALUES
(70069, 1359, 7, 0, 37, 0),
(67473, 1359, 7, 0, 50, 1),
(69431, 1359, 7, 0, 37, 1),
(69405, 1359, 7, 0, 100, 0),
(69223, 1359, 7, 0, 25, 0),
(69298, 1359, 7, 0, 25, 0),
(69225, 1359, 7, 0, 25, 0),
(69264, 1359, 7, 0, 25, 0),
(69235, 1359, 7, 0, 25, 0),
(69250, 1359, 7, 0, 50, 0),
(69236, 1359, 7, 0, 25, 0),
(69065, 1359, 7, 0, 25, 0),
(69170, 1359, 7, 0, 13, 0),
(69200, 1359, 7, 0, 50, 0),
(69171, 1359, 7, 0, 25, 0),
(67760, 1359, 7, 0, 25, 0),
(69227, 1359, 7, 0, 25, 0),
(69210, 1359, 7, 0, 25, 0),
(69338, 1359, 7, 0, 100, 1),
(69228, 1359, 7, 0, 25, 0),
(69400, 1359, 7, 0, 25, 0),
(69251, 1359, 7, 0, 25, 0),
(69348, 1359, 7, 0, 25, 0),
(69226, 1359, 7, 0, 50, 0),
(69335, 1359, 7, 0, 25, 0),
(69294, 1359, 7, 0, 25, 0),
(69295, 1359, 7, 0, 25, 0),
(69296, 1359, 7, 0, 25, 0),
(69297, 1359, 7, 0, 25, 0),
(69312, 1359, 7, 0, 37, 0),
(69198, 1359, 7, 0, 25, 0),
(69281, 1359, 7, 0, 50, 0),
(69136, 1359, 7, 0, 50, 0),
(69254, 1359, 7, 0, 50, 0);

DELETE FROM `creature_onkill_reputation` WHERE `creature_id` IN(72955,78791,78893,72987,78896,72953,78758,77803,80005,75452,75829,79545,79852,83612,80805,75509,87351,87348,87357,82618,78265,84376,72364,82614,
87622,84392,82616,82620,82617,81235,81212,75652,83390,82594,83026,84028,81603,83697,83762,80940,75451,77700,75979,81279,83389,81283,83765,75506,80936,84520,80938,82597,83025,80935,86526,75713,76104,83578,83761,83392,75715,83028,
82579,80937,82590,81432,83763,81236,76444,86809,75459,76446,88163,81407,84378,87346,77995,78210,76905,87333,78578,88459,77992,77993,78003,72650,72348,77969,77939,78223,78226,78039,72297,88425,85997,82711,78782,74689,77991,
87345,77945,78040,77988,77175,85973,77994,77944,77940,77958,77959,77965,77966,77006,82680,78108,88437,78357,87343,88445,82675,78174,78778,87330,87588,87360,89107);

INSERT INTO `creature_onkill_reputation` (`creature_id`,`RewOnKillRepFaction1`,`RewOnKillRepFaction2`,`MaxStanding1`,
`IsTeamAward1`,`RewOnkillRepValue1`, `MaxStanding2`,`IsTeamAward2`,`RewOnKillRepValue2`,`TeamDependent`) VALUES
(72955,1445,0,0,0,500,0,0,0,0),(78791,1445,0,0,0,500,0,0,0,0),(78893,1445,0,0,0,500,0,0,0,0),
(72987,1445,0,0,0,500,0,0,0,0),(78896,1445,0,0,0,500,0,0,0,0),(72953,1445,0,0,0,500,0,0,0,0),
(78758,1445,0,0,0,500,0,0,0,0),(77803,1445,0,0,0,480,0,0,0,0),(80005,1445,0,0,0,480,0,0,0,0),
(75452,1445,0,0,0,480,0,0,0,0),(75829,1445,0,0,0,480,0,0,0,0),(79545,1445,0,0,0,480,0,0,0,0),
(79852,1445,0,0,0,480,0,0,0,0),(83612,1445,0,0,0,480,0,0,0,0),(80805,1445,0,0,0,480,0,0,0,0),
(75509,1445,0,0,0,400,0,0,0,0),(87351,1445,0,0,0,400,0,0,0,0),(87348,1445,0,0,0,400,0,0,0,0),
(87357,1445,0,0,0,60,0,0,0,0),(82618,1445,0,0,0,50,0,0,0,0),(78265,1445,0,0,0,50,0,0,0,0),
(84376,1445,0,0,0,50,0,0,0,0),(72364,1445,0,0,0,50,0,0,0,0),(82614,1445,0,0,0,50,0,0,0,0),
(87622,1445,0,0,0,50,0,0,0,0),(84392,1445,0,0,0,50,0,0,0,0),(82616,1445,0,0,0,50,0,0,0,0),
(82620,1445,0,0,0,50,0,0,0,0),(82617,1445,0,0,0,50,0,0,0,0),(81235,1445,0,0,0,24,0,0,0,0),
(81212,1445,0,0,0,24,0,0,0,0),(75652,1445,0,0,0,24,0,0,0,0),(83390,1445,0,0,0,24,0,0,0,0),
(82594,1445,0,0,0,24,0,0,0,0),(83026,1445,0,0,0,24,0,0,0,0),(84028,1445,0,0,0,24,0,0,0,0),
(81603,1445,0,0,0,24,0,0,0,0),(83697,1445,0,0,0,24,0,0,0,0),(83762,1445,0,0,0,24,0,0,0,0),
(80940,1445,0,0,0,24,0,0,0,0),(75451,1445,0,0,0,24,0,0,0,0),(77700,1445,0,0,0,24,0,0,0,0),
(75979,1445,0,0,0,24,0,0,0,0),(81279,1445,0,0,0,24,0,0,0,0),(83389,1445,0,0,0,24,0,0,0,0),
(81283,1445,0,0,0,24,0,0,0,0),(83765,1445,0,0,0,24,0,0,0,0),(75506,1445,0,0,0,24,0,0,0,0),
(80936,1445,0,0,0,24,0,0,0,0),(84520,1445,0,0,0,24,0,0,0,0),(80938,1445,0,0,0,24,0,0,0,0),
(82597,1445,0,0,0,24,0,0,0,0),(83025,1445,0,0,0,24,0,0,0,0),(80935,1445,0,0,0,24,0,0,0,0),
(86526,1445,0,0,0,24,0,0,0,0),(75713,1445,0,0,0,24,0,0,0,0),(76104,1445,0,0,0,24,0,0,0,0),
(83578,1445,0,0,0,24,0,0,0,0),(83761,1445,0,0,0,24,0,0,0,0),(83392,1445,0,0,0,24,0,0,0,0),
(75715,1445,0,0,0,24,0,0,0,0),(83028,1445,0,0,0,24,0,0,0,0),(82579,1445,0,0,0,24,0,0,0,0),
(80937,1445,0,0,0,24,0,0,0,0),(82590,1445,0,0,0,24,0,0,0,0),(81432,1445,0,0,0,24,0,0,0,0),
(83763,1445,0,0,0,24,0,0,0,0),(81236,1445,0,0,0,24,0,0,0,0),(76444,1445,0,0,0,24,0,0,0,0),
(86809,1445,0,0,0,24,0,0,0,0),(75459,1445,0,0,0,24,0,0,0,0),(76446,1445,0,0,0,24,0,0,0,0),
(88163,1445,0,0,0,24,0,0,0,0),(81407,1445,0,0,0,20,0,0,0,0),(84378,1445,0,0,0,16,0,0,0,0),
(87346,1445,0,0,0,16,0,0,0,0),(77995,1445,0,0,0,16,0,0,0,0),(78210,1445,0,0,0,16,0,0,0,0),
(76905,1445,0,0,0,8,0,0,0,0),(87333,1445,0,0,0,8,0,0,0,0),(78578,1445,0,0,0,8,0,0,0,0),
(88459,1445,0,0,0,8,0,0,0,0),(77992,1445,0,0,0,8,0,0,0,0),(77993,1445,0,0,0,8,0,0,0,0),
(78003,1445,0,0,0,8,0,0,0,0),(72650,1445,0,0,0,5,0,0,0,0),(72348,1445,0,0,0,5,0,0,0,0),
(77969,1445,0,0,0,5,0,0,0,0),(77939,1445,0,0,0,5,0,0,0,0),(78223,1445,0,0,0,5,0,0,0,0),
(78226,1445,0,0,0,5,0,0,0,0),(78039,1445,0,0,0,5,0,0,0,0),(72297,1445,0,0,0,5,0,0,0,0),
(88425,1445,0,0,0,5,0,0,0,0),(85997,1445,0,0,0,5,0,0,0,0),(82711,1445,0,0,0,5,0,0,0,0),
(78782,1445,0,0,0,5,0,0,0,0),(74689,1445,0,0,0,5,0,0,0,0),(77991,1445,0,0,0,5,0,0,0,0),
(87345,1445,0,0,0,5,0,0,0,0),(77945,1445,0,0,0,5,0,0,0,0),(78040,1445,0,0,0,5,0,0,0,0),
(77988,1445,0,0,0,5,0,0,0,0),(77175,1445,0,0,0,5,0,0,0,0),(85973,1445,0,0,0,5,0,0,0,0),
(77994,1445,0,0,0,5,0,0,0,0),(77944,1445,0,0,0,5,0,0,0,0),(77940,1445,0,0,0,5,0,0,0,0),
(77958,1445,0,0,0,5,0,0,0,0),(77959,1445,0,0,0,5,0,0,0,0),(77965,1445,0,0,0,5,0,0,0,0),
(77966,1445,0,0,0,5,0,0,0,0),(77006,1445,0,0,0,4,0,0,0,0),(82680,1445,0,0,0,1,0,0,0,0),
(78108,1445,0,0,0,1,0,0,0,0),(88437,1445,0,0,0,1,0,0,0,0),(78357,1445,0,0,0,1,0,0,0,0),
(87343,1445,0,0,0,1,0,0,0,0),(88445,1445,0,0,0,1,0,0,0,0),(82675,1445,0,0,0,1,0,0,0,0),
(78174,1445,0,0,0,1,0,0,0,0),(78778,1445,0,0,0,1,0,0,0,0),(87330,1445,0,0,0,1,0,0,0,0),
(87588,1445,0,0,0,1,0,0,0,0),(87360,1445,0,0,0,1,0,0,0,0),(89107,1445,0,0,0,1,0,0,0,0);


UPDATE `quest_template` SET `RewardFactionID1`=1445,`RewardFactionValue1`=7 WHERE `id` IN
(33145,33527,33731,33919,34124,34501,34505,35171,35237,34268);

UPDATE `quest_template` SET `RewardFactionID1`=1445,`RewardFactionValue1`=6 WHERE `id` IN 
(36118,36170,36317,36318,36119,36320,36321,36322,36323,36324,36325,36326,36327,36328,36329,36330,36331,36332,36333,36334,36335,36336,36337,36492,32803,33925,33926,33930,33933,33940,33942,33945,33946,33947,33948,33949,
33975,33990,33995,33997,34146,34174,34149,34151,34152,34153,34155,34172,34173,34174,34176,34177,34179,34195,34201,34206,34210,34211,34214,34215,34218,34219,34241,34713,34714,34841,34931,34967,34968,35252,35279,35280,35282,
35289,35347,35367,35368,35369,35370,35371,35373,35381,35382,35383,35384,35385,35530,35567,35568,35569,35570,35709,35798,35914,32795,32985,33010,33410,33730,33914,34506,34150,34175,34178,34180,34212,36593,33330);


UPDATE `quest_template` SET `RewardFactionID1`=1445,`RewardFactionValue1`=5 WHERE `id` IN
(32918,32941,33352,34359,34825,34839,34843,34865,35599,36205,36230,36238,36301,36314,36378,36380,36417,36419,36505,36516,32791,32792,32794,32804,32929,32980,32983,32984,32990,32991,32992,32993,32994,33013,33019,33125,33132,
33267,33344,33408,33427,33444,33450,33454,33462,33467,33468,33469,33470,33473,33483,33493,33526,33546,33622,33720,33721,33722,33724,33728,33729,33735,33736,33784,33785,33807,33816,33826,33828,33898,33915,34344,34345,34346,
34348,34380,34732,34950,35226,35251,33264,32784,32793,32797,32799,32800,32801,32802,32914,32934,32982,33012,33015,33068,33126,33148,33223,33224,33588,33659,34141,34327,34499,34500,33265,33282,33351,34071);

UPDATE `quest_template` SET `RewardFactionID1`=1445,`RewardFactionValue1`=3 WHERE `id` IN
(33868,34379,34402,34377);

UPDATE `quest_template` SET `RewardFactionID1`=1445,`RewardFactionValue1`=2 WHERE `id` IN
(36207,36352);

UPDATE `quest_template` SET `RewardFactionID1`=1445,`RewardFactionValue1`=1 WHERE `id` IN
(32783,32796,32979,32989,33412,33484,33657,33815,34123,34722);

UPDATE `creature_template`SET `lootid`=32857 WHERE `entry`=32857;
DELETE FROM `creature_loot_template` WHERE `entry`=32857;
INSERT INTO `creature_loot_template` (`entry`,`item`,`chance`,`lootmode`,`groupid`,`mincount`,`maxcount`,`comment`) VALUES
(32857,45087,47,1,0,1,1,''),
(32857,45228,21,1,0,1,1,''),
(32857,45226,21,1,0,1,1,''),
(32857,45237,21,1,0,1,1,''),
(32857,45238,20,1,0,1,1,''),
(32857,45232,20,1,0,1,1,''),
(32857,45193,20,1,0,1,1,''),
(32857,45234,19,1,0,1,1,''),
(32857,45233,19,1,0,1,1,''),
(32857,45239,19,1,0,1,1,''),
(32857,45227,19,1,0,1,1,''),
(32857,45224,19,1,0,1,1,''),
(32857,45236,19,1,0,1,1,''),
(32857,45235,19,1,0,1,1,''),
(32857,45225,18,1,0,1,1,''),
(32857,45240,18,1,0,1,1,''),
(32857,45038,11,1,0,1,1,''),
(32857,46348,1,1,0,1,1,''),
(32857,45088,1,1,0,1,1,''),
(32857,45094,1,1,0,1,1,''),
(32857,45099,1,1,0,1,1,''),
(32857,45102,1,1,0,1,1,''),
(32857,45091,1,1,0,1,1,''),
(32857,46027,1,1,0,1,1,''),
(32857,45097,1,1,0,1,1,''),
(32857,45103,1,1,0,1,1,''),
(32857,45090,1,1,0,1,1,''),
(32857,45092,1,1,0,1,1,''),
(32857,45095,1,1,0,1,1,''),
(32857,45104,1,1,0,1,1,''),
(32857,45093,1,1,0,1,1,''),
(32857,45101,1,1,0,1,1,''),
(32857,45098,1,1,0,1,1,''),
(32857,45100,1,1,0,1,1,''),
(32857,45105,1,1,0,1,1,''),
(32857,45089,1,1,0,1,1,''),
(32857,45096,1,1,0,1,1,'');


UPDATE `creature_template` SET `faction`=14 WHERE `entry`=109521;

UPDATE `creature_template` SET `InhabitType`='4' WHERE `entry`='115558';

DELETE FROM `conversation_actor_template` WHERE `Id` IN (52405, 49709, 52393, 50165, 50862, 49350, 53162, 49597, 52561, 52629);
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES
(52405, 100701, 63690, 22566),
(49709, 98825, 63690, 22566),
(52393, 113526, 63690, 22566),
(50165, 95707, 66158, 22566),
(50862, 91007, 62392, 22566),
(49350, 95392, 69863, 22566),
(53162, 94068, 66146, 22566),
(49597, 97662, 63712, 22566),
(52561, 90998, 65780, 22566),
(52629, 113526, 63690, 22566);

DELETE FROM `conversation_template` WHERE `Id` IN (1918, 1116, 1119, 1118, 3632, 1917, 1807, 1914, 1909, 879, 878, 875, 1903, 1901, 1805, 824, 822, 825, 1885, 3631, 1874, 1806, 2278, 2281, 568, 566, 2239, 2238, 2241, 2240, 726, 725, 737, 2244, 2243, 1651, 579, 565, 575, 572, 556, 485, 1174, 2222, 2221, 2220, 1175, 1173, 1176, 2219, 2218, 1168, 1167, 2061, 541, 772, 3808);
INSERT INTO `conversation_template` (`Id`, `FirstLineID`, `LastLineEndTime`, `VerifiedBuild`) VALUES
(1918, 8138, 1073864576, 22566),
(1116, 2729, 1073813248, 22566),
(1119, 2732, 1073813440, 22566),
(1118, 2731, 1073813376, 22566),
(3632, 8137, 1073974272, 22566),
(1917, 4057, 1073864512, 22566),
(1807, 3852, 1073857472, 22566),
(1914, 4043, 1073864320, 22566),
(1909, 4037, 1073864000, 22566),
(879, 2208, 1073798080, 22566),
(878, 2207, 1073798016, 22566),
(875, 2204, 1073797824, 22566),
(1903, 4023, 1073863616, 22566),
(1901, 4021, 1073863488, 22566),
(1805, 3849, 1073857344, 22566),
(824, 2012, 1073794560, 22566),
(822, 2010, 1073794432, 22566),
(825, 2013, 1073794624, 22566),
(1885, 3990, 1073862464, 22566),
(3631, 8136, 1073974208, 22566),
(1874, 3968, 1073861760, 22566),
(1806, 3850, 1073857408, 22566),
(2278, 4809, 2147629440, 22566),
(2281, 4814, 2147629632, 22566),
(568, 1473, 2147520000, 22566),
(566, 1463, 2147519872, 22566),
(2239, 4713, 2147626944, 22566),
(2238, 4712, 2147626880, 22566),
(2241, 4715, 2147627072, 22566),
(2240, 4714, 2147627008, 22566),
(726, 1725, 2147530112, 22566),
(725, 1724, 2147530048, 22566),
(737, 1760, 2147530816, 22566),
(2244, 4722, 2147627264, 22566),
(2243, 4721, 2147627200, 22566),
(1651, 3562, 2147589312, 22566),
(579, 1507, 2147520704, 22566),
(565, 5174, 2147519808, 22566),
(575, 5306, 2147520448, 22566),
(572, 5307, 2147520256, 22566),
(556, 5237, 2147519232, 22566),
(485, 1297, 2147514688, 22566),
(1174, 2790, 1610687872, 22566),
(2222, 4672, 1610754944, 22566),
(2221, 4671, 1610754880, 22566),
(2220, 4670, 1610754816, 22566),
(1175, 2792, 1610687936, 22566),
(1173, 2789, 1610687808, 22566),
(1176, 2793, 1610688000, 22566),
(2219, 4669, 1610754752, 22566),
(2218, 4668, 1610754688, 22566),
(1168, 2784, 1610687488, 22566),
(1167, 2781, 1610687424, 22566),
(2061, 4378, 2147615552, 22566),
(541, 1414, 2147518272, 22566),
(772, 1834, 2147533056, 22566),
(3808, 8496, 2147727360, 22566);

DELETE FROM `scene_template` WHERE (`SceneId`=1287 AND `ScriptPackageID`=1638) OR (`SceneId`=1092 AND `ScriptPackageID`=1477) OR (`SceneId`=1458 AND `ScriptPackageID`=1737) OR (`SceneId`=1141 AND `ScriptPackageID`=1508) OR (`SceneId`=1161 AND `ScriptPackageID`=1525);
INSERT INTO `scene_template` (`SceneId`, `Flags`, `ScriptPackageID`) VALUES
(1287, 25, 1638),
(1092, 16, 1477),
(1458, 16, 1737),
(1141, 24, 1508),
(1161, 26, 1525);


DELETE FROM `npc_vendor` WHERE (`entry`=92245 AND `item`=3857 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=92245 AND `item`=18567 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=92245 AND `item`=3466 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=92245 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=92245 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=92245 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=110518 AND `item`=128764 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=110518 AND `item`=128763 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=110518 AND `item`=128838 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=110518 AND `item`=128837 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=110518 AND `item`=128849 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=110518 AND `item`=128848 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=110518 AND `item`=138292 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=110518 AND `item`=128853 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=110530 AND `item`=3857 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=110530 AND `item`=18567 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=110530 AND `item`=3466 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=110530 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=110530 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=110530 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97869 AND `item`=128764 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97869 AND `item`=128763 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97869 AND `item`=138292 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97869 AND `item`=128853 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97869 AND `item`=3857 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97869 AND `item`=18567 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97869 AND `item`=3466 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97869 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97869 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97869 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=108555 AND `item`=128849 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=108555 AND `item`=128848 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=108555 AND `item`=138977 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=108555 AND `item`=128835 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=108555 AND `item`=128836 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=108555 AND `item`=138292 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=108555 AND `item`=128853 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99672 AND `item`=133993 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99672 AND `item`=133980 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99903 AND `item`=3371 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99903 AND `item`=22250 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97858 AND `item`=3857 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97858 AND `item`=18567 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97858 AND `item`=3466 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97858 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97858 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97858 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99205 AND `item`=3857 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99205 AND `item`=18567 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99205 AND `item`=3466 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99205 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99205 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99205 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=94100 AND `item`=3857 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=94100 AND `item`=18567 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=94100 AND `item`=3466 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=94100 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=94100 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=94100 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=94100 AND `item`=141048 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=94100 AND `item`=141044 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=97854 AND `item`=37460 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=101846 AND `item`=133810 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=101846 AND `item`=133813 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=101846 AND `item`=133828 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=101846 AND `item`=133814 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=101846 AND `item`=133818 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=101846 AND `item`=133826 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97876 AND `item`=3857 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97876 AND `item`=18567 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97876 AND `item`=3466 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97876 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97876 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97876 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99660 AND `item`=128761 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99660 AND `item`=128844 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99660 AND `item`=128843 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99660 AND `item`=128838 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99660 AND `item`=128837 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99660 AND `item`=128849 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99660 AND `item`=128848 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99905 AND `item`=3027 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99905 AND `item`=3026 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99905 AND `item`=2507 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99905 AND `item`=2506 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99905 AND `item`=2505 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99905 AND `item`=2504 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97857 AND `item`=64670 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97857 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97857 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97857 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97857 AND `item`=6217 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97857 AND `item`=6256 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97857 AND `item`=85663 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97857 AND `item`=7005 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97857 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97857 AND `item`=138293 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97857 AND `item`=90146 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97857 AND `item`=4470 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97857 AND `item`=38682 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97857 AND `item`=3371 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97857 AND `item`=39354 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97857 AND `item`=128839 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97857 AND `item`=128840 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97857 AND `item`=138292 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97857 AND `item`=128853 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97856 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97856 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97856 AND `item`=6532 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97856 AND `item`=6530 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97856 AND `item`=4400 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97856 AND `item`=4399 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97856 AND `item`=4289 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97856 AND `item`=3371 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97856 AND `item`=4340 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97856 AND `item`=4342 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97856 AND `item`=4341 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97856 AND `item`=2325 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97856 AND `item`=2604 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97856 AND `item`=3857 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97856 AND `item`=3466 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97856 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97856 AND `item`=2678 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97856 AND `item`=38426 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97856 AND `item`=14341 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97856 AND `item`=8343 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97856 AND `item`=4291 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97856 AND `item`=2321 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97856 AND `item`=2320 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97856 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97856 AND `item`=6217 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97856 AND `item`=6256 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97856 AND `item`=85663 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97856 AND `item`=7005 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97856 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99206 AND `item`=64670 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99206 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99206 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99206 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99206 AND `item`=6217 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99206 AND `item`=6256 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99206 AND `item`=85663 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99206 AND `item`=7005 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99206 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99206 AND `item`=138293 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99206 AND `item`=90146 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99206 AND `item`=4470 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99206 AND `item`=38682 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99206 AND `item`=3371 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99206 AND `item`=39354 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99206 AND `item`=128764 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99206 AND `item`=128763 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99206 AND `item`=138977 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99206 AND `item`=128835 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99206 AND `item`=128836 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99206 AND `item`=128849 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99206 AND `item`=128848 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99206 AND `item`=138292 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99206 AND `item`=128853 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99912 AND `item`=133981 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99912 AND `item`=133980 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99912 AND `item`=138285 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=99912 AND `item`=138290 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=100437 AND `item`=128849 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=100437 AND `item`=128848 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=100437 AND `item`=138977 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=100437 AND `item`=128835 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=100437 AND `item`=128836 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=100437 AND `item`=128838 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=100437 AND `item`=128837 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=100437 AND `item`=132247 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=108557 AND `item`=128849 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=108557 AND `item`=128848 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=108557 AND `item`=138285 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=108557 AND `item`=138290 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=108557 AND `item`=128838 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=108557 AND `item`=128837 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=108557 AND `item`=138292 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=108557 AND `item`=128853 AND `ExtendedCost`=0 AND `type`=1);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(92245, 7, 3857, 0, 0, 1, 0, 0, 22566), -- 3857
(92245, 6, 18567, 0, 0, 1, 0, 0, 22566), -- 18567
(92245, 5, 3466, 0, 0, 1, 0, 0, 22566), -- 3466
(92245, 4, 2880, 0, 0, 1, 0, 0, 22566), -- 2880
(92245, 3, 5956, 0, 0, 1, 0, 0, 22566), -- 5956
(92245, 2, 2901, 0, 0, 1, 0, 0, 22566), -- 2901
(110518, 8, 128764, 0, 0, 1, 0, 0, 22566), -- 128764
(110518, 7, 128763, 0, 0, 1, 0, 0, 22566), -- 128763
(110518, 6, 128838, 0, 0, 1, 0, 0, 22566), -- 128838
(110518, 5, 128837, 0, 0, 1, 0, 0, 22566), -- 128837
(110518, 4, 128849, 0, 0, 1, 0, 0, 22566), -- 128849
(110518, 3, 128848, 0, 0, 1, 0, 0, 22566), -- 128848
(110518, 2, 138292, 0, 0, 1, 0, 0, 22566), -- 138292
(110518, 1, 128853, 0, 0, 1, 0, 0, 22566), -- 128853
(110530, 6, 3857, 0, 0, 1, 0, 0, 22566), -- 3857
(110530, 5, 18567, 0, 0, 1, 0, 0, 22566), -- 18567
(110530, 4, 3466, 0, 0, 1, 0, 0, 22566), -- 3466
(110530, 3, 2880, 0, 0, 1, 0, 0, 22566), -- 2880
(110530, 2, 5956, 0, 0, 1, 0, 0, 22566), -- 5956
(110530, 1, 2901, 0, 0, 1, 0, 0, 22566), -- 2901
(97869, 10, 128764, 0, 0, 1, 0, 0, 22566), -- 128764
(97869, 9, 128763, 0, 0, 1, 0, 0, 22566), -- 128763
(97869, 8, 138292, 0, 0, 1, 0, 0, 22566), -- 138292
(97869, 7, 128853, 0, 0, 1, 0, 0, 22566), -- 128853
(97869, 6, 3857, 0, 0, 1, 0, 0, 22566), -- 3857
(97869, 5, 18567, 0, 0, 1, 0, 0, 22566), -- 18567
(97869, 4, 3466, 0, 0, 1, 0, 0, 22566), -- 3466
(97869, 3, 2880, 0, 0, 1, 0, 0, 22566), -- 2880
(97869, 2, 5956, 0, 0, 1, 0, 0, 22566), -- 5956
(97869, 1, 2901, 0, 0, 1, 0, 0, 22566), -- 2901
(108555, 7, 128849, 0, 0, 1, 0, 0, 22566), -- 128849
(108555, 6, 128848, 0, 0, 1, 0, 0, 22566), -- 128848
(108555, 5, 138977, 0, 0, 1, 0, 0, 22566), -- 138977
(108555, 4, 128835, 0, 0, 1, 0, 0, 22566), -- 128835
(108555, 3, 128836, 0, 0, 1, 0, 0, 22566), -- 128836
(108555, 2, 138292, 0, 0, 1, 0, 0, 22566), -- 138292
(108555, 1, 128853, 0, 0, 1, 0, 0, 22566), -- 128853
(99672, 12, 133993, 3, 0, 1, 0, 0, 22566), -- 133993
(99672, 11, 133980, 0, 0, 1, 0, 0, 22566), -- 133980
(99903, 2, 3371, 0, 0, 1, 0, 0, 22566), -- 3371
(99903, 1, 22250, 0, 0, 1, 0, 0, 22566), -- 22250
(97858, 6, 3857, 0, 0, 1, 0, 0, 22566), -- 3857
(97858, 5, 18567, 0, 0, 1, 0, 0, 22566), -- 18567
(97858, 4, 3466, 0, 0, 1, 0, 0, 22566), -- 3466
(97858, 3, 2880, 0, 0, 1, 0, 0, 22566), -- 2880
(97858, 2, 5956, 0, 0, 1, 0, 0, 22566), -- 5956
(97858, 1, 2901, 0, 0, 1, 0, 0, 22566), -- 2901
(99205, 6, 3857, 0, 0, 1, 0, 0, 22566), -- 3857
(99205, 5, 18567, 0, 0, 1, 0, 0, 22566), -- 18567
(99205, 4, 3466, 0, 0, 1, 0, 0, 22566), -- 3466
(99205, 3, 2880, 0, 0, 1, 0, 0, 22566), -- 2880
(99205, 2, 5956, 0, 0, 1, 0, 0, 22566), -- 5956
(99205, 1, 2901, 0, 0, 1, 0, 0, 22566), -- 2901
(94100, 9, 3857, 0, 0, 1, 0, 0, 22566), -- 3857
(94100, 8, 18567, 0, 0, 1, 0, 0, 22566), -- 18567
(94100, 7, 3466, 0, 0, 1, 0, 0, 22566), -- 3466
(94100, 6, 2880, 0, 0, 1, 0, 0, 22566), -- 2880
(94100, 5, 5956, 0, 0, 1, 0, 0, 22566), -- 5956
(94100, 4, 2901, 0, 0, 1, 0, 0, 22566), -- 2901
(94100, 3, 141048, 0, 6071, 1, 0, 0, 22566), -- 141048
(94100, 2, 141044, 0, 6071, 1, 0, 0, 22566), -- 141044
(97854, 1, 37460, 0, 0, 1, 0, 0, 22566), -- 37460
(101846, 8, 133810, 0, 0, 1, 0, 0, 22566), -- 133810
(101846, 7, 133813, 0, 0, 1, 0, 0, 22566), -- 133813
(101846, 6, 133828, 0, 0, 1, 0, 0, 22566), -- 133828
(101846, 5, 133814, 0, 0, 1, 0, 0, 22566), -- 133814
(101846, 3, 133818, 0, 0, 1, 0, 0, 22566), -- 133818
(101846, 1, 133826, 0, 0, 1, 0, 0, 22566), -- 133826
(97876, 6, 3857, 0, 0, 1, 0, 0, 22566), -- 3857
(97876, 5, 18567, 0, 0, 1, 0, 0, 22566), -- 18567
(97876, 4, 3466, 0, 0, 1, 0, 0, 22566), -- 3466
(97876, 3, 2880, 0, 0, 1, 0, 0, 22566), -- 2880
(97876, 2, 5956, 0, 0, 1, 0, 0, 22566), -- 5956
(97876, 1, 2901, 0, 0, 1, 0, 0, 22566), -- 2901
(99660, 7, 128761, 0, 0, 1, 0, 0, 22566), -- 128761
(99660, 6, 128844, 0, 0, 1, 0, 0, 22566), -- 128844
(99660, 5, 128843, 0, 0, 1, 0, 0, 22566), -- 128843
(99660, 4, 128838, 0, 0, 1, 0, 0, 22566), -- 128838
(99660, 3, 128837, 0, 0, 1, 0, 0, 22566), -- 128837
(99660, 2, 128849, 0, 0, 1, 0, 0, 22566), -- 128849
(99660, 1, 128848, 0, 0, 1, 0, 0, 22566), -- 128848
(99905, 6, 3027, 0, 0, 1, 0, 1, 22566), -- 3027
(99905, 5, 3026, 0, 0, 1, 0, 1, 22566), -- 3026
(99905, 4, 2507, 0, 0, 1, 0, 1, 22566), -- 2507
(99905, 3, 2506, 0, 0, 1, 0, 1, 22566), -- 2506
(99905, 2, 2505, 0, 0, 1, 0, 1, 22566), -- 2505
(99905, 1, 2504, 0, 0, 1, 0, 1, 22566), -- 2504
(97857, 19, 64670, 0, 0, 1, 0, 0, 22566), -- 64670
(97857, 18, 39505, 0, 0, 1, 0, 0, 22566), -- 39505
(97857, 17, 20815, 0, 0, 1, 0, 0, 22566), -- 20815
(97857, 16, 5956, 0, 0, 1, 0, 0, 22566), -- 5956
(97857, 15, 6217, 0, 0, 1, 0, 0, 22566), -- 6217
(97857, 14, 6256, 0, 0, 1, 0, 0, 22566), -- 6256
(97857, 13, 85663, 0, 0, 1, 0, 0, 22566), -- 85663
(97857, 12, 7005, 0, 0, 1, 0, 0, 22566), -- 7005
(97857, 11, 2901, 0, 0, 1, 0, 0, 22566), -- 2901
(97857, 10, 138293, 0, 0, 1, 0, 0, 22566), -- 138293
(97857, 9, 90146, 0, 0, 1, 0, 0, 22566), -- 90146
(97857, 8, 4470, 0, 0, 1, 0, 0, 22566), -- 4470
(97857, 7, 38682, 0, 0, 1, 0, 0, 22566), -- 38682
(97857, 6, 3371, 0, 0, 1, 0, 0, 22566), -- 3371
(97857, 5, 39354, 0, 0, 1, 0, 0, 22566), -- 39354
(97857, 4, 128839, 0, 0, 1, 0, 0, 22566), -- 128839
(97857, 3, 128840, 0, 0, 1, 0, 0, 22566), -- 128840
(97857, 2, 138292, 0, 0, 1, 0, 0, 22566), -- 138292
(97857, 1, 128853, 0, 0, 1, 0, 0, 22566), -- 128853
(97856, 29, 39505, 0, 0, 1, 0, 0, 22566), -- 39505
(97856, 28, 20815, 0, 0, 1, 0, 0, 22566), -- 20815
(97856, 27, 6532, 0, 0, 1, 0, 0, 22566), -- 6532
(97856, 26, 6530, 0, 0, 1, 0, 0, 22566), -- 6530
(97856, 25, 4400, 0, 0, 1, 0, 0, 22566), -- 4400
(97856, 24, 4399, 0, 0, 1, 0, 0, 22566), -- 4399
(97856, 23, 4289, 0, 0, 1, 0, 0, 22566), -- 4289
(97856, 22, 3371, 0, 0, 1, 0, 0, 22566), -- 3371
(97856, 21, 4340, 0, 0, 1, 0, 0, 22566), -- 4340
(97856, 20, 4342, 0, 0, 1, 0, 0, 22566), -- 4342
(97856, 19, 4341, 0, 0, 1, 0, 0, 22566), -- 4341
(97856, 18, 2325, 0, 0, 1, 0, 0, 22566), -- 2325
(97856, 17, 2604, 0, 0, 1, 0, 0, 22566), -- 2604
(97856, 16, 3857, 0, 0, 1, 0, 0, 22566), -- 3857
(97856, 15, 3466, 0, 0, 1, 0, 0, 22566), -- 3466
(97856, 14, 2880, 0, 0, 1, 0, 0, 22566), -- 2880
(97856, 13, 2678, 0, 0, 1, 0, 0, 22566), -- 2678
(97856, 12, 38426, 0, 0, 1, 0, 0, 22566), -- 38426
(97856, 11, 14341, 0, 0, 1, 0, 0, 22566), -- 14341
(97856, 10, 8343, 0, 0, 1, 0, 0, 22566), -- 8343
(97856, 9, 4291, 0, 0, 1, 0, 0, 22566), -- 4291
(97856, 8, 2321, 0, 0, 1, 0, 0, 22566), -- 2321
(97856, 7, 2320, 0, 0, 1, 0, 0, 22566), -- 2320
(97856, 6, 5956, 0, 0, 1, 0, 0, 22566), -- 5956
(97856, 5, 6217, 0, 0, 1, 0, 0, 22566), -- 6217
(97856, 4, 6256, 0, 0, 1, 0, 0, 22566), -- 6256
(97856, 3, 85663, 0, 0, 1, 0, 0, 22566), -- 85663
(97856, 2, 7005, 0, 0, 1, 0, 0, 22566), -- 7005
(97856, 1, 2901, 0, 0, 1, 0, 0, 22566), -- 2901
(99206, 24, 64670, 0, 0, 1, 0, 0, 22566), -- 64670
(99206, 23, 39505, 0, 0, 1, 0, 0, 22566), -- 39505
(99206, 22, 20815, 0, 0, 1, 0, 0, 22566), -- 20815
(99206, 21, 5956, 0, 0, 1, 0, 0, 22566), -- 5956
(99206, 20, 6217, 0, 0, 1, 0, 0, 22566), -- 6217
(99206, 19, 6256, 0, 0, 1, 0, 0, 22566), -- 6256
(99206, 18, 85663, 0, 0, 1, 0, 0, 22566), -- 85663
(99206, 17, 7005, 0, 0, 1, 0, 0, 22566), -- 7005
(99206, 16, 2901, 0, 0, 1, 0, 0, 22566), -- 2901
(99206, 15, 138293, 0, 0, 1, 0, 0, 22566), -- 138293
(99206, 14, 90146, 0, 0, 1, 0, 0, 22566), -- 90146
(99206, 13, 4470, 0, 0, 1, 0, 0, 22566), -- 4470
(99206, 12, 38682, 0, 0, 1, 0, 0, 22566), -- 38682
(99206, 11, 3371, 0, 0, 1, 0, 0, 22566), -- 3371
(99206, 10, 39354, 0, 0, 1, 0, 0, 22566), -- 39354
(99206, 9, 128764, 0, 0, 1, 0, 0, 22566), -- 128764
(99206, 8, 128763, 0, 0, 1, 0, 0, 22566), -- 128763
(99206, 7, 138977, 0, 0, 1, 0, 0, 22566), -- 138977
(99206, 6, 128835, 0, 0, 1, 0, 0, 22566), -- 128835
(99206, 5, 128836, 0, 0, 1, 0, 0, 22566), -- 128836
(99206, 4, 128849, 0, 0, 1, 0, 0, 22566), -- 128849
(99206, 3, 128848, 0, 0, 1, 0, 0, 22566), -- 128848
(99206, 2, 138292, 0, 0, 1, 0, 0, 22566), -- 138292
(99206, 1, 128853, 0, 0, 1, 0, 0, 22566), -- 128853
(99912, 4, 133981, 0, 0, 1, 0, 0, 22566), -- 133981
(99912, 3, 133980, 0, 0, 1, 0, 0, 22566), -- 133980
(99912, 2, 138285, 0, 0, 1, 0, 0, 22566), -- 138285
(99912, 1, 138290, 0, 0, 1, 0, 0, 22566), -- 138290
(100437, 8, 128849, 0, 0, 1, 0, 0, 22566), -- 128849
(100437, 7, 128848, 0, 0, 1, 0, 0, 22566), -- 128848
(100437, 6, 138977, 0, 0, 1, 0, 0, 22566), -- 138977
(100437, 5, 128835, 0, 0, 1, 0, 0, 22566), -- 128835
(100437, 4, 128836, 0, 0, 1, 0, 0, 22566), -- 128836
(100437, 3, 128838, 0, 0, 1, 0, 0, 22566), -- 128838
(100437, 2, 128837, 0, 0, 1, 0, 0, 22566), -- 128837
(100437, 1, 132247, 0, 0, 1, 0, 0, 22566), -- 132247
(108557, 8, 128849, 0, 0, 1, 0, 0, 22566), -- 128849
(108557, 7, 128848, 0, 0, 1, 0, 0, 22566), -- 128848
(108557, 6, 138285, 0, 0, 1, 0, 0, 22566), -- 138285
(108557, 5, 138290, 0, 0, 1, 0, 0, 22566), -- 138290
(108557, 4, 128838, 0, 0, 1, 0, 0, 22566), -- 128838
(108557, 3, 128837, 0, 0, 1, 0, 0, 22566), -- 128837
(108557, 2, 138292, 0, 0, 1, 0, 0, 22566), -- 138292
(108557, 1, 128853, 0, 0, 1, 0, 0, 22566); -- 128853

DELETE FROM `gossip_menu` WHERE (`MenuId`=18463 AND `TextId`=26679) OR (`MenuId`=10184 AND `TextId`=14125) OR (`MenuId`=10351 AND `TextId`=9384) OR (`MenuId`=19241 AND `TextId`=28275) OR (`MenuId`=18775 AND `TextId`=27305) OR (`MenuId`=19565 AND `TextId`=28930) OR (`MenuId`=9821 AND `TextId`=13584) OR (`MenuId`=18939 AND `TextId`=27627) OR (`MenuId`=18855 AND `TextId`=27465) OR (`MenuId`=18971 AND `TextId`=27701) OR (`MenuId`=19434 AND `TextId`=28684) OR (`MenuId`=19340 AND `TextId`=28494) OR (`MenuId`=19114 AND `TextId`=27964) OR (`MenuId`=20307 AND `TextId`=30384) OR (`MenuId`=18931 AND `TextId`=27611) OR (`MenuId`=18673 AND `TextId`=27128) OR (`MenuId`=18914 AND `TextId`=27573) OR (`MenuId`=18839 AND `TextId`=27441) OR (`MenuId`=18623 AND `TextId`=27316) OR (`MenuId`=18623 AND `TextId`=27011) OR (`MenuId`=19806 AND `TextId`=29362) OR (`MenuId`=18912 AND `TextId`=26755) OR (`MenuId`=18817 AND `TextId`=27409) OR (`MenuId`=19773 AND `TextId`=29286) OR (`MenuId`=20316 AND `TextId`=30395) OR (`MenuId`=18960 AND `TextId`=27674) OR (`MenuId`=18927 AND `TextId`=27604) OR (`MenuId`=18909 AND `TextId`=27563) OR (`MenuId`=18648 AND `TextId`=27088) OR (`MenuId`=18647 AND `TextId`=27087) OR (`MenuId`=18747 AND `TextId`=27251) OR (`MenuId`=18723 AND `TextId`=12487) OR (`MenuId`=19560 AND `TextId`=28921) OR (`MenuId`=19561 AND `TextId`=28922) OR (`MenuId`=19316 AND `TextId`=28435) OR (`MenuId`=18944 AND `TextId`=27644) OR (`MenuId`=18901 AND `TextId`=27554) OR (`MenuId`=18894 AND `TextId`=27540) OR (`MenuId`=19341 AND `TextId`=28496) OR (`MenuId`=10350 AND `TextId`=16706) OR (`MenuId`=18839 AND `TextId`=27510) OR (`MenuId`=18943 AND `TextId`=27642) OR (`MenuId`=18601 AND `TextId`=27311) OR (`MenuId`=19570 AND `TextId`=28943) OR (`MenuId`=18589 AND `TextId`=27315) OR (`MenuId`=18646 AND `TextId`=27086);
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES
(18463, 26679, 22566), -- 93691
(10184, 14125, 22566), -- 92243
(10351, 9384, 22566), -- 93189
(19241, 28275, 22566), -- 101846
(18775, 27305, 22566), -- 97304
(19565, 28930, 22566), -- 106191
(9821, 13584, 22566), -- 97874
(18939, 27627, 22566), -- 99150
(18855, 27465, 22566), -- 94068
(18971, 27701, 22566), -- 99619
(19434, 28684, 22566), -- 103485
(19340, 28494, 22566), -- 103485
(19114, 27964, 22566), -- 95799
(20307, 30384, 22566), -- 99207
(18931, 27611, 22566), -- 95421
(18673, 27128, 22566), -- 96286
(18914, 27573, 22566), -- 95256
(18839, 27441, 22566), -- 98067
(18623, 27316, 22566), -- 94409
(18623, 27011, 22566), -- 94409
(19806, 29362, 22566), -- 107726
(18912, 26755, 22566), -- 98825
(18817, 27409, 22566), -- 97852
(19773, 29286, 22566), -- 100437
(20316, 30395, 22566), -- 108557
(18960, 27674, 22566), -- 96038
(18927, 27604, 22566), -- 94434
(18909, 27563, 22566), -- 98804
(18648, 27088, 22566), -- 96520
(18647, 27087, 22566), -- 95186
(18747, 27251, 22566), -- 93787
(18723, 12487, 22566), -- 96813
(19560, 28921, 22566), -- 106115
(19561, 28922, 22566), -- 106153
(19316, 28435, 22566), -- 99468
(18944, 27644, 22566), -- 98773
(18901, 27554, 22566), -- 95410
(18894, 27540, 22566), -- 95403
(19341, 28496, 22566), -- 103733
(10350, 16706, 22566), -- 99903
(18839, 27510, 22566), -- 98067
(18943, 27642, 22566), -- 94973
(18601, 27311, 22566), -- 95438
(19570, 28943, 22566), -- 97553
(18589, 27315, 22566), -- 94101
(18646, 27086, 22566); -- 95191

UPDATE `gossip_menu_option` SET verifiedbuild=22566 WHERE (`MenuId`=18463 AND `OptionIndex`=1) OR (`MenuId`=10184 AND `OptionIndex`=0) OR (`MenuId`=10351 AND `OptionIndex`=0) OR (`MenuId`=19241 AND `OptionIndex`=14) OR (`MenuId`=19565 AND `OptionIndex`=0) OR (`MenuId`=9821 AND `OptionIndex`=2) OR (`MenuId`=9821 AND `OptionIndex`=1) OR (`MenuId`=18971 AND `OptionIndex`=0) OR (`MenuId`=19434 AND `OptionIndex`=0) OR (`MenuId`=19340 AND `OptionIndex`=1) OR (`MenuId`=20307 AND `OptionIndex`=1) OR (`MenuId`=20307 AND `OptionIndex`=0) OR (`MenuId`=18673 AND `OptionIndex`=0) OR (`MenuId`=19806 AND `OptionIndex`=0) OR (`MenuId`=18912 AND `OptionIndex`=0) OR (`MenuId`=18817 AND `OptionIndex`=1) OR (`MenuId`=18817 AND `OptionIndex`=0) OR (`MenuId`=19773 AND `OptionIndex`=0) OR (`MenuId`=18912 AND `OptionIndex`=1) OR (`MenuId`=20316 AND `OptionIndex`=2) OR (`MenuId`=20316 AND `OptionIndex`=1) OR (`MenuId`=20316 AND `OptionIndex`=0) OR (`MenuId`=18927 AND `OptionIndex`=0) OR (`MenuId`=18909 AND `OptionIndex`=0) OR (`MenuId`=18747 AND `OptionIndex`=0) OR (`MenuId`=18723 AND `OptionIndex`=0) OR (`MenuId`=19560 AND `OptionIndex`=0) OR (`MenuId`=19561 AND `OptionIndex`=0) OR (`MenuId`=18944 AND `OptionIndex`=0) OR (`MenuId`=18894 AND `OptionIndex`=0) OR (`MenuId`=10350 AND `OptionIndex`=1) OR (`MenuId`=10350 AND `OptionIndex`=0) OR (`MenuId`=18943 AND `OptionIndex`=1) OR (`MenuId`=18943 AND `OptionIndex`=0);
UPDATE `creature_template` SET `gossip_menu_id`='18463' WHERE  `entry`=93691;
UPDATE `creature_template` SET `npcflag`='83' WHERE  `entry`=93691;
UPDATE `creature_template` SET `gossip_menu_id`='10184' WHERE  `entry`=92243;
UPDATE `creature_template` SET `npcflag`='83' WHERE  `entry`=92243;
UPDATE `creature_template` SET `gossip_menu_id`='10351' WHERE  `entry`=93189;
UPDATE `creature_template` SET `gossip_menu_id`='18775' WHERE  `entry`=97304;
UPDATE `creature_template` SET `gossip_menu_id`='19565' WHERE  `entry`=106191;
UPDATE `creature_template` SET `gossip_menu_id`='19560' WHERE  `entry`=106115;
UPDATE `creature_template` SET `gossip_menu_id`='19561' WHERE  `entry`=106153;
UPDATE `creature_template` SET `gossip_menu_id`='19316' WHERE  `entry`=99468;
UPDATE `creature_template` SET `gossip_menu_id`='9821' WHERE  `entry`=97874;
UPDATE `creature_template` SET `gossip_menu_id`='18944' WHERE  `entry`=98773;
UPDATE `creature_template` SET `gossip_menu_id`='18855' WHERE  `entry`=94068;
UPDATE `creature_template` SET `gossip_menu_id`='18901' WHERE  `entry`=95410;
UPDATE `creature_template` SET `gossip_menu_id`='18894' WHERE  `entry`=95403;
UPDATE `creature_template` SET `gossip_menu_id`='18971' WHERE  `entry`=99619;
UPDATE `creature_template` SET `gossip_menu_id`='19114' WHERE  `entry`=95799;


DELETE FROM `spell_loot_template` WHERE `Entry` = 263148;
insert into `spell_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) values
('263148','124124','0','28','0','1','1','1','5',NULL),
('263148','130167','0','0.3','0','1','1','1','1',NULL),
('263148','137075','0','0.008','0','1','1','1','1',NULL),
('263148','139056','0','2.4','0','1','1','1','1',NULL),
('263148','139057','0','2.1','0','1','1','1','1',NULL),
('263148','139058','0','3','0','1','1','1','1',NULL),
('263148','139062','0','2','0','1','1','1','1',NULL),
('263148','139063','0','7','0','1','1','1','1',NULL),
('263148','139066','0','2.1','0','1','1','1','1',NULL),
('263148','139067','0','2.5','0','1','1','1','1',NULL),
('263148','139068','0','2.5','0','1','1','1','1',NULL),
('263148','139071','0','2.5','0','1','1','1','1',NULL),
('263148','139072','0','2.4','0','1','1','1','1',NULL),
('263148','139074','0','8','0','1','1','1','1',NULL),
('263148','139082','0','1.5','0','1','1','1','1',NULL),
('263148','139083','0','1.6','0','1','1','1','1',NULL),
('263148','139089','0','1.7','0','1','1','1','1',NULL),
('263148','141269','0','2','0','1','1','1','1',NULL);

DELETE FROM `spell_loot_template` WHERE `Entry` = 263149;
insert into `spell_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) values
('263149','124124','0','81','0','1','1','1','5',NULL),
('263149','139112','0','75','0','1','1','1','1',NULL),
('263149','139115','0','6','0','1','1','1','1',NULL);

DELETE FROM `spell_loot_template` WHERE `Entry` = 263150;
insert into `spell_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) values
('263150','124124','0','38','0','1','1','1','1',NULL),
('263150','131103','0','0.9','0','1','1','1','1',NULL),
('263150','132357','0','0.01','0','1','1','1','1',NULL),
('263150','132365','0','0.09','0','1','1','1','1',NULL),
('263150','132366','0','0.003','0','1','1','1','1',NULL),
('263150','132367','0','0.01','0','1','1','1','1',NULL),
('263150','132369','0','0.02','0','1','1','1','1',NULL),
('263150','132374','0','0.003','0','1','1','1','1',NULL),
('263150','132375','0','0.007','0','1','1','1','1',NULL),
('263150','132376','0','0.01','0','1','1','1','1',NULL),
('263150','132378','0','0.04','0','1','1','1','1',NULL),
('263150','132381','0','0.01','0','1','1','1','1',NULL),
('263150','132393','0','0.003','0','1','1','1','1',NULL),
('263150','132394','0','0.003','0','1','1','1','1',NULL),
('263150','132406','0','0.01','0','1','1','1','1',NULL),
('263150','132407','0','0.003','0','1','1','1','1',NULL),
('263150','132409','0','0.09','0','1','1','1','1',NULL),
('263150','132410','0','0.02','0','1','1','1','1',NULL),
('263150','132411','0','0.009','0','1','1','1','1',NULL),
('263150','132413','0','0.01','0','1','1','1','1',NULL),
('263150','132436','0','0.007','0','1','1','1','1',NULL),
('263150','132437','0','0.003','0','1','1','1','1',NULL),
('263150','132441','0','0.09','0','1','1','1','1',NULL),
('263150','132442','0','0.009','0','1','1','1','1',NULL),
('263150','132443','0','0.04','0','1','1','1','1',NULL),
('263150','132444','0','0.2','0','1','1','1','1',NULL),
('263150','132445','0','0.003','0','1','1','1','1',NULL),
('263150','132447','0','0.09','0','1','1','1','1',NULL),
('263150','132448','0','0.02','0','1','1','1','1',NULL),
('263150','132449','0','0.006','0','1','1','1','1',NULL),
('263150','132452','0','0.2','0','1','1','1','1',NULL),
('263150','132453','0','0.009','0','1','1','1','1',NULL),
('263150','132454','0','0.1','0','1','1','1','1',NULL),
('263150','132455','0','0.05','0','1','1','1','1',NULL),
('263150','132456','0','0.006','0','1','1','1','1',NULL),
('263150','132458','0','0.004','0','1','1','1','1',NULL),
('263150','132459','0','0.09','0','1','1','1','1',NULL),
('263150','132460','0','0.03','0','1','1','1','1',NULL),
('263150','132466','0','0.09','0','1','1','1','1',NULL),
('263150','132863','0','0.007','0','1','1','1','1',NULL),
('263150','133971','0','0.009','0','1','1','1','1',NULL),
('263150','133973','0','0.01','0','1','1','1','1',NULL),
('263150','133974','0','0.009','0','1','1','1','1',NULL),
('263150','133976','0','0.05','0','1','1','1','1',NULL),
('263150','133977','0','0.01','0','1','1','1','1',NULL),
('263150','134179','0','1.9','0','1','1','1','1',NULL),
('263150','134180','0','3.4','0','1','1','1','1',NULL),
('263150','134181','0','1.9','0','1','1','1','1',NULL),
('263150','134182','0','1.9','0','1','1','1','1',NULL),
('263150','134183','0','2','0','1','1','1','1',NULL),
('263150','134184','0','1.9','0','1','1','1','1',NULL),
('263150','134185','0','1.7','0','1','1','1','1',NULL),
('263150','134186','0','2','0','1','1','1','1',NULL),
('263150','134187','0','7','0','1','1','1','1',NULL),
('263150','134190','0','2.3','0','1','1','1','1',NULL),
('263150','134191','0','8','0','1','1','1','1',NULL),
('263150','134192','0','2.1','0','1','1','1','1',NULL),
('263150','134193','0','2','0','1','1','1','1',NULL),
('263150','134195','0','1.9','0','1','1','1','1',NULL),
('263150','134196','0','2','0','1','1','1','1',NULL),
('263150','134197','0','1.9','0','1','1','1','1',NULL),
('263150','134198','0','2','0','1','1','1','1',NULL),
('263150','134199','0','1.8','0','1','1','1','1',NULL),
('263150','134202','0','7','0','1','1','1','1',NULL),
('263150','134203','0','4.1','0','1','1','1','1',NULL),
('263150','134204','0','5','0','1','1','1','1',NULL),
('263150','134207','0','1.4','0','1','1','1','1',NULL),
('263150','134208','0','1.4','0','1','1','1','1',NULL),
('263150','134209','0','1.8','0','1','1','1','1',NULL),
('263150','134210','0','1.8','0','1','1','1','1',NULL),
('263150','134211','0','1.3','0','1','1','1','1',NULL),
('263150','134212','0','1.4','0','1','1','1','1',NULL),
('263150','134213','0','1.3','0','1','1','1','1',NULL),
('263150','134214','0','1.4','0','1','1','1','1',NULL),
('263150','134215','0','1.8','0','1','1','1','1',NULL),
('263150','134216','0','1.6','0','1','1','1','1',NULL),
('263150','134217','0','1.8','0','1','1','1','1',NULL),
('263150','134218','0','2','0','1','1','1','1',NULL),
('263150','134219','0','1.5','0','1','1','1','1',NULL),
('263150','134220','0','1.8','0','1','1','1','1',NULL),
('263150','134221','0','1.8','0','1','1','1','1',NULL),
('263150','134222','0','2.4','0','1','1','1','1',NULL),
('263150','134274','0','0.001','0','1','1','1','1',NULL),
('263150','134314','0','0.001','0','1','1','1','1',NULL),
('263150','136412','0','7','0','1','1','1','1',NULL),
('263150','136733','0','0.001','0','1','1','1','1',NULL),
('263150','136737','0','0.001','0','1','1','1','1',NULL),
('263150','136745','0','0.003','0','1','1','1','1',NULL),
('263150','136749','0','0.003','0','1','1','1','1',NULL),
('263150','137014','0','0.09','0','1','1','1','1',NULL),
('263150','137015','0','0.09','0','1','1','1','1',NULL),
('263150','137017','0','0.009','0','1','1','1','1',NULL),
('263150','137019','0','0.007','0','1','1','1','1',NULL),
('263150','137020','0','0.02','0','1','1','1','1',NULL),
('263150','137021','0','0.003','0','1','1','1','1',NULL),
('263150','137022','0','0.01','0','1','1','1','1',NULL),
('263150','137023','0','0.01','0','1','1','1','1',NULL),
('263150','137024','0','0.1','0','1','1','1','1',NULL),
('263150','137025','0','0.003','0','1','1','1','1',NULL),
('263150','137026','0','0.003','0','1','1','1','1',NULL),
('263150','137028','0','0.009','0','1','1','1','1',NULL),
('263150','137029','0','0.009','0','1','1','1','1',NULL),
('263150','137030','0','0.004','0','1','1','1','1',NULL),
('263150','137031','0','0.03','0','1','1','1','1',NULL),
('263150','137033','0','0.09','0','1','1','1','1',NULL),
('263150','137034','0','0.006','0','1','1','1','1',NULL),
('263150','137035','0','0.009','0','1','1','1','1',NULL),
('263150','137036','0','0.003','0','1','1','1','1',NULL),
('263150','137037','0','0.004','0','1','1','1','1',NULL),
('263150','137038','0','0.007','0','1','1','1','1',NULL),
('263150','137039','0','0.006','0','1','1','1','1',NULL),
('263150','137040','0','0.2','0','1','1','1','1',NULL),
('263150','137041','0','0.007','0','1','1','1','1',NULL),
('263150','137042','0','0.03','0','1','1','1','1',NULL),
('263150','137044','0','0.003','0','1','1','1','1',NULL),
('263150','137045','0','0.003','0','1','1','1','1',NULL),
('263150','137046','0','0.003','0','1','1','1','1',NULL),
('263150','137047','0','0.04','0','1','1','1','1',NULL),
('263150','137048','0','0.02','0','1','1','1','1',NULL),
('263150','137049','0','0.007','0','1','1','1','1',NULL),
('263150','137050','0','0.01','0','1','1','1','1',NULL),
('263150','137051','0','0.003','0','1','1','1','1',NULL),
('263150','137052','0','0.02','0','1','1','1','1',NULL),
('263150','137053','0','0.02','0','1','1','1','1',NULL),
('263150','137054','0','0.02','0','1','1','1','1',NULL),
('263150','137055','0','0.004','0','1','1','1','1',NULL),
('263150','137056','0','0.2','0','1','1','1','1',NULL),
('263150','137057','0','0.003','0','1','1','1','1',NULL),
('263150','137058','0','0.003','0','1','1','1','1',NULL),
('263150','137061','0','0.01','0','1','1','1','1',NULL),
('263150','137062','0','0.003','0','1','1','1','1',NULL),
('263150','137063','0','0.003','0','1','1','1','1',NULL),
('263150','137064','0','1.8','0','1','1','1','1',NULL),
('263150','137065','0','0.003','0','1','1','1','1',NULL),
('263150','137066','0','0.01','0','1','1','1','1',NULL),
('263150','137067','0','0.009','0','1','1','1','1',NULL),
('263150','137069','0','0.09','0','1','1','1','1',NULL),
('263150','137070','0','0.01','0','1','1','1','1',NULL),
('263150','137071','0','0.02','0','1','1','1','1',NULL),
('263150','137072','0','0.09','0','1','1','1','1',NULL),
('263150','137073','0','0.004','0','1','1','1','1',NULL),
('263150','137075','0','0.006','0','1','1','1','1',NULL),
('263150','137076','0','0.01','0','1','1','1','1',NULL),
('263150','137077','0','0.02','0','1','1','1','1',NULL),
('263150','137078','0','0.009','0','1','1','1','1',NULL),
('263150','137080','0','0.6','0','1','1','1','1',NULL),
('263150','137081','0','0.09','0','1','1','1','1',NULL),
('263150','137084','0','0.001','0','1','1','1','1',NULL),
('263150','137085','0','0.01','0','1','1','1','1',NULL),
('263150','137086','0','0.09','0','1','1','1','1',NULL),
('263150','137087','0','0.02','0','1','1','1','1',NULL),
('263150','137088','0','0.02','0','1','1','1','1',NULL),
('263150','137089','0','0.003','0','1','1','1','1',NULL),
('263150','137090','0','0.01','0','1','1','1','1',NULL),
('263150','137091','0','0.1','0','1','1','1','1',NULL),
('263150','137092','0','0.01','0','1','1','1','1',NULL),
('263150','137095','0','0.01','0','1','1','1','1',NULL),
('263150','137097','0','0.001','0','1','1','1','1',NULL),
('263150','137098','0','0.006','0','1','1','1','1',NULL),
('263150','137099','0','0.004','0','1','1','1','1',NULL),
('263150','137101','0','0.02','0','1','1','1','1',NULL),
('263150','137102','0','0.006','0','1','1','1','1',NULL),
('263150','137105','0','0.9','0','1','1','1','1',NULL),
('263150','137107','0','0.02','0','1','1','1','1',NULL),
('263150','137108','0','0.007','0','1','1','1','1',NULL),
('263150','137109','0','0.02','0','1','1','1','1',NULL),
('263150','137194','0','2.1','0','1','1','1','1',NULL),
('263150','137207','0','1.9','0','1','1','1','1',NULL),
('263150','137208','0','0.4','0','1','1','1','1',NULL),
('263150','137223','0','0.006','0','1','1','1','1',NULL),
('263150','137227','0','0.02','0','1','1','1','1',NULL),
('263150','137276','0','0.06','0','1','1','1','1',NULL),
('263150','137382','0','0.09','0','1','1','1','1',NULL),
('263150','137616','0','0.02','0','1','1','1','1',NULL),
('263150','138117','0','0.09','0','1','1','1','1',NULL),
('263150','138140','0','0.006','0','1','1','1','1',NULL),
('263150','138854','0','0.001','0','1','1','1','1',NULL),
('263150','138949','0','0.09','0','1','1','1','1',NULL),
('263150','139063','0','0.004','0','1','1','1','1',NULL),
('263150','139070','0','0.001','0','1','1','1','1',NULL),
('263150','139073','0','0.001','0','1','1','1','1',NULL),
('263150','139074','0','0.003','0','1','1','1','1',NULL),
('263150','139093','0','0.004','0','1','1','1','1',NULL),
('263150','139792','0','0.05','0','1','1','1','1',NULL),
('263150','139795','0','0.07','0','1','1','1','1',NULL),
('263150','139801','0','14','0','1','1','1','1',NULL),
('263150','139802','0','0.004','0','1','1','1','1',NULL),
('263150','139804','0','0.001','0','1','1','1','1',NULL),
('263150','139808','0','12','0','1','1','1','1',NULL),
('263150','139811','0','0.02','0','1','1','1','1',NULL),
('263150','139813','0','0.06','0','1','1','1','1',NULL),
('263150','139814','0','13','0','1','1','1','1',NULL),
('263150','139816','0','0.06','0','1','1','1','1',NULL),
('263150','139829','0','0.004','0','1','1','1','1',NULL),
('263150','139831','0','0.001','0','1','1','1','1',NULL),
('263150','139835','0','0.01','0','1','1','1','1',NULL),
('263150','139843','0','0.04','0','1','1','1','1',NULL),
('263150','139851','0','0.004','0','1','1','1','1',NULL),
('263150','139853','0','1.6','0','1','1','1','1',NULL),
('263150','139855','0','0.007','0','1','1','1','1',NULL),
('263150','139857','0','1.1','0','1','1','1','1',NULL),
('263150','139863','0','0.003','0','1','1','1','1',NULL),
('263150','139867','0','0.01','0','1','1','1','1',NULL),
('263150','139871','0','0.001','0','1','1','1','1',NULL),
('263150','139929','0','0.001','0','1','1','1','1',NULL),
('263150','140024','0','0.001','0','1','1','1','1',NULL),
('263150','140571','0','0.009','0','1','1','1','1',NULL),
('263150','140572','0','0.03','0','1','1','1','1',NULL),
('263150','140581','0','0.05','0','1','1','1','1',NULL),
('263150','140582','0','14','0','1','1','1','1',NULL),
('263150','140846','0','0.02','0','1','1','1','1',NULL),
('263150','141260','0','0.6','0','1','1','1','1',NULL),
('263150','141261','0','2.2','0','1','1','1','1',NULL),
('263150','141262','0','2','0','1','1','1','1',NULL),
('263150','141277','0','0.001','0','1','1','1','1',NULL),
('263150','141321','0','0.009','0','1','1','1','1',NULL),
('263150','141353','0','0.03','0','1','1','1','1',NULL),
('263150','141591','0','0.5','0','1','1','1','1',NULL),
('263150','141592','0','0.1','0','1','1','1','1',NULL),
('263150','142003','0','0.001','0','1','1','1','1',NULL),
('263150','143687','0','0.6','0','1','1','1','1',NULL),
('263150','143688','0','0.9','0','1','1','1','1',NULL),
('263150','143689','0','1.8','0','1','1','1','1',NULL),
('263150','143690','0','1.8','0','1','1','1','1',NULL),
('263150','143691','0','1.7','0','1','1','1','1',NULL),
('263150','143728','0','0.02','0','1','1','1','1',NULL),
('263150','144236','0','0.009','0','1','1','1','1',NULL),
('263150','144258','0','0.02','0','1','1','1','1',NULL),
('263150','144259','0','0.4','0','1','1','1','1',NULL),
('263150','144260','0','0.006','0','1','1','1','1',NULL),
('263150','144273','0','0.001','0','1','1','1','1',NULL),
('263150','144277','0','0.003','0','1','1','1','1',NULL),
('263150','144280','0','0.007','0','1','1','1','1',NULL),
('263150','144310','0','0.05','0','1','1','1','1',NULL),
('263150','144354','0','0.001','0','1','1','1','1',NULL),
('263150','144355','0','0.7','0','1','1','1','1',NULL),
('263150','144363','0','0.4','0','1','1','1','1',NULL),
('263150','144364','0','0.01','0','1','1','1','1',NULL);

DELETE FROM `spell_loot_template` WHERE `Entry` = 263151;
insert into `spell_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) values
('263151','132357','0','0.01','0','1','1','1','1',NULL),
('263151','132376','0','0.03','0','1','1','1','1',NULL),
('263151','132381','0','0.002','0','1','1','1','1',NULL),
('263151','132437','0','0.002','0','1','1','1','1',NULL),
('263151','132442','0','0.002','0','1','1','1','1',NULL),
('263151','132443','0','0.05','0','1','1','1','1',NULL),
('263151','132444','0','0.04','0','1','1','1','1',NULL),
('263151','132450','0','0.005','0','1','1','1','1',NULL),
('263151','132451','0','0.01','0','1','1','1','1',NULL),
('263151','132452','0','0.07','0','1','1','1','1',NULL),
('263151','133974','0','0.002','0','1','1','1','1',NULL),
('263151','137015','0','0.002','0','1','1','1','1',NULL),
('263151','137016','0','0.07','0','1','1','1','1',NULL),
('263151','137018','0','0.005','0','1','1','1','1',NULL),
('263151','137020','0','0.002','0','1','1','1','1',NULL),
('263151','137021','0','0.07','0','1','1','1','1',NULL),
('263151','137025','0','0.005','0','1','1','1','1',NULL),
('263151','137026','0','0.02','0','1','1','1','1',NULL),
('263151','137036','0','0.05','0','1','1','1','1',NULL),
('263151','137043','0','0.005','0','1','1','1','1',NULL),
('263151','137048','0','0.07','0','1','1','1','1',NULL),
('263151','137049','0','0.002','0','1','1','1','1',NULL),
('263151','137052','0','0.01','0','1','1','1','1',NULL),
('263151','137060','0','0.01','0','1','1','1','1',NULL),
('263151','137067','0','0.02','0','1','1','1','1',NULL),
('263151','137072','0','0.07','0','1','1','1','1',NULL),
('263151','137075','0','0.3','0','1','1','1','1',NULL),
('263151','137076','0','0.07','0','1','1','1','1',NULL),
('263151','137084','0','0.07','0','1','1','1','1',NULL),
('263151','137087','0','0.08','0','1','1','1','1',NULL),
('263151','137099','0','0.2','0','1','1','1','1',NULL),
('263151','137220','0','0.02','0','1','1','1','1',NULL),
('263151','137227','0','0.002','0','1','1','1','1',NULL),
('263151','138140','0','0.02','0','1','1','1','1',NULL),
('263151','139799','0','2.3','0','1','1','1','1',NULL),
('263151','139801','0','12','0','1','1','1','1',NULL),
('263151','139802','0','2.5','0','1','1','1','1',NULL),
('263151','139808','0','11','0','1','1','1','1',NULL),
('263151','139809','0','3.1','0','1','1','1','1',NULL),
('263151','139811','0','13','0','1','1','1','1',NULL),
('263151','139812','0','3','0','1','1','1','1',NULL),
('263151','139814','0','13','0','1','1','1','1',NULL),
('263151','139832','0','0.06','0','1','1','1','1',NULL),
('263151','139833','0','0.7','0','1','1','1','1',NULL),
('263151','139834','0','0.2','0','1','1','1','1',NULL),
('263151','139836','0','0.1','0','1','1','1','1',NULL),
('263151','139837','0','0.9','0','1','1','1','1',NULL),
('263151','139838','0','0.1','0','1','1','1','1',NULL),
('263151','139840','0','0.2','0','1','1','1','1',NULL),
('263151','139841','0','0.8','0','1','1','1','1',NULL),
('263151','139842','0','0.04','0','1','1','1','1',NULL),
('263151','139844','0','0.3','0','1','1','1','1',NULL),
('263151','139845','0','1.5','0','1','1','1','1',NULL),
('263151','139846','0','0.3','0','1','1','1','1',NULL),
('263151','139848','0','0.5','0','1','1','1','1',NULL),
('263151','139849','0','1.3','0','1','1','1','1',NULL),
('263151','139850','0','0.3','0','1','1','1','1',NULL),
('263151','139852','0','0.5','0','1','1','1','1',NULL),
('263151','139853','0','1.3','0','1','1','1','1',NULL),
('263151','139854','0','0.2','0','1','1','1','1',NULL),
('263151','139856','0','0.2','0','1','1','1','1',NULL),
('263151','139857','0','1.2','0','1','1','1','1',NULL),
('263151','139858','0','0.5','0','1','1','1','1',NULL),
('263151','139860','0','0.04','0','1','1','1','1',NULL),
('263151','139861','0','1','0','1','1','1','1',NULL),
('263151','139862','0','0.07','0','1','1','1','1',NULL),
('263151','139865','0','2.4','0','1','1','1','1',NULL),
('263151','139866','0','0.4','0','1','1','1','1',NULL),
('263151','139868','0','0.2','0','1','1','1','1',NULL),
('263151','139869','0','1.8','0','1','1','1','1',NULL),
('263151','139870','0','0.3','0','1','1','1','1',NULL),
('263151','139872','0','0.2','0','1','1','1','1',NULL),
('263151','139873','0','1.3','0','1','1','1','1',NULL),
('263151','139874','0','0.04','0','1','1','1','1',NULL),
('263151','139876','0','0.2','0','1','1','1','1',NULL),
('263151','139877','0','0.9','0','1','1','1','1',NULL),
('263151','139878','0','0.3','0','1','1','1','1',NULL),
('263151','140582','0','13','0','1','1','1','1',NULL),
('263151','140583','0','3.2','0','1','1','1','1',NULL),
('263151','140846','0','0.01','0','1','1','1','1',NULL),
('263151','144236','0','0.005','0','1','1','1','1',NULL),
('263151','144258','0','0.02','0','1','1','1','1',NULL),
('263151','144259','0','0.6','0','1','1','1','1',NULL),
('263151','144260','0','0.07','0','1','1','1','1',NULL),
('263151','144273','0','0.05','0','1','1','1','1',NULL),
('263151','144275','0','0.02','0','1','1','1','1',NULL),
('263151','144340','0','0.01','0','1','1','1','1',NULL),
('263151','144355','0','0.1','0','1','1','1','1',NULL),
('263151','147296','0','0.05','0','1','1','1','1',NULL),
('263151','147297','0','0.06','0','1','1','1','1',NULL),
('263151','147299','0','0.002','0','1','1','1','1',NULL),
('263151','147300','0','0.06','0','1','1','1','1',NULL),
('263151','147301','0','0.1','0','1','1','1','1',NULL),
('263151','147304','0','0.005','0','1','1','1','1',NULL),
('263151','147305','0','0.002','0','1','1','1','1',NULL),
('263151','147553','0','0.1','0','1','1','1','1',NULL),
('263151','147554','0','0.002','0','1','1','1','1',NULL),
('263151','147555','0','0.03','0','1','1','1','1',NULL),
('263151','147556','0','0.05','0','1','1','1','1',NULL),
('263151','147557','0','0.03','0','1','1','1','1',NULL),
('263151','147558','0','0.002','0','1','1','1','1',NULL),
('263151','147559','0','0.06','0','1','1','1','1',NULL),
('263151','147560','0','0.5','0','1','1','1','1',NULL),
('263151','147561','0','0.5','0','1','1','1','1',NULL),
('263151','147563','0','0.3','0','1','1','1','1',NULL),
('263151','147564','0','0.2','0','1','1','1','1',NULL),
('263151','147565','0','0.3','0','1','1','1','1',NULL),
('263151','147566','0','0.1','0','1','1','1','1',NULL),
('263151','147567','0','0.05','0','1','1','1','1',NULL),
('263151','147568','0','0.4','0','1','1','1','1',NULL),
('263151','147570','0','0.2','0','1','1','1','1',NULL),
('263151','147571','0','0.2','0','1','1','1','1',NULL),
('263151','147572','0','0.2','0','1','1','1','1',NULL),
('263151','147806','0','17','0','1','1','1','1',NULL),
('263151','151642','0','0.002','0','1','1','1','1',NULL),
('263151','151644','0','0.02','0','1','1','1','1',NULL),
('263151','151786','0','0.005','0','1','1','1','1',NULL),
('263151','151798','0','0.01','0','1','1','1','1',NULL),
('263151','151800','0','0.09','0','1','1','1','1',NULL),
('263151','151807','0','0.01','0','1','1','1','1',NULL),
('263151','151809','0','0.002','0','1','1','1','1',NULL),
('263151','151812','0','0.02','0','1','1','1','1',NULL),
('263151','151814','0','0.002','0','1','1','1','1',NULL),
('263151','151822','0','0.05','0','1','1','1','1',NULL);

DELETE FROM `spell_loot_template` WHERE `Entry` = 263152;
insert into `spell_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) values
('263152','124124','0','55','0','1','1','1','5',NULL),
('263152','132444','0','9','0','1','1','1','1',NULL),
('263152','134299','0','9','0','1','1','1','1',NULL),
('263152','134303','0','9','0','1','1','1','5',NULL),
('263152','139917','0','9','0','1','1','1','1',NULL),
('263152','140024','0','18','0','1','1','1','1',NULL);

DELETE FROM `spell_loot_template` WHERE `Entry` = 263153;
insert into `spell_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) values
('263153','124124','0','18','0','1','1','1','5',NULL),
('263153','136725','0','2.3','0','1','1','1','1',NULL),
('263153','136727','0','2.3','0','1','1','1','1',NULL),
('263153','136733','0','10','0','1','1','1','5',NULL),
('263153','136737','0','8','0','1','1','1','1',NULL),
('263153','136744','0','2.3','0','1','1','1','1',NULL),
('263153','136749','0','2.3','0','1','1','1','1',NULL),
('263153','136750','0','2.3','0','1','1','1','1',NULL),
('263153','136758','0','1.6','0','1','1','1','1',NULL),
('263153','136765','0','2.3','0','1','1','1','1',NULL),
('263153','141280','0','3','0','1','1','1','5',NULL);

DELETE FROM `spell_loot_template` WHERE `Entry` = 263154;
insert into `spell_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) values
('263154','121732','0','0.2','0','1','1','1','1',NULL),
('263154','121751','0','0.1','0','1','1','1','1',NULL),
('263154','121756','0','0.1','0','1','1','1','1',NULL),
('263154','121757','0','0.09','0','1','1','1','1',NULL),
('263154','121758','0','0.2','0','1','1','1','1',NULL),
('263154','121796','0','0.7','0','1','1','1','1',NULL),
('263154','121798','0','0.5','0','1','1','1','1',NULL),
('263154','121799','0','0.4','0','1','1','1','1',NULL),
('263154','124124','0','29','0','1','1','1','1',NULL),
('263154','124741','0','0.1','0','1','1','1','1',NULL),
('263154','132357','0','0.02','0','1','1','1','1',NULL),
('263154','132365','0','0.006','0','1','1','1','1',NULL),
('263154','132366','0','0.006','0','1','1','1','1',NULL),
('263154','132367','0','0.02','0','1','1','1','1',NULL),
('263154','132369','0','0.006','0','1','1','1','1',NULL),
('263154','132375','0','0.01','0','1','1','1','1',NULL),
('263154','132376','0','0.02','0','1','1','1','1',NULL),
('263154','132378','0','0.02','0','1','1','1','1',NULL),
('263154','132379','0','0.04','0','1','1','1','1',NULL),
('263154','132393','0','0.006','0','1','1','1','1',NULL),
('263154','132406','0','0.01','0','1','1','1','1',NULL),
('263154','132409','0','0.04','0','1','1','1','1',NULL),
('263154','132410','0','0.03','0','1','1','1','1',NULL),
('263154','132411','0','0.02','0','1','1','1','1',NULL),
('263154','132413','0','0.006','0','1','1','1','1',NULL),
('263154','132443','0','0.04','0','1','1','1','1',NULL),
('263154','132444','0','0.1','0','1','1','1','1',NULL),
('263154','132450','0','0.006','0','1','1','1','1',NULL),
('263154','132452','0','0.1','0','1','1','1','1',NULL),
('263154','132455','0','0.07','0','1','1','1','1',NULL),
('263154','132456','0','0.006','0','1','1','1','1',NULL),
('263154','132458','0','0.01','0','1','1','1','1',NULL),
('263154','132466','0','0.03','0','1','1','1','1',NULL),
('263154','132863','0','0.02','0','1','1','1','1',NULL),
('263154','132864','0','0.006','0','1','1','1','1',NULL),
('263154','133800','0','0.006','0','1','1','1','1',NULL),
('263154','133971','0','0.03','0','1','1','1','1',NULL),
('263154','133976','0','0.03','0','1','1','1','1',NULL),
('263154','134179','0','0.3','0','1','1','1','1',NULL),
('263154','134180','0','0.4','0','1','1','1','1',NULL),
('263154','134181','0','0.3','0','1','1','1','1',NULL),
('263154','134182','0','0.3','0','1','1','1','1',NULL),
('263154','134183','0','0.3','0','1','1','1','1',NULL),
('263154','134184','0','0.3','0','1','1','1','1',NULL),
('263154','134185','0','0.3','0','1','1','1','1',NULL),
('263154','134186','0','0.3','0','1','1','1','1',NULL),
('263154','134187','0','1','0','1','1','1','1',NULL),
('263154','134190','0','0.4','0','1','1','1','1',NULL),
('263154','134191','0','1.03','0','1','1','1','1',NULL),
('263154','134192','0','0.4','0','1','1','1','1',NULL),
('263154','134193','0','0.3','0','1','1','1','1',NULL),
('263154','134194','0','0.4','0','1','1','1','1',NULL),
('263154','134195','0','0.4','0','1','1','1','1',NULL),
('263154','134196','0','0.4','0','1','1','1','1',NULL),
('263154','134197','0','0.6','0','1','1','1','1',NULL),
('263154','134198','0','0.4','0','1','1','1','1',NULL),
('263154','134199','0','0.3','0','1','1','1','1',NULL),
('263154','134202','0','0.06','0','1','1','1','1',NULL),
('263154','134203','0','0.7','0','1','1','1','1',NULL),
('263154','134204','0','0.08','0','1','1','1','1',NULL),
('263154','134207','0','0.2','0','1','1','1','1',NULL),
('263154','134208','0','0.2','0','1','1','1','1',NULL),
('263154','134209','0','0.2','0','1','1','1','1',NULL),
('263154','134210','0','0.3','0','1','1','1','1',NULL),
('263154','134211','0','0.3','0','1','1','1','1',NULL),
('263154','134212','0','0.2','0','1','1','1','1',NULL),
('263154','134213','0','0.2','0','1','1','1','1',NULL),
('263154','134214','0','0.3','0','1','1','1','1',NULL),
('263154','134215','0','0.3','0','1','1','1','1',NULL),
('263154','134216','0','0.3','0','1','1','1','1',NULL),
('263154','134217','0','0.4','0','1','1','1','1',NULL),
('263154','134218','0','0.3','0','1','1','1','1',NULL),
('263154','134219','0','0.3','0','1','1','1','1',NULL),
('263154','134220','0','0.2','0','1','1','1','1',NULL),
('263154','134221','0','0.3','0','1','1','1','1',NULL),
('263154','134222','0','0.3','0','1','1','1','1',NULL),
('263154','134267','0','0.2','0','1','1','1','1',NULL),
('263154','134268','0','0.2','0','1','1','1','1',NULL),
('263154','134269','0','0.2','0','1','1','1','1',NULL),
('263154','134270','0','0.2','0','1','1','1','1',NULL),
('263154','134271','0','0.2','0','1','1','1','1',NULL),
('263154','134272','0','0.3','0','1','1','1','1',NULL),
('263154','134273','0','0.3','0','1','1','1','1',NULL),
('263154','134274','0','0.06','0','1','1','1','1',NULL),
('263154','134275','0','0.8','0','1','1','1','1',NULL),
('263154','134278','0','0.1','0','1','1','1','1',NULL),
('263154','134279','0','0.8','0','1','1','1','1',NULL),
('263154','134280','0','0.2','0','1','1','1','1',NULL),
('263154','134281','0','0.3','0','1','1','1','1',NULL),
('263154','134282','0','0.3','0','1','1','1','1',NULL),
('263154','134283','0','0.3','0','1','1','1','1',NULL),
('263154','134284','0','0.3','0','1','1','1','1',NULL),
('263154','134285','0','0.2','0','1','1','1','1',NULL),
('263154','134286','0','0.2','0','1','1','1','1',NULL),
('263154','134287','0','0.1','0','1','1','1','1',NULL),
('263154','134290','0','0.9','0','1','1','1','1',NULL),
('263154','134291','0','0.08','0','1','1','1','1',NULL),
('263154','134292','0','0.06','0','1','1','1','1',NULL),
('263154','134295','0','0.1','0','1','1','1','1',NULL),
('263154','134296','0','0.1','0','1','1','1','1',NULL),
('263154','134297','0','0.3','0','1','1','1','1',NULL),
('263154','134298','0','0.2','0','1','1','1','1',NULL),
('263154','134299','0','0.1','0','1','1','1','1',NULL),
('263154','134300','0','0.2','0','1','1','1','1',NULL),
('263154','134301','0','0.2','0','1','1','1','1',NULL),
('263154','134302','0','0.05','0','1','1','1','1',NULL),
('263154','134303','0','0.2','0','1','1','1','1',NULL),
('263154','134304','0','0.1','0','1','1','1','1',NULL),
('263154','134305','0','0.1','0','1','1','1','1',NULL),
('263154','134306','0','0.2','0','1','1','1','1',NULL),
('263154','134307','0','0.09','0','1','1','1','1',NULL),
('263154','134308','0','0.1','0','1','1','1','1',NULL),
('263154','134309','0','0.2','0','1','1','1','1',NULL),
('263154','134310','0','0.2','0','1','1','1','1',NULL),
('263154','134311','0','0.3','0','1','1','1','1',NULL),
('263154','134312','0','0.4','0','1','1','1','1',NULL),
('263154','134313','0','0.3','0','1','1','1','1',NULL),
('263154','134315','0','0.5','0','1','1','1','1',NULL),
('263154','134316','0','0.4','0','1','1','1','1',NULL),
('263154','134317','0','0.3','0','1','1','1','1',NULL),
('263154','134318','0','0.4','0','1','1','1','1',NULL),
('263154','134319','0','1.2','0','1','1','1','1',NULL),
('263154','134322','0','0.1','0','1','1','1','1',NULL),
('263154','134323','0','1.3','0','1','1','1','1',NULL),
('263154','134324','0','0.4','0','1','1','1','1',NULL),
('263154','134325','0','0.4','0','1','1','1','1',NULL),
('263154','134326','0','0.4','0','1','1','1','1',NULL),
('263154','134327','0','0.4','0','1','1','1','1',NULL),
('263154','134328','0','0.3','0','1','1','1','1',NULL),
('263154','134329','0','0.4','0','1','1','1','1',NULL),
('263154','134330','0','0.3','0','1','1','1','1',NULL),
('263154','134334','0','1.2','0','1','1','1','1',NULL),
('263154','134335','0','0.2','0','1','1','1','1',NULL),
('263154','134336','0','0.2','0','1','1','1','1',NULL),
('263154','134339','0','0.3','0','1','1','1','1',NULL),
('263154','134340','0','0.2','0','1','1','1','1',NULL),
('263154','134341','0','0.3','0','1','1','1','1',NULL),
('263154','134342','0','0.3','0','1','1','1','1',NULL),
('263154','134343','0','0.2','0','1','1','1','1',NULL),
('263154','134344','0','0.2','0','1','1','1','1',NULL),
('263154','134345','0','0.3','0','1','1','1','1',NULL),
('263154','134346','0','0.3','0','1','1','1','1',NULL),
('263154','134347','0','0.6','0','1','1','1','1',NULL),
('263154','134348','0','0.4','0','1','1','1','1',NULL),
('263154','134349','0','0.3','0','1','1','1','1',NULL),
('263154','134350','0','0.3','0','1','1','1','1',NULL),
('263154','134351','0','0.3','0','1','1','1','1',NULL),
('263154','134352','0','0.2','0','1','1','1','1',NULL),
('263154','134353','0','0.3','0','1','1','1','1',NULL),
('263154','134354','0','0.4','0','1','1','1','1',NULL),
('263154','136725','0','0.4','0','1','1','1','1',NULL),
('263154','136726','0','0.3','0','1','1','1','1',NULL),
('263154','136727','0','0.4','0','1','1','1','1',NULL),
('263154','136728','0','0.4','0','1','1','1','1',NULL),
('263154','136729','0','0.4','0','1','1','1','1',NULL),
('263154','136730','0','0.3','0','1','1','1','1',NULL),
('263154','136731','0','0.4','0','1','1','1','1',NULL),
('263154','136732','0','0.4','0','1','1','1','1',NULL),
('263154','136733','0','0.07','0','1','1','1','1',NULL),
('263154','136736','0','0.04','0','1','1','1','1',NULL),
('263154','136737','0','0.07','0','1','1','1','1',NULL),
('263154','136738','0','0.4','0','1','1','1','1',NULL),
('263154','136739','0','0.4','0','1','1','1','1',NULL),
('263154','136740','0','0.3','0','1','1','1','1',NULL),
('263154','136742','0','0.4','0','1','1','1','1',NULL),
('263154','136743','0','0.4','0','1','1','1','1',NULL),
('263154','136744','0','0.4','0','1','1','1','1',NULL),
('263154','136745','0','0.4','0','1','1','1','1',NULL),
('263154','136748','0','0.09','0','1','1','1','1',NULL),
('263154','136749','0','0.3','0','1','1','1','1',NULL),
('263154','136750','0','0.3','0','1','1','1','1',NULL),
('263154','136753','0','0.2','0','1','1','1','1',NULL),
('263154','136754','0','0.3','0','1','1','1','1',NULL),
('263154','136755','0','0.2','0','1','1','1','1',NULL),
('263154','136756','0','0.3','0','1','1','1','1',NULL),
('263154','136757','0','0.3','0','1','1','1','1',NULL),
('263154','136758','0','0.4','0','1','1','1','1',NULL),
('263154','136759','0','0.3','0','1','1','1','1',NULL),
('263154','136760','0','0.3','0','1','1','1','1',NULL),
('263154','136761','0','0.4','0','1','1','1','1',NULL),
('263154','136762','0','0.3','0','1','1','1','1',NULL),
('263154','136763','0','0.3','0','1','1','1','1',NULL),
('263154','136764','0','0.4','0','1','1','1','1',NULL),
('263154','136765','0','0.4','0','1','1','1','1',NULL),
('263154','136766','0','0.4','0','1','1','1','1',NULL),
('263154','136767','0','0.2','0','1','1','1','1',NULL),
('263154','136768','0','0.3','0','1','1','1','1',NULL),
('263154','137014','0','0.006','0','1','1','1','1',NULL),
('263154','137015','0','0.006','0','1','1','1','1',NULL),
('263154','137018','0','0.006','0','1','1','1','1',NULL),
('263154','137019','0','0.006','0','1','1','1','1',NULL),
('263154','137020','0','0.02','0','1','1','1','1',NULL),
('263154','137022','0','0.006','0','1','1','1','1',NULL),
('263154','137025','0','0.006','0','1','1','1','1',NULL),
('263154','137038','0','0.006','0','1','1','1','1',NULL),
('263154','137039','0','0.02','0','1','1','1','1',NULL),
('263154','137041','0','0.02','0','1','1','1','1',NULL),
('263154','137042','0','0.006','0','1','1','1','1',NULL),
('263154','137043','0','0.006','0','1','1','1','1',NULL),
('263154','137047','0','0.006','0','1','1','1','1',NULL),
('263154','137048','0','0.02','0','1','1','1','1',NULL),
('263154','137050','0','0.02','0','1','1','1','1',NULL),
('263154','137052','0','0.006','0','1','1','1','1',NULL),
('263154','137053','0','0.002','0','1','1','1','1',NULL),
('263154','137054','0','0.006','0','1','1','1','1',NULL),
('263154','137055','0','0.01','0','1','1','1','1',NULL),
('263154','137056','0','0.02','0','1','1','1','1',NULL),
('263154','137060','0','0.006','0','1','1','1','1',NULL),
('263154','137061','0','0.04','0','1','1','1','1',NULL),
('263154','137062','0','0.01','0','1','1','1','1',NULL),
('263154','137066','0','0.08','0','1','1','1','1',NULL),
('263154','137069','0','0.006','0','1','1','1','1',NULL),
('263154','137070','0','0.004','0','1','1','1','1',NULL),
('263154','137072','0','0.006','0','1','1','1','1',NULL),
('263154','137073','0','0.4','0','1','1','1','1',NULL),
('263154','137074','0','0.002','0','1','1','1','1',NULL),
('263154','137077','0','0.006','0','1','1','1','1',NULL),
('263154','137078','0','0.006','0','1','1','1','1',NULL),
('263154','137080','0','0.04','0','1','1','1','1',NULL),
('263154','137083','0','0.006','0','1','1','1','1',NULL),
('263154','137086','0','0.03','0','1','1','1','1',NULL),
('263154','137088','0','0.006','0','1','1','1','1',NULL),
('263154','137089','0','0.01','0','1','1','1','1',NULL),
('263154','137091','0','0.02','0','1','1','1','1',NULL),
('263154','137092','0','0.009','0','1','1','1','1',NULL),
('263154','137094','0','0.006','0','1','1','1','1',NULL),
('263154','137097','0','0.006','0','1','1','1','1',NULL),
('263154','137099','0','0.006','0','1','1','1','1',NULL),
('263154','137104','0','0.006','0','1','1','1','1',NULL),
('263154','137108','0','0.006','0','1','1','1','1',NULL),
('263154','137223','0','0.02','0','1','1','1','1',NULL),
('263154','137227','0','0.01','0','1','1','1','1',NULL),
('263154','137382','0','0.02','0','1','1','1','1',NULL),
('263154','137616','0','0.01','0','1','1','1','1',NULL),
('263154','138117','0','0.01','0','1','1','1','1',NULL),
('263154','138854','0','0.02','0','1','1','1','1',NULL),
('263154','139021','0','0.3','0','1','1','1','1',NULL),
('263154','139055','0','0.4','0','1','1','1','1',NULL),
('263154','139056','0','0.3','0','1','1','1','1',NULL),
('263154','139057','0','0.4','0','1','1','1','1',NULL),
('263154','139058','0','0.5','0','1','1','1','1',NULL),
('263154','139059','0','0.4','0','1','1','1','1',NULL),
('263154','139060','0','0.4','0','1','1','1','1',NULL),
('263154','139061','0','0.3','0','1','1','1','1',NULL),
('263154','139062','0','0.3','0','1','1','1','1',NULL),
('263154','139063','0','1.03','0','1','1','1','1',NULL),
('263154','139064','0','0.2','0','1','1','1','1',NULL),
('263154','139065','0','1.3','0','1','1','1','1',NULL),
('263154','139066','0','0.5','0','1','1','1','1',NULL),
('263154','139067','0','0.4','0','1','1','1','1',NULL),
('263154','139068','0','0.4','0','1','1','1','1',NULL),
('263154','139069','0','0.5','0','1','1','1','1',NULL),
('263154','139070','0','0.5','0','1','1','1','1',NULL),
('263154','139071','0','0.4','0','1','1','1','1',NULL),
('263154','139072','0','0.4','0','1','1','1','1',NULL),
('263154','139074','0','1.5','0','1','1','1','1',NULL),
('263154','139075','0','0.2','0','1','1','1','1',NULL),
('263154','139076','0','0.2','0','1','1','1','1',NULL),
('263154','139077','0','0.3','0','1','1','1','1',NULL),
('263154','139078','0','0.3','0','1','1','1','1',NULL),
('263154','139079','0','0.3','0','1','1','1','1',NULL),
('263154','139080','0','0.3','0','1','1','1','1',NULL),
('263154','139082','0','0.2','0','1','1','1','1',NULL),
('263154','139083','0','0.3','0','1','1','1','1',NULL),
('263154','139084','0','0.3','0','1','1','1','1',NULL),
('263154','139085','0','0.5','0','1','1','1','1',NULL),
('263154','139086','0','0.3','0','1','1','1','1',NULL),
('263154','139087','0','0.3','0','1','1','1','1',NULL),
('263154','139088','0','0.4','0','1','1','1','1',NULL),
('263154','139089','0','0.4','0','1','1','1','1',NULL),
('263154','139090','0','0.3','0','1','1','1','1',NULL),
('263154','139091','0','0.4','0','1','1','1','1',NULL),
('263154','139092','0','0.3','0','1','1','1','1',NULL),
('263154','139093','0','0.4','0','1','1','1','1',NULL),
('263154','139094','0','0.4','0','1','1','1','1',NULL),
('263154','139095','0','0.4','0','1','1','1','1',NULL),
('263154','139096','0','0.4','0','1','1','1','1',NULL),
('263154','139097','0','0.4','0','1','1','1','1',NULL),
('263154','139098','0','0.3','0','1','1','1','1',NULL),
('263154','139099','0','0.4','0','1','1','1','1',NULL),
('263154','139100','0','0.4','0','1','1','1','1',NULL),
('263154','139101','0','1.03','0','1','1','1','1',NULL),
('263154','139102','0','0.08','0','1','1','1','1',NULL),
('263154','139103','0','1.3','0','1','1','1','1',NULL),
('263154','139104','0','0.4','0','1','1','1','1',NULL),
('263154','139105','0','0.4','0','1','1','1','1',NULL),
('263154','139106','0','0.4','0','1','1','1','1',NULL),
('263154','139107','0','0.4','0','1','1','1','1',NULL),
('263154','139108','0','0.5','0','1','1','1','1',NULL),
('263154','139109','0','0.4','0','1','1','1','1',NULL),
('263154','139110','0','0.4','0','1','1','1','1',NULL),
('263154','139111','0','0.4','0','1','1','1','1',NULL),
('263154','139112','0','1.1','0','1','1','1','1',NULL),
('263154','139113','0','0.08','0','1','1','1','1',NULL),
('263154','139114','0','0.3','0','1','1','1','1',NULL),
('263154','139115','0','0.2','0','1','1','1','1',NULL),
('263154','139116','0','0.3','0','1','1','1','1',NULL),
('263154','139117','0','0.2','0','1','1','1','1',NULL),
('263154','139118','0','0.3','0','1','1','1','1',NULL),
('263154','139119','0','0.4','0','1','1','1','1',NULL),
('263154','139120','0','0.2','0','1','1','1','1',NULL),
('263154','139121','0','0.2','0','1','1','1','1',NULL),
('263154','139122','0','0.4','0','1','1','1','1',NULL),
('263154','139123','0','0.3','0','1','1','1','1',NULL),
('263154','139124','0','0.3','0','1','1','1','1',NULL),
('263154','139125','0','0.3','0','1','1','1','1',NULL),
('263154','139126','0','0.3','0','1','1','1','1',NULL),
('263154','139127','0','0.3','0','1','1','1','1',NULL),
('263154','139128','0','0.3','0','1','1','1','1',NULL),
('263154','139129','0','0.3','0','1','1','1','1',NULL),
('263154','139130','0','0.3','0','1','1','1','1',NULL),
('263154','139792','0','0.04','0','1','1','1','1',NULL),
('263154','139795','0','0.05','0','1','1','1','1',NULL),
('263154','139801','0','0.006','0','1','1','1','1',NULL),
('263154','139808','0','0.006','0','1','1','1','1',NULL),
('263154','139813','0','0.04','0','1','1','1','1',NULL),
('263154','139816','0','0.08','0','1','1','1','1',NULL),
('263154','139855','0','0.006','0','1','1','1','1',NULL),
('263154','139857','0','0.006','0','1','1','1','1',NULL),
('263154','139871','0','0.01','0','1','1','1','1',NULL),
('263154','139875','0','0.02','0','1','1','1','1',NULL),
('263154','139910','0','0.1','0','1','1','1','1',NULL),
('263154','139913','0','0.1','0','1','1','1','1',NULL),
('263154','139917','0','0.2','0','1','1','1','1',NULL),
('263154','139923','0','0.1','0','1','1','1','1',NULL),
('263154','139927','0','0.1','0','1','1','1','1',NULL),
('263154','139929','0','0.2','0','1','1','1','1',NULL),
('263154','139935','0','0.2','0','1','1','1','1',NULL),
('263154','139938','0','0.2','0','1','1','1','1',NULL),
('263154','139940','0','0.1','0','1','1','1','1',NULL),
('263154','139947','0','0.1','0','1','1','1','1',NULL),
('263154','139949','0','0.2','0','1','1','1','1',NULL),
('263154','139953','0','0.1','0','1','1','1','1',NULL),
('263154','139957','0','0.3','0','1','1','1','1',NULL),
('263154','139966','0','0.2','0','1','1','1','1',NULL),
('263154','139967','0','0.09','0','1','1','1','1',NULL),
('263154','139972','0','0.1','0','1','1','1','1',NULL),
('263154','139977','0','0.1','0','1','1','1','1',NULL),
('263154','139980','0','0.07','0','1','1','1','1',NULL),
('263154','139985','0','0.1','0','1','1','1','1',NULL),
('263154','139990','0','0.9','0','1','1','1','1',NULL),
('263154','139998','0','0.2','0','1','1','1','1',NULL),
('263154','140003','0','0.1','0','1','1','1','1',NULL),
('263154','140009','0','0.2','0','1','1','1','1',NULL),
('263154','140013','0','0.2','0','1','1','1','1',NULL),
('263154','140017','0','0.2','0','1','1','1','1',NULL),
('263154','140020','0','0.2','0','1','1','1','1',NULL),
('263154','140024','0','0.5','0','1','1','1','1',NULL),
('263154','140031','0','0.02','0','1','1','1','1',NULL),
('263154','140035','0','0.006','0','1','1','1','1',NULL),
('263154','140041','0','0.09','0','1','1','1','1',NULL),
('263154','140042','0','0.03','0','1','1','1','1',NULL),
('263154','140043','0','0.2','0','1','1','1','1',NULL),
('263154','140044','0','0.2','0','1','1','1','1',NULL),
('263154','140045','0','0.1','0','1','1','1','1',NULL),
('263154','140047','0','0.1','0','1','1','1','1',NULL),
('263154','140080','0','0.09','0','1','1','1','1',NULL),
('263154','140086','0','0.05','0','1','1','1','1',NULL),
('263154','140088','0','0.1','0','1','1','1','1',NULL),
('263154','140571','0','0.02','0','1','1','1','1',NULL),
('263154','140572','0','0.04','0','1','1','1','1',NULL),
('263154','140582','0','0.02','0','1','1','1','1',NULL),
('263154','140846','0','0.02','0','1','1','1','1',NULL),
('263154','141260','0','0.07','0','1','1','1','1',NULL),
('263154','141261','0','0.4','0','1','1','1','1',NULL),
('263154','141262','0','0.4','0','1','1','1','1',NULL),
('263154','141266','0','0.2','0','1','1','1','1',NULL),
('263154','141267','0','0.1','0','1','1','1','1',NULL),
('263154','141268','0','0.09','0','1','1','1','1',NULL),
('263154','141269','0','0.4','0','1','1','1','1',NULL),
('263154','141270','0','0.4','0','1','1','1','1',NULL),
('263154','141271','0','0.2','0','1','1','1','1',NULL),
('263154','141272','0','0.4','0','1','1','1','1',NULL),
('263154','141273','0','0.4','0','1','1','1','1',NULL),
('263154','141274','0','0.3','0','1','1','1','1',NULL),
('263154','141275','0','0.4','0','1','1','1','1',NULL),
('263154','141276','0','0.1','0','1','1','1','1',NULL),
('263154','141277','0','0.4','0','1','1','1','1',NULL),
('263154','141278','0','0.3','0','1','1','1','1',NULL),
('263154','141279','0','0.6','0','1','1','1','1',NULL),
('263154','141280','0','0.7','0','1','1','1','1',NULL),
('263154','141349','0','0.9','0','1','1','1','1',NULL),
('263154','141353','0','0.02','0','1','1','1','1',NULL),
('263154','141591','0','1','0','1','1','1','1',NULL),
('263154','141592','0','0.03','0','1','1','1','1',NULL),
('263154','143614','0','10','0','1','1','2','4',NULL),
('263154','143687','0','0.2','0','1','1','1','1',NULL),
('263154','143688','0','0.2','0','1','1','1','1',NULL),
('263154','143689','0','0.3','0','1','1','1','1',NULL),
('263154','143690','0','0.2','0','1','1','1','1',NULL),
('263154','143691','0','0.3','0','1','1','1','1',NULL),
('263154','143694','0','0.4','0','1','1','1','1',NULL),
('263154','143695','0','0.03','0','1','1','1','1',NULL),
('263154','143696','0','0.05','0','1','1','1','1',NULL),
('263154','143697','0','0.07','0','1','1','1','1',NULL),
('263154','143698','0','0.08','0','1','1','1','1',NULL),
('263154','143699','0','0.4','0','1','1','1','1',NULL),
('263154','143700','0','0.2','0','1','1','1','1',NULL),
('263154','143701','0','0.4','0','1','1','1','1',NULL),
('263154','143702','0','0.4','0','1','1','1','1',NULL),
('263154','143703','0','2.8','0','1','1','1','1',NULL),
('263154','143704','0','0.2','0','1','1','1','1',NULL),
('263154','143705','0','0.5','0','1','1','1','1',NULL),
('263154','143728','0','0.02','0','1','1','1','1',NULL),
('263154','143732','0','0.006','0','1','1','1','1',NULL),
('263154','144236','0','0.006','0','1','1','1','1',NULL),
('263154','144244','0','0.006','0','1','1','1','1',NULL),
('263154','144249','0','0.006','0','1','1','1','1',NULL),
('263154','144258','0','0.05','0','1','1','1','1',NULL),
('263154','144259','0','0.1','0','1','1','1','1',NULL),
('263154','144260','0','0.006','0','1','1','1','1',NULL),
('263154','144273','0','0.006','0','1','1','1','1',NULL),
('263154','144274','0','0.006','0','1','1','1','1',NULL),
('263154','144275','0','0.01','0','1','1','1','1',NULL),
('263154','144277','0','0.01','0','1','1','1','1',NULL),
('263154','144279','0','0.02','0','1','1','1','1',NULL),
('263154','144295','0','0.006','0','1','1','1','1',NULL),
('263154','144303','0','0.01','0','1','1','1','1',NULL),
('263154','144326','0','0.02','0','1','1','1','1',NULL),
('263154','144358','0','0.02','0','1','1','1','1',NULL),
('263154','144363','0','0.06','0','1','1','1','1',NULL),
('263154','144364','0','0.01','0','1','1','1','1',NULL),
('263154','144369','0','0.02','0','1','1','1','1',NULL),
('263154','144438','0','0.02','0','1','1','1','1',NULL),
('263154','146970','0','0.4','0','1','1','2','4',NULL),
('263154','147348','0','2.7','0','1','1','1','1',NULL),
('263154','147349','0','0.7','0','1','1','1','1',NULL),
('263154','147350','0','0.1','0','1','1','1','1',NULL),
('263154','151636','0','0.01','0','1','1','1','1',NULL),
('263154','151639','0','0.006','0','1','1','1','1',NULL),
('263154','151641','0','0.02','0','1','1','1','1',NULL),
('263154','151643','0','0.006','0','1','1','1','1',NULL),
('263154','151644','0','0.006','0','1','1','1','1',NULL),
('263154','151650','0','0.006','0','1','1','1','1',NULL),
('263154','151691','0','0.01','0','1','1','1','1',NULL),
('263154','151798','0','0.006','0','1','1','1','1',NULL),
('263154','151799','0','0.01','0','1','1','1','1',NULL),
('263154','151805','0','0.01','0','1','1','1','1',NULL);
