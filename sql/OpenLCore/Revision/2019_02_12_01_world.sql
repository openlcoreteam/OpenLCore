-- Fishing / Dalaran
SET @CGUID = 20801100;

-- Spawn missing creature 
DELETE FROM `creature` WHERE `id`=108825;
DELETE FROM `creature` WHERE `id`=108912;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(@CGUID+01, 108825, 1220, 0, 0, 3, 0, 0, 0, 0, -520.83648, 4682.660156, 654.876526, 1.811215, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 25996), 
(@CGUID+02, 108912, 1220, 0, 0, 3, 0, 0, 0, 0, -524.310669, 4682.882813, 654.87738, 1.657696, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 25996);

-- Fountain 
DELETE FROM `fishing_loot_template` WHERE `Entry`=7595; -- Eventide Area
INSERT INTO `fishing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(7595, 0, 17880, 56, 0, 1, 1, 1, 'The Eventide - Dalaran Legion'), -- Coin
(7595, 138967, 0, 43, 0, 1, 1, 1, 'The Eventide - Dalaran Legion'), -- Big fountain Goldfish
(7595, 43571, 0, 1, 0, 1, 1, 1, 'The Eventide - Dalaran Legion'); -- Sewer carp

DELETE FROM `reference_loot_template` WHERE `Entry`=17880;
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(17880, 138894, 0, 0, 0, 1, 1, 1, 'Stellagosa''s Silver Coin'),
(17880, 138893, 0, 0, 0, 1, 1, 1, 'Runas'' Last Copper'),
(17880, 138896, 0, 0, 0, 1, 1, 1, 'Okuna Longtusk''s Doubloon'),
(17880, 138898, 0, 0, 0, 1, 1, 1, 'Coin of Golk the Rumble'),
(17880, 138901, 0, 0, 0, 1, 1, 1, 'Tyrande''s Coin'),
(17880, 138903, 0, 0, 0, 1, 1, 1, 'Kur''talos Ravencrest''s Spectral Coin'),
(17880, 138905, 0, 0, 0, 1, 1, 1, 'Penelope Heathrow''s Allowance'),
(17880, 138907, 0, 0, 0, 1, 1, 1, 'Elothir''s Golden Leaf'),
(17880, 138909, 0, 0, 0, 1, 1, 1, 'King Mrgl-Mrgl''s Coin'),
(17880, 138911, 0, 0, 0, 1, 1, 1, 'Murky''s Coin'),
(17880, 138913, 0, 0, 0, 1, 1, 1, 'Addie Fizzlebog''s Coin'),
(17880, 138915, 0, 0, 0, 1, 1, 1, 'The Candleking''s Candelcoin'),
(17880, 138917, 0, 0, 0, 1, 1, 1, 'God-King Skovald''s Fel-Tainted Coin'),
(17880, 138919, 0, 0, 0, 1, 1, 1, 'Nathanos Blightcaller''s Coin'),
(17880, 138921, 0, 0, 0, 1, 1, 1, 'Sir Finley Mrrgglton''s Coin'),
(17880, 138923, 0, 0, 0, 1, 1, 1, 'Vydhar''s Wooden Nickel'),
(17880, 138925, 0, 0, 0, 1, 1, 1, 'First Arcanist Thalyssra''s Coin'),
(17880, 138927, 0, 0, 0, 1, 1, 1, 'Oculeth''s Vanishing Coin'),
(17880, 138929, 0, 0, 0, 1, 1, 1, 'Pearlhunter Phin''s Soggy Coin'),
(17880, 138931, 0, 0, 0, 1, 1, 1, 'Gul''dan''s Coin'),
(17880, 138933, 0, 0, 0, 1, 1, 1, 'Allari the Souleater''s Coin'),
(17880, 138935, 0, 0, 0, 1, 1, 1, 'Cyana Nightglaive''s Coin'),
(17880, 138937, 0, 0, 0, 1, 1, 1, 'Izal Whitemoon''s Coin'),
(17880, 138939, 0, 0, 0, 1, 1, 1, 'Kayn Sunfury''s Coin'),
(17880, 138941, 0, 0, 0, 1, 1, 1, 'The Coin'),
(17880, 138943, 0, 0, 0, 1, 1, 1, 'Lady Liadrin''s Coin'),
(17880, 138945, 0, 0, 0, 1, 1, 1, 'Illidan''s Coin'),
(17880, 138947, 0, 0, 0, 1, 1, 1, 'Gallywix''s Coin-on-a-String'),
(17880, 138892, 0, 0, 0, 1, 1, 1, 'Prince Farondis'' Royal Seal'),
(17880, 138895, 0, 0, 0, 1, 1, 1, 'Senegos'' Ancient Coin'),
(17880, 138897, 0, 0, 0, 1, 1, 1, 'Ooker''s Dookat'),
(17880, 138899, 0, 0, 0, 1, 1, 1, 'Daglop''s Infernal Copper Coin'),
(17880, 138902, 0, 0, 0, 1, 1, 1, 'Malfurion''s Coin'),
(17880, 138904, 0, 0, 0, 1, 1, 1, 'Jarod Shadowsong''s Coin'),
(17880, 138906, 0, 0, 0, 1, 1, 1, 'Remulos'' Sigil'),
(17880, 138908, 0, 0, 0, 1, 1, 1, 'Koda''s Sigil'),
(17880, 138910, 0, 0, 0, 1, 1, 1, 'Hemet Nesingwary''s Bullet'),
(17880, 138912, 0, 0, 0, 1, 1, 1, 'Spiritwalker Ebonhorn''s Coin'),
(17880, 138914, 0, 0, 0, 1, 1, 1, 'Boomboom Brullingsworth''s Coin'),
(17880, 138916, 0, 0, 0, 1, 1, 1, 'Torok Bloodtotem''s Coin'),
(17880, 138918, 0, 0, 0, 1, 1, 1, 'Genn Greymane''s Coin'),
(17880, 138920, 0, 0, 0, 1, 1, 1, 'Helya''s Coin'),
(17880, 138922, 0, 0, 0, 1, 1, 1, 'Havi''s Coin'),
(17880, 138924, 0, 0, 0, 1, 1, 1, 'Rax Sixtrigger''s Gold-Painted Copper Coin'),
(17880, 138926, 0, 0, 0, 1, 1, 1, 'Magistrix Elisande''s Coin'),
(17880, 138928, 0, 0, 0, 1, 1, 1, 'Ly''leth Lunastre''s Family Crest'),
(17880, 138930, 0, 0, 0, 1, 1, 1, 'Advisor Vandros'' Coin'),
(17880, 138932, 0, 0, 0, 1, 1, 1, 'Yowlon''s Mark'),
(17880, 138934, 0, 0, 0, 1, 1, 1, 'Altruis the Sufferer''s Coin'),
(17880, 138936, 0, 0, 0, 1, 1, 1, 'Falara Nightsong''s Coin'),
(17880, 138938, 0, 0, 0, 1, 1, 1, 'Jace Darkweaver''s Coin'),
(17880, 138940, 0, 0, 0, 1, 1, 1, 'Korvas Bloodthorn''s Coin'),
(17880, 138942, 0, 0, 0, 1, 1, 1, 'Blingtron''s Botcoin'),
(17880, 138944, 0, 0, 0, 1, 1, 1, 'Lunara''s Coin'),
(17880, 138946, 0, 0, 0, 1, 1, 1, 'Queen Azshara''s Royal Seal'),
(17880, 138948, 0, 0, 0, 1, 1, 1, 'Li Li''s Coin');

-- Margoss's Retreat
UPDATE `creature_template` SET `npcflag`=1|16|128, `gossip_menu_id`=19873, `minlevel`=100, `maxlevel`=110, `faction`=2007 WHERE entry=108825;

DELETE FROM gossip_menu_option WHERE `MenuId` IN (19873);
INSERT INTO gossip_menu_option (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES
('19873', '1', '1', 'Have any rare fishing goods?', '114924', '3', '128', '0'),
('19873', '2', '3', 'Train me.', '3266', '5', '16', '0'),
('19873', '3', '0', 'Please teleport me back to Dalaran.', '114931', '1', '1', '0'),
('19873', '4', '0', 'I have a drowned mana for you.', '114938', '1', '1', '0'),
('19873', '5', '0', 'I have 10 drowned mana for you.', '116526', '1', '1', '0');

DELETE FROM `gossip_menu` WHERE `MenuId`=19873;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`) VALUES
(19873, 29522); 

