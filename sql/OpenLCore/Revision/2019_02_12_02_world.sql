/*
Quests fix:

- Strange ores
- The properties of tellurium
- The methods of the Souffrenuit
- Slipworks (Azsuna)
- Not so useless engineers
- Fly legs
- The secrets of the telluric forge
- Everything is in nature
- The control of the telluric forge
- Between flower pickers and potions makers
- High Rock Blacksmiths
- Unable (High Rock)
- Ironic iron telluric forge
- Grisemasse (Haut-Roc)
- From one master to another
- More than just weapons and armor
- Hoofplates in tellurium
- The legend of the stronghold of the ruler (Val'sharah)
- Between the hammer ...
- ... and the anvil (Val'sharah)
- The knowledge of the Rook
- An interesting offer
- The quench for the experts
- The gangreforge (Nal'ryssa)
- Member of the team (Suramar)
- Forging under enemy fire
- The Nal'ryssa technique
- All the potential of the tellurium
- The Stone of the firmament
- The control of tellurium
- Maw of souls: hammered by the storm
- worthy of the stone (Haut-Roc)
- The art of making demonium
- Tribal knowledge


*/


-- Blacksmithing
SET @CGUID = 20801300;
SET @GGUID = 20801300;

-- Questchain
UPDATE `quest_template_addon` SET `PrevQuestId`='', `NextQuestId`='39681', `ExclusiveGroup`='' WHERE `ID`='38499';
UPDATE `quest_template_addon` SET `PrevQuestId`='38499', `NextQuestId`='38502', `ExclusiveGroup`='' WHERE `ID`='39681';
UPDATE `quest_template_addon` SET `PrevQuestId`='39681', `NextQuestId`='', `ExclusiveGroup`='-38502' WHERE `ID`='38502';
UPDATE `quest_template_addon` SET `PrevQuestId`='39681', `NextQuestId`='', `ExclusiveGroup`='-38502' WHERE `ID`='38501';
UPDATE `quest_template_addon` SET `PrevQuestId`='38502', `NextQuestId`='38506', `ExclusiveGroup`='' WHERE `ID`='38505';
UPDATE `quest_template_addon` SET `PrevQuestId`='38505', `NextQuestId`='38507', `ExclusiveGroup`='' WHERE `ID`='38506';
UPDATE `quest_template_addon` SET `PrevQuestId`='38506', `NextQuestId`='38515', `ExclusiveGroup`='' WHERE `ID`='38507';
UPDATE `quest_template_addon` SET `PrevQuestId`='38507', `NextQuestId`='', `ExclusiveGroup`='-38500' WHERE `ID`='38515';
UPDATE `quest_template_addon` SET `PrevQuestId`='38507', `NextQuestId`='', `ExclusiveGroup`='-38500' WHERE `ID`='38500';
UPDATE `quest_template_addon` SET `PrevQuestId`='38500', `NextQuestId`='38513', `ExclusiveGroup`='' WHERE `ID`='38563';
UPDATE `quest_template_addon` SET `PrevQuestId`='38563', `NextQuestId`='38514', `ExclusiveGroup`='' WHERE `ID`='38513';
UPDATE `quest_template_addon` SET `PrevQuestId`='38513', `NextQuestId`='39699', `ExclusiveGroup`='' WHERE `ID`='38514';
UPDATE `quest_template_addon` SET `PrevQuestId`='38514', `NextQuestId`='', `ExclusiveGroup`='-38519' WHERE `ID`='39699';
UPDATE `quest_template_addon` SET `PrevQuestId`='38514', `NextQuestId`='', `ExclusiveGroup`='-38519' WHERE `ID`='38519';
UPDATE `quest_template_addon` SET `PrevQuestId`='38519', `NextQuestId`='38522', `ExclusiveGroup`='' WHERE `ID`='38518';
UPDATE `quest_template_addon` SET `PrevQuestId`='38518', `NextQuestId`='38523', `ExclusiveGroup`='' WHERE `ID`='38522';
UPDATE `quest_template_addon` SET `PrevQuestId`='38522', `NextQuestId`='', `ExclusiveGroup`='' WHERE `ID`='38523';
UPDATE `quest_template_addon` SET `PrevQuestId`='38523', `NextQuestId`='39680', `ExclusiveGroup`='' WHERE `ID`='39702';
UPDATE `quest_template_addon` SET `PrevQuestId`='39702', `NextQuestId`='', `ExclusiveGroup`='-39680' WHERE `ID`='39680';
UPDATE `quest_template_addon` SET `PrevQuestId`='39702', `NextQuestId`='', `ExclusiveGroup`='-39680' WHERE `ID`='39726';
UPDATE `quest_template_addon` SET `PrevQuestId`='39680', `NextQuestId`='38564', `ExclusiveGroup`='' WHERE `ID`='39729';
UPDATE `quest_template_addon` SET `PrevQuestId`='39729', `NextQuestId`='44449', `ExclusiveGroup`='' WHERE `ID`='38564';
UPDATE `quest_template_addon` SET `PrevQuestId`='38564', `NextQuestId`='38524', `ExclusiveGroup`='' WHERE `ID`='44449';
UPDATE `quest_template_addon` SET `PrevQuestId`='44449', `NextQuestId`='38525', `ExclusiveGroup`='' WHERE `ID`='38524';
UPDATE `quest_template_addon` SET `PrevQuestId`='38524', `NextQuestId`='38526', `ExclusiveGroup`='' WHERE `ID`='38525';
UPDATE `quest_template_addon` SET `PrevQuestId`='38525', `NextQuestId`='38527', `ExclusiveGroup`='' WHERE `ID`='38526';
UPDATE `quest_template_addon` SET `PrevQuestId`='38526', `NextQuestId`='38528', `ExclusiveGroup`='' WHERE `ID`='38527';
UPDATE `quest_template_addon` SET `PrevQuestId`='38527', `NextQuestId`='38530', `ExclusiveGroup`='' WHERE `ID`='38528';
UPDATE `quest_template_addon` SET `PrevQuestId`='38528', `NextQuestId`='38531', `ExclusiveGroup`='' WHERE `ID`='38530';
UPDATE `quest_template_addon` SET `PrevQuestId`='38530', `NextQuestId`='', `ExclusiveGroup`='-38531' WHERE `ID`='38531';
UPDATE `quest_template_addon` SET `PrevQuestId`='38530', `NextQuestId`='', `ExclusiveGroup`='-38531' WHERE `ID`='38532';
UPDATE `quest_template_addon` SET `PrevQuestId`='38531', `NextQuestId`='38833', `ExclusiveGroup`='' WHERE `ID`='38559';
UPDATE `quest_template_addon` SET `PrevQuestId`='38559', `NextQuestId`='38533', `ExclusiveGroup`='' WHERE `ID`='38833';
UPDATE `quest_template_addon` SET `PrevQuestId`='38833', `NextQuestId`='', `ExclusiveGroup`='' WHERE `ID`='38533';

