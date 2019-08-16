DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 41570;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES (41570, 88066, 1);
UPDATE `creature_template` SET `difficulty_entry_1`=51251, `difficulty_entry_2`=51252, `difficulty_entry_3`=51253 WHERE  `entry`=42347 LIMIT 1;
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=41570;
UPDATE `creature_template` SET `npcflag`=`npcflag`|0x1000000 WHERE `entry`=42339;
UPDATE `npc_spellclick_spells` SET `spell_id`='78975' WHERE  `npc_entry`=42339 AND `spell_id`=61286;
REPLACE INTO `spell_scripts`(`id`,`effIndex`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`)VALUES
(78974,0,0,18,0,0,0,0,0,0,0); 

UPDATE gameobject_template SET data1 = 214284 WHERE entry = 214284 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '214284';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('214284', '87282', '0', '95.89841', '1', '1', '0', '1', '1', ''),
('214284', '87389', '0', '80.24085', '1', '1', '0', '1', '1', '');

DELETE FROM `gameobject_template` WHERE `entry` IN (1617, 1618, 1619, 2866);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `RequiredLevel`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES 
(1617, 3, 270, 'Silverleaf', '', '', '', 0.6, 29, 1617, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 27602),
(1618, 3, 269, 'Peacebloom', '', '', '', 0.5, 29, 1618, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 27602),
(1619, 3, 414, 'Earthroot', '', '', '', 0.4, 29, 1619, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 27602),
(2866, 3, 2312, 'Firebloom', '', '', '', 1, 29, 2866, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);

UPDATE gameobject_template_addon SET flags=0 WHERE `entry` IN (1618, 1617, 1619, 2866);

DELETE FROM `gameobject_loot_template` WHERE `Entry` IN (1617, 1618, 1619, 2866);
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(1617, 765, 0, 100, 0, 1, 0, 1, 1, ''),
(1618, 2447, 0, 100, 0, 1, 0, 1, 1, ''),
(1619, 2449, 0, 100, 0, 1, 0, 1, 1, ''),
(2866, 4625, 0, 95, 0, 1, 0, 1, 1, ''),
(2866, 108332, 0, 5, 0, 1, 0, 1, 1, '');


UPDATE `gameobject_template` SET `Data0`=90245, `Data5`=57340, `VerifiedBuild`=26972 WHERE `entry`=207691;
DELETE FROM `gameobject_template` WHERE entry =213085;
UPDATE `gameobject_template` SET `Data0`=213035, `VerifiedBuild`=26972 WHERE `entry`=250408;
DELETE FROM `gameobject_template` WHERE entry = 241514;
DELETE FROM `gameobject_template` WHERE entry =241515;
DELETE FROM `gameobject_template` WHERE entry =241516;
DELETE FROM `gameobject_template` WHERE entry =241454;
DELETE FROM `gameobject_template` WHERE entry =241420;
DELETE FROM `gameobject_template` WHERE entry =241437;
DELETE FROM `gameobject_template` WHERE entry =241438;
DELETE FROM `gameobject_template` WHERE entry =241694;
DELETE FROM `gameobject_template` WHERE entry =241695;
DELETE FROM `gameobject_template` WHERE entry =241696;
DELETE FROM `gameobject_template` WHERE entry =241691;
DELETE FROM `gameobject_template` WHERE entry =241510;
UPDATE `gameobject_template` SET `Data0`=241140, `VerifiedBuild`=26972 WHERE `entry`=267034;
DELETE FROM `gameobject_template_addon` WHERE entry IN (220373, 220374); 
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=51251;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=51252;
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=51253;
DELETE FROM `creature_template_scaling` WHERE entry=221889;
DELETE FROM `gameobject_questitem` WHERE GameObjectEntry IN (178185, 178186, 250408);
UPDATE `quest_template` SET `QuestSortID`='121' WHERE  `ID`=39680;
UPDATE `quest_template` SET `RewardSpell`='237610' WHERE  `ID`=45071;
UPDATE `quest_template` SET `RewardSpell`='237611' WHERE  `ID`=45069;
UPDATE `quest_template` SET `RewardSpell`='81038' WHERE  `ID`=24681;
UPDATE `quest_template` SET `RewardSpell`='237608' WHERE  `ID`=45072;
UPDATE `creature_template` SET `npcflag`='130' WHERE  `entry`=117435;
UPDATE `creature_template` SET `npcflag`='130' WHERE  `entry`=55143;
UPDATE `creature_template` SET `npcflag`='195' WHERE  `entry`=95844;
UPDATE `creature_template` SET `npcflag`='195' WHERE  `entry`=108825;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=115497;
UPDATE `creature_template` SET `npcflag`='130' WHERE  `entry`=117433;
DELETE FROM pool_creature WHERE guid=302994;
DELETE FROM pool_pool WHERE mother_pool=5238;
DELETE FROM spell_areatrigger WHERE SpellMiscId IN (7052, 6347, 6288, 6228, 6282, 10641, 6687, 3249, 2980, 5640, 10348, 18682, 16435, 17629, 164793, 198436, 195820, 176725, 0, 170796, 193236);


UPDATE creature_template SET lootid = 15689 WHERE entry = 15689 AND lootid = 0;
DELETE FROM `creature_loot_template` WHERE `entry` = '15689';
INSERT INTO `creature_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('15689', '28729', '0', '23', '0', '1', '0', '1', '1', ''),
('15689', '28730', '0', '56', '0', '1', '0', '1', '1', ''),
('15689', '28731', '0', '78', '0', '1', '0', '1', '1', ''),
('15689', '28732', '0', '56', '0', '1', '0', '1', '1', ''),
('15689', '28733', '0', '34', '0', '1', '0', '1', '1', ''),
('15689', '28734', '0', '56', '0', '1', '0', '1', '1', ''),
('15689', '28735', '0', '87', '0', '1', '0', '1', '1', ''),
('15689', '28740', '0', '14', '0', '1', '0', '1', '1', ''),
('15689', '28741', '0', '34', '0', '1', '0', '1', '1', ''),
('15689', '28742', '0', '45', '0', '1', '0', '1', '1', ''),
('15689', '28743', '0', '17', '0', '1', '0', '1', '1', ''),
('15689', '28744', '0', '87', '0', '1', '0', '1', '1', '');

UPDATE `skinning_loot_template` SET `MinCount`='1', `MaxCount`='2' WHERE  `Entry`=92627 AND `Item`=111351;


