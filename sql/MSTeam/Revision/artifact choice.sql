-- Druid choice.
UPDATE `creature_template` SET `AIName` = 'SmartAI', `gossip_menu_id` = 19156, `npcflag` = 3 WHERE `entry` = 101195;
DELETE FROM `gossip_menu_option` WHERE (`menu_id`=19156 AND `id`=0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES
(19156, 0, 0, 'Я хочу еще раз освежить в памяти, поисками какого оружия мы можем заняться.', 0, 1, 1, 0, 0, 0, 0, '', 0); -- Druid
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 19156;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 19156, 0, 0, 0, 8, 0, 40645, 0, 0, 0, 0, 0, '', 'Show gossip only if player reward quest 40645');
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (101195);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(101195, 0, 0, 0, 10, 0, 100, 0, 1, 10, 0, 0, 33, 101246, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On LOS - Killcredit to player'),
(101195, 0, 1, 0, 19, 0, 100, 0, 40646, 0, 0, 0, 85, 199653, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On quest accept - InvokerCast Player Choice (Druid)'),
(101195, 0, 2, 0, 62, 0, 100, 0, 19156, 0, 0, 0, 85, 199653, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On gossip select - InvokerCast Player Choice (Druid)');

-- Hunter choice.
UPDATE `creature_template` SET `AIName` = 'SmartAI', `gossip_menu_id` = 19115, `npcflag` = 3 WHERE `entry` = 102478;
DELETE FROM `gossip_menu_option` WHERE (`menu_id`=19115 AND `id`=0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES
(19115, 0, 0, 'Я хочу еще раз освежить в памяти, поисками какого оружия мы можем заняться.', 0, 1, 1, 0, 0, 0, 0, '', 0);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 19115;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 19115, 0, 0, 0, 8, 0, 41415, 0, 0, 0, 0, 0, '', 'Show gossip only if player reward quest 41415');
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (102478);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(102478, 0, 0, 0, 10, 0, 100, 0, 1, 20, 15000, 15000, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On LOS - Say line 0'),
(102478, 0, 1, 0, 19, 0, 100, 0, 40618, 0, 0, 0, 85, 198430, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On quest accept - InvokerCast Player Choice (Hunter)'),
(102478, 0, 2, 0, 62, 0, 100, 0, 19115, 0, 0, 0, 85, 198430, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On gossip select - InvokerCast Player Choice (Hunter)');

-- Rogue choice.
UPDATE `creature_template` SET `AIName` = 'SmartAI', `gossip_menu_id` = 19545, `npcflag` = 3 WHERE `entry` = 101513;
DELETE FROM `gossip_menu_option` WHERE (`menu_id`=19545 AND `id`=0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES
(19545, 0, 0, 'Я готова принять решение.', 108894, 1, 1, 0, 0, 0, 0, '', 0);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 19545;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 19545, 0, 0, 0, 9, 0, 40840, 0, 0, 0, 0, 0, '', 'Show gossip only if player taken quest 40840'),
(15, 19545, 0, 0, 1, 8, 0, 40840, 0, 0, 0, 0, 0, '', 'Show gossip only if player reward quest 40840');
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (101513);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(101513, 0, 2, 0, 62, 0, 100, 0, 19545, 0, 0, 0, 85, 223569, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On gossip select - InvokerCast Player Choice (Rogue)');

-- Paladin choice.
UPDATE `creature_template` SET `AIName` = 'SmartAI', `gossip_menu_id` = 19044, `npcflag` = 3 WHERE `entry` = 90369;
DELETE FROM `gossip_menu_option` WHERE (`menu_id`=19044 AND `id`=0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES
(19044, 0, 0, 'Я хочу еще раз освежить в памяти, поисками какого оружия мы можем заняться.', 0, 1, 1, 0, 0, 0, 0, '', 0);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 19044;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 19044, 0, 0, 0, 8, 0, 38710, 0, 0, 0, 0, 0, '', 'Show gossip only if player reward quest 38710');
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (90369);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(90369, 0, 0, 0, 10, 0, 100, 0, 1, 30, 60000, 60000, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On LOS - Say line 0'),
(90369, 0, 1, 0, 19, 0, 100, 0, 40408, 0, 0, 0, 85, 197124, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On quest accept - InvokerCast Player Choice (Paladin)'),
(90369, 0, 2, 0, 62, 0, 100, 0, 19044, 0, 0, 0, 85, 197124, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On gossip select - InvokerCast Player Choice (Paladin)');

-- Shaman choice.
UPDATE `creature_template` SET `AIName` = 'SmartAI', `gossip_menu_id` = 19365, `npcflag` = 3 WHERE `entry` = 96527;
DELETE FROM `gossip_menu` WHERE (`entry`=19365 AND `text_id`=28538) OR (`entry`=19336 AND `text_id`=28489);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(19365, 28538), -- Тралл
(19336, 28489); -- 96528 (Farseer Nobundo)
DELETE FROM `gossip_menu_option` WHERE (`menu_id`=19365 AND `id`=0) OR (`menu_id`=19336 AND `id`=0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES
(19365, 0, 0, 'Напомни, какие у меня варианты?', 0, 1, 1, 0, 0, 0, 0, '', 0),
(19336, 0, 0, 'Я позабочусь о них, предсказатель.', 0, 0, 0, 0, 0, 0, 0, '', 0);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (96527);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(96527, 0, 0, 0, 62, 0, 100, 0, 19365, 0, 0, 0, 85, 205790, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On gossip select - InvokerCast Player Choice (Shaman)');

-- Death Knight choice.
UPDATE `creature_template` SET `AIName` = 'SmartAI', gossip_menu_id = 19169 WHERE `entry` = 101441;
DELETE FROM `gossip_menu_option` WHERE (`menu_id`=19169 AND `id`=0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES
(19169, 0, 0, 'Я передумал. Позволь мне выбрать другой артефакт.', 122690, 1, 1, 0, 0, 0, 0, '', 0);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 19169;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 19169, 0, 0, 0, 8, 0, 40714, 0, 0, 0, 0, 0, '', 'Show gossip only if player reward quest 40714');
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (101441);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(101441, 0, 0, 0, 19, 0, 100, 0, 40715, 0, 0, 0, 85, 199985, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On quest accept - InvokerCast Player Choice (Death Knight)'),
(101441, 0, 1, 0, 62, 0, 100, 0, 19169, 0, 0, 0, 85, 199985, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On gossip select - InvokerCast Player Choice (Death Knight)');

-- Priest choice.
UPDATE `creature_template` SET `AIName` = 'SmartAI', gossip_menu_id = 19157 WHERE `entry` = 101314;
DELETE FROM `gossip_menu_option` WHERE (`menu_id`=19157 AND `id`=0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES
(19157, 0, 0, 'Я хочу еще раз освежить в памяти, поисками какого оружия мы можем заняться.', 0, 1, 1, 0, 0, 0, 0, '', 0);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 19157;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 19157, 0, 0, 0, 8, 0, 40705, 0, 0, 0, 0, 0, '', 'Show gossip only if player reward quest 40705');
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (101314);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(101314, 0, 0, 0, 19, 0, 100, 0, 40706, 0, 0, 0, 85, 199700, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On quest accept - InvokerCast Player Choice (Priest)'),
(101314, 0, 1, 0, 62, 0, 100, 0, 19157, 0, 0, 0, 85, 199700, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On gossip select - InvokerCast Player Choice (Priest)');

-- Demon Hunter choice.
UPDATE `creature_template` SET gossip_menu_id = 20014 WHERE `entry` = 99254;
DELETE FROM `gossip_menu_option` WHERE (`menu_id`=20014 AND `id`=0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES
(20014, 0, 0, 'Я хочу еще раз освежить в памяти, поисками какого оружия мы можем заняться.', 0, 1, 1, 0, 0, 0, 0, '', 0);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 20014;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 20014, 0, 0, 0, 8, 0, 39047, 0, 0, 0, 0, 0, '', 'Show gossip only if player reward quest 39047');
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (99254);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(99254, 0, 0, 0, 10, 0, 100, 0, 1, 30, 60000, 60000, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On LOS - Say line 0'),
(99254, 0, 1, 0, 19, 0, 100, 0, 40816, 0, 0, 0, 85, 201092, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On quest accept - InvokerCast Player Choice (Demon Hunter)'),
(99254, 0, 2, 0, 20, 0, 100, 0, 40816, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On quest reward - Say line 1'),
(99254, 0, 3, 0, 62, 0, 100, 0, 20014, 0, 0, 0, 85, 201092, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On gossip select - InvokerCast Player Choice (Demon Hunter)');

-- Mage choice.
UPDATE `gameobject_template` SET `AIName` = 'SmartGameObjectAI' WHERE `entry` = 252292;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (252292);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(252292, 1, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 85, 203654, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On hello - InvokerCast Player Choice (Mage)');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 252292;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, 252292, 1, 0, 8, 0, 41035, 0, 0, 0, 0, 0, '', 'SAI 252292-0 only if invoker reward quest 41035');

-- Warlock choice.
UPDATE `creature_template` SET `AIName` = 'SmartAI', `gossip_menu_id` = 19326 WHERE `entry` = 101097;
DELETE FROM `gossip_menu_option` WHERE (`menu_id`=19326 AND `id`=0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES
(19326, 0, 0, 'Я хочу выбрать артефакт.', 0, 1, 1, 0, 0, 0, 0, '', 0);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 19326;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 19326, 0, 0, 0, 8, 0, 40716, 0, 0, 0, 0, 0, '', 'Show gossip only if player reward quest 40716');
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (101097);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(101097, 0, 0, 0, 62, 0, 100, 0, 19326, 0, 0, 0, 85, 199411, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On gossip select - InvokerCast Player Choice (Demon Hunter)');

-- Warrior choice.
UPDATE `creature_template` SET `gossip_menu_id`=19091, `speed_run`=1, `BaseAttackTime`=1500, `RangeAttackTime`=2000, `AIName` = 'SmartAI' WHERE `entry`=96469; -- Odyn
DELETE FROM `gossip_menu_option` WHERE (`menu_id`=19091 AND `id`=0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES
(19091, 0, 0, 'Я хочу еще раз освежить в памяти, поисками какого оружия мы можем заняться.', 0, 1, 1, 0, 0, 0, 0, '', 0);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 19091;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 19091, 0, 0, 0, 8, 0, 42814, 0, 0, 0, 0, 0, '', 'Show gossip only if player reward quest 42814');
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (96469);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(96469, 0, 0, 0, 62, 0, 100, 0, 19091, 0, 0, 0, 85, 197999, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On gossip select - InvokerCast Player Choice (Warrior)');
DELETE FROM `npc_text` WHERE `ID`=27914;
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextId0`, `BroadcastTextId1`, `BroadcastTextId2`, `BroadcastTextId3`, `BroadcastTextId4`, `BroadcastTextId5`, `BroadcastTextId6`, `BroadcastTextId7`, `VerifiedBuild`) VALUES
(27914, 1, 0, 0, 0, 0, 0, 0, 0, 102646, 0, 0, 0, 0, 0, 0, 0, 24742); -- 27914

-- Monk choice.
DELETE FROM `gossip_menu` WHERE (`entry`=19130 AND `text_id`=27997);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(19130, 27997); -- 100438 (Iron-Body Ponshu)
DELETE FROM `gossip_menu_option` WHERE (`menu_id`=19130 AND `id`=0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES
(19130, 0, 0, 'Я передумала. Позволь мне выбрать другой артефакт.', 122690, 1, 1, 0, 0, 0, 0, '', 0);
DELETE FROM `npc_text` WHERE `ID`=27997;
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextId0`, `BroadcastTextId1`, `BroadcastTextId2`, `BroadcastTextId3`, `BroadcastTextId4`, `BroadcastTextId5`, `BroadcastTextId6`, `BroadcastTextId7`, `VerifiedBuild`) VALUES
(27997, 1, 0, 0, 0, 0, 0, 0, 0, 103321, 0, 0, 0, 0, 0, 0, 0, 24742); -- 27997
UPDATE `creature_template` SET `gossip_menu_id`=19130, `minlevel`=98, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `VehicleId`=4415, `AIName` = 'SmartAI' WHERE `entry`=100438; -- Iron-Body Ponshu
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (100438);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(100438, 0, 0, 0, 62, 0, 100, 0, 19130, 0, 0, 0, 85, 198902, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On gossip select - InvokerCast Player Choice (Monk)');


CREATE TABLE IF NOT EXISTS `playerchoice` (
  `ChoiceId` int(11) NOT NULL,
  `UiTextureKitId` int(11) NOT NULL DEFAULT '0',
  `Question` varchar(255) DEFAULT NULL,
  `HideWarboardHeader` tinyint(1) NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ChoiceId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы world.playerchoice: 17 rows
DELETE FROM `playerchoice`;
/*!40000 ALTER TABLE `playerchoice` DISABLE KEYS */;
INSERT INTO `playerchoice` (`ChoiceId`, `UiTextureKitId`, `Question`, `HideWarboardHeader`, `VerifiedBuild`) VALUES
	(280, 0, 'Поисками какого оружия нам следует заняться в первую очередь?', 0, 0),
	(265, 0, 'Поисками какого оружия нам следует заняться в первую очередь?', 0, 0),
	(262, 0, 'Поисками какого оружия нам следует заняться в первую очередь?', 0, 0),
	(266, 0, 'Поисками какого оружия нам следует заняться в первую очередь?', 0, 0),
	(231, 0, 'Какую специализацию охотника на демонов вы хотите освоить?', 0, 0),
	(234, 0, 'На какого соратника падет ваш выбор?', 0, 0),
	(245, 0, 'Поисками какого оружия нам следует заняться в первую очередь?', 0, 0),
	(253, 0, 'Поисками какого оружия нам следует заняться в первую очередь?', 0, 0),
	(242, 0, 'Поисками какого оружия нам следует заняться в первую очередь?', 0, 0),
	(240, 0, 'Поисками какого оружия нам следует заняться в первую очередь?', 0, 0),
	(235, 0, 'Поисками какого оружия нам следует заняться в первую очередь?', 0, 0),
	(236, 0, 'Поисками какого оружия нам следует заняться в первую очередь?', 0, 0),
	(248, 0, 'Поисками какого оружия нам следует заняться в первую очередь?', 0, 0),
	(247, 0, 'Поисками какого оружия нам следует заняться в первую очередь?', 0, 0),
	(255, 0, 'Поисками какого оружия нам следует заняться в первую очередь?', 0, 0),
	(238, 0, 'Какое кольцо вы хотите изготовить? От этого зависит тип самоцвета, который понадобится для работы.', 0, 0),
	(237, 0, 'Я покажу, как можно огранить один из этих камней. Какой эскиз ты хочешь изучить?', 0, 0);
/*!40000 ALTER TABLE `playerchoice` ENABLE KEYS */;

-- Дамп структуры для таблица world.playerchoice_response
CREATE TABLE IF NOT EXISTS `playerchoice_response` (
  `ChoiceId` int(11) NOT NULL,
  `ResponseId` int(11) NOT NULL,
  `Index` int(10) unsigned NOT NULL,
  `ChoiceArtFileId` int(11) NOT NULL DEFAULT '0',
  `Header` varchar(511) NOT NULL,
  `Answer` varchar(511) NOT NULL,
  `Description` varchar(2047) NOT NULL,
  `Confirmation` varchar(127) NOT NULL,
  `QuestId` int(10) DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ChoiceId`,`ResponseId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы world.playerchoice_response: 48 rows
DELETE FROM `playerchoice_response`;
/*!40000 ALTER TABLE `playerchoice_response` DISABLE KEYS */;
INSERT INTO `playerchoice_response` (`ChoiceId`, `ResponseId`, `Index`, `ChoiceArtFileId`, `Header`, `Answer`, `Description`, `Confirmation`, `QuestId`, `VerifiedBuild`) VALUES
	(280, 621, 1, 1389395, 'Ликвидация', 'Выбрать', 'Убийцы Королей – кинжалы Гароны, которыми она убивала неугодных Гул\'дану. Они отравляют жертву ядом, не оставляющим следов, поэтому когда Убийцы Королей решают чью-то судьбу, это невозможно доказать.\r\n\r\nДушевные муки вынудили Гарону спрятать кинжалы, но позже она вернулась за ними, чтобы одолеть опасных служителей Легиона.\r\n\r\nМы должны ее найти.', 'CONFIRM_ARTIFACT_CHOICE', 40842, 0),
	(280, 622, 2, 1389396, 'Головорез', 'Выбрать', 'Жуткий адмирал Элиза – гроза Южных морей. Ее проклятые клинки нагоняют ужас на многих.\r\n\r\nМы узнали, что ее корабль бросил якорь у берегов Азсуны на Расколотых островах. Если поспешить, то можно заполучить ее клинки.', 'CONFIRM_ARTIFACT_CHOICE', 40843, 0),
	(280, 623, 3, 1389397, 'Скрытность', 'Выбрать', 'Акаари Кровавая Тьма – непревзойденная эредарская убийца, предмет особой гордости Легиона. Ее кинжалы способны искажать пространство, скрывая своего владельца в тени.\r\n\r\nУ нас есть данные разведки, указывающие, где она находится в настоящее время. Пора нанести удар.', 'CONFIRM_ARTIFACT_CHOICE', 40844, 0),
	(265, 585, 2, 1389390, 'Огонь', 'Выбрать', 'Фело\'мелорн, в переводе "Удар огня", когда-то сверкал в руках воинов из рода Солнечных Скитальцев, которые доблестно сражались на Войне древних и Тролльских Войнах и противостояли рыцарю смерти Артасу Менетилу.\r\n\r\nВ конце концов меч был утерян в ледяных пустошах Нордскола.', 'CONFIRM_ARTIFACT_CHOICE', 41083, 0),
	(265, 586, 3, 1389391, 'Лед', 'Выбрать', 'Этот посох принадлежал Алоди, первому Хранителю Тирисфаля. Посох прошел через множество битв против Легиона вместе с владельцем за тот век, когда он носил свой почетный титул.\r\n\r\nОтойдя от дел, Алоди исчез и унес посох с собой. Что случилось с ними потом, никто не знает – кроме, разве что, самого Алоди.', 'CONFIRM_ARTIFACT_CHOICE', 41084, 0),
	(265, 584, 1, 1389389, 'Тайная магия', 'Выбрать', 'Наиболее известный владелец Алунета – Эгвин, единственная женщина среди Хранителей Тирисфаля, хотя, судя по всему, артефакт намного старше ее.\r\n\r\nКогда жизнь ее близилась к концу, Эгвин передала посох синим драконам. Они сочли артефакт слишком опасным и заперли в тайном хранилище, где он находится и по сей день.', 'CONFIRM_ARTIFACT_CHOICE', 41082, 0),
	(266, 587, 1, 1389399, 'Совершенствование', 'Выбрать', 'Молот Рока канул в Водоворот. Нельзя допустить, чтобы он достался врагам.\r\n\r\nОтправляйтесь в Подземье вместе с Траллом и отыщите пропавший артефакт. Осторожно: демона Гет\'зуна тоже затянуло в Водоворот, и, возможно, он все еще жив.', 'CONFIRM_ARTIFACT_CHOICE', 41328, 0),
	(231, 478, 1, 1274664, 'Истребление', 'Истребление', 'Продолжить освоение специализации "Истребление".\r\n\r\nОхотники на демонов со специализацией "Истребление" могут использовать способность "Метаморфоза", чтобы превращаться в крылатых демонов. Они бойцы ближнего боя.\r\n\r\nВыбрав "Истребление", вы получите способности |cFFFF0000|Hspell:162264|h["Метаморфоза"]|h|r и |cFFFF0000|Hspell:185164|h[Искусность: демоническое присутствие]|h|r.', 'CONFIRM_ARTIFACT_CHOICE', 39517, 0),
	(234, 486, 1, 1274666, '', 'Кайн Ярость Солнца', 'Кайн Ярость Солнца – один из самых преданных воинов владыки Иллидана Ярость Бури.\r\n\r\nОн верит, что одолеть Легион можно только действуя сообща и жертвуя личными интересами.\r\n\r\nБлагородный и требовательный, он живет по принципам Иллидана, добиваясь целей любой ценой.\r\n\r\n|cFF7a0000 Этот выбор не повлияет на силу вашего персонажа.|r', 'CONFIRM_ARTIFACT_CHOICE', 0, 0),
	(245, 420, 1, 0, 'Колдовство', 'Выбрать', 'Первым некролитом Азерота стала Сатиэль, получившая эту косу от титана Саргераса. Сила косы росла по мере поглощения новых душ. Она получила свое имя, когда Сатиэль одну за другой поглотила души несчастных жителей Перевала Мертвого Ветра и создала в нем мощное магическое средоточие. Выследив Сатиэль, один из стражей Тирисфаля обернул оружие против его владелицы, воссоединив ее душу с душами ее жертв. В конце концов, Ултхалеш нашли Темные всадники и спрятали ее под башней Каражана.', 'CONFIRM_ARTIFACT_CHOICE', 40689, 0),
	(253, 400, 1, 0, 'Кровь', 'Выбрать', 'Проклятый Пожиратель – огромный топор, который в древние времена был выкован из металла, способного вытягивать жизненную энергию. Внутри была заключена проклятая душа создателя артефакта, которую с тех пор одолевает неутолимый голод. Владельцем топора стал мо\'арг Гореликс Раздиратель Плоти, и благодаря ему он тысячи лет подавлял любые попытки мятежа и поглощал жизненные силу врагов Пылающего Легиона. Со временем топор наделил Гореликса невероятным могуществом. Но голод оружия оставался всё таким же неутолимым, и топор, не подпитываемый новыми жертвами, вполне мог выпить все соки прямо из своего хозяина.', 'CONFIRM_ARTIFACT_CHOICE', 40722, 0),
	(242, 241, 1, 0, 'Ткач туманов', 'Выбрать', 'Шей-лун, Посох Туманов – знаменитый артефакт, принадлежавший последнему императору пандаренов по имени Шаохао. Императору явилось пророчество о вторжении Пылающего Легиона, и он прошёл несколько испытаний, используя свой посох. Шаохао обрел новые знания, которые позволили ему укрыть всю Пандарию туманами и спасти от вторжения демонов. Поскольку душа Шаохао слилась с землей, посох остался без владельца и был обнаружен монахами из монастыря Тянь. Они поместили его на хранение у Террасы Вечной Весны, где Шей-лун находился последующие тысячи лет.', 'CONFIRM_ARTIFACT_CHOICE', 40639, 0),
	(240, 450, 1, 0, 'Выживание', 'Выбрать', 'Это копье было выковано тауренами Крутогорвья более десяти тысяч лет назад, задолго до первого вторжения демонов. Владельцам Хищного Когтя доводилось сражаться на стороне духов-хранителей, также известных как Древние, отстаивая мир в Азероте. На протяжении долгих веков Древние накладывали на оружие свои благословения, частично наделив его своими силами.', 'CONFIRM_ARTIFACT_CHOICE', 40619, 0),
	(235, 460, 1, 0, 'Свет', 'Выбрать', 'Серебряная длань некогда принадлежала хранителю титанов Тиру и верно служила ему в бесчисленных боях с врагами. Когда другой хранитель, Локен, был осквернен, Тир и его союзники выкрали диски Норганнона, чтобы определить масштабы предательства. Обнаружив пропажу, Локен послал за ворами жутких монстров, однако Тир пожертвовал своей жизнью, чтобы союзники могли спастись и унести с собой диски. Молот Тира был утерян в землях, которые впоследствии были названы в его честь - Тирисфалем.', 'CONFIRM_ARTIFACT_CHOICE', 40410, 0),
	(236, 470, 1, 0, 'Защита', 'Выбрать', 'Страж Истины – могущественный щит, который хранитель Тир выковал для своего лучшего воина. Этим воином был врайкул Иргрим, получивший титул Искателя Истины и сопровождавший хранителя. Когда Тир был убит, Иргрим решил передать свой артефакт самому достойному из врайкулов, но за тысячи лет ему не удалось найти подходящего претендента. Иргрим укрылся в святилище, защищенном печатями, и дожидался того, кто сможет войти внутрь и бросить ему вызов.', 'CONFIRM_ARTIFACT_CHOICE', 40580, 0),
	(248, 480, 1, 0, 'Свет', 'Выбрать', 'Будучи порождением чистого Света, великодушные наару вызволили дренеев из их родного мира после того, как большая часть этой расы превратилась в демонических прислужников Пылающего Легиона. Демоны почти настигли беглецов, но в тот момент наару защитили их с помощью кристалла-маяка. Кристалл Т\'ууре превращал сущность Света в целительное сияние, позволял исцелять ужасающие раны и возвращать к жизни тех, кто почти погиб. Он был утерян, когда войска Легиона захватили мир дренеев, и с тех пор о нем ничего не известно.', 'CONFIRM_ARTIFACT_CHOICE', 40708, 0),
	(247, 700, 1, 0, 'Сила зверя', 'Выбрать', 'Клыки Пеплошкурой – два кинжала, созданных из клыков ночного саблезуба Пеплошкурой, которая погибла во времена Войны Древних, защищая жителей Валь\'шары. Пепельные друиды, назвавшие себя в её честь, создали святилище в месте, где демоны убили Пеплошкурую, и поместили здесь кинжалы, которые стали их главной реликвией. В течение десяти тысяч лет друиды продолжали охранять клыки при помощи защитного оберега, пока не началось вторжение Пылающего Легиона.', 'CONFIRM_ARTIFACT_CHOICE', 40701, 0),
	(255, 640, 1, 0, 'Месть', 'Выбрать', 'В далеком прошлом темный титан Саргерам предложил народу альдархийцев стать частью Пылающего Легиона, однако те не поддались искушению и уничтожили толпы демонов перед тем, как были истреблены. Саргерас лично убил величайшего война племени и завладел его оружием. Много лет спустя, когда одна из охотниц на демонов добровольно стала слугой Кил\'джедена, она получила эти клинки и частично приобрела забытую мощь альдархийцев, чтобы обратить ее против смертных выходцев из Азерота.', 'CONFIRM_ARTIFACT_CHOICE', 40818, 0),
	(238, 497, 1, 0, '', '', '', '', 40526, 0),
	(237, 494, 1, 841057, '', 'Вот мой выбор', 'Выберите этот вариант, если хотите научиться огранять |cFF1EFF00|Hitem:130215:0:0:0:0:0:0:0:90:0|h[смертоносный темный янтарь]|h|r, повышающий ваш урон при критическом ударе', '', 40532, 0),
	(262, 569, 2, 0, '', '', '', '', 0, 0),
	(266, 588, 2, 1389398, 'Стихии', 'Выбрать', 'Гладиатору Регару известно о могущественном оружии, которое может помочь нам противостоять Легиону.\r\n\r\nПосле пандаренской кампании под Престолом Гроз было обнаружено оружие грозового бога Ра-дена. Его оставили под охраной последователей Белого Тигра с наказом отдать лишь наидостойнейшему. Регар поможет тебе доказать свое право на него.', 'CONFIRM_ARTIFACT_CHOICE', 41329, 0),
	(231, 479, 2, 1274665, 'Месть', 'Месть', 'Change to mastery of Vengeance.\r\n\r\nVengeance specialized demon hunters can use Metamorphosis to turn into spiked demons. They focus on Tanking.\r\n\r\nChoosing Vengeance grants |cFFFF0000|Hspell:187827|h[Metamorphosis]|h|r as well as |cFFFF0000|Hspell:203747|h[Mastery: Fel Blood]|h|r.\r\n\r\nYour |cFFFF0000|Hspell:198013|h[Eye Beam]|h|r will change into |cFFFF0000|Hspell:178740|h[Immolation Aura]|h|r.', 'CONFIRM_ARTIFACT_CHOICE', 39518, 0),
	(234, 487, 2, 1274661, '', 'Алтруис Страдалец', 'Алтруис Страдалец – отступник, привыкший решать все проблемы самостоятельно.\r\n\r\nХотя у него с Иллиданом общие цели, Алтруис часто не одобряет его методы.\r\n\r\nОн считает, что Иллидан потерял контроль над своими демоническими силами и что иллидари нужен новый лидер.\r\n\r\n|cFF7a0000 Этот выбор не повлияет на силу вашего персонажа.|r', 'CONFIRM_ARTIFACT_CHOICE', 0, 0),
	(245, 421, 2, 0, 'Демонология', 'Выбрать', 'До того, как эредары перешли на службу к титану Саргерасу, один из их предводителей, Тал\'киэль, владел непревзойденными навыками призыва и управления магией. Ведомый тщеславием, он вошел в Бездну и обнаружил там невиданных доселе существ. Ученик Тал\'киэля, Архимонд, узнав о его договоре с тьмой, рассказал об этом союзникам, и те объединились, чтобы свергнуть жадного до власти эредара. Его череп был выставлен на всеобщее обозрение в наздидание другим. В наши дни Череп Ман\'ари принадлежит Повелителю ужаса Мефистрофу и помогает ему командовать полчищами демонов из Легиона.', 'CONFIRM_ARTIFACT_CHOICE', 40691, 0),
	(253, 401, 2, 0, 'Лёд', 'Выбрать', 'Поглощающий души рунический клинок Ледяная Скорбь был изготовлен Пылающим Легионом, чтобы уничтожить Азерот, и расколот Испепелителем на вершине Цитадели Ледяной короны. Из расколотого клинка вырвалось несчетное количество душ, однако многие из них так и остались внутри. Теперь осколки Ледяной Скорби можно перековать и наделить еще большим могуществом, перед этим подчинив себе души, которые все еще находятся взаперти.', 'CONFIRM_ARTIFACT_CHOICE', 40723, 0),
	(242, 242, 2, 0, 'Хмелевар', 'Выбрать', 'Давным-давно, когда Хранительница Фрейя задумала населить мир живыми существами, она посадила одно из первых семян в Пандарии. Из него пророс первый лес, Фу Цань, ставший прародителем всех лесов. Перед тем, как обратиться к остальному Азероту, Фрейя вырезала из дерева посох для путешествий. В конечном итоге, она подарила этот посох Нефритовой змее, а та, в свою очередь, передала его удивительно умному хозену, который называл себя Королем обезьян и бережно хранил подарок до наших дней.', 'CONFIRM_ARTIFACT_CHOICE', 40640, 0),
	(240, 451, 2, 0, 'Стрельба', 'Выбрать', 'Фамильная реликвия семьи Ветрокрылых Тас\'дора была вырезана из ветви материнского древа Лесов Вечной песни вскоре после основания эльфийского королевства Кель\'Талас. Лук передавался из поколения в поколение, и его последней владелицей была предводительница следопытов Аллерия Ветрокрылая. После того, как родной мир орков Дренор был разрушен и превратился в Запределье, Тас\'дора и его владелица пропали без следа.', 'CONFIRM_ARTIFACT_CHOICE', 44046, 0),
	(235, 461, 2, 0, 'Воздаяние', 'Выбрать', 'Король Магни Бронзобород выковал Испепелитель из осколка очищенного Светом кристалла, благодаря чему клинок получил удивительную способность уничтожать нежить, оставляя за собой лишь пепел. Испепелитель неоднократно менял владельцев, исповедовавших как Свет, так и Тьму, пока не попал в руки легендарного паладина Тириона Фордринга, сразившего Короля-лича на вершине Цитадели Ледяной короны. С тех пор Тирион всегда носил Испепелитель при себе.', 'CONFIRM_ARTIFACT_CHOICE', 40409, 0),
	(236, 471, 2, 0, 'Оружие', 'Выбрать', 'Этот меч был впервые замечен в руках предводителя варваров, сплотившего человечество под единым знаменем и основавшего государство Аратор. Король Торадин был гением стратегии и сыграл далеко не последнюю роль в окончании войн с троллями. Позже меч был утерян при попытке подчинить монстра из племени К\'Тракси, обитавшего в заброшенной гробнице под Тирисфалем. На протяжении долгих тысячелетий всеми забытый Стромкар медленно наполнялся темной силой.', 'CONFIRM_ARTIFACT_CHOICE', 40582, 0),
	(248, 481, 2, 0, 'Послушание', 'Выбрать', 'Ярость Света – могущественный посох, который был создан Алым орденом в качестве второго Испепелителя. Участники ордена объединили свои силы на особой церемонии, чтобы сотворить артефакт, но натрезим, проникнувший в ряды ордена, нарушил церемонию. Ужасающий магический взрыв повредил посох, и с тех пор его огромную силу было почти невозможно контролировать. Хотя несколько смельчаков пытались использовать Ярость Света, это стало причиной разрушений. Кирин-Тор решил спрятать артефакт, чтобы избежать катастрофы, и передал его на хранение синим драконам, которые поместили посох в Хранилище Нексуса.', 'CONFIRM_ARTIFACT_CHOICE', 44409, 0),
	(247, 701, 2, 0, 'Баланс', 'Выбрать', 'Коса Элуны – таинственный артефакт, созданный из клыка Дикого Бога Голдринна и посоха Элуны, наделенного божественными силами. Коса стала материальным воплощением союза безмятежности и свирепости, которому суждено было изменить ход истории Азерота. Хотя этот артефакт создавался, чтобы усилить волчий облик друидов Стаи, из-за конфликта сущностей Голдринна и Элуны друиды, попавшие под воздействие Косы, превратились в новых существ, которые позже станут известны как воргены. Они не просто нападали на всех подряд, не в силах сдерживать ярость, но и распространяли проклятье на своих жертв.', 'CONFIRM_ARTIFACT_CHOICE', 40781, 0),
	(255, 641, 2, 0, 'Истребление', 'Выбрать', 'Эти клинки принадлежат бывшему охотнику на демонов Варедису Оскверненной Душе. Он был членом ордена Иллидари и заклятым врагом Пылающего Легиона, но пал в битве за Черный храм. После этого Варедис возродился в Круговерти Пустоты по воле предводителя Легиона Кил\'джедена и отдался во власть своего внутреннего демона, чтобы получить бессмертие. В тот момент он и его клинки получили безграничную силу союзников Кил\'джедена, эредаров.', 'CONFIRM_ARTIFACT_CHOICE', 40817, 0),
	(238, 498, 2, 841057, '', 'Вот мой выбор', 'Выберите этот вариант, если хотите научиться создавать |cFF0070DD|Hitem:130223:0:0:0:0:0:0:0:90:0|h[кольцо из темного янтаря]|h|r, повышающее ваш показатель критического удара', '', 40527, 0),
	(237, 495, 2, 841057, '', 'Вот мой выбор', 'Выберите этот вариант, если хотите научиться огранять |cFF1EFF00|Hitem:130216:0:0:0:0:0:0:0:90:0|h[азсунит стремительности]|h|r, повышающий ваш показатель скорости', '', 40533, 0),
	(262, 570, 3, 0, '', '', '', '', 0, 0),
	(266, 589, 3, 1389400, 'Исцеление', 'Выбрать', 'Говорят, у королевы Азшары был скипетр, позволяющий повелевать морями и водами жизни.\r\n\r\nЭрунак давно пытался выяснить его местонахождение, и одной из его шаманок это почти удалось, однако она пропала. Увенчались ли ее поиски успехом? Могут ли легенды оказаться правдой? И на что может быть способен этот артефакт в руках талантливого шамана?', 'CONFIRM_ARTIFACT_CHOICE', 41330, 0),
	(245, 422, 3, 0, 'Разрушение', 'Выбрать', 'Скипетр Саргераса – могущественный артефакт, созданный невероятными усилиями сотен прислужников Саргераса, чтобы темный повелитель Легиона владел им. Скипетр способен открывать врата между мирами и был при аватаре Саргераса, когда тот сразился с Эгвин. Вместе с останками титана артефакт был сохранен в месте, получившем название Гробницы Саргераса, и находился там сотни лет.', 'CONFIRM_ARTIFACT_CHOICE', 40690, 0),
	(253, 402, 3, 0, 'Нечестивость', 'Выбрать', 'Этот древний меч был выкован демонами-вампирами, также известными как натрезимы. Его появление знаменовало собой жестокость, мор и смерть. Апокалипсис обрел поистине дурную славу, когда попал в руки Медива - хранителя Тирисфаля, которому так и не удалось обуздать его разрушительную энергию. После этого меч попал в руки мрачным прислужникам Медива - Темным всадникам, которые спрятали оружие в катакомбах под башней Каражана.', 'CONFIRM_ARTIFACT_CHOICE', 40724, 0),
	(242, 243, 3, 0, 'Танцующий с ветром', 'Выбрать', 'Кулаки Небес – два ручных клинка, созданных в древние времена тол\'вирским кузнецом Ирмаатом и наполненных сущность Ал\'Акира Повелителя Ветра. Клинок для правой руки носит имя Аль\'бурк, а для левой – Альра\'эд. Бурлящая сила стихий, которая была заключена в артефактах, была настолько велика, что уничтожила целый город в Ульдуме, где жил Ирмаат.', 'CONFIRM_ARTIFACT_CHOICE', 40638, 0),
	(240, 452, 3, 0, 'Повелитель зверей', 'Выбрать', 'Безупречное детище техномагической инженерии Мощь Титанов было создано гениальным изобретателем и хранителем титанов Мимироном. В самом сердце ружья находится реликвия, известная под именем Грозовая искра. Она преобразует сущность бури в концентрированные сгустки энергии. Реликвия, впоследствии ставшая источник невероятной силы, изначально принадлежала товарищу Мимирона, Ториму.', 'CONFIRM_ARTIFACT_CHOICE', 40621, 0),
	(235, 462, 3, 0, 'Защита', 'Выбрать', 'Хранители титанов Тир и Аркедас создали этот щит, когда их союзник Локен поддался скверне. Владельцем Стража Истины стал герой из племени врайкулов, выведавший всю правду о предательстве. Позже, когда Тир и его соратники украли диски Норганнона и пытались бежать, герой сдерживал натиск прислужников Локена. В отчаянии Локен послал за беглецами ужасных монстров, и Тир пал в бою. Позже герой отправился в Штормхейм и в конечном итоге был похоронен под Королевским трактом на Разрушенных островах.', 'CONFIRM_ARTIFACT_CHOICE', 44065, 0),
	(236, 472, 3, 0, 'Неистовство', 'Выбрать', 'Много лет назад хранитель титанов Один предал волшебницу Хелию, убил ее и обрек на существование в облике призрачной валь\'киры. Он выковал пару мечей для сильнейшего из бойцов-валарьяров, но Хелия украла их и наполнила своим собственным гневом. Затем она отдала оружие другому бойцу, который убивал великих героев и заставлял их души прислуживать в Хелльейме. Боевые мечи позволяют владельцу совершать беспощадные и сильные удары, которые пробивают защиту противника и не дают ни малейшего шанса на контратаку.', 'CONFIRM_ARTIFACT_CHOICE', 44418, 0),
	(248, 482, 3, 0, 'Тьма', 'Выбрать', 'Много лет назад, во времена расцвета Черной Империи этот жуткий кинжал был изготовлен из когтя древнего бога, и темные жрецы использовали его для проведения ритуальных жертвоприношений. Когда древние боги пали, Ксал\'атат был спрятан членами культа. Время от времени он появлялся и неизменно знаменовал катастрофы или проведение жутких обрядов. Клинок обладает собственной волей и использует энергию Бездны, заставляя служить злонамеренным целям все, что его окружает.', 'CONFIRM_ARTIFACT_CHOICE', 40707, 0),
	(247, 702, 3, 0, 'Страж', 'Выбрать', 'Когти Урсока – древние реликвии, которые хранительница Фрейя выковала из титановой стали и наделила частичкой сущности, принадлежавшей титану Эонар. Она подарила Когти медведю Урсоку, намеренному защищать дикую природу Азерота. Урсок безжалостно тренировался и путешествовал на дальние дистанции, желая раскрыть истинный потенциал подарка. Урсок и его брат Урсол стали двумя сильнейшими Дикими Богами и непреклонными защитниками всего мира. Сражаясь с демонами во времена Войны Древних, Урсок погиб, но часть его духа осталась в Когтях. Друиды, почитавшие бога-медведя, завладели реликвиями и перенесли их в Изумрудный Сон, где отдали на хранение самому Урсоку, ставшему духом.', 'CONFIRM_ARTIFACT_CHOICE', 40702, 0),
	(238, 499, 3, 841057, '', 'Вот мой выбор', 'Выберите этот вариант, если хотите научиться создавать |cFF0070DD|Hitem:130225:0:0:0:0:0:0:0:90:0|h[кольцо из азсунита]|h|r, повышающее ваш показатель скорости', '', 40528, 0),
	(237, 496, 3, 841057, '', 'Вот мой выбор', 'Выберите этот вариант, если хотите научиться огранять |cFF1EFF00|Hitem:130218:0:0:0:0:0:0:0:90:0|h[смертоносный темный янтарь]|h|r, повышающий ваш показатель искусности', '', 40534, 0),
	(247, 703, 4, 0, 'Исцеление', 'Выбрать', 'Ветвь первого древа Г’ханир была давным-давно подарена смертным друидам полубогиней Авианой. Таинственная связь ветви с Изумрудным сном служит источником мира в Азероте. Долгое время друиды использовали этот посох для того, чтобы сдерживать порчу и безумие, исходящее из Кошмара, поэтому сатиры стремятся уничтожить Г’ханир любой ценой.', 'CONFIRM_ARTIFACT_CHOICE', 40703, 0);
	
        DELETE FROM `creature_template` WHERE `entry`=93105;
        INSERT INTO `creature_template` VALUES (93105, 0, 0, 0, 95226, 0, 68182, 0, 0, 0, 'Inquisitor Baleful', '', '', NULL, NULL, 0, 98, 98, 5, 0, 0, 954, 0, 1, 1.14286, 1, 0, 0, 2000, 2000, 1, 1, 2, 32832, 2099200, 0, 0, 0, 0, 0, 0, 3, 2147483752, 0, 93105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 5.5, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 'npc_inquisitor_baleful', 26365);