-- Spawn missing creature 
UPDATE `creature` SET `PhaseId`=3200 WHERE `id`=92183;
UPDATE `creature` SET `PhaseId`=3204 WHERE `id`=92438;

-- The Properties of Leystone
-- Alard Basic
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (92183);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (92183);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
-- Event
('92183', '0', '0', '1', '19', '0', '100', '0', '39681', '0', '0', '0', '', '83', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Questaccept - Remove npc flag 2 - Invoker'),
('92183', '0', '1', '2', '61', '0', '100', '0', '0', '0', '0', '0', '', '1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'On link - Say - Invoker'),
('92183', '0', '2', '0', '61', '0', '100', '0', '0', '0', '0', '0', '', '53', '0', '92183', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'On link - WP Start - Invoker'),
('92183', '0', '3', '4', '40', '0', '100', '0', '1', '92183', '0', '0', '', '54', '5000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'WP Reached - WP Pause - Self'),
('92183', '0', '4', '5', '61', '0', '100', '0', '0', '0', '0', '0', '', '5', '606', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'On link  - Play emote - Self'),
('92183', '0', '5', '0', '61', '0', '100', '0', '0', '0', '0', '0', '', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'On link  - Say - Self'),
('92183', '0', '6', '7', '40', '0', '100', '0', '2', '92183', '0', '0', '', '66', '0', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '5.534260', 'WP Reached - Set orientation - Self'),
('92183', '0', '7', '8', '61', '0', '100', '0', '0', '0', '0', '0', '', '5', '233', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'On link  - Play emote - Self'),
('92183', '0', '8', '9', '61', '0', '100', '0', '0', '0', '0', '0', '', '1', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'On link  - Say - Self'),
('92183', '0', '9', '0', '61', '0', '100', '0', '0', '0', '0', '0', '', '67', '1', '5000', '5000', '0', '0', '100', '1', '0', '0', '0', '0', '0', '0', '0', 'On link  - Timed event - Self'),
('92183', '0', '10', '11', '59', '0', '100', '0', '1', '0', '0', '0', '', '33', '96642', '0', '0', '0', '0', '0', '18', '20', '0', '0', '0', '0', '0', '0', 'On Timed event  - Player cast - On player dist'),
('92183', '0', '11', '12', '61', '0', '100', '0', '0', '0', '0', '0', '', '86', '183107', '0', '18', '20', '0', '0', '18', '20', '0', '0', '0', '0', '0', '0', 'On link  - Give KC - On player dist'),
('92183', '0', '12', '24', '61', '0', '100', '0', '0', '0', '0', '0', '', '82', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'on link - Add npcflag'),
-- 38500
('92183', '0', '13', '14', '19', '0', '100', '0', '38500', '0', '0', '0', '', '56', '124005', '4', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Quest accept - Invoker cast - Invoker'),
('92183', '0', '14', '25', '61', '0', '100', '0', '0', '0', '0', '0', '', '1', '3', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Quest accept - Say - Invoker'),
-- 38522
('92183', '0', '17', '25', '19', '0', '100', '0', '38522', '0', '0', '0', '', '56', '124417', '5', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Quest accept - Invoker cast - Invoker'),
-- 
('92183', '0', '20', '0', '19', '0', '100', '0', '38564', '0', '0', '0', '', '1', '4', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Quest accept - Say - Invoker'),
-- 
('92183', '0', '21', '25', '19', '0', '100', '0', '44449', '0', '0', '0', '', '56', '124392', '2', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Quest accept - Invoker cast - Invoker'),
-- 
('92183', '0', '24', '0', '61', '0', '100', '0', '0', '0', '0', '0', '', '86', '155164', '0', '18', '20', '0', '0', '18', '20', '0', '0', '0', '0', '0', '0', 'On link - Invoker cast - Player'),

('92183', '0', '25', '0', '61', '0', '100', '0', '0', '0', '0', '0', '', '85', '201699', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'On link  - Give KC - On player dist');

DELETE FROM `creature_text` WHERE `creatureID` IN (92183);
INSERT INTO `creature_text` (`creatureID`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextID`, `comment`) VALUES
(92183, 0, 0, 'Alright, let''s see what we can do with this ore. First things first: we heat the ore.', 12, 0, 100, 1, 0, 0, 98567, 'Alard'),
(92183, 1, 0, 'Now let''s see what we can make with it.', 12, 0, 100, 1, 0, 0, 98568, 'Alard'),
(92183, 2, 0, 'And now for the simple step of applying the flux. Lean in closely and watch my technique.', 12, 0, 100, 1, 0, 0, 98569, 'Alard'),
(92183, 3, 0, 'You know what to do, smith: temper, heat, hammer, and weld. You can use any of the shop''s equipment.', 12, 0, 100, 1, 0, 0, 95029, 'Alard'),
(92183, 4, 0, 'Go see if you can find a frost mage to help us, $n. If we can get our quenching trough cool enough, we can perform this leysmithing technique.', 12, 0, 100, 1, 0, 0, 95030, 'Alard');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='17') AND (`SourceEntry`='183107') AND (`ConditionTypeOrReference`='9') AND (`ConditionValue1`='39681');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='17') AND (`SourceEntry`='183107') AND (`ConditionTypeOrReference`='47') AND (`ConditionValue1`='39681');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `NegativeCondition`, `Comment`) VALUES 
('17', '0', '183107', '0', '47', '39681', '2', '0', 'Spell 183107 only if has quest 39681');

DELETE FROM `waypoints` WHERE `entry`='92183';
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(92183, 1, -745.437622, 4502.655762, 731.050232, 'Jabrul Event Intro'),
(92183, 2, -740.861023, 4509.919922, 731.080994, 'Jabrul Event Intro');

DELETE FROM `scene_template` WHERE `SceneId` IN (973);
INSERT INTO `scene_template` (`SceneId`, `Flags`, `ScriptPackageID`) VALUES
(973, 17, 1393);

-- Alard Exploded
UPDATE `creature_template` SET `faction`=2007, `minlevel`=105, `maxlevel`=105, `gossip_menu_id`=18759 WHERE `entry`=97261;

DELETE FROM `creature_addon` WHERE `guid` IN (@CGUID+1);
INSERT INTO `creature_addon` (`guid`, `emote`, `bytes1`, `bytes2`, `auras`) VALUES
(@CGUID+1, 64, 0, 1, '');

DELETE FROM gossip_menu_option WHERE `MenuId` IN (18759);
INSERT INTO gossip_menu_option (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES
('18759', '1', '3', 'Train me.', '3266', '5', '16', '0');

DELETE FROM `gossip_menu` WHERE `MenuId`=18759;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`) VALUES
(18759, 29523); 

DELETE FROM `npc_text` WHERE `id` IN (29523);
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextId0`, `BroadcastTextId1`, `BroadcastTextId2`, `BroadcastTextId3`, `BroadcastTextId4`, `BroadcastTextId5`, `BroadcastTextId6`, `BroadcastTextId7`, `VerifiedBuild`) VALUES
(29523, 1, 0, 0, 0, 0, 0, 0, 0, 98986, 0, 0, 0, 0, 0, 0, 0, 25996);

--
DELETE FROM `phase_area` WHERE `PhaseId`=3200 AND  `AreaId`=8413;
DELETE FROM `phase_area` WHERE `PhaseId`=3201 AND  `AreaId`=8413;
DELETE FROM `phase_area` WHERE `PhaseId`=3202 AND  `AreaId`=8413;
DELETE FROM `phase_area` WHERE `PhaseId`=169 AND  `AreaId`=8413;
DELETE FROM `phase_area` WHERE `PhaseId`=3203 AND  `AreaId`=8413;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
('8413', '169', 'Tank for everything - See See all'),
('8413', '3203', 'Tank for everything - See basic Alard'),
('8413', '3202', 'Tank for everything - See basic Alard'),
('8413', '3200', 'Tank for everything - See basic Alard'),
('8413', '3201', 'Tank for everything  - See Exploded Alard');

DELETE FROM `conditions` WHERE `SourceGroup`=3200 AND `SourceEntry`=8413 AND `ConditionTypeOrReference`=47 AND `ConditionValue1`=39681;
DELETE FROM `conditions` WHERE `SourceGroup`=3201 AND `SourceEntry`=8413 AND `ConditionTypeOrReference`=47 AND `ConditionValue1`=39681;
DELETE FROM `conditions` WHERE `SourceGroup`=3200 AND `SourceEntry`=8413 AND `ConditionTypeOrReference`=47 AND `ConditionValue1`=40542;
DELETE FROM `conditions` WHERE `SourceGroup`=3201 AND `SourceEntry`=8413 AND `ConditionTypeOrReference`=47 AND `ConditionValue1`=40542;
DELETE FROM `conditions` WHERE `SourceGroup`=3201 AND `SourceEntry`=8413 AND `ConditionTypeOrReference`=47 AND `ConditionValue1`=38501;
DELETE FROM `conditions` WHERE `SourceGroup`=3202 AND `SourceEntry`=8413 AND `ConditionTypeOrReference`=47 AND `ConditionValue1`=38501;
DELETE FROM `conditions` WHERE `SourceGroup`=3203 AND `SourceEntry`=8413 AND `ConditionTypeOrReference`=47 AND `ConditionValue1`=38564;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `NegativeCondition`, `Comment`) VALUES 
('26', '3200', '8413', '47', '39681', '66', '1', 'Phase 3500 if quest 39681 not complete/rewarded'), 
('26', '3201', '8413', '47', '39681', '66', '0', 'Phase 3501 if quest 39681 complete/rewarded'), 
('26', '3201', '8413', '47', '38501', '66', '1', 'Phase 3501 if quest 38501 not complete/rewarded'), 
('26', '3202', '8413', '47', '38501', '66', '0', 'Phase 3502 if quest 38501 complete/rewarded'),
('26', '3203', '8413', '47', '38564', '66', '0', 'Phase 3503 if quest 38564 complete/rewarded');

-- Timofey
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (92194);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (92194);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('92194', '0', '0', '1', '19', '0', '100', '0', '38506', '0', '0', '0', '', '83', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Questaccept - Remove npc flag 2 - Invoker'),
('92194', '0', '1', '2', '61', '0', '100', '0', '0', '0', '0', '0', '', '1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'On link - Say - Invoker'),
('92194', '0', '2', '3', '61', '0', '100', '0', '0', '0', '0', '0', '', '56', '123978', '1', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'On link - Say - Invoker'),
('92194', '0', '3', '0', '61', '0', '100', '0', '0', '0', '0', '0', '', '69', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', -723.837036,4560.879395, 729.930786, 1.072411, 'On link - Move to pos - Self'),
('92194', '0', '4', '5', '34', '0', '100', '0', '0', '1', '0', '0', '', '5', '606', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Movement Inform - Play emote - Self'),
('92194', '0', '5', '0', '61', '0', '100', '0', '0', '0', '0', '0', '', '67', '1', '5000', '5000', '0', '0', '100', '1', '0', '0', '0', '0', '0', '0', '0', 'On link  - Timed event - Self'),
('92194', '0', '6', '7', '59', '0', '100', '0', '1', '0', '0', '0', '', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'On Timed event  - Say - Self'),
('92194', '0', '7', '0', '61', '0', '100', '0', '1', '0', '0', '0', '', '69', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', -726.593994, 4561.290039, 729.719971, 4.709670, 'On link - Move to pos - Self'),
('92194', '0', '8', '9', '34', '0', '100', '0', '0', '2', '0', '0', '', '66', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Movement Inform - Set orientation - Self'),
('92194', '0', '9', '0', '61', '0', '100', '0', '0', '1', '0', '0', '', '82', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'On link - Add Npc flag - Self');


DELETE FROM `creature_text` WHERE `creatureID` IN (92194);
INSERT INTO `creature_text` (`creatureID`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextID`, `comment`) VALUES
(92194, 0, 0, 'The Data Extratinator 3000 might be able to decipher this core. Cross your fingers that it doesn''t explode in the process.', 12, 0, 100, 1, 0, 0, 98376, 'Timofey'),
(92194, 1, 0, 'This core contains a script written in an ancient Highborne dialect, which I can''t read. Professor Pallin in the Scribes'' Sacellum may be able to translate this.', 12, 0, 100, 1, 0, 0, 98378, 'Timofey');


DELETE FROM `gameobject_template` WHERE `entry` IN (241514, 241515, 241516, 241454, 241420, 241437, 241438, 241691, 241694, 241695, 241696, 241510);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `RequiredLevel`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
('241514', '8', '0', 'Alard''s Workbench', '', '', '', '1', '1863', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0'),
('241515', '8', '0', 'Alard''s Quenching Trough', '', '', '', '1', '1865', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0'),
('241516', '8', '0', 'Alard''s Anvil', '', '', '', '1', '1861', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0'),
('241454', '8', '0', 'Alard''s Forge', '', '', '', '1', '1862', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0'),
('241420', '8', '0', 'Alard''s Whetstone', '', '', '', '1', '1868', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0'),
('241437', '8', '0', 'Greenhoof''s Forge', '', '', '', '1', '1869', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0'),
('241438', '8', '0', 'Greenhoof''s Anvil', '', '', '', '1', '1870', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0'),
('241694', '8', '0', 'Felsmith Forge', '', '', '', '1', '1872', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0'),
('241695', '8', '0', 'Felsmith Anvil', '', '', '', '1', '1871', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0'),
('241696', '8', '0', 'Felsmith Workbench', '', '', '', '1', '1873', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0'),
('241691', '8', '0', 'Felsmith Quenching Trough', '', '', '', '1', '1874', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0'),
('241510', '8', '0', 'Frozen Quenching Trough', '', '', '', '1', '1867', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0');

-- Flower-Pickers and Potion-Quaffers
-- Linzy Blackbolt
UPDATE `creature_template` SET `gossip_menu_id`=18380, `AIName`='SmartAI' WHERE `entry`= '92456';
DELETE FROM `smart_scripts` WHERE (`entryorguid`=92456 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(92456, 0, 0, 1, 62, 0, 100, 0, 18380, 2, 0, 0, 33, 92456, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Gossip Select - Give KC - Player"),
(92456, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On link - Say - Player"),
(92456, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On link - Close gossip - Player");


DELETE FROM `creature_text` WHERE `creatureID` IN (92456);
INSERT INTO `creature_text` (`creatureID`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextID`, `comment`) VALUES
(92456, 0, 0, 'Whoah! Neat recipe. As long as the herbalists keep bringing me fresh foxflower, I can certainly make this preparation for you. No problem.', 12, 0, 100, 1, 0, 0, 94508, 'Linzy');

DELETE FROM `gossip_menu_option` WHERE `MenuId` IN (18380);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcflag`) VALUES 
('18380', '2', '0', 'Alard at the blacksmith shop will need a regular supply of foxflower flux. Can you make any?', '94482', '1', '1'),
('18380', '1', '0', 'Hello again, Linzy. What''s new with you?', '98720', '1', '1'),
('18380', '0', '3', 'I Would like to train', '8221', '5', '16');


DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='15') AND (`SourceGroup`='18380') AND (`ConditionTypeOrReference`='48');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='15') AND (`SourceGroup`='18380') AND (`ConditionTypeOrReference`='9');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `NegativeCondition`, `Comment`) VALUES 
('15', '18380', '2', '0', '48', '278183', '0', '1', 'See gossip if objective is not complete'),
('15', '18380', '2', '0', '9', '38563', '0', '0', 'See gossip if have quest taken');

DELETE FROM `gossip_menu` WHERE `MenuId`=18736 AND `TextId`=27231;
DELETE FROM `gossip_menu` WHERE `MenuId`=18735 AND `TextId`=27230;
DELETE FROM `gossip_menu` WHERE `MenuId`=18380 AND `TextId`=14712;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`) VALUES
(18736, 27231),
(18735, 27230),
(18380, 14712);

DELETE FROM `npc_text` WHERE `ID` IN (27231, 27230, 14712);
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextId0`, `BroadcastTextId1`, `BroadcastTextId2`, `BroadcastTextId3`, `BroadcastTextId4`, `BroadcastTextId5`, `BroadcastTextId6`, `BroadcastTextId7`, `VerifiedBuild`) VALUES
(27231, 1, 0, 0, 0, 0, 0, 0, 0, 98726, 0, 0, 0, 0, 0, 0, 0, 25996),
(27230, 1, 0, 0, 0, 0, 0, 0, 0, 98721, 0, 0, 0, 0, 0, 0, 0, 25996),
(14712, 1, 0, 0, 0, 0, 0, 0, 0, 35401, 0, 0, 0, 0, 0, 0, 0, 25996);

DELETE FROM `gossip_menu_option_action` WHERE `MenuId`=18735 AND `OptionIndex`=1;
DELETE FROM `gossip_menu_option_action` WHERE `MenuId`=18380 AND `OptionIndex`=1;
INSERT INTO `gossip_menu_option_action` (`MenuId`, `OptionIndex`, `ActionMenuId`, `ActionPoiId`) VALUES
(18735, 1, 18736, 0),
(18380, 1, 18735, 0);

-- Kuhuine Tenderstride
UPDATE `creature_template` SET `gossip_menu_id`=18379, `AIName`='SmartAI' WHERE `entry`= '92464';
DELETE FROM `smart_scripts` WHERE (`entryorguid`=92464 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(92464, 0, 0, 1, 62, 0, 100, 0, 18379, 1, 0, 0, 33, 92464, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Gossip Select - Give KC - Player"),
(92464, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On link - Say - Player"),
(92464, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On link - Close gossip - Player");


DELETE FROM `creature_text` WHERE `creatureID` IN (92464);
INSERT INTO `creature_text` (`creatureID`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextID`, `comment`) VALUES
(92464, 0, 0, 'Of course. Our herbalists bring in plenty of foxflower. I will make sure to set some aside for your metalwork.', 12, 0, 100, 1, 0, 0, 94507, 'Kuhuine');

DELETE FROM `gossip_menu` WHERE `MenuId`=18379 AND `TextId`=26474;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`) VALUES
(18379, 26474);

DELETE FROM `npc_text` WHERE `ID` IN (26474);
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextId0`, `BroadcastTextId1`, `BroadcastTextId2`, `BroadcastTextId3`, `BroadcastTextId4`, `BroadcastTextId5`, `BroadcastTextId6`, `BroadcastTextId7`, `VerifiedBuild`) VALUES
(26474, 1, 1, 1, 0, 0, 0, 0, 0, 94478, 94479, 94480, 0, 0, 0, 0, 0, 25996);

DELETE FROM `gossip_menu_option` WHERE `MenuId` IN (18379);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcflag`) VALUES 
('18379', '1', '0', 'Alard at the blacksmith shop will need a regular supply of foxflower. Do you have any?', '94481', '1', '1'),
('18379', '0', '3', 'I Would like to train', '8221', '5', '16');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='15') AND (`SourceGroup`='18379') AND (`ConditionTypeOrReference`='48');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='15') AND (`SourceGroup`='18379') AND (`ConditionTypeOrReference`='9');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `NegativeCondition`, `Comment`) VALUES 
('15', '18379', '1', '0', '48', '278184', '0', '1', 'See gossip if objective is not complete'),
('15', '18379', '1', '0', '9', '38563', '0', '0', 'See gossip if have quest taken');



-- Ironhorn Leysmithing
-- Barm 
UPDATE `creature_template` SET `gossip_menu_id`=30020, `AIName`='SmartAI' WHERE `entry`=92242;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=92242 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(92242, 0, 0, 0, 19, 0, 100, 0, 39699, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Quest accept - Say - Player"),
(92242, 0, 1, 0, 19, 0, 100, 0, 0, 0, 0, 0, 85, 201699, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Quest accept - Say - Player");


DELETE FROM `creature_text` WHERE `creatureID` IN (92242);
INSERT INTO `creature_text` (`creatureID`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextID`, `comment`) VALUES
(92242, 0, 0, 'A responsible smith does not waste material. You may use any pieces of scrap metal that you find around our camp.', 12, 0, 100, 1, 0, 0, 94507, 'Kuhuine');

DELETE FROM `gossip_menu` WHERE `MenuId`=30020 AND `TextId`=35020;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`) VALUES
(30020, 35020);

DELETE FROM `npc_text` WHERE `ID` IN (35020);
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextId0`, `BroadcastTextId1`, `BroadcastTextId2`, `BroadcastTextId3`, `BroadcastTextId4`, `BroadcastTextId5`, `BroadcastTextId6`, `BroadcastTextId7`, `VerifiedBuild`) VALUES
(35020, 1, 0, 0, 0, 0, 0, 0, 0, 95400, 0, 0, 0, 0, 0, 0, 0, 25996);

DELETE FROM `gossip_menu_option` WHERE `MenuId` IN (30020);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcflag`) VALUES 
('30020', '0', '3', 'I Would like to train', '8221', '5', '16');


UPDATE `gameobject_template` SET `Data1`='241635', `Data8`='39699' WHERE (`entry`='241635');
UPDATE `gameobject_template` SET `Data1`='241634', `Data8`='39699' WHERE (`entry`='241634');
UPDATE `gameobject_template` SET `Data1`='241633', `Data8`='39699' WHERE (`entry`='241633');

DELETE FROM `gameobject_loot_template` WHERE (`Entry`='241635') AND (`Item`='124404');
DELETE FROM `gameobject_loot_template` WHERE (`Entry`='241634') AND (`Item`='124403');
DELETE FROM `gameobject_loot_template` WHERE (`Entry`='241633') AND (`Item`='124405');
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `QuestRequired`) VALUES 
('241635', '124404', '1'),
('241634', '124403', '1'),
('241633', '124405', '1');

-- Greyheft
UPDATE `creature_loot_template` SET `Chance`='100', `GroupId`='1' WHERE (`Entry`='93021') AND (`Item`='124004');
UPDATE `creature_template` SET `LootId`=93021 WHERE `entry`=93021;


-- Leystone Hoofplates
-- Mei Francis
UPDATE `creature_template` SET `gossip_menu_id`=18383, `AIName`='SmartAI' WHERE `entry`= '92489';
DELETE FROM `smart_scripts` WHERE (`entryorguid`=92489 AND `source_type`=0);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=9248900 AND `source_type`=9);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(92489, 0, 0, 1, 62, 0, 100, 0, 18383, 1, 0, 0, 80, 9248900, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Gossip Select - Begin action list - Self"),
(9248900, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 83, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Actionlist - Remove npc flag - Self"),
(9248900, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On link - Say - Player"),
(9248900, 9, 2, 0, 0, 0, 100, 0, 5000, 5000, 5000, 5000, 1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On link - Say - Player"),
(9248900, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 75, 182993, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On link - InvokerCast - Player"),
(9248900, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 33, 92492, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On link - Give KC - Player"),
(9248900, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 82, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On link - Add npcflag - Player");


DELETE FROM `creature_text` WHERE `creatureID` IN (92489);
INSERT INTO `creature_text` (`creatureID`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextID`, `comment`) VALUES
(92489, 0, 0, 'You need your mount shod? Let''s see if I can make these hoofplates fit...', 12, 0, 100, 1, 0, 0, 94518, 'Mei Francis'),
(92489, 1, 0, 'All done! You take care of that mount now. It''s a beauty.', 12, 0, 100, 1, 0, 0, 94519, 'Mei Francis');

DELETE FROM `gossip_menu` WHERE `MenuId`=18383 AND `TextId`=14127;
DELETE FROM `gossip_menu` WHERE `MenuId`=18384 AND `TextId`=35021;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`) VALUES
(18383, 14127),
(18384, 35021);

DELETE FROM `gossip_menu_option_action` WHERE `MenuId`=18383 AND `OptionIndex`=1;
INSERT INTO `gossip_menu_option_action` (`MenuId`, `OptionIndex`, `ActionMenuId`, `ActionPoiId`) VALUES
(18383, 1, 18384, 0);

DELETE FROM `npc_text` WHERE `ID` IN (14127, 35021);
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextId0`, `BroadcastTextId1`, `BroadcastTextId2`, `BroadcastTextId3`, `BroadcastTextId4`, `BroadcastTextId5`, `BroadcastTextId6`, `BroadcastTextId7`, `VerifiedBuild`) VALUES
(14127, 1, 0, 0, 0, 0, 0, 0, 0, 32779, 0, 0, 0, 0, 0, 0, 0, 25996),
(35021, 1, 0, 0, 0, 0, 0, 0, 0, 94521, 0, 0, 0, 0, 0, 0, 0, 25996);

DELETE FROM `gossip_menu_option` WHERE `MenuId` IN (18383);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcflag`) VALUES 
('18383', '1', '0', 'Can you fit these hoofplates on my mount?', '94520', '1', '1'),
('18383', '0', '0', 'I want to browse your goods.', '3370', '3', '128');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='15') AND (`SourceGroup`='18383') AND (`ConditionTypeOrReference`='48');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='15') AND (`SourceGroup`='18383') AND (`ConditionTypeOrReference`='9');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `NegativeCondition`, `Comment`) VALUES 
('15', '18383', '1', '0', '48', '278195', '0', '1', 'See gossip if objective is not complete'),
('15', '18383', '1', '0', '9', '38523', '0', '0', 'See gossip if have quest taken');

-- Legend of the Black Rook
DELETE FROM `event_scripts` WHERE `id`=46338;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES 
('46338', '1', '10', '96726', '220000',  3061.896729, 7294.654785, 51.557743, 3.770569);

-- Saris Swifthammer
UPDATE `creature_template` SET `AIName`='SmartAI', `minlevel`=105, `maxlevel`=110, `faction`=15, `unit_flags`=0 WHERE `entry`= '96726';
DELETE FROM `smart_scripts` WHERE (`entryorguid`=96726 AND `source_type`=0);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=9672600 AND `source_type`=9);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(96726, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 69, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 3056.664307, 7289.800781, 51.55774, 3.853036, "Just sum - Move to pos - Self"),
(96726, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On link - Say - Self"),
(96726, 0, 2, 3, 34, 0, 100, 0, 0, 1, 0, 0, 18, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Movement inform - Set unit flag - Self"),
(96726, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 2, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On link - Set faction - Self"),
(96726, 0, 4, 0, 2, 0, 100, 1, 0, 50, 1, 1, 80, 9672600, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Health pct - Begin actionlist - Self"),
(9672600, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Actionlist - Set faction - Self"),
(9672600, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Actionlist - Combat stop - Self"),
(9672600, 9, 3, 0, 0, 0, 100, 0, 2000, 2000, 2000, 2000, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Actionlist - Say - Self"),
(9672600, 9, 4, 0, 0, 0, 100, 0, 5000, 5000, 5000, 5000, 1, 2, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, "Actionlist - Say - Closest player"),
(9672600, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 33, 96736, 0, 0, 0, 0, 0, 18, 70, 0, 0, 0, 0, 0, 0, "Actionlist - Say - Closest player"),
(9672600, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Actionlist - Despawn - Self");

DELETE FROM `creature_text` WHERE `creatureID` IN (96726);
INSERT INTO `creature_text` (`creatureID`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextID`, `comment`) VALUES
(96726, 0, 0, 'Here to pillage our wares, demon?! You shall take NOTHING!', 12, 0, 100, 1, 0, 0, 98722, 'Saris Swifthammer'),
(96726, 1, 0, 'Wait! Stop! You''re... you''re no demon...', 12, 0, 100, 1, 0, 0, 98723, 'Saris Swifthammer'),
(96726, 2, 0, 'The fog has lifted and I can see the truth once more. Thank you, $pc. If you would join me at my old shop, perhaps we can speak further.', 12, 0, 100, 1, 0, 0, 98725, 'Saris Swifthammer');

-- Saris Swifthammer questgiver
UPDATE `creature_template` SET `faction`=35, `minlevel`=105, `maxlevel`=110, `gossip_menu_id`=30021 WHERE `entry`=96763;

DELETE FROM `gossip_menu` WHERE `MenuId`=30021 AND `TextId`=35021;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`) VALUES
(30021, 35021);

DELETE FROM `npc_text` WHERE `ID` IN (35021);
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextId0`, `BroadcastTextId1`, `BroadcastTextId2`, `BroadcastTextId3`, `BroadcastTextId4`, `BroadcastTextId5`, `BroadcastTextId6`, `BroadcastTextId7`, `VerifiedBuild`) VALUES
(35021, 1, 0, 0, 0, 0, 0, 0, 0, 98958, 0, 0, 0, 0, 0, 0, 0, 25996);

-- Between the Hammer...
UPDATE `gameobject_template` SET `Data1`='244000', `Data8`='39680' WHERE (`entry`='244000');

DELETE FROM `gameobject_loot_template` WHERE (`Entry`='244000') AND (`Item`='128745');
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `QuestRequired`) VALUES 
('244000', '128745', '1');

-- ... And the Anvil
UPDATE `creature_loot_template` SET `Chance`='80', `GroupId`='1' WHERE `Item`='128751';

-- The Knowledge of Black Rook 
UPDATE `gameobject_template` SET `Data1`='244001', `Data8`='39729' WHERE (`entry`='244001');
DELETE FROM `gameobject_loot_template` WHERE (`Entry`='244001') AND (`Item`='128746');
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `QuestRequired`) VALUES 
('244001', '128746', '1');


-- A Sweet Bargain

DELETE FROM `phase_area` WHERE `PhaseId`=169 AND  `AreaId`=7581;
DELETE FROM `phase_area` WHERE `PhaseId`=3204 AND  `AreaId`=7581;
DELETE FROM `phase_area` WHERE `PhaseId`=3205 AND  `AreaId`=7581;
DELETE FROM `phase_area` WHERE `PhaseId`=3206 AND  `AreaId`=7581;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
('7581', '169', 'Dalaran - See See all'),
('7581', '3204', 'Dalaran - See basic Glaciela'),
('7581', '3205', 'Dalaran - See Talk to Glaciela'),
('7581', '3206', 'Dalaran - See SpellClick Glaciela');

DELETE FROM `conditions` WHERE `SourceGroup`=3204 AND `SourceEntry`=7581 AND `ConditionTypeOrReference`=9 AND `ConditionValue1`=38564;
DELETE FROM `conditions` WHERE `SourceGroup`=3205 AND `SourceEntry`=7581 AND `ConditionTypeOrReference`=48 AND `ConditionValue1`=278114;
DELETE FROM `conditions` WHERE `SourceGroup`=3205 AND `SourceEntry`=7581 AND `ConditionTypeOrReference`=9 AND `ConditionValue1`=38564;
DELETE FROM `conditions` WHERE `SourceGroup`=3206 AND `SourceEntry`=7581 AND `ConditionTypeOrReference`=48 AND `ConditionValue1`=278114;
DELETE FROM `conditions` WHERE `SourceGroup`=3206 AND `SourceEntry`=7581 AND `ConditionTypeOrReference`=48 AND `ConditionValue1`=278116;
DELETE FROM `conditions` WHERE `SourceGroup`=3206 AND `SourceEntry`=7581 AND `ConditionTypeOrReference`=9 AND `ConditionValue1`=38564;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `NegativeCondition`, `Comment`) VALUES 
('26', '3204', '7581', '9', '38564', '0', '1', 'Phase 3204 if havn''t quest 38564'),
--
('26', '3205', '7581', '48', '278114', '0', '1', 'Phase 3204 if quest 39681 not complete/rewarded'),
('26', '3205', '7581', '9', '38564', '0', '0', 'Phase 3204 if have quest 38564'),
-- 
('26', '3206', '7581', '48', '278114', '0', '0', 'Phase 3204 if quest 39681 not complete/rewarded'),
('26', '3206', '7581', '48', '278116', '0', '1', 'Phase 3204 if quest 39681 not complete/rewarded'),
('26', '3206', '7581', '9', '38564', '0', '0', 'Phase 3204 if have quest 38564');



-- Glaciala
UPDATE `creature_template` SET `AIName`='SmartAI', `npcflag`=0 WHERE `entry`= '92438';
DELETE FROM `smart_scripts` WHERE (`entryorguid`=92438 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(92438, 0, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On gossip hello - Say - Invoker"),
(92438, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On link - Close gossip - Invoker"),
(92438, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 85, 155164, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On link - Close gossip - Invoker"),
(92438, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 19, 92936, 30, 0, 0, 0, 0, 0, "On link - Close gossip - Invoker");

DELETE FROM `creature_text` WHERE `creatureID` IN (92438);
INSERT INTO `creature_text` (`creatureID`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextID`, `comment`) VALUES
(92438, 0, 0, 'You need my help in the blacksmithing shop? Fine, but every mage has her price... and my price happens to be candy.', 12, 0, 100, 1, 0, 0, 94455, '');


UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`= '92936';
DELETE FROM `smart_scripts` WHERE (`entryorguid`=92936 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(92936, 0, 0, 1, 38, 0, 100, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On gossip hello - Say - Invoker"),
(92936, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 85, 155164, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On link - Close gossip - Invoker");

DELETE FROM `creature_text` WHERE `creatureID` IN (92936);
INSERT INTO `creature_text` (`creatureID`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextID`, `comment`) VALUES
(92936, 0, 0, 'Glaciela, I swear, your teeth are going to fall out one day from eating all my delicious candies.', 12, 0, 100, 1, 0, 0, 98999, '');


DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=92438;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES 
('92438', '184169', '3');

DELETE FROM `conditions` WHERE `SourceGroup`=92438 AND `SourceEntry`=184169 AND `ConditionTypeOrReference`=48 AND `ConditionValue1`=278116;
DELETE FROM `conditions` WHERE `SourceGroup`=92438 AND `SourceEntry`=184169 AND `ConditionTypeOrReference`=48 AND `ConditionValue1`=278115;
DELETE FROM `conditions` WHERE `SourceGroup`=92438 AND `SourceEntry`=184169 AND `ConditionTypeOrReference`=9 AND `ConditionValue1`=38564;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `NegativeCondition`, `Comment`) VALUES 
('18', '92438', '184169', '48', '278115', '0', 'Npc spell click only if has objective complete'),
('18', '92438', '184169', '9', '38564', '0', 'Npc spell click only if has quest taken');

-- Glaciala summon 
UPDATE `creature_template` SET `AIName`='SmartAI', `minlevel`=105, `maxlevel`=105, `faction`=2007 WHERE `entry`= '92938';
DELETE FROM `smart_scripts` WHERE (`entryorguid`=92938 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(92938, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Just sum - Say - Self"),
(92938, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On link - Despawn - Self"),
(92938, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 56, 124398, 20, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On link - Close gossip - Invoker"),
(92938, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 92925, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On link - Close gossip - Invoker");

DELETE FROM `creature_text` WHERE `creatureID` IN (92938);
INSERT INTO `creature_text` (`creatureID`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextID`, `comment`) VALUES
(92938, 0, 0, 'Consider me hired. See you there!', 12, 0, 100, 1, 0, 0, 94457, '');



-- Nal'ryssa
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`= '92264';
DELETE FROM `smart_scripts` WHERE (`entryorguid`=92264 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(92264, 0, 0, 1, 19, 0, 100, 0, 38526, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Quest accept - Say - Player"),
(92264, 0, 1, 5, 61, 0, 100, 0, 0, 0, 0, 0, 56, 124425, 8, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Quest accept - Add item - Player"),
-- 
(92264, 0, 3, 4, 19, 0, 100, 0, 38528, 0, 0, 0, 56, 124451, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Quest accept - Add item - Player"),
(92264, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 56, 124449, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Quest accept - Add item - Player"),
(92264, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 85, 201699, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Quest accept - Add item - Player");

DELETE FROM `creature_text` WHERE `creatureID` IN (92264);
INSERT INTO `creature_text` (`creatureID`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextID`, `comment`) VALUES
(92264, 0, 0, 'Be quick about your work. You''ll only have a small window of time to hammer out those red-hot leystone bars into the components you need.', 12, 0, 100, 1, 0, 0, 95033, 'Nal''ryssa');

-- Leysmithing Masteries
DELETE FROM `spell_learn_spell` WHERE `entry`=201699;
INSERT INTO `spell_learn_spell` (`entry`, `SpellID`) VALUES 
('201699', '183562'),
('201699', '183281'),
('201699', '183280'),
('201699', '183283'),
('201699', '183279'),
--
('201699', '184214'),
('201699', '184215'),
('201699', '184216'),
('201699', '184217'),
('201699', '184218'),
('201699', '184219'),
('201699', '184220'),
-- Not just Weapons and Armor  
('201699', '184315'),
('201699', '184309'),
('201699', '184313'),
('201699', '184314'),
('201699', '184308'),
('201699', '184312'),
('201699', '184310'),
('201699', '183278'),
-- Advanced Quenching
('201699', '184181'),
('201699', '184183'),
('201699', '184182'),
('201699', '184185'),
('201699', '184184'),
-- Smith under fire 
('201699', '184336'),
('201699', '184337'),
('201699', '184338'),
('201699', '184339'),
('201699', '184344'),
('201699', '184340'),
-- Leystone's potential
('201699', '184405'),
('201699', '184407'),
('201699', '184404'),
('201699', '184408'),
('201699', '184403');

DELETE FROM `spell_script_names` WHERE `spell_id`=184758;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
('184758', 'spell_gen_firmament_stone_dummy');


DELETE FROM `creature_template_addon` WHERE `entry` IN (92247, 92244, 92246);
INSERT INTO `creature_template_addon` (`entry`, `emote`, `bytes1`, `bytes2`, `auras`) VALUES
(92247, 233, 0, 1, ''),
(92244, 233, 0, 1, ''),
(92246, 233, 0, 1, '');