DELETE FROM `npc_text` WHERE `id` IN (29522);
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextId0`, `BroadcastTextId1`, `BroadcastTextId2`, `BroadcastTextId3`, `BroadcastTextId4`, `BroadcastTextId5`, `BroadcastTextId6`, `BroadcastTextId7`, `VerifiedBuild`) VALUES
(29522, 1, 0, 0, 0, 0, 0, 0, 0, 114620, 0, 0, 0, 0, 0, 0, 0, 25996);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`='108825';
DELETE FROM `smart_scripts` WHERE (`entryorguid`=108825 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(108825, 0, 0, 2, 62, 0, 100, 0, 19873, 4, 0, 0, 85, 217291, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Gossip Select - Invoker Cast - Player"),
(108825, 0, 1, 2, 62, 0, 100, 0, 19873, 5, 0, 0, 85, 219392, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Gossip Select - Invoker Cast - Player"),
(108825, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On link - Close Gossip - Invoker"),
(108825, 0, 3, 0, 62, 0, 100, 0, 19873, 3, 0, 0, 85, 192295, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Gossip Select - Invoker Cast - Player");

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='15') AND (`SourceGroup`='19873') AND (`ConditionTypeOrReference`='2');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `NegativeCondition`, `Comment`) VALUES 
('15', '19873', '4', '0', '2', '138777', '1', '0', 'See gossip if has item'),
('15', '19873', '5', '0', '2', '138777', '10', '0', 'See gossip if has item');

-- Blythe 
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`='108912';
DELETE FROM `smart_scripts` WHERE (`entryorguid`=108912 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(108912, 0, 0, 0, 100, 0, 100, 0, 1, 30, 120000, 120000, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "OOC - Say - Self");

DELETE FROM `creature_text` WHERE `creatureID` IN (108912);
INSERT INTO `creature_text` (`creatureID`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextID`, `comment`) VALUES
(108912, 0, 0, 'This is not what I signed up for.', 15, 0, 100, 1, 0, 0, 116528, 'Blythe'),
(108912, 0, 1, 'Fishing? ...Really?!', 15, 0, 100, 1, 0, 0, 116530, 'Blythe'),
(108912, 0, 2, 'Take me with you.  Please!', 15, 0, 100, 1, 0, 0, 116531, 'Blythe');



-- Area 8270 Margoss's Retreat
DELETE FROM `fishing_loot_template` WHERE `Entry`=8270; -- Area 8270 Margoss''s Retreat
INSERT INTO `fishing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(8270, 138967, 0, 50, 0, 1, 1, 1, 'Margoss''s Retreat - Dalaran Legion'), -- Big fountain Goldfish
(8270, 133607, 0, 50, 0, 1, 1, 1, 'Margoss''s Retreat - Dalaran Legion'), -- Silver Mackerel
(8270, 138777, 0, 49, 0, 2, 1, 2, 'Margoss''s Retreat - Dalaran Legion'), -- Drowned Mana
(8270, 141975, 0, 1, 0, 3, 1, 1, 'Margoss''s Retreat - Dalaran Legion'); -- Mark of Aquaos


-- Area 7592 Violet Hold
DELETE FROM `fishing_loot_template` WHERE `Entry`=7592; -- Area 7592 Violet Hold
INSERT INTO `fishing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(7592, 138967, 0, 60, 0, 1, 1, 1, 'Margoss''s Retreat - Dalaran Legion'), -- Big fountain Goldfish
(7592, 133607, 0, 40, 0, 1, 1, 1, 'Margoss''s Retreat - Dalaran Legion'); -- Silver Mackerel
