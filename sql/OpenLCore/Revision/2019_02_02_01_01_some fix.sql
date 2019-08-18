INSERT IGNORE INTO `graveyard_zone` (`ID`, `GhostZone`) VALUES
(6021, 8574), -- Krokuun
(6101, 8574), -- Krokuun
(6102, 8899), -- Etendues Antoréennes
(6103, 8701), -- Mac Aree
(6112, 8701), -- Siege Triumvirat Mac Aree
(6116, 8701), -- Siege Triumvirat Mac Aree
(6126, 8574), -- Krokuun
(6127, 8574), -- Krokuun
(6162, 8899), -- Etendues Antoréennes Antorus
(6174, 8899), -- Etendues Antoréennes
(6175, 8899), -- Etendues Antoréennes
(6200, 8574), -- Krokuun
(6211, 8701), -- Mac Aree
(6212, 8701), -- Mac Aree
(6213, 8701), -- Mac Aree
(6214, 8701), -- Mac Aree
(6215, 8701), -- Mac Aree
(6216, 8701), -- Mac Aree
(6271, 8899), -- Etendues Antoréennes
(6288, 8638), -- Antorus
(6289, 8638), -- Antorus
(6290, 8638), -- Antorus
(6291, 8638), -- Antorus
(6292, 8638), -- Antorus
(6293, 8638), -- Antorus
(6294, 8638), -- Antorus
(6295, 8638); -- Antorus


-- Fire Eater
SET @ENTRY := 55399;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,1,0,100,0,8000,8000,20000,25000,11,34359,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"OOC - Drink Potion");

-- Fire Eater
SET @ENTRY := 55231;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,1,0,100,0,8000,8000,20000,25000,11,34359,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"OOC - Drink Potion");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = '13' AND `SourceEntry` = '102882' AND `ConditionValue2` = '55397';
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`) VALUES
(13, 1, 102882, 8, 31, 3, 55397);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = '13' AND `SourceEntry` = '102882' AND `ConditionValue2` = '55089';
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`) VALUES
(13, 1, 102882, 9, 31, 3, 55089);

SET @ENTRY := 57850;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,62,0,100,0,13352,0,0,0,11,109244,2,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"On Gossip Select - Cast Teleport to the Cannon"),
(@ENTRY,@SOURCETYPE,1,0,62,0,100,0,13352,7,0,0,72,0,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"On Gossip Select - Close Gossip"); 

DELETE FROM `creature_text` WHERE `creatureid`=14841;
INSERT INTO `creature_text` (`creatureid`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(14841,0,0,'Test your skill, win a prize!',12,0,100,1,0,0,'Comment'),
(14841,0,1,'Test your aim! Test your aim!',12,0,100,1,0,0,'Comment'),
(14841,0,2,'Step right up and take your best shot!',12,0,100,1,0,0,'Comment'),
(14841,0,3,'Shoot for loot! Who wants to shoot for some loot?',12,0,100,1,0,0,'Comment'),
(14841,0,4,'If you can shoot, you can score some sweet prizes!',12,0,100,1,0,0,'Comment'),
(14841,0,5,'Guns, guns, guns! C\'mon, pal!',12,0,100,1,0,0,'Comment'),
(14841,0,6,'Folks, I\'m handing out epics over here! Don\'t miss out!',12,0,100,1,0,0,'Comment');

SET @ENTRY := 14841;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,1,0,100,0,30000,60000,60000,120000,1,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"OOC - Talk 0"),
(@ENTRY,@SOURCETYPE,1,0,62,0,100,0,6226,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"On Gossip Select - Close Gossip"),
(@ENTRY,@SOURCETYPE,2,3,62,0,100,0,6225,1,0,0,72,0,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"On Gossip Select - Close Gossip"),
(@ENTRY,@SOURCETYPE,3,4,61,0,100,0,0,0,0,0,57,71083,1,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"Link - Remove Token"),
(@ENTRY,@SOURCETYPE,4,0,61,0,100,0,0,0,0,0,75,101871,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"Link - Add Shoot");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 14841;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 3, 14841, 0, 0, 2, 0, 71083, 1, 0, 0, 0, 0, '', 'Need Token to play'),
(22, 4, 14841, 0, 0, 2, 0, 71083, 1, 0, 0, 0, 0, '', 'Need Token to play'),
(22, 5, 14841, 0, 0, 2, 0, 71083, 1, 0, 0, 0, 0, '', 'Need Token to play');


SET @ENTRY := 56035;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,22,0,100,0,34,5,5,0,5,94,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"On Receive Emote - Dance");

DELETE FROM `creature_text` WHERE `creatureid`=54485;
INSERT INTO `creature_text` (`creatureid`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(54485,0,0,'Hey, hey $C! Think you can land a ring on a slow moving turtle?',12,0,100,1,0,0,'Comment'),
(54485,1,0,'Simple game, for simple folk. Think you can manage it?',12,0,100,1,0,0,'Comment'),
(54485,1,1,'Toss a ring, win a prize!',12,0,100,1,0,0,'Comment'),
(54485,1,2,'You look like you\'ve got quite the arm there. Care to give this game a try?',12,0,100,1,0,0,'Comment');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 54485;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 4, 54485, 0, 0, 2, 0, 71083, 1, 0, 0, 0, 0, '', 'Need Token to play');


SET @ENTRY := 54485;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,1,0,100,0,30000,60000,35000,45000,1,1,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"OOC - Talk 1"),
(@ENTRY,@SOURCETYPE,1,0,10,0,100,0,1,5,120000,180000,1,0,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"OOC LoS - Talk 0"),
(@ENTRY,@SOURCETYPE,2,0,62,0,100,0,13013,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"On Gossip Select - Close Gossip"),
(@ENTRY,@SOURCETYPE,3,4,62,0,100,0,13012,1,0,0,57,71083,1,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"On Gossip Select - Remove Token"),
(@ENTRY,@SOURCETYPE,4,5,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"Link - Close Gossip"),
(@ENTRY,@SOURCETYPE,5,0,61,0,100,0,0,0,0,0,75,102058,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"Link - Add Toss Aura"),
(@ENTRY,@SOURCETYPE,6,0,20,0,100,0,29455,0,0,0,28,102058,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"On Quest Rewarded - Remove Rings");

DELETE FROM `creature_text` WHERE `creatureid`=54605;
INSERT INTO `creature_text` (`creatureid`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(54605,0,0,'We\'re under attack! Step up and do your part, $C!',12,0,100,1,0,0,'Comment'),
(54605,1,0,'Tonks! We got tonks here!',12,0,100,1,0,0,'Comment'),
(54605,1,1,'Step right up and try a tonk!',12,0,100,1,0,0,'Comment'),
(54605,1,2,'Hey, hey! Command a tonk in glorious battle!',12,0,100,1,0,0,'Comment');

UPDATE `creature_template` SET `VehicleId`=1734 WHERE `entry`=54588;


SET @ENTRY := 54605;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,1,0,100,0,35000,60000,45000,60000,1,1,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"OOC - Talk 1"),
(@ENTRY,@SOURCETYPE,1,0,10,0,100,0,1,5,60000,180000,1,0,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"OOC LoS - Talk 0"),
(@ENTRY,@SOURCETYPE,2,0,62,0,100,0,13066,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"On Gossip Select - Close Gossip"),
(@ENTRY,@SOURCETYPE,3,4,62,0,100,0,13019,1,0,0,57,71083,1,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"On Gossip Select - Remove Item"),
(@ENTRY,@SOURCETYPE,4,5,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"Link - Close Gossip"),
(@ENTRY,@SOURCETYPE,5,0,61,0,100,0,0,0,0,0,85,100752,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"Link - Add Tonk");


SET @ENTRY := 54643;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,1,0,100,0,1000,5000,10000,15000,11,102209,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"OOC - Cast Bombs Away");

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '100752';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(100752, 102178, 2, 'Tonk Timer!');


DELETE FROM `spell_target_position` WHERE `id` = '100752';
INSERT INTO `spell_target_position` (`id`, `mapid`, `positionx`, `positiony`, `positionz`, `verifiedbuild`) VALUES
(100752, 974, -4133.14, 6321.41, 13.11, 23420);



SET @ENTRY := 33081;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,1,0,100,0,30000,60000,30000,60000,0,1,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"OOC - Despawn"),
(@ENTRY,@SOURCETYPE,1,2,6,0,100,0,0,0,0,0,85,62265,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"On Death - Cast Credit"),
(@ENTRY,@SOURCETYPE,2,0,61,0,100,0,0,0,0,0,41,1,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Link - Despawn");


DELETE FROM `conditions` WHERE `SourceEntry` = '102292';
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ScriptName`, `Comment`) VALUES
(13, 1, 102292, 0, 0, 31, 0, 3, 33081, 0, 0, 0, '', 'Targeting -> Tonk Target');


-- Enemy Tonk
SET @ENTRY := 54642;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,1,0,100,0,5000,5000,12500,24000,11,102341,0,0,0,0,0,11,54588,6,0,0.0,0.0,0.0,0.0,"OOC - Cast Marked");


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 54605;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 4, 54605, 0, 0, 2, 0, 71083, 1, 0, 0, 0, 0, '', 'Need Token to play');

DELETE FROM `game_event` WHERE `eventEntry`=71;
REPLACE INTO `game_event` (`eventEntry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`, `announce`) VALUES
(71, '2013-01-06 01:01:00', '2030-12-31 06:00:00', 131040, 8639, 0, 'Darkmoon Faire Building (Mulgore)', 0, 2);

DELETE FROM `creature` WHERE `id` IN(106914,106915,98675);
INSERT INTO `creature`
  (`guid`, `id`,`map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`)
VALUES
  ("280000709", 106915, 1220, 0, 0, "0", 0, 0, 0, -1, 0, 1, 458.172, 6506.74, 40.2502, 0.652985, 300, 0, 0, 3135285, 0, 0, "0", 0, 0, 0, 0, "", 0),
  ("280000708", 106914, 1220, 0, 0, "0", 0, 0, 0, -1, 0, 0, 454.286, 6510.71, 40.2581, 0.433824, 300, 0, 0, 2186175, 25282, 0, "0", 0, 0, 0, 0, "", 0),
  ("280000712", 98675, 1220, 0, 0, "0", 0, 0, 0, -1, 0, 0, 490.265, 5613.3, 66.0642, 2.38586, 300, 0, 0, 1039267, 1, 0, "0", 0, 0, 0, 0, "", 0);
  
 DELETE FROM `creature_queststarter` WHERE `id` = 89278;
INSERT INTO `creature_queststarter`
  (`id`, `quest`)
VALUES
  (89278, 37449);
    
UPDATE `gameobject_template` SET `Data1` = 239744 WHERE `entry` = 239744;
UPDATE `gameobject_template` SET `Data1` = 238940 WHERE `entry` = 238940;
UPDATE `gameobject_template` SET `Data1` = 239745 WHERE `entry` = 239745;

DELETE FROM `gameobject_loot_template` WHERE `Entry` IN(238940,239744,239745);
INSERT INTO `gameobject_loot_template`
  (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, Comment)
VALUES
  (238940, 120946, 0, 100, 1, 1, 0, 1, 1, "NULL"),
  (239744, 120947, 0, 100, 1, 1, 0, 1, 1, "NULL"),
  (239745, 120949, 0, 100, 1, 1, 0, 1, 1, "NULL");
  
    -- 86563 Archmage Khadgar SAI
SET @ENTRY := 86563;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,86563,1,0,0,62,1220,0,0,0,0,0,7,0,0,0,-102.297,6966.86,12.5079,4.93751,""),
(@ENTRY,0,1,0,62,0,100,0,86563,1,0,0,33,103607,0,0,0,0,0,7,0,0,0,0,0,0,0,"quest 41220 completed");

UPDATE `creature_template` SET `lootid` = 101967 WHERE `entry` = 101967 AND `lootid` = 0;
UPDATE `creature_template` SET `lootid` = 102166 WHERE `entry` = 102166 AND `lootid` = 0;
UPDATE `creature_template` SET `lootid` = 102088 WHERE `entry` = 102088 AND `lootid` = 0;
UPDATE `creature_template` SET `lootid` = 102622 WHERE `entry` = 102622 AND `lootid` = 0;



DELETE FROM `reference_loot_template` WHERE `Entry` IN (11919,11920,11921) OR `Entry` BETWEEN 13006 AND 13010;
INSERT INTO `reference_loot_template` (`Entry`,`Item`,`Reference`,`Chance`,`QuestRequired`,`LootMode`,`GroupId`,`MinCount`,`MaxCount`,`Comment`) VALUES
-- Milling
(11919, 61979, 11919,100, 0, 1, 0, 2, 4, 'Ashen Pigment'),
(11919, 61980, 11919, 25, 0, 1, 0, 1, 3, 'Burning Embers'),
(11920, 61979, 11920,100, 0, 1, 0, 2, 3, 'Ashen Pigment'),
(11920, 61980, 11920, 25, 0, 1, 0, 1, 3, 'Burning Embers'),
(11921, 61979, 11921,100, 0, 1, 0, 2, 4, 'Ashen Pigment'),
(11921, 61980, 11921, 50, 0, 1, 0, 1, 3, 'Burning Embers'),
-- Prospecting
(13006, 52327, 13006,100, 0, 1, 0, 1, 3, 'Volatile Earth from Pyrite Ore'),
(13007, 52177, 13007, 17, 0, 1, 1, 1, 1, 'Carnelian - Green gems'),
(13007, 52178, 13007, 17, 0, 1, 1, 1, 1, 'Zephyrite - Green gems'),
(13007, 52179, 13007, 17, 0, 1, 1, 1, 1, 'Alicite - Green gems'),
(13007, 52180, 13007, 16, 0, 1, 1, 1, 1, 'Nightstone - Green gems'),
(13007, 52181, 13007, 17, 0, 1, 1, 1, 1, 'Hessonite - Green gems'),
(13007, 52182, 13007, 16, 0, 1, 1, 1, 1, 'Jasper - Green gems'),
(13008, 52190, 13008,  4, 0, 1, 2, 1, 1, 'Inferno Ruby - Blue gems'),
(13008, 52191, 13008,  4, 0, 1, 2, 1, 1, 'Ocean Sapphire - Blue gems'),
(13008, 52192, 13008,  4, 0, 1, 2, 1, 1, 'Dream Emerald - Blue gems'),
(13008, 52193, 13008,  4, 0, 1, 2, 1, 1, 'Ember Topaz - Blue gems'),
(13008, 52194, 13008,  4, 0, 1, 2, 1, 1, 'Demonseye - Blue gems'),
(13008, 52195, 13008,  4, 0, 1, 2, 1, 1, 'Amberjewel - Blue gems'),
(13009, 52177, 13009, 17, 0, 1, 1, 1, 2, 'Carnelian - Green gems 2'),
(13009, 52178, 13009, 17, 0, 1, 1, 1, 2, 'Zephyrite - Green gems 2'),
(13009, 52179, 13009, 17, 0, 1, 1, 1, 2, 'Alicite - Green gems 2'),
(13009, 52180, 13009, 16, 0, 1, 1, 1, 2, 'Nightstone - Green gems 2'),
(13009, 52181, 13009, 17, 0, 1, 1, 1, 2, 'Hessonite - Green gems 2'),
(13009, 52182, 13009, 16, 0, 1, 1, 1, 2, 'Jasper - Green gems 2'),
(13010, 52190, 13010,  7, 0, 1, 2, 1, 2, 'Inferno Ruby - Blue gems 2'),
(13010, 52191, 13010,  7, 0, 1, 2, 1, 2, 'Ocean Sapphire - Blue gems 2'),
(13010, 52192, 13010,  7, 0, 1, 2, 1, 2, 'Dream Emerald - Blue gems 2'),
(13010, 52193, 13010,  7, 0, 1, 2, 1, 2, 'Ember Topaz - Blue gems 2'),
(13010, 52194, 13010,  7, 0, 1, 2, 1, 2, 'Demonseye - Blue gems 2'),
(13010, 52195, 13010,  7, 0, 1, 2, 1, 2, 'Amberjewel - Blue gems 2');

DELETE FROM `milling_loot_template` WHERE `Entry` BETWEEN 52983 AND 52988;
INSERT INTO `milling_loot_template` (`Entry`,`Item`,`Reference`,`Chance`,`QuestRequired`,`LootMode`,`GroupId`,`MinCount`,`MaxCount`,`Comment`) VALUES
(52983, 11919, 11919, 100, 0, 1, 0, 1, 1, 'Cinderbloom - Ashen Pigment, Burning Embers'),
(52984, 11920, 11920, 100, 0, 1, 0, 1, 1, 'Stormvine - Ashen Pigment, Burning Embers'),
(52985, 11920, 11920, 100, 0, 1, 0, 1, 1, 'Azshara\'s Veil - Ashen Pigment, Burning Embers'),
(52986, 11919, 11919, 100, 0, 1, 0, 1, 1, 'Heartblossom - Ashen Pigment, Burning Embers'),
(52987, 11921, 11921, 100, 0, 1, 0, 1, 1, 'Twilight Jasmine - Ashen Pigment, Burning Embers'),
(52988, 11921, 11921, 100, 0, 1, 0, 1, 1, 'Whiptail - Ashen Pigment, Burning Embers');

DELETE FROM `prospecting_loot_template` WHERE `Entry` IN (52183,52185,53038);
INSERT INTO `prospecting_loot_template` (`Entry`,`Item`,`Reference`,`Chance`,`QuestRequired`,`LootMode`,`GroupId`,`MinCount`,`MaxCount`,`Comment`) VALUES
(52183, 13006, 13006, 100, 0, 1, 0, 1, 1, 'Pyrite Ore - Volatile Earth'),
(52183, 13009, 13009, 100, 0, 1, 0, 1, 1, 'Pyrite Ore - Green gems 2'),
(52183, 13010, 13010, 100, 0, 1, 0, 1, 1, 'Pyrite Ore - Blue gems 2'),
(52185, 13007, 13007, 100, 0, 1, 0, 1, 1, 'Elementium Ore - Green gems'),
(52185, 13008, 13008, 100, 0, 1, 0, 1, 1, 'Elementium Ore - Blue gems'),
(53038, 13007, 13007, 100, 0, 1, 0, 1, 1, 'Obsidium Ore - Green gems'),
(53038, 13008, 13008,  50, 0, 1, 0, 1, 1, 'Obsidium Ore - Blue gems');


UPDATE `creature_template` SET `gossip_menu_id`=30000 WHERE `entry`=88798;
UPDATE `creature_template` SET `gossip_menu_id`=19093 WHERE `entry`=93520;
UPDATE `creature_template` SET `gossip_menu_id`=18501 WHERE `entry`=93526;
UPDATE `creature_template` SET `gossip_menu_id`=20537 WHERE `entry`=93527;
UPDATE `creature_template` SET `gossip_menu_id`=19081 WHERE `entry`=93543;
UPDATE `creature_template` SET `gossip_menu_id`=19092 WHERE `entry`=96198;
UPDATE `creature_template` SET `gossip_menu_id`=19094 WHERE `entry`=97005;
UPDATE `creature_template` SET `gossip_menu_id`=30002 WHERE `entry`=100498;
UPDATE `creature_template` SET `gossip_menu_id`=19103 WHERE `entry`=100671;
UPDATE `creature_template` SET `gossip_menu_id`=30004 WHERE `entry`=100776;
UPDATE `creature_template` SET `gossip_menu_id`=30005 WHERE `entry`=101492;

DELETE FROM `gossip_menu` WHERE `MenuId` IN (19093, 18501, 20537, 19081, 19092, 19094, 19103) OR MenuId BETWEEN 30000 AND 30100;
INSERT INTO `gossip_menu` (MenuId, TextId) VALUES
(18501, 26744),
(19081, 27898),
(19092, 27916),
(19093, 27917),
(19094, 27918),
(19103, 27939),
(20537, 27896),
(30000, 35000),
(30001, 35001),
(30002, 35002),
(30003, 35003),
(30004, 35004),
(30005, 35005),
(30006, 35006),
(30007, 35007),
(30008, 35008),
(30009, 35009),
(30010, 35010),
(30011, 35011),
(30012, 35012),
(30013, 35013),
(30014, 35014);

DELETE FROM `npc_text` WHERE `id` IN (26744,27898,27916,27917,27918,27939,27896,35000,35001,35002,35003,35004,35005,35006,35007,35008,35009,35010,35011,35012,35013,35014);
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextId0`, `BroadcastTextId1`, `BroadcastTextId2`, `BroadcastTextId3`, `BroadcastTextId4`, `BroadcastTextId5`, `BroadcastTextId6`, `BroadcastTextId7`, `VerifiedBuild`) VALUES
(26744, 1, 0, 0, 0, 0, 0, 0, 0, 95700, 0, 0, 0, 0, 0, 0, 0, 25996), 
(27896, 1, 0, 0, 0, 0, 0, 0, 0, 102498, 0, 0, 0, 0, 0, 0, 0, 25996), 
(27898, 1, 0, 0, 0, 0, 0, 0, 0, 102508, 0, 0, 0, 0, 0, 0, 0, 25996), 
(27916, 1, 0, 0, 0, 0, 0, 0, 0, 102665, 0, 0, 0, 0, 0, 0, 0, 25996), 
(27917, 1, 0, 0, 0, 0, 0, 0, 0, 102670, 0, 0, 0, 0, 0, 0, 0, 25996), 
(27918, 1, 0, 0, 0, 0, 0, 0, 0, 102673, 0, 0, 0, 0, 0, 0, 0, 25996), 
(27939, 1, 0, 0, 0, 0, 0, 0, 0, 102849, 0, 0, 0, 0, 0, 0, 0, 25996), 
(35000, 1, 0, 0, 0, 0, 0, 0, 0, 93908, 0, 0, 0, 0, 0, 0, 0, 25996), 
(35001, 1, 0, 0, 0, 0, 0, 0, 0, 111020, 0, 0, 0, 0, 0, 0, 0, 25996), 
(35002, 1, 0, 0, 0, 0, 0, 0, 0, 103170, 0, 0, 0, 0, 0, 0, 0, 25996), 
(35003, 1, 0, 0, 0, 0, 0, 0, 0, 103172, 0, 0, 0, 0, 0, 0, 0, 25996), 
(35004, 1, 0, 0, 0, 0, 0, 0, 0, 103223, 0, 0, 0, 0, 0, 0, 0, 25996), 
(35005, 1, 0, 0, 0, 0, 0, 0, 0, 103367, 0, 0, 0, 0, 0, 0, 0, 25996), 
(35006, 1, 0, 0, 0, 0, 0, 0, 0, 103369, 0, 0, 0, 0, 0, 0, 0, 25996), 
(35007, 1, 0, 0, 0, 0, 0, 0, 0, 103378, 0, 0, 0, 0, 0, 0, 0, 25996), 
(35008, 1, 0, 0, 0, 0, 0, 0, 0, 103380, 0, 0, 0, 0, 0, 0, 0, 25996), 
(35009, 1, 0, 0, 0, 0, 0, 0, 0, 103381, 0, 0, 0, 0, 0, 0, 0, 25996), 
(35010, 1, 0, 0, 0, 0, 0, 0, 0, 103382, 0, 0, 0, 0, 0, 0, 0, 25996), 
(35011, 1, 0, 0, 0, 0, 0, 0, 0, 103384, 0, 0, 0, 0, 0, 0, 0, 25996), 
(35012, 1, 0, 0, 0, 0, 0, 0, 0, 103383, 0, 0, 0, 0, 0, 0, 0, 25996), 
(35013, 1, 0, 0, 0, 0, 0, 0, 0, 103385, 0, 0, 0, 0, 0, 0, 0, 25996), 
(35014, 1, 0, 0, 0, 0, 0, 0, 0, 103379, 0, 0, 0, 0, 0, 0, 0, 25996);

INSERT IGNORE INTO `prospecting_loot_template` VALUES
(123919, 129100, 0, 15, 0, 1, 6, 1, 1, 'Gem chips'),
(123919, 130203, 0, 14, 0, 1, 6, 1, 1, 'Gem chips'),
(123919, 129099, 0, 14, 0, 1, 6, 1, 1, 'Gem chips'),
(123919, 130202, 0, 15, 0, 1, 6, 1, 1, 'Gem chips'),
(123919, 130201, 0, 14, 0, 1, 6, 1, 1, 'Gem chips'),
(123919, 130204, 0, 14, 0, 1, 6, 1, 1, 'Gem chips'),
(123919, 130200, 0, 14, 0, 1, 6, 1, 1, 'Gem chips'),
--
(123918, 129100, 0, 15, 0, 1, 6, 1, 1, 'Gem chips'),
(123918, 130203, 0, 14, 0, 1, 6, 1, 1, 'Gem chips'),
(123918, 129099, 0, 14, 0, 1, 6, 1, 1, 'Gem chips'),
(123918, 130202, 0, 15, 0, 1, 6, 1, 1, 'Gem chips'),
(123918, 130201, 0, 14, 0, 1, 6, 1, 1, 'Gem chips'),
(123918, 130204, 0, 14, 0, 1, 6, 1, 1, 'Gem chips'),
(123918, 130200, 0, 14, 0, 1, 6, 1, 1, 'Gem chips');

DELETE FROM `conditions` WHERE `SourceGroup`=3200 AND `SourceEntry`=8442 AND `ConditionTypeOrReference`=9 AND `ConditionValue1`=40542;
DELETE FROM `conditions` WHERE `SourceGroup`=3200 AND `SourceEntry`=8442 AND `ConditionTypeOrReference`=48 AND `ConditionValue1`=281067;
DELETE FROM `conditions` WHERE `SourceGroup`=3201 AND `SourceEntry`=8442 AND `ConditionTypeOrReference`=9 AND `ConditionValue1`=40543;
DELETE FROM `conditions` WHERE `SourceGroup`=3201 AND `SourceEntry`=8442 AND `ConditionTypeOrReference`=48 AND `ConditionValue1`=281068;
DELETE FROM `conditions` WHERE `SourceGroup`=3202 AND `SourceEntry`=8442 AND `ConditionTypeOrReference`=9 AND `ConditionValue1`=40544;
DELETE FROM `conditions` WHERE `SourceGroup`=3202 AND `SourceEntry`=8442 AND `ConditionTypeOrReference`=48 AND `ConditionValue1`=281069;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `NegativeCondition`, `Comment`) VALUES 
-- Orange
('26', '3200', '8442', '9', '40542', '0', 'Phase 3500 if quest 40542 taken'), 
('26', '3200', '8442', '48', '281067', '1', 'Phase 3500 if objective 281067 not complete'), 
-- Yellow
('26', '3201', '8442', '9', '40543', '0', 'Phase 3201 if quest 40543 taken'), 
('26', '3201', '8442', '48', '281068', '1', 'Phase 3201 if objective 281068 not complete'), 
-- Violet
('26', '3202', '8442', '9', '40544', '0', 'Phase 3202 if quest 40543 taken'), 
('26', '3202', '8442', '48', '281069', '1', 'Phase 3202 if objective 281069 not complete');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='26') AND (`SourceGroup`='3000') AND (`ConditionTypeOrReference`='9') AND (`ConditionValue1`='40535');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='26') AND (`SourceGroup`='3000') AND (`ConditionTypeOrReference`='48') AND (`ConditionValue1`='280975');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='26') AND (`SourceGroup`='3001') AND (`ConditionTypeOrReference`='28') AND (`ConditionValue1`='40535');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='26') AND (`SourceGroup`='3001') AND (`ConditionTypeOrReference`='48') AND (`ConditionValue1`='280989');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='26') AND (`SourceGroup`='3001') AND (`ConditionTypeOrReference`='47') AND (`ConditionValue1`='40535');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`,  `ConditionValue2`, `NegativeCondition`, `Comment`) VALUES 
('26', '3000', '7668', '9', '40535', '0', '0', 'Phase 3000 if quest 40535 taken'), 
('26', '3000', '7668', '48', '280975', '0', '1', 'Phase 3000 if objective 280975 not complete'),
('26', '3001', '7668', '47', '40535', '66', '0', 'Phase 3001 if quest 40535 rewarded');

UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI'  WHERE `entry`='246250';
DELETE FROM `smart_scripts` WHERE (`entryorguid`=246250 AND `source_type`=1);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(246250, 1, 0, 1, 19, 0, 100, 0, 40556, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 19, 93526, 20, 0, 0, 0, 0, 0, "Quest accept - Data set - Tiffany"),
(246250, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On link - Close - Invoker");

DELETE FROM `phase_area` WHERE `PhaseId`=3202 AND  `AreaId`=8442;
DELETE FROM `phase_area` WHERE `PhaseId`=3201 AND  `AreaId`=8442;
DELETE FROM `phase_area` WHERE `PhaseId`=3200 AND  `AreaId`=8442;
DELETE FROM `phase_area` WHERE `PhaseId`=169 AND  `AreaId`=8442;
DELETE FROM `phase_area` WHERE `PhaseId`=3001 AND  `AreaId`=7668;
DELETE FROM `phase_area` WHERE `PhaseId`=3000 AND  `AreaId`=7668;
DELETE FROM `phase_area` WHERE `PhaseId`=169 AND  `AreaId`=7668;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
('8442', '3202', 'Nashal the watcher  - See Purple Eyes'),
('8442', '3201', 'Nashal the watcher  - See Yellow Eyes'),
('8442', '3200', 'Nashal the watcher  - See Orange eyes'),
('8442', '169', 'Nashal the watcher - Always see unphased creature'),
('7668', '3001', 'Thash''talah - See Jabrul 2'),
('7668', '3000', 'Thash''talah - See Jabrul'),
('7668', '169', 'Thash''talah - Always see unphased creature');

DELETE FROM `creature_text` WHERE `creatureId` IN (100939, 93526, 93527, 93543, 93520, 97005, 96198, 101492, 100671, 88798, 100538, 100776, 100498, 100860, 10086000, 10086001);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
('93520', '0', '0', 'Sure thing. They''re right over there on that table. They''ve been working out great!', '12', '0', '100', '0', '0', '0', '102675', '0', 'Didithewrench'),
--
('93526', '0', '0', 'I''d recommend talking to Catriona Macrae first. She was my most recent customer.', '12', '0', '100', '0', '0', '0', '102663', '0', 'Tiffany'),
('93526', '1', '0', 'He may be trying to leave discreetly. I''d start looking down in the Underbelly.', '12', '0', '100', '0', '0', '0', '104273', '0', 'Tiffany'),
('93526', '2', '0', 'I don''t currently have any, no. But I hear they have all sorts of items in the Underbelly.', '12', '0', '100', '0', '0', '0', '103344', '0', 'Tiffany'),
('93526', '3', '0', 'I myself would never dream of going down there, but I assume you''d have no problem given your primary career as a $c.', '12', '0', '100', '0', '0', '0', '103345', '0', 'Tiffany'),
('93526', '4', '0', '$n, I thought I asked you to tell your friend to STOP sending those letters of his?!', '12', '0', '100', '0', '0', '0', '103956', '0', 'Tiffany'),
('93526', '5', '0', 'WHAT THE HELL IS THAT THING?!?!', '14', '0', '100', '0', '0', '0', '103964', '0', 'Tiffany'),
--
('93527', '0', '0', 'I''ll meet you down in Azsuna, $n. Come find me when you discover something.', '12', '0', '100', '0', '0', '0', '102916', '0', 'TimotheyJones'),
('93527', '1', '0', 'Ladies, ladies, calm down. I think this is that jewelcrafting master that $n has been working with.', '12', '0', '100', '0', '0', '0', '103965', '0', 'TimotheyJones'),
--
('93543', '0', '0', 'WHOA! That guy is huge!', '14', '0', '100', '0', '0', '0', '103957', '0', 'TimotheyJones'),
--
('96198', '0', '0', 'My jewel? I suppose so. It''s over there on the side table..', '12', '0', '100', '0', '0', '0', '102676', '0', 'CatrionaMacrae'),
--
('97005', '0', '0', 'Welcome!', '12', '0', '100', '1', '0', '0', '32807', '0', 'DebbiMoore'),
('97005', '0', '1', 'Greetings, $c.', '12', '0', '100', '1', '0', '0', '32808', '0', 'DebbiMoore'),
('97005', '0', '2', 'Greetings! Please have a look around.', '12', '0', '100', '1', '0', '0', '32809', '0', 'DebbiMoore'),
('97005', '0', '3', 'Let me know if you need help finding anything, $c.', '12', '0', '100', '1', '0', '0', '32810', '0', 'DebbiMoore'),
('97005', '0', '4', 'Welcome. May I help you find something?', '12', '0', '100', '1', '0', '0', '32811', '0', 'Debbie'),
('97005', '1', '0', 'Oh yes, they''re right there on the table. There isn''t anything wrong with them, is there?', '12', '0', '100', '1', '0', '0', '102674', '0', 'DebbiMoore'),
--
('100498', '0', '0', 'That feels SOO much better. Thank you, errr... what do I call you?', '12', '0', '100', '0', '0', '0', '103141', '0', 'Jabouf'),
--
('100671', '0', '0', 'Oh really? You think I''ll just give them up that easily? Over my dead body!', '12', '0', '100', '0', '0', '0', '102853', '0', 'HaroldWinston'),
--
('100860', '0', '0', 'Jabrul was headed towards a harpy nest when he was ambushed. Let''s head there now and search for those stones.', '12', '0', '100', '0', '0', '0', '104286', '0', 'Jabouf'),
('100860', '1', '0', 'Keep harpies off of Jabrul while he looks for good necklaces.', '12', '0', '100', '0', '0', '0', '103247', '0', 'Jabouf'),
('100860', '2', '0', 'These harpies aren''t very good at keeping their trinkets safe. Most of these are broken.', '12', '0', '100', '0', '0', '0', '103248', '0', 'Jabouf'),
('100860', '3', '0', 'Jabrul found one of the stones he was looking for. The other one must be around here somewhere.', '12', '0', '100', '0', '0', '0', '103249', '0', 'Jabouf'),
('100860', '4', '0', 'Jabrul needs your protection once more. Jabrul will try to be quick.', '12', '0', '100', '0', '0', '0', '103251', '0', 'Jabouf'),
('100860', '5', '0', 'Jabrul doesn''t understand how the harpies can treat their jewelry with such disregard.', '12', '0', '100', '0', '0', '0', '103252', '0', 'Jabouf'),
('100860', '6', '0', 'Jabrul has found the other stone. We should make our way back to the safety of the night elves.', '12', '0', '100', '0', '0', '0', '103253', '0', 'Jabouf'),
('100860', '7', '0', 'Jabrul will meet you inside the night elf house. Come find Jabrul when you''re ready.', '12', '0', '100', '0', '0', '0', '103246', '0', 'Jabouf'),
--
('101492', '0', '0', 'Excellent choice. You can find my problem in the Circle of Wills. His name is Inkrot, and I need someone to send him a lesson. I believe you know what to do, $c.', '12', '0', '100', '0', '0', '0', '104320', '0', 'Xiulan');


-- 
UPDATE `quest_objectives` SET `ObjectID`='107258' WHERE (`ID`='281064');


DELETE FROM `disables` WHERE (`sourceType`='0') AND `entry` IN (200485, 200487, 200486, 200934, 212125, 212134, 212137);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_1`, `comment`) VALUES 
('0', '200485', '32', '7355', 'Disable spell Joa in Area'),
('0', '200487', '32', '7355', 'Disable spell Joa in Area'),
('0', '200486', '32', '7355', 'Disable spell Joa in Area'),
('0', '200934', '32', '7355', 'Disable spell Joa in Area'),
-- 
('0', '212125', '32', '7596', 'Disable spell Joa in Area'),
('0', '212134', '32', '7596', 'Disable spell Joa in Area'),
('0', '212137', '32', '7596', 'Disable spell Joa in Area');



DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='15') AND (`SourceGroup`='30015') AND (`ConditionTypeOrReference`='2');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `NegativeCondition`, `Comment`) VALUES 
('15', '30015', '1', '0', '2', '132823', '6', '0', 'See gossip if has item');


DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40532') AND (`ConditionTypeOrReference`='9') AND (`ConditionValue1`='40533');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40532') AND (`ConditionTypeOrReference`='9') AND (`ConditionValue1`='40534');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40532') AND (`ConditionTypeOrReference`='28') AND (`ConditionValue1`='40533');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40532') AND (`ConditionTypeOrReference`='28') AND (`ConditionValue1`='40534');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40533') AND (`ConditionTypeOrReference`='9') AND (`ConditionValue1`='40532');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40533') AND (`ConditionTypeOrReference`='9') AND (`ConditionValue1`='40534');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40533') AND (`ConditionTypeOrReference`='28') AND (`ConditionValue1`='40532');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40533') AND (`ConditionTypeOrReference`='28') AND (`ConditionValue1`='40534');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40534') AND (`ConditionTypeOrReference`='9') AND (`ConditionValue1`='40533');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40534') AND (`ConditionTypeOrReference`='9') AND (`ConditionValue1`='40532');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40534') AND (`ConditionTypeOrReference`='28') AND (`ConditionValue1`='40533');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40534') AND (`ConditionTypeOrReference`='28') AND (`ConditionValue1`='40532');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40542') AND (`ConditionTypeOrReference`='9') AND (`ConditionValue1`='40543');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40542') AND (`ConditionTypeOrReference`='9') AND (`ConditionValue1`='40544');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40542') AND (`ConditionTypeOrReference`='28') AND (`ConditionValue1`='40543');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40542') AND (`ConditionTypeOrReference`='28') AND (`ConditionValue1`='40544');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40543') AND (`ConditionTypeOrReference`='9') AND (`ConditionValue1`='40542');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40543') AND (`ConditionTypeOrReference`='9') AND (`ConditionValue1`='40544');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40543') AND (`ConditionTypeOrReference`='28') AND (`ConditionValue1`='40542');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40543') AND (`ConditionTypeOrReference`='28') AND (`ConditionValue1`='40544');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40544') AND (`ConditionTypeOrReference`='9') AND (`ConditionValue1`='40543');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40544') AND (`ConditionTypeOrReference`='9') AND (`ConditionValue1`='40542');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40544') AND (`ConditionTypeOrReference`='28') AND (`ConditionValue1`='40543');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40544') AND (`ConditionTypeOrReference`='28') AND (`ConditionValue1`='40542');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40526') AND (`ConditionTypeOrReference`='9') AND (`ConditionValue1`='40527');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40526') AND (`ConditionTypeOrReference`='9') AND (`ConditionValue1`='40528');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40526') AND (`ConditionTypeOrReference`='28') AND (`ConditionValue1`='40527');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40526') AND (`ConditionTypeOrReference`='28') AND (`ConditionValue1`='40528');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40527') AND (`ConditionTypeOrReference`='9') AND (`ConditionValue1`='40526');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40527') AND (`ConditionTypeOrReference`='9') AND (`ConditionValue1`='40528');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40527') AND (`ConditionTypeOrReference`='28') AND (`ConditionValue1`='40526');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40527') AND (`ConditionTypeOrReference`='28') AND (`ConditionValue1`='40528');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40528') AND (`ConditionTypeOrReference`='9') AND (`ConditionValue1`='40527');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40528') AND (`ConditionTypeOrReference`='9') AND (`ConditionValue1`='40526');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40528') AND (`ConditionTypeOrReference`='28') AND (`ConditionValue1`='40527');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='19') AND (`SourceEntry`='40528') AND (`ConditionTypeOrReference`='28') AND (`ConditionValue1`='40526');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `NegativeCondition`, `Comment`) VALUES 
('19', '0', '40532', '0', '9', '40533', '0', '1', 'Quest 40532 Available if quest 40533 not takent'),
('19', '0', '40532', '0', '28', '40533', '0', '1', 'Quest 40532 Available if quest 40533 rewarded'),
('19', '0', '40532', '0', '9', '40534', '0', '1', 'Quest 40532 Available if quest 40534 not takent'),
('19', '0', '40532', '0', '28', '40534', '0', '1', 'Quest 40532 Available if quest 40534 rewarded'),
--
('19', '0', '40533', '0', '9', '40532', '0', '1', 'Quest 40533 Available if quest 40532 not takent'),
('19', '0', '40533', '0', '28', '40532', '0', '1', 'Quest 40533 Available if quest 40532 rewarded'),
('19', '0', '40533', '0', '9', '40534', '0', '1', 'Quest 40533 Available if quest 40534 not takent'),
('19', '0', '40533', '0', '28', '40534', '0', '1', 'Quest 40533 Available if quest 40534 rewarded'),
--
('19', '0', '40534', '0', '9', '40532', '0', '1', 'Quest 40534 Available if quest 40532 not takent'),
('19', '0', '40534', '0', '28', '40532', '0', '1', 'Quest 40534 Available if quest 40532 rewarded'),
('19', '0', '40534', '0', '9', '40533', '0', '1', 'Quest 40534 Available if quest 40533 not takent'),
('19', '0', '40534', '0', '28', '40533', '0', '1', 'Quest 40534 Available if quest 40533 rewarded'),
--
--
('19', '0', '40526', '0', '9', '40527', '0', '1', 'Quest 40526 Available if quest 40527 not takent'),
('19', '0', '40526', '0', '28', '40527', '0', '1', 'Quest 40526 Available if quest 40527 rewarded'),
('19', '0', '40526', '0', '9', '40528', '0', '1', 'Quest 40526 Available if quest 40528 not takent'),
('19', '0', '40526', '0', '28', '40528', '0', '1', 'Quest 40526 Available if quest 40528 rewarded'),
--
('19', '0', '40527', '0', '9', '40526', '0', '1', 'Quest 40527 Available if quest 40526 not takent'),
('19', '0', '40527', '0', '28', '40526', '0', '1', 'Quest 40527 Available if quest 40526 rewarded'),
('19', '0', '40527', '0', '9', '40528', '0', '1', 'Quest 40527 Available if quest 40528 not takent'),
('19', '0', '40527', '0', '28', '40528', '0', '1', 'Quest 40527 Available if quest 40528 rewarded'),
--
('19', '0', '40528', '0', '9', '40526', '0', '1', 'Quest 40528 Available if quest 40526 not takent'),
('19', '0', '40528', '0', '28', '40526', '0', '1', 'Quest 40528 Available if quest 40526 rewarded'),
('19', '0', '40528', '0', '9', '40527', '0', '1', 'Quest 40528 Available if quest 40527 not takent'),
('19', '0', '40528', '0', '28', '40527', '0', '1', 'Quest 40528 Available if quest 40527 rewarded'),
--
--
('19', '0', '40542', '0', '9', '40543', '0', '1', 'Quest 40542 Available if quest 40543 not takent'),
('19', '0', '40542', '0', '28', '40543', '0', '1', 'Quest 40542 Available if quest 40543 rewarded'),
('19', '0', '40542', '0', '9', '40544', '0', '1', 'Quest 40542 Available if quest 40544 not takent'),
('19', '0', '40542', '0', '28', '40544', '0', '1', 'Quest 40542 Available if quest 40544 rewarded'),
--
('19', '0', '40543', '0', '9', '40542', '0', '1', 'Quest 40543 Available if quest 40542 not takent'),
('19', '0', '40543', '0', '28', '40542', '0', '1', 'Quest 40543 Available if quest 40542 rewarded'),
('19', '0', '40543', '0', '9', '40544', '0', '1', 'Quest 40543 Available if quest 40544 not takent'),
('19', '0', '40543', '0', '28', '40544', '0', '1', 'Quest 40543 Available if quest 40544 rewarded'),
--
('19', '0', '40544', '0', '9', '40542', '0', '1', 'Quest 40544 Available if quest 40542 not takent'),
('19', '0', '40544', '0', '28', '40542', '0', '1', 'Quest 40544 Available if quest 40542 rewarded'),
('19', '0', '40544', '0', '9', '40543', '0', '1', 'Quest 40544 Available if quest 40543 not takent'),
('19', '0', '40544', '0', '28', '40543', '0', '1', 'Quest 40544 Available if quest 40543 rewarded');



-- Dalaran Crate Phase  245967
DELETE FROM `phase_area` WHERE `PhaseId` IN (5215, 3501, 169, 5210) AND  `AreaId`=7596;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
('7596', '169', 'Dalaran - See Unphased creature'),
('7596', '5215', 'Dalaran - See Jabrul Crate'),
('7596', '5210', 'Dalaran - See Jabrul Crate'),
('7596', '3501', 'Dalaran - See Jabrul Vendor');

DELETE FROM `conditions` WHERE `SourceGroup`=5215 AND `SourceEntry`=7596 AND `ConditionTypeOrReference`=9 AND `ConditionValue1`=40547;
DELETE FROM `conditions` WHERE `SourceGroup`=5215 AND `SourceEntry`=7596 AND `ConditionTypeOrReference`=48 AND `ConditionValue1`=101553;
DELETE FROM `conditions` WHERE `SourceGroup`=3501 AND `SourceEntry`=7596 AND `ConditionTypeOrReference`=48 AND `ConditionValue1`=101553;
DELETE FROM `conditions` WHERE `SourceGroup`=5215 AND `SourceEntry`=7596 AND `ConditionTypeOrReference`=48 AND `ConditionValue1`=281167;
DELETE FROM `conditions` WHERE `SourceGroup`=3501 AND `SourceEntry`=7596 AND `ConditionTypeOrReference`=48 AND `ConditionValue1`=281167;
DELETE FROM `conditions` WHERE `SourceGroup`=3501 AND `SourceEntry`=7596 AND `ConditionTypeOrReference`=47 AND `ConditionValue1`=40547;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `NegativeCondition`, `Comment`) VALUES 
('26', '5215', '7596', '9', '40547', '0', 'Phase 5215 if quest 40547 taken'), 
('26', '5215', '7596', '48', '281167', '1', 'Phase 5215 if objective 281167 not complete');



 
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES 
('26', '3501', '7596', '47', '40547', '66', 'Phase 3500 if quest 40547');

UPDATE `gameobject` SET `PhaseGroup`=893 WHERE `id`=245967;
UPDATE `creature` SET `PhaseId`=3501 WHERE `id`=100500;


-- Azsuna Crate Phase
DELETE FROM `phase_area` WHERE  `PhaseId` IN (3503, 3502, 169) AND  `AreaId`=7599;
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
('7599', '169', 'Azsuna - See Unphased creature'),
('7599', '3502', 'Azsuna - See Jabrul'),
('7599', '3503', 'Azsuna - See Jabrul Crate');

DELETE FROM `conditions` WHERE `SourceGroup`=3502 AND `SourceEntry`=7599 AND `ConditionTypeOrReference`=48 AND `ConditionValue1`=281164;
DELETE FROM `conditions` WHERE `SourceGroup`=3503 AND `SourceEntry`=7599 AND `ConditionTypeOrReference`=48 AND `ConditionValue1`=281078;
DELETE FROM `conditions` WHERE `SourceGroup`=3503 AND `SourceEntry`=7599 AND `ConditionTypeOrReference`=48 AND `ConditionValue1`=281164;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `NegativeCondition`, `Comment`) VALUES 
('26', '3502', '7599', '48', '281164', '1', 'Phase 3500 if objective 281164 not complete'), 
--
('26', '3503', '7599', '48', '281078', '1', 'Phase 3503 if objective 281078 not complete'),
('26', '3503', '7599', '48', '281164', '0', 'Phase 3503 if objective 281164 complete');


UPDATE `gameobject` SET `PhaseId`=3200 WHERE `id`=245944;
UPDATE `gameobject` SET `PhaseId`=3201 WHERE `id`=245945;
UPDATE `gameobject` SET `PhaseId`=3202 WHERE `id`=245946;

UPDATE `gameobject` SET `PhaseId`=3503 WHERE `id`=246238;


UPDATE `creature` SET `PhaseId`=3502 WHERE `id`=100521;

UPDATE `creature_template` SET `minlevel`=101, `maxlevel`=101, `faction`=35, `unit_flags`=33536 WHERE `entry` =88798;
UPDATE `creature_template` SET `minlevel`=105, `maxlevel`=105, `faction`=2007, `unit_flags`=32768 WHERE `entry` =93520;
UPDATE `creature_template` SET `minlevel`=105, `maxlevel`=105, `faction`=2007, `unit_flags`=32768 WHERE `entry` =93526;
UPDATE `creature_template` SET `minlevel`=105, `maxlevel`=105, `faction`=2007, `unit_flags`=32768 WHERE `entry` =93527;
UPDATE `creature_template` SET `minlevel`=105, `maxlevel`=105, `faction`=35, `unit_flags`=32768 WHERE `entry` =93543;
UPDATE `creature_template` SET `minlevel`=105, `maxlevel`=105, `faction`=2007, `unit_flags`=0 WHERE `entry` =96198;
UPDATE `creature_template` SET `minlevel`=105, `maxlevel`=105, `faction`=2007, `unit_flags`=512 WHERE `entry` =97005;
UPDATE `creature_template` SET `minlevel`=98, `maxlevel`=110, `faction`=2141, `unit_flags`=33536 WHERE `entry` =100498;
UPDATE `creature_template` SET `minlevel`=105, `maxlevel`=110, `faction`=2007, `unit_flags`=0 WHERE `entry` =100538;
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `faction`=35, `unit_flags`=32768 WHERE `entry` =100671;
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `faction`=2141, `unit_flags`=0, `npcflag`=3 WHERE `entry` =100776;
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `faction`=35, `unit_flags`=0 WHERE `entry` =100860;
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `faction`=2007, `unit_flags`=0 WHERE `entry` =100939;
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `faction`=35, `unit_flags`=32768 WHERE `entry` =101492;

DELETE FROM `page_text` WHERE `id` IN(5261, 5262, 5263);
INSERT INTO `page_text` (`ID`, `Text`, `VerifiedBuild`) VALUES 
('5261', 'Upon close inspection, the jewel appears to be real. This must not be the commission in question.\n\nThe next person on the list is Didi the Wrench at the engineering shop.', '25996'),
('5262', 'The gem chips lying on the table are definitely real. They bear the same imperfections you''ve seen before.\n\nThe last person on the list is Debbi Moore at Curiosities & Moore.', '25996'),
('5263', 'As you expect each jewel in the bag, your eyes grow wider and wider with surprise.\n\nALL of these gems are fake! You must take this bag back to Tiffany as quickly as possible.', '25996');

UPDATE `gameobject_template` SET `Data7`=5261 WHERE `entry`=245690;
UPDATE `gameobject_template` SET `Data7`=5261 WHERE `entry`=245691;
UPDATE `gameobject_template` SET `Data7`=5261 WHERE `entry`=245692;

-- Condition See quest 
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='15') AND (`SourceGroup`='19081') AND (`ConditionTypeOrReference`='48');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='15') AND (`SourceGroup`='19081') AND (`ConditionTypeOrReference`='9');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='15') AND (`SourceGroup`='30000') AND (`ConditionTypeOrReference`='48');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='15') AND (`SourceGroup`='30000') AND (`ConditionTypeOrReference`='9');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='15') AND (`SourceGroup`='18501') AND (`ConditionTypeOrReference`='48');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='15') AND (`SourceGroup`='18501') AND (`ConditionTypeOrReference`='9');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='15') AND (`SourceGroup`='20537') AND (`ConditionTypeOrReference`='48');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='15') AND (`SourceGroup`='20537') AND (`ConditionTypeOrReference`='9');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='15') AND (`SourceGroup`='19092') AND (`ConditionTypeOrReference`='48');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='15') AND (`SourceGroup`='19092') AND (`ConditionTypeOrReference`='9');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='15') AND (`SourceGroup`='19093') AND (`ConditionTypeOrReference`='48');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='15') AND (`SourceGroup`='19093') AND (`ConditionTypeOrReference`='9');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='15') AND (`SourceGroup`='19094') AND (`ConditionTypeOrReference`='48');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='15') AND (`SourceGroup`='19094') AND (`ConditionTypeOrReference`='9');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='15') AND (`SourceGroup`='19103') AND (`ConditionTypeOrReference`='48');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='15') AND (`SourceGroup`='19103') AND (`ConditionTypeOrReference`='9');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='15') AND (`SourceGroup`='30002') AND (`ConditionTypeOrReference`='48');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='15') AND (`SourceGroup`='30002') AND (`ConditionTypeOrReference`='9');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='15') AND (`SourceGroup`='30004') AND (`ConditionTypeOrReference`='48');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='15') AND (`SourceGroup`='30004') AND (`ConditionTypeOrReference`='9');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='15') AND (`SourceGroup`='30008') AND (`ConditionTypeOrReference`='48');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`='15') AND (`SourceGroup`='30008') AND (`ConditionTypeOrReference`='9');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `NegativeCondition`, `Comment`) VALUES 
('15', '19081', '1', '0', '48', '280875', '0', '1', 'See gossip if objective is not complete'),
('15', '19081', '1', '0', '9', '40523', '0', '0', 'See gossip if have quest taken'),
--
('15', '30000', '1', '0', '48', '283942', '0', '1', 'See gossip if objective is not complete'),
('15', '30000', '1', '0', '9', '40524', '0', '0', 'See gossip if have quest taken'),
--
('15', '18501', '1', '0', '48', '281013', '0', '1', 'See gossip if objective is not complete'),
('15', '18501', '1', '0', '9', '40539', '0', '0', 'See gossip if have quest taken'),
--
('15', '20537', '1', '0', '48', '280874', '0', '1', 'See gossip if objective is not complete'),
('15', '20537', '1', '0', '9', '40523', '0', '0', 'See gossip if have quest taken'),
--
('15', '19092', '1', '0', '48', '280898', '0', '1', 'See gossip if objective is not complete'),
('15', '19092', '1', '0', '9', '40530', '0', '0', 'See gossip if have quest taken'),
--
('15', '19093', '1', '0', '48', '280900', '0', '1', 'See gossip if objective is not complete'),
('15', '19093', '1', '0', '9', '40530', '0', '0', 'See gossip if have quest taken'),
--
('15', '19094', '2', '0', '48', '280902', '0', '1', 'See gossip if objective is not complete'),
('15', '19094', '2', '0', '9', '40530', '0', '0', 'See gossip if have quest taken'),
--
('15', '19103', '2', '0', '48', '280907', '0', '1', 'See gossip if objective is not complete'),
('15', '19103', '2', '0', '9', '40531', '0', '0', 'See gossip if have quest taken'),
--
('15', '30002', '1', '0', '48', '280974', '0', '1', 'See gossip if objective is not complete'),
('15', '30002', '2', '0', '48', '280975', '0', '1', 'See gossip if objective is not complete'),
('15', '30002', '2', '0', '48', '280974', '0', '0', 'See gossip if objective is complete'),
('15', '30002', '1', '0', '9', '40535', '0', '0', 'See gossip if have quest taken'),
('15', '30002', '2', '0', '9', '40535', '0', '0', 'See gossip if have quest taken'),
--
('15', '30004', '1', '0', '48', '280989', '0', '1', 'See gossip if objective is not complete'),
('15', '30004', '1', '0', '9', '40536', '0', '0', 'See gossip if have quest taken'),
--
('15', '30008', '1', '0', '48', '281015', '0', '1', 'See gossip if objective is not complete'),
('15', '30008', '1', '0', '9', '40539', '0', '0', 'See gossip if have quest taken');




UPDATE `creature_loot_template` SET `Chance`='100' WHERE (`Entry`='100671') AND (`Item`='132259');
UPDATE `creature` SET `spawntimesecs`='100' WHERE (`guid`='132259');


-- Quest Socket to me
UPDATE `creature_loot_template` SET `Chance`='100' WHERE (`Entry`='101624') AND (`Item`='132838');
UPDATE `creature_loot_template` SET `Chance`='100' WHERE (`Entry`='108950') AND (`Item`='132839');
UPDATE `creature_loot_template` SET `Chance`='100' WHERE (`Entry`='101625') AND (`Item`='132840');

-- The socket
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `faction`=16 WHERE `entry`=108950;
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `faction`=14 WHERE `entry`=101625;
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `faction`=14 WHERE `entry`=101624;
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `faction`=14 WHERE `entry`=101630;

-- Gob
DELETE FROM `gameobject_loot_template` WHERE (`Entry`='246267') AND (`Item`='132843');
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `QuestRequired`) VALUES 
('246267', '132843', '1');

-- 101629
UPDATE `creature_template` SET `npcflag`=16777216, `minlevel`=5, `maxlevel`=7, `AIName`='SmartAI' WHERE `entry`=101629;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=101629;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES 
('101629', '200457', '3');

DELETE FROM `conditions` WHERE `SourceGroup`=101629 AND `SourceEntry`=200457 AND `ConditionTypeOrReference`=48 AND `ConditionValue1`=281090;
DELETE FROM `conditions` WHERE `SourceGroup`=101629 AND `SourceEntry`=200457 AND `ConditionTypeOrReference`=9 AND `ConditionValue1`=40558;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `NegativeCondition`, `Comment`) VALUES 
('18', '101629', '200457', '48', '281090', '1', 'Npc spell click only if has objective incomplete'),
('18', '101629', '200457', '9', '40558', '0', 'Npc spell click only if has quest taken');

UPDATE `gameobject_template_addon` SET `flags`='20' WHERE (`entry`='245623');

UPDATE `creature_loot_template` SET `Chance`='100' WHERE (`Entry`='88099') AND (`Item`='132370');
UPDATE `gameobject_template_addon` SET `flags`='32' WHERE (`entry`='246127');
UPDATE `gameobject_template_addon` SET `flags`='32' WHERE (`entry`='246126');
UPDATE `gameobject_template_addon` SET `flags`='32' WHERE (`entry`='245791');
UPDATE `gameobject_template_addon` SET `flags`='32' WHERE (`entry`='245843');

UPDATE `creature_template` SET `InhabitType`=1 WHERE `entry`=107258;
UPDATE `gameobject_template` SET `Data1`='246127', `Data8`='40525' WHERE (`entry`='246127');
UPDATE `gameobject_template` SET `Data1`='246126', `Data8`='40525' WHERE (`entry`='246126');
UPDATE `gameobject_template` SET `Data1`='245791', `Data8`='40525' WHERE (`entry`='245791');

UPDATE `gameobject_template` SET `Data1`='245843', `Data8`='40535' WHERE (`entry`='245843');




-- Jabrul To Dalaran With Love 
UPDATE `creature_template` SET `AIName`='SmartAI', `minlevel`=110, `maxlevel`=110, `npcflag`=3, `gossip_menu_id`=30015 WHERE `entry`='100521';
DELETE FROM `smart_scripts` WHERE (`entryorguid`=100521 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(100521, 0, 0, 1, 62, 0, 100, 0, 30015, 1, 0, 0, 33, 101157, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Gossip Select - Give KC - Player"),
(100521, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 85, 155164, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On link - Player cast - Player"),
(100521, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On link - Close gossip - Invoker");



DELETE FROM `npc_text` WHERE `id` IN (35015);
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextId0`, `BroadcastTextId1`, `BroadcastTextId2`, `BroadcastTextId3`, `BroadcastTextId4`, `BroadcastTextId5`, `BroadcastTextId6`, `BroadcastTextId7`, `VerifiedBuild`) VALUES
(35015, 1, 0, 0, 0, 0, 0, 0, 0, 103923, 0, 0, 0, 0, 0, 0, 0, 25996);

DELETE FROM `gossip_menu_option` WHERE `MenuId` IN (30015);
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES
('30015', '1', '0', 'I''m going to crate you up now, Jabrul.', '103924', '1', '1', '0');

-- Crate at Azsuna
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI', `Data9`=2, `Data13`=1  WHERE `entry`='246238';
DELETE FROM `smart_scripts` WHERE (`entryorguid`=246238 AND `source_type`=1);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(246238, 1, 0, 1, 62, 0, 100, 0, 30016, 1, 0, 0, 33, 101158, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Gossip Select - Give KC - Player"),
(246238, 1, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 85, 155164, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On link - Player cast - Player"),
(246238, 1, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On link - Close gossip - Invoker");

DELETE FROM `gossip_menu` WHERE `MenuId` IN (30016);
INSERT INTO `gossip_menu` (MenuId, TextId) VALUES
(30016, 35016);

DELETE FROM `npc_text` WHERE `id` IN (35016);
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextId0`, `BroadcastTextId1`, `BroadcastTextId2`, `BroadcastTextId3`, `BroadcastTextId4`, `BroadcastTextId5`, `BroadcastTextId6`, `BroadcastTextId7`, `VerifiedBuild`) VALUES
(35016, 1, 0, 0, 0, 0, 0, 0, 0, 103930, 0, 0, 0, 0, 0, 0, 0, 25996);

DELETE FROM `gossip_menu_option` WHERE `MenuId` IN (30016);
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES
('30016', '1', '0', 'Mail Jabrul.', '103931', '1', '1', '0');

-- Crate at Dalaran 
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI', `Data9`=2, `Data13`=1  WHERE `entry`='245967';
DELETE FROM `smart_scripts` WHERE (`entryorguid`=245967 AND `source_type`=1);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(245967, 1, 0, 1, 62, 0, 100, 0, 30017, 1, 0, 0, 33, 101553, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Gossip Select - Give KC - Player"),
(245967, 1, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 85, 155164, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On link - Player cast - Player"),
(245967, 1, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 12, 101119, 1, 120000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On link - Summon - Self"),
(245967, 1, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 33, 101562, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On link - Give KC - Invoker"),
(245967, 1, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On link - Close gossip - Invoker");

DELETE FROM `gossip_menu` WHERE `MenuId` IN (30017);
INSERT INTO `gossip_menu` (MenuId, TextId) VALUES
(30017, 35017);

DELETE FROM `npc_text` WHERE `id` IN (35017);
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextId0`, `BroadcastTextId1`, `BroadcastTextId2`, `BroadcastTextId3`, `BroadcastTextId4`, `BroadcastTextId5`, `BroadcastTextId6`, `BroadcastTextId7`, `VerifiedBuild`) VALUES
(35017, 1, 0, 0, 0, 0, 0, 0, 0, 103934, 0, 0, 0, 0, 0, 0, 0, 25996);

DELETE FROM `gossip_menu_option` WHERE `MenuId` IN (30017);
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES
('30017', '1', '0', 'Break open the crate', '103935', '1', '1', '0');

-- Jabrul mini event 101119
UPDATE `creature_template` SET `AIName`='SmartAI', `minlevel`=110, `maxlevel`=110, `npcflag`=0, `InhabitType`=1 WHERE `entry`='101119';
DELETE FROM `smart_scripts` WHERE (`entryorguid`=101119 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(101119, 0, 0, 1, 1, 0, 100, 1, 1000, 1000, 1000, 1000, 53, 0, 101119, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Just summon - Begin WP - Self"),
(101119, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 44, 169, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Oon link - Set pahse - self"),
(101119, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On link - Say - Self"),
(101119, 0, 3, 0, 40, 0, 100, 0, 1, 101119, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "WP Reached - Say - Self"),
(101119, 0, 4, 0, 40, 0, 100, 0, 5, 101119, 0, 0, 54, 6000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "WP Reached - WP Pause - self"),
(101119, 0, 5, 6, 40, 0, 100, 0, 5, 101119, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "WP Reached - Say - self"),
(101119, 0, 6, 7, 61, 0, 100, 0, 0, 0, 0, 0, 45, 0, 3, 0, 0, 0, 0, 11, 0, 11, 0, 0, 0, 0, 0, "WP Reached - Say - self"),
(101119, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On link - Despawn - self");

DELETE FROM `creature_text` WHERE `creatureId` IN (101119);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
('101119', '0', '0', 'OH! That feels SO much better.', '12', '0', '100', '0', '0', '0', '103936', '0', 'Jabrul'),
('101119', '1', '0', 'So this is Dalaran? Jabrul is impressed. This way to the jewelcrafting masters?', '12', '0', '100', '0', '0', '0', '103938', '0', 'Jabrul'),
('101119', '2', '0', 'Hello!', '12', '0', '100', '0', '0', '0', '103958', '0', 'Jabrul');

DELETE FROM `waypoints` WHERE `entry`='101119';
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(101119, 1, -762.817749, 4548.757813, 727.945251, 'Jabrul Event Intro'),
(101119, 2, -765.340942, 4552.694824, 728.891357, 'Jabrul Event Intro'),
(101119, 3, -768.703491, 4554.541016, 729.573486, 'Jabrul Event Intro'),
(101119, 4, -776.093506, 4554.623047, 730.713562, 'Jabrul Event Intro'),
(101119, 5, -775.869446, 4551.651367, 730.630920, 'Jabrul Event Intro');
 




-- Jabrul Dalaran
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `npcflag`=130 WHERE `entry`='100500';


-- QUEST SYSTEM (Should be PLAYER_CHOICE but DB can't handle it)
INSERT IGNORE INTO `creature_queststarter` (`id`, `quest`) VALUES 
('93526', '40532'),
('93526', '40533'),
('93526', '40534');

INSERT IGNORE INTO `creature_queststarter` (`id`, `quest`) VALUES 
('100538', '40526'),
('100538', '40527'),
('100538', '40528');

INSERT IGNORE INTO `creature_queststarter` (`id`, `quest`) VALUES
('100499', '40542'),
('100499', '40543'),
('100499', '40544');


UPDATE `creature_template` SET `AIName`='SmartAI', `npcflag`=1 WHERE `entry`='100884';
DELETE FROM `smart_scripts` WHERE (`entryorguid`=100884 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(100884, 0, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 33, 100792, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Gossip Hello - Give KC - Iinvoker"),
(100884, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On link say"),
(100884, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On lnk - Close gossip - Invoker"),
(100884, 0, 3, 0, 52, 0, 100, 0, 1, 100884, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Text over - Say - Self"),
(100884, 0, 4, 0, 52, 0, 100, 0, 2, 100884, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Text over - Say - Self");

DELETE FROM `creature_text` WHERE `creatureId` IN (100884);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
('100884', '1', '0', 'Oh, you''re looking for Jabrul.', '12', '0', '100', '0', '0', '0', '103167', '0', 'Jabrul'),
('100884', '2', '0', 'He passed through here a few days ago. Went towards the Wretched Hollow to study the harpies.', '12', '0', '100', '0', '0', '0', '103168', '0', 'Jabrul'),
('100884', '3', '0', 'Haven''t seen him since though. Hopefully he didn''t succumb to the same affliction as the harpies.', '12', '0', '100', '0', '0', '0', '103169', '0', 'Jabrul');




DELETE FROM `conditions` WHERE `SourceGroup`=5210 AND `SourceEntry`=7596 AND `ConditionTypeOrReference`=47 AND `ConditionValue1`=40547;
DELETE FROM `conditions` WHERE `SourceGroup`=5210 AND `SourceEntry`=7596 AND `ConditionTypeOrReference`=9 AND `ConditionValue1`=40547;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `NegativeCondition`, `Comment`) VALUES 
('26', '5210', '7596', '47', '40547', '64', '1', 'Phase 5210 if quest 40547'),
('26', '5210', '7596', '9', '40547', '0', '0', 'Phase 5210 if quest 40547');

DELETE FROM `gossip_menu_option` WHERE `MenuId` IN (19093, 18501, 20537, 19081, 19092, 19094, 19103) OR `MenuId` BETWEEN 30000 AND 30100;
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES
('18501', '0', '1', 'Something very expensive, please.', '95701', '3', '128', '0'),
('18501', '1', '0', 'I''m looking for some diamonds, Tiffany, do you have any?', '103334', '1', '1', '0'),
--
('19081', '0', '1', 'I wish to make a purchase.', '6465', '3', '128', '0'),
('19081', '1', '0', 'I''d like to introduce myself.', '102479', '1', '1', '0'),
--
('19092', '1', '0', 'I''m here to inspect the jewel Tiffany Cartier crafted for you.', '102667', '1', '1', '0'),
--
('19093', '1', '3', 'Train me in Engineering.', '47119', '5', '16', '0'),
('19093', '2', '0', 'I''m here to inspect the gem chips Tiffany Cartier gave you.', '102671', '1', '1', '0'),
--
('19094', '1', '0', 'I want to browse your goods.', '3370', '3', '128', '0'),
('19094', '2', '0', 'I''m here to inspect the jewels Tiffany Cartier gave you.', '102672', '1', '1', '0'),
--
('19103', '2', '0', 'I''m here to reclaim the jewels you stole.', '102671', '1', '1', '0'),
--
('20537', '0', '3', 'Train me.', '3266', '5', '16', '0'),
('20537', '1', '0', 'I''d like to introduce myself.', '102479', '1', '1', '0'),
--
('30000', '1', '0', 'Do you know anything about the Band of Farondis ?', '111022', '1', '1', '0'),
-- 
('30002', '1', '0', 'What happened to you?', '103171', '1', '1', '0'),
('30002', '2', '0', 'Here''s your bag, Jabrul.', '103173', '1', '1', '0'),
-- 
('30004', '1', '0', 'Alright, Jabrul, I''m ready to go.', '103224', '1', '1', '0'),
--
('30005', '1', '0', 'I''m looking for some diamonds. Do you have any?', '103368', '1', '1', '0'),
--
('30006', '1', '0', '(Fair) 250 gold is much too high for just one diamond. How about 25?', '103370', '1', '1', '0'),
('30006', '2', '0', '(Aggressive) Look, there''s no way I''m paying 200. How about 35?', '103373', '1', '1', '0'),
('30006', '3', '0', '(Aggressive) 250 gold is outrageous for one diamond! I''ll give you 10.', '103371', '1', '1', '0'),
('30006', '4', '0', 'Pay the 250 gold.', '103386', '1', '1', '0'),
--
('30007', '1', '0', '(Fair) I still can''t go as high as 200. How about 75?', '103372', '1', '1', '0'),
--
('30008', '1', '0', 'Pay the 175 gold.', '103387', '1', '1', '0'),
('30008', '2', '0', 'I''ll look into doing that favor for you.', '104312', '1', '1', '0'),
--
('30009', '1', '0', '(Fair) We''re getting closer with 125, but not close enough. How about 40?', '103374', '1', '1', '0'),
('30009', '2', '0', 'Pay the 200 gold.', '103389', '1', '1', '0'),
--
('30010', '1', '0', '(Fair) I hear you at 100, but I''m afraid I can''t offer any higher than 50. Final offer.', '103376', '1', '1', '0'),
('30010', '2', '0', '(Aggressive) 125 is still out of the question. I think 35 is still a fair price.', '103375', '1', '1', '0'),
('30010', '3', '0', 'Pay 125 gold.', '103390', '1', '1', '0'),
--
('30011', '1', '0', '(Aggressive) You''re still too high. 40 is the fairest price I''m going to offer.', '103377', '1', '1', '0'),
('30011', '2', '0', 'I''ll look into doing that favor for you.', '104312', '1', '1', '0'),
('30011', '3', '0', 'Pay the 50 gold.', '103392', '1', '1', '0'),
--
('30012', '1', '0', 'Pay the 120 gold.', '103388', '1', '1', '0'),
('30012', '2', '0', 'I''ll look into doing that favor for you.', '104312', '1', '1', '0'),
--
('30013', '1', '0', 'Pay the 100 gold.', '103391', '1', '1', '0'),
('30013', '2', '0', 'I''ll look into doing that favor for you.', '104312', '1', '1', '0'),
--
('30014', '1', '0', 'Pay the 250 gold.', '103386', '1', '1', '0'),
('30014', '2', '0', 'I''ll look into doing that favor for you.', '104312', '1', '1', '0');







UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`='100851';
DELETE FROM `smart_scripts` WHERE (`entryorguid`=100851 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(100851, 0, 0, 0, 10, 0, 100, 0, 1, 30, 1000, 1000, 45, 0, 1, 0, 0, 0, 0, 11, 100860, 30, 0, 0, 0, 0, 0, "");

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`='100853';
DELETE FROM `smart_scripts` WHERE (`entryorguid`=100853 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(100853, 0, 0, 0, 10, 0, 100, 0, 1, 30, 1000, 1000, 45, 0, 2, 0, 0, 0, 0, 11, 100860, 30, 0, 0, 0, 0, 0, "");

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`='100854';
DELETE FROM `smart_scripts` WHERE (`entryorguid`=100854 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(100854, 0, 0, 0, 10, 0, 100, 0, 1, 30, 1000, 1000, 45, 0, 3, 0, 0, 0, 0, 11, 100860, 30, 0, 0, 0, 0, 0, "");

UPDATE `creature_template` SET `InhabitType`='1' WHERE (`entry`='100860');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (100939, 93526, 93527, 93543, 93520, 97005, 96198, 101492, 100671, 88798, 100538, 100776, 100498, 100860);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (100939, 93526, 93527, 93543, 93520, 97005, 96198, 101492, 100671, 88798, 100538, 100776, 100498, 100860, 10086000, 10086001);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
('88798', '0', '0', '0', '62', '0', '100', '0', '30000', '1', '0', '0', '', '33', '106876', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Gossipselect - GiveKC - Invoker'),
--
('93520', '0', '0', '1', '62', '0', '100', '0', '19093', '2', '0', '0', '', '33', '100580', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Gossipselect - GiveKC - Invoker'),
('93520', '0', '1', '2', '61', '0', '100', '0', '0', '0', '0', '0', '', '1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Onlink - Say - Invoker'),
('93520', '0', '2', '0', '61', '0', '100', '0', '0', '0', '0', '0', '', '72', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Onlink - CloseGossip - Invoker'),
-- 
('93526', '0', '0', '0', '19', '0', '100', '0', '40530', '0', '0', '0', '', '1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Questaccept - Say - Invoker'),
('93526', '0', '1', '0', '19', '0', '100', '0', '40531', '0', '0', '0', '', '1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Questaccept - Say - Invoker'),
('93526', '0', '2', '0', '19', '0', '100', '0', '40532', '0', '0', '0', '', '86', '200495', '0', '7', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Questaccept - InvokerCast - Invoker'),
('93526', '0', '3', '0', '19', '0', '100', '0', '40533', '0', '0', '0', '', '86', '200496', '0', '7', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Questaccept - InvokerCast - Invoker'),
('93526', '0', '4', '0', '19', '0', '100', '0', '40534', '0', '0', '0', '', '86', '200935', '0', '7', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Questaccept - InvokerCast - Invoker'),
('93526', '0', '5', '0', '19', '0', '100', '0', '40538', '0', '0', '0', '', '86', '200497', '0', '7', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Questaccept - InvokerCast - Invoker'),
('93526', '0', '6', '7', '62', '0', '100', '0', '18501', '1', '0', '0', '', '33', '100968', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Gossipselect - GiveKC - Invoker'),
('93526', '0', '7', '0', '61', '0', '100', '0', '0', '0', '0', '0', '', '1', '2', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Onlink - say - Invoker'),
('93526', '0', '8', '0', '52', '0', '100', '0', '2', '93526', '0', '0', '', '1', '3', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Textover - say - Invoker'),
('93526', '0', '9', '0', '38', '0', '100', '0', '0', '1', '0', '0', '', '1', '4', '0', '0', '0', '0', '0', '21', '20', '0', '0', '0', '0', '0', '0', 'Data receive - Say - Closest player'),
('93526', '0', '10', '0', '38', '0', '100', '0', '0', '3', '0', '0', '', '1', '5', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Textover - say - Self'),
--
('93527', '0', '0', '0', '62', '0', '100', '0', '20537', '1', '0', '0', '', '33', '100535', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Gossipselect - GiveKC - Invoker'),
('93527', '0', '1', '0', '19', '0', '100', '0', '40524', '0', '0', '0', '', '1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Questaccept - Say - Invoker'),
('93527', '0', '2', '0', '38', '0', '100', '0', '0', '3', '0', '0', '', '1', '1', '0', '0', '0', '0', '0', '21', '20', '0', '0', '0', '0', '0', '0', 'Textover - say - Closest player'),
--
('93543', '0', '0', '0', '62', '0', '100', '0', '19081', '1', '0', '0', '', '33', '100536', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Gossipselect - GiveKC - Invoker'),
('93543', '0', '1', '0', '38', '0', '100', '0', '0', '3', '0', '0', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Textover - say - Self'),
--
('96198', '0', '0', '1', '62', '0', '100', '0', '19092', '1', '0', '0', '', '33', '100579', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Gossipselect - GiveKC - Invoker'),
('96198', '0', '1', '2', '61', '0', '100', '0', '0', '0', '0', '0', '', '1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Onlink - Say - Invoker'),
('96198', '0', '2', '0', '61', '0', '100', '0', '0', '0', '0', '0', '', '72', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Onlink - CloseGossip - Invoker'),
--
('97005', '0', '0', '0', '64', '0', '15', '0', '0', '0', '0', '0', '', '1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'GossipHello - Say - Invoker'),
('97005', '0', '1', '2', '62', '0', '100', '0', '19094', '2', '0', '0', '', '33', '100581', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Gossipselect - GiveKC - Invoker'),
('97005', '0', '2', '3', '61', '0', '100', '0', '0', '0', '0', '0', '', '1', '1', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Onlink - Say - Invoker'),
('97005', '0', '3', '0', '61', '0', '100', '0', '0', '0', '0', '0', '', '72', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Onlink - CloseGossip - Invoker'),
--
('100498', '0', '0', '0', '62', '0', '100', '0', '30002', '1', '0', '0', '', '33','100793', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Gossipselect - GiveKC - Invoker'),
('100498', '0', '1', '2', '62', '0', '100', '0', '30002', '2', '0', '0', '', '33','100794', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Gossipselect - GiveKC - Invoker'),
('100498', '0', '2', '3', '61', '0', '100', '0', '0', '0', '0', '0', '', '1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Onlink - Say - Invoker'),
('100498', '0', '3', '4', '61', '0', '100', '0', '0', '0', '0', '0', '', '85', '155164', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Onlink - Invoker Cast - Invoker'),
('100498', '0', '4', '0', '61', '0', '100', '0', '0', '0', '0', '0', '', '72', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Onlink - Closegossip - Invoker'),
--
('100538', '0', '0', '0', '19', '0', '100', '0', '40526', '0', '0', '0', '', '86', '200497', '0', '7', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Questaccept - InvokerCast - Invoker'),
('100538', '0', '1', '0', '19', '0', '100', '0', '40527', '0', '0', '0', '', '86', '200495', '0', '7', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Questaccept - InvokerCast - Invoker'),
('100538', '0', '2', '0', '19', '0', '100', '0', '40528', '0', '0', '0', '', '86', '200496', '0', '7', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Questaccept - InvokerCast - Invoker'),
--
('100671', '0', '0', '1', '62', '0', '100', '0', '19103', '2', '0', '0', '', '2', '14', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Gossipselect - Setfaction - Self'),
('100671', '0', '1', '2', '61', '0', '100', '0', '0', '0', '0', '0', '', '72', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Onlink - CloseGossip - Invoker'),
('100671', '0', '2', '0', '61', '0', '100', '0', '0', '0', '0', '0', '', '1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Onlink - CloseGossip - Invoker'),
('100671', '0', '3', '0', '0', '0', '100', '0', '6800', '7900', '5000', '5000', '', '11', '223933', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'IC - Cast - Victim'),
('100671', '0', '4', '0', '0', '0', '100', '0', '4200', '5600', '5000', '5000', '', '11', '224807', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', 'IC - Cast - Victim'),
--
('100776', '0', '0', '1', '62', '0', '100', '0', '30004', '1', '0', '0', '', '33','100859', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Gossipselect - GiveKC - Invoker'),
('100776', '0', '1', '2', '61', '0', '100', '0', '0', '0', '0', '0', '', '85','198645', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Gossipselect - GiveKC - Invoker'),
('100776', '0', '2', '0', '61', '0', '100', '0', '0', '0', '0', '0', '', '72', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Onlink - Closegossip - Invoker'),
--
('100860', '0', '0', '0', '54', '0', '100', '0', '0', '0', '0', '0', '', '1', '0', '0', '0', '0', '0', '0', '23', '0', '0', '0', '0', '0', '0', '0', 'Justsummon - Say - Owner'),
('100860', '0', '1', '0', '38', '0', '100', '1', '0', '1', '0', '0', '', '80','10086000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'CreatureDistance - Beginactionlist - Self'),
('100860', '0', '2', '0', '38', '0', '100', '1', '0', '2', '0', '0', '', '80', '10086001', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'CreatureDistance - Beginactionlist - Self'),
('100860', '0', '3', '4', '38', '0', '100', '1', '0', '3', '0', '0', '', '1', '7', '0', '0', '0', '0', '0', '23', '0', '0', '0', '0', '0', '0', '0', 'CreatureDistance - Say - Owner'),
('100860', '0', '4', '5', '61', '0', '100', '0', '0', '0', '0', '0', '', '33', '100854', '0', '0', '0', '0', '0', '23', '0', '0', '0', '0', '0', '0', '0', 'Onlink - GiveKC - Owner'),
('100860', '0', '5', '0', '61', '0', '100', '0', '0', '0', '0', '0', '', '41', '1000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Onlink - Despawn - Self'),
-- 
('101492', '0', '0', '8', '62', '0', '100', '0', '30008', '1', '0', '0', '', '85', '213482', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Gossipselect - IinvokerCast - Invoker'),
('101492', '0', '1', '8', '62', '0', '100', '0', '30009', '2', '0', '0', '', '85', '213482', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Gossipselect - IinvokerCast - Invoker'),
('101492', '0', '2', '8', '62', '0', '100', '0', '30013', '1', '0', '0', '', '85', '213482', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Gossipselect - IinvokerCast - Invoker'),
('101492', '0', '3', '8', '62', '0', '100', '0', '30011', '1', '0', '0', '', '85', '213482', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Gossipselect - IinvokerCast - Invoker'),
('101492', '0', '4', '8', '62', '0', '100', '0', '30012', '1', '0', '0', '', '85', '213482', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Gossipselect - IinvokerCast - Invoker'),
('101492', '0', '5', '8', '62', '0', '100', '0', '30010', '3', '0', '0', '', '85', '213482', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Gossipselect - IinvokerCast - Invoker'),
('101492', '0', '6', '8', '62', '0', '100', '0', '30014', '1', '0', '0', '', '85', '213482', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Gossipselect - IinvokerCast - Invoker'),
('101492', '0', '7', '8', '62', '0', '100', '0', '30006', '4', '0', '0', '', '85', '213482', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Gossipselect - IinvokerCast - Invoker'),
('101492', '0', '8', '9', '61', '0', '100', '0', '0', '0', '0', '0', '', '72', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Onlink - CloseGossip - Invoker'),
('101492', '0', '9', '10', '61', '0', '100', '0', '0', '0', '0', '0', '', '33', '100970', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Onlink - GiveKC - Invoker'),
('101492', '0', '10', '0', '61', '0', '100', '0', '0', '0', '0', '0', '', '85', '213482', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Onlink - GiveKC - Invoker'),
('101492', '0', '11', '15', '62', '0', '100', '0', '30014', '2', '0', '0', '', '1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Gossipselect - Say - Invoker'),
('101492', '0', '12', '15', '62', '0', '100', '0', '30012', '2', '0', '0', '', '1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Gossipselect - Say - Invoker'),
('101492', '0', '13', '15', '62', '0', '100', '0', '30011', '2', '0', '0', '', '1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Gossipselect - Say - Invoker'),
('101492', '0', '14', '15', '62', '0', '100', '0', '30013', '2', '0', '0', '', '1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Gossipselect - Say - Invoker'),
('101492', '0', '15', '15', '62', '0', '100', '0', '30008', '2', '0', '0', '', '1', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Gossipselect - Say - Invoker'),
('101492', '0', '16', '0', '61', '0', '100', '0', '0', '0', '0', '0', '', '72', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Onlink - CloseGossip - Invoker'),
('101492', '0', '17', '0', '64', '0', '100', '0', '0', '0', '0', '0', '', '33', '100969', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', 'Onlink - CloseGossip - Invoker'),
--
('10086000', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '', '69', '2', '0', '0', '0', '0', '0', '8', '0', '0', '0', '2152.99', '7316.66', '55.1793', '1.57717', 'Actionlist - MovetoPos - ToPOS'),
('10086000', '9', '1', '0', '0', '0', '100', '0', '0', '0', '0', '0', '', '1', '1', '0', '0', '0', '0', '0', '23', '0', '0', '0', '0', '0', '0', '0', 'Actionlist - Say - Owner'),
('10086000', '9', '2', '0', '0', '0', '100', '0', '5000', '5000', '5000', '5000', '', '5', '606', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Actionlist - Playemote - Self'),
('10086000', '9', '3', '0', '0', '0', '100', '0', '5000', '5000', '5000', '5000', '', '1', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Actionlist - Say - Self'),
('10086000', '9', '4', '0', '0', '0', '100', '0', '5000', '5000', '5000', '5000', '', '1', '3', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Actionlist - Say - Self'),
('10086000', '9', '5', '0', '0', '0', '100', '0', '0', '0', '0', '0', '', '33', '100851', '0', '0', '0', '0', '0', '23', '0', '0', '0', '0', '0', '0', '0', 'Actionlist - GiveKC - Owner'),
('10086000', '9', '6', '0', '0', '0', '100', '0', '0', '0', '0', '0', '', '5', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Actionlist - Play Emote 0 - Self'),
('10086000', '9', '7', '0', '0', '0', '100', '0', '2000', '2000', '2000', '2000', '', '29', '5', '200', '0', '0', '0', '0', '23', '0', '0', '0', '0', '0', '0', '0', 'Actionlist - Follow - Owner'),
--
('10086001', '9', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '', '69', '1', '0', '0', '0', '0', '0', '8', '0', '0', '0', '2078.63', '7149.01', '61.5346', '4.92178', 'Actionlist - MovetoPos - ToPOS'),
('10086001', '9', '1', '0', '0', '0', '100', '0', '0', '0', '0', '0', '', '1', '4', '0', '0', '0', '0', '0', '23', '0', '0', '0', '0', '0', '0', '0', 'Actionlist - Say - Owner'),
('10086001', '9', '2', '0', '0', '0', '100', '0', '5000', '5000', '5000', '5000', '', '5', '606', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Actionlist - Playemote - Self'),
('10086001', '9', '3', '0', '0', '0', '100', '0', '5000', '5000', '5000', '5000', '', '1', '5', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Actionlist - Say - Self'),
('10086001', '9', '4', '0', '0', '0', '100', '0', '5000', '5000', '5000', '5000', '', '1', '6', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Actionlist - Say - Self'),
('10086001', '9', '5', '0', '0', '0', '100', '0', '0', '0', '0', '0', '', '33', '100853', '0', '0', '0', '0', '0', '23', '0', '0', '0', '0', '0', '0', '0', 'Actionlist - GiveKC - Owner'),
('10086001', '9', '6', '0', '0', '0', '100', '0', '0', '0', '0', '0', '', '5', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Actionlist - Play Emote 0 - Self'),
('10086001', '9', '7', '0', '0', '0', '100', '0', '2000', '2000', '2000', '2000', '', '29', '5', '200', '0', '0', '0', '0', '23', '0', '0', '0', '0', '0', '0', '0', 'Actionlist - Follow - Owner');

DELETE FROM `gameobject_template` WHERE `entry` IN (245960, 245944, 245945, 245946, 246238, 246250, 245967, 246228, 246267);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `RequiredLevel`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
('245944', '3', '31224', 'Eye of Nashal', 'questinteract', 'Opening', '', '8', '93', '245944', '300', '0', '0', '0', '0', '0', '40542', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0'),
('245945', '3', '31134', 'Eye of Nashal', 'questinteract', 'Opening', '', '8', '93', '245945', '300', '0', '0', '0', '0', '0', '40543', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0'),
('245946', '3', '31225', 'Eye of Nashal', 'questinteract', 'Opening', '', '8', '93', '245946', '300', '0', '0', '0', '0', '0', '40544', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0'),
('245960', '3', '30682', 'Dragon Glass', 'questinteract', 'Opening', '', '0.1', '93', '245960', '300', '0', '0', '0', '0', '0', '40546', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0'),
('246238', '10', '15304', 'Inconspicuous Crate', 'speak', '', '', '3', '0', '40547', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '30016', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '', '0'),
('245967', '10', '15304', 'Inconspicuous Crate', 'speak', '', '', '3', '0', '40547', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '30017', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '', '', '0'),
('246250', '2', '33622', 'Letter From Jabrul', '', '', '', '1', '0', '246250', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0'),
('246228', '3', '30581', 'Floating Plank', 'questinteract', 'Gathering', '', '1', '93', '246228', '0', '0', '0', '0', '0', '0', '40547', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0'),
('246267', '3', '3651', 'Jade Plume', 'questinteract', 'Gathering', '', '1', '93', '246267', '0', '0', '0', '0', '0', '0', '40558', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0');

UPDATE `conditions` SET `ConditionTarget` = 1 WHERE `SourceTypeOrReferenceId` = 17 AND `SourceEntry` = 52781;

DELETE FROM `creature_loot_template` WHERE `Entry` = 3276 and `Item` = 5064;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Chance`, `QuestRequired`, `MinCount`,
`MaxCount`) VALUES
(3276, 5064, 96, 1, 1, 1);

DELETE FROM `creature_loot_template` WHERE `Entry` = 3277 and `Item` = 5064;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Chance`, `QuestRequired`, `MinCount`,
`MaxCount`) VALUES
(3277, 5064, 96, 1, 1, 1);

DELETE FROM `creature_loot_template` WHERE `Entry` = 3280 and `Item` = 5064;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Chance`, `QuestRequired`, `MinCount`,
`MaxCount`) VALUES
(3280, 5064, 96, 1, 1, 1);

DELETE FROM `creature_loot_template` WHERE `Entry` = 3278 and `Item` = 5064;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Chance`, `QuestRequired`, `MinCount`,
`MaxCount`) VALUES
(3278, 5064, 96, 1, 1, 1);

DELETE FROM `creature_loot_template` WHERE `Entry` = 3279 and `Item` = 5064;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Chance`, `QuestRequired`, `MinCount`,
`MaxCount`) VALUES
(3279, 5064, 96, 1, 1, 1);

DELETE FROM `creature_loot_template` WHERE `Entry` = 3452 and `Item` = 5064;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Chance`, `QuestRequired`, `MinCount`,
`MaxCount`) VALUES
(3452, 5064, 96, 1, 1, 1);

DELETE FROM `achievement_reward` WHERE `ID` IN (10018,10092,10093,10094,10095,10149,10412,10997,10998,11003,11004,11005,11008,11009,11010,11163,11176,11180,11233,11320,11427,11563,11564,11765,11856,11869,11987,12031,12032,12078,12079,12100,12103,12136,12137,12199,12200,12431,2138,3636,4845,4853,5449,5828,6169,6375,6582,6927,6932,7499,7521,7928,7929,7934,8124,8293,8300,8348,8398,8399,8454,8484,8485,8641,8642,8898,8985,9069,9236,9238,9252,9394,9396,9429,9454,9462,9463,9468,9477,9478,9487,9495,9496,9523,9526,9539,9550,9565,9673,9685,9696,9705,9761,9764,9785,9792,9799,9805,9811,9817,9824,9838,9885,9894,9983);
INSERT INTO `achievement_reward` (`ID`, `ItemID`, `Sender`, `Subject`) VALUES 
('10018', '128706', '24380', 'Draenor Pathfinder'),
('10092', '103533', '24380', 'Wild Combatant'),
('10093', '103533', '24380', 'Wild Combatant'),
('10094', '103533', '29318', 'Warmongering Combatant'),
('10095', '103533', '29318', 'Warmongering Combatant'),
('10149', '127140', '24380', 'Glory of the Hellfire Raider'),
('10412', '140323', '24380', 'Poor Unfortunate Souls'),
('10997', '103533', '29318', 'Vindictive Combatant'),
('10998', '103533', '29318', 'Vindictive Combatant'),
('11003', '103533', '29318', 'Fearless Combatant'),
('11004', '103533', '29318', 'Fearless Combatant'),
('11005', '103533', '29318', 'Cruel Combatant'),
('11008', '103533', '29318', 'Cruel Combatant'),
('11009', '103533', '29318', 'Ferocious Combatant'),
('11010', '103533', '29318', 'Ferocious Combatant'),
('11163', '141217', '24380', 'Glory of the Legion Hero'),
('11176', '140500', '24380', 'Remember to Share'),
('11180', '141216', '24380', 'Glory of the Legion Raider'),
('11233', '141352', '24380', 'Broken Isles Safari'),
('11320', '142210', '24380', 'Raiding with Leashes IV: Wrath of the Lick King'),
('11427', '143660', '24380', 'No Shellfish Endeavor'),
('11563', '93195', '24380', 'The Second Rule of Brawler\'s Guild'),
('11564', '93228', '24380', 'The Second Rule of Brawler\'s Guild'),
('11765', '147543', '24380', 'Pet Battle Challenge: Wailing Caverns'),
('11856', '151632', '24380', 'Pet Battle Challenge: Deadmines'),
('11869', '150372', '23197', 'Arsenal: The Warglaives of Azzinoth'),
('11987', '152815', '24380', 'Glory of the Argus Raider'),
('12031', '103533', '29318', 'Fierce Combatant'),
('12032', '103533', '29318', 'Fierce Combatant'),
('12078', '152396', '24380', 'Commander of Argus'),
('12079', '152963', '24380', 'Raiding with Leashes V: Cuteaclysm'),
('12100', '153040', '24380', 'Family Fighter'),
('12103', '153041', '24380', '...And Chew Mana Buns'),
('12136', '103533', '24380', 'Dominant Combatant'),
('12137', '103533', '24380', 'Dominant Combatant'),
('12199', '103533', '24380', 'Demonic Combatant'),
('12200', '103533', '24380', 'Demonic Combatant'),
('12431', '156721', '24380', 'Post Haste'),
('2138', '44164', '24380', 'Glory of the Raider (25 player)'),
('3636', '46894', '24380', 'Jade Tiger'),
('4845', '62900', '24380', 'Glory of the Cataclysm Hero'),
('4853', '62901', '24380', 'Glory of the Cataclysm Raider'),
('5449', '60869', '24380', 'Rock Lover'),
('5828', '69230', '24380', 'Glory of the Firelands Raider'),
('6169', '77068', '24380', 'Glory of the Dragon Soul Raider'),
('6375', '90045', '26917', 'Challenge Conqueror: Silver'),
('6582', '88147', '24380', 'Pro Pet Mob'),
('6927', '87769', '24380', 'Glory of the Pandaria Hero'),
('6932', '87773', '24380', 'Glory of the Pandaria Raider'),
('7499', '92738', '24380', 'Taming the World'),
('7521', '89686', '24380', 'Time to Open a Pet Store'),
('7928', '93385', '24380', 'Operation: Shieldwall Campaign'),
('7929', '93386', '24380', 'Dominance Offensive Campaign'),
('7934', '93031', '24380', 'Raiding with Leashes'),
('8124', '93662', '24380', 'Glory of the Thundering Raider'),
('8293', '97558', '24380', 'Raiding with Leashes II: Attunement Edition'),
('8300', '94191', '24380', 'Brutal Pet Brawler'),
('8348', '98715', '24380', 'The Longest Day'),
('8398', '104246', '73716', 'Ahead of the Curve: Garrosh Hellscream (10 player)'),
('8399', '104246', '73716', 'Ahead of the Curve: Garrosh Hellscream (25 player)'),
('8454', '104208', '24380', 'Glory of the Orgrimmar Raider'),
('8484', '103533', '24380', 'Grievous Combatant'),
('8485', '103533', '24380', 'Grievous Combatant'),
('8641', '103533', '24380', 'Prideful Combatant'),
('8642', '103533', '24380', 'Prideful Combatant'),
('8898', '116791', '24380', 'Challenge Warlord: Silver'),
('8985', '116383', '24380', 'Glory of the Draenor Raider'),
('9069', '120121', '24380', 'An Awfully Big Adventure'),
('9236', '103533', '24380', 'Primal Combatant'),
('9238', '103533', '24380', 'Primal Combatant'),
('9252', '116115', '24380', 'Brood of Alysrazor'),
('9394', '116651', '24380', 'They Really Love Me!'),
('9396', '116670', '24380', 'Glory of the Draenor Hero'),
('9429', '109255', '24380', 'Upgrading the Mill'),
('9454', '111997', '24380', 'Draenic Seed Collector'),
('9462', '111928', '24380', 'Draenor Angler'),
('9463', '111999', '24380', 'Draenic Pet Battler'),
('9468', '111977', '24380', 'Salvaging Pays Off'),
('9477', '111987', '24380', 'Savage Friends'),
('9478', '111987', '24380', 'Savage Friends'),
('9487', '111983', '24380', 'Got My Mind On My Draenor Money'),
('9495', '111981', '24380', 'The Bone Collector'),
('9496', '116788', '24380', 'Warlord\'s Deathwheel'),
('9523', '111971', '24380', 'Patrolling Draenor'),
('9526', '112003', '24380', 'Master of Mounts'),
('9539', '116668', '24380', 'Advanced Husbandry'),
('9550', '115484', '24380', 'Boldly, You Sought the Power of Ragnaros'),
('9565', '111969', '24380', 'Master Trapper'),
('9673', '119215', '24380', 'The Toymaster'),
('9685', '111866', '24380', 'Draenor Safari'),
('9696', '140761', '24380', 'Family Familiar'),
('9705', '116668', '24380', 'Advanced Husbandry'),
('9761', '122129', '24380', 'Darkmoon Racer Roadhog'),
('9764', '122119', '24380', 'Rocketeer: Gold'),
('9785', '122120', '24380', 'Powermonger: Gold'),
('9792', '122126', '24380', 'Wanderluster: Gold'),
('9799', '122128', '24380', 'Big Race Roadhog'),
('9805', '122125', '24380', 'Big Rocketeer: Gold'),
('9811', '122121', '24380', 'Big Wanderluster: Gold'),
('9817', '122124', '24380', 'Big Powermonger: Gold'),
('9824', '122116', '24380', 'Raiding with Leashes III: Drinkin\' From the Sunwell'),
('9838', '122293', '24380', 'What A Strange, Interdimensional Trip It\'s Been'),
('9885', '122122', '24380', 'Ace Tonk Commander'),
('9894', '122123', '24380', 'Triumphant Turtle Tossing'),
('9983', '123862', '24380', 'That\'s Whack!');

DELETE FROM `quest_offer_reward` WHERE `ID` IN (32901 /*32901*/, 31813 /*31813*/, 31467 /*31467*/, 31477 /*31477*/, 31311 /*31311*/, 31478 /*31478*/, 31474 /*31474*/, 31472 /*31472*/, 32685 /*32685*/, 32684 /*32684*/, 31302 /*31302*/, 31281 /*31281*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(32901, 1, 0, 0, 0, 0, 0, 0, 0, 'Congratulations, $n, you did it!  Before I forget, here\'s the special surprise I promised -- I hope you like it.$b$bNow tell me all about the adventure.  Did you face certain death?  Meet any friends?  I wish I had more friends like you.', 19103), -- 32901
(31813, 0, 0, 0, 0, 0, 0, 0, 0, 'You fight with the determination of one who does not fear defeat, but does not tolerate it, either. You will go far.', 19103), -- 31813
(31467, 4, 0, 0, 0, 0, 0, 0, 0, 'Strength and good health! This is the Way of the Grill.', 19103), -- 31467
(31477, 4, 0, 0, 0, 0, 0, 0, 0, 'Stamina and endurance are needed for mastering anything. To slave over a hot oven takes patience, but the results are very much worth the effort.', 19103), -- 31477
(31311, 4, 0, 0, 0, 0, 0, 0, 0, 'Good cuts.', 19103), -- 31311
(31478, 4, 0, 0, 0, 0, 0, 0, 0, 'We can work with these.', 19103), -- 31478
(31474, 4, 0, 0, 0, 0, 0, 0, 0, 'Intellect is a gift you must hone with time.', 19103), -- 31474
(31472, 4, 0, 0, 0, 0, 0, 0, 0, 'Good stuff. Now, let\'s get to your lesson.', 19103), -- 31472
(32685, 4, 0, 0, 0, 0, 0, 0, 0, 'Let me see...  Yes, these are nice. Good job! Here, have some more.', 19103), -- 32685
(32684, 4, 0, 0, 0, 0, 0, 0, 0, 'Ah!  Have you come to learn how to fish? You\'re talking to the right person. First, here - have some fish!', 19103), -- 32684
(31302, 4, 0, 0, 0, 0, 0, 0, 0, 'You are ready. You are now a zen master cook.', 19103), -- 31302
(31281, 4, 0, 0, 0, 0, 0, 0, 0, 'Very well.  You are capable of learning.  There is much I can teach you, and I have most of the ingredients you need to learn. Train with me.', 19103); -- 31281


DELETE FROM `quest_details` WHERE `ID` IN (32249 /*32249*/, 32678 /*32678*/, 33232 /*33232*/, 31291 /*31291*/, 32806 /*32806*/, 31311 /*31311*/, 32685 /*32685*/, 31443 /*31443*/, 31470 /*31470*/, 31478 /*31478*/, 31475 /*31475*/, 31479 /*31479*/, 32684 /*32684*/, 31281 /*31281*/, 33249 /*33249*/, 31814 /*31814*/, 31015 /*31015*/, 31467 /*31467*/, 31477 /*31477*/, 31474 /*31474*/, 31472 /*31472*/, 31302 /*31302*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(32249, 0, 0, 0, 0, 0, 0, 0, 0, 19103), -- 32249
(32678, 0, 0, 0, 0, 0, 0, 0, 0, 19103), -- 32678
(33232, 0, 0, 0, 0, 0, 0, 0, 0, 19103), -- 33232
(31291, 1, 0, 0, 0, 0, 0, 0, 0, 19103), -- 31291
(32806, 1, 0, 0, 0, 0, 0, 0, 0, 19103), -- 32806
(31311, 1, 0, 0, 0, 0, 0, 0, 0, 19103), -- 31311
(32685, 1, 0, 0, 0, 0, 0, 0, 0, 19103), -- 32685
(31443, 0, 0, 0, 0, 0, 0, 0, 0, 19103), -- 31443
(31470, 1, 0, 0, 0, 0, 0, 0, 0, 19103), -- 31470
(31478, 1, 0, 0, 0, 0, 0, 0, 0, 19103), -- 31478
(31475, 1, 0, 0, 0, 0, 0, 0, 0, 19103), -- 31475
(31479, 1, 0, 0, 0, 0, 0, 0, 0, 19103), -- 31479
(32684, 1, 0, 0, 0, 0, 0, 0, 0, 19103), -- 32684
(31281, 1, 0, 0, 0, 0, 0, 0, 0, 19103), -- 31281
(33249, 1, 1, 0, 0, 0, 0, 0, 0, 19103), -- 33249
(31814, 0, 0, 0, 0, 0, 0, 0, 0, 19103), -- 31814
(31015, 0, 0, 0, 0, 0, 0, 0, 0, 19103), -- 31015
(31467, 1, 0, 0, 0, 0, 0, 0, 0, 19103), -- 31467
(31477, 1, 0, 0, 0, 0, 0, 0, 0, 19103), -- 31477
(31474, 1, 0, 0, 0, 0, 0, 0, 0, 19103), -- 31474
(31472, 1, 0, 0, 0, 0, 0, 0, 0, 19103), -- 31472
(31302, 1, 0, 0, 0, 0, 0, 0, 0, 19103); -- 31302

DELETE FROM `quest_request_items` WHERE `ID` IN (31467 /*31467*/, 31477 /*31477*/, 31478 /*31478*/, 31475 /*31475*/, 31470 /*31470*/, 31311 /*31311*/, 31472 /*31472*/, 32685 /*32685*/, 31281 /*31281*/, 31474 /*31474*/, 31302 /*31302*/);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(31467, 0, 0, 0, 0, 'Learn the recipe from me and demonstrate what you have learned.', 19103), -- 31467
(31477, 0, 0, 0, 0, 'Learn the recipe for wildfowl roast from me and let\'s see what you can do.', 19103), -- 31477
(31478, 0, 0, 0, 0, 'If you want to make wildfowl roast, you need to obtain wildfowl breasts.', 19103), -- 31478
(31475, 0, 0, 0, 0, 'If you want to learn the Way of the Steamer, you\'ll need some shrimp.', 19103), -- 31475
(31470, 0, 0, 0, 0, 'Hello, young chef. Do you wish to learn the Way of the Wok?', 19103), -- 31470
(31311, 0, 0, 0, 0, 'If you wish to learn the Way of the Grill, bring me some raw tiger steaks.', 19103), -- 31311
(31472, 0, 0, 0, 0, 'Want to learn the recipe for swirling mist soup?  Bring me some jade lungfish.', 19103), -- 31472
(32685, 0, 0, 0, 0, 'Catch 5 Golden Carp. Try it without a fishing pole!', 19103), -- 32685
(31281, 0, 0, 0, 0, 'Show me that you can follow instructions.', 19103), -- 31281
(31474, 0, 0, 0, 0, 'If you want to learn the Way of the Pot, you have to start with swirling mist soup.', 19103), -- 31474
(31302, 0, 0, 0, 0, 'I believe you have the potential to be a great chef, but the proof is in the pudding, so to speak.', 19103); -- 31302


DELETE FROM `npc_vendor` WHERE (`entry`=32641 AND `item`=4565 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32641 AND `item`=79249 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32641 AND `item`=63388 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32641 AND `item`=64670 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32641 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32641 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32641 AND `item`=39354 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32641 AND `item`=6532 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32641 AND `item`=3371 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32641 AND `item`=38426 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32641 AND `item`=14341 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64041 AND `item`=74636 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64041 AND `item`=81414 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64041 AND `item`=81406 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64041 AND `item`=82451 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64041 AND `item`=81413 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64041 AND `item`=81412 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64041 AND `item`=81411 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64041 AND `item`=81410 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64041 AND `item`=81409 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64041 AND `item`=81408 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64041 AND `item`=81405 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64041 AND `item`=81404 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64041 AND `item`=81403 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64041 AND `item`=81402 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64041 AND `item`=81401 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64041 AND `item`=81400 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64231 AND `item`=74845 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64231 AND `item`=74832 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64231 AND `item`=74659 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64231 AND `item`=85585 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64231 AND `item`=74851 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64231 AND `item`=74852 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64231 AND `item`=85584 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64231 AND `item`=74660 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64231 AND `item`=85583 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64231 AND `item`=74854 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64040 AND `item`=81415 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64040 AND `item`=81407 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64040 AND `item`=74636 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64040 AND `item`=81414 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64040 AND `item`=81406 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=12255 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2618 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2617 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2615 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2616 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2614 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2613 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2612 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=3893 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2475 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2474 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2473 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2472 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2471 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2470 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=3892 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2440 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=3588 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2438 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2437 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=3587 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2435 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=3890 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2469 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2468 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2467 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2465 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2464 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2463 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=3889 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2434 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=3594 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2432 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2431 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=3593 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2429 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2145 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2144 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2143 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2146 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2142 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2141 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2158 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=3592 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2156 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2159 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=3591 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=3315 AND `item`=2160 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64605 AND `item`=104198 AND `ExtendedCost`=5229 AND `type`=1) OR (`entry`=64605 AND `item`=93230 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64605 AND `item`=89795 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64605 AND `item`=89363 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=64605 AND `item`=87548 AND `ExtendedCost`=3890 AND `type`=1) OR (`entry`=64605 AND `item`=87549 AND `ExtendedCost`=3890 AND `type`=1) OR (`entry`=66998 AND `item`=74636 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=66998 AND `item`=81414 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=66998 AND `item`=81406 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=66998 AND `item`=81415 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=66998 AND `item`=81407 AND `ExtendedCost`=0 AND `type`=1);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(32641, 11, 4565, 0, 0, 1, 0, 0, 19103), -- 4565
(32641, 10, 79249, 0, 0, 1, 0, 0, 19103), -- 79249
(32641, 9, 63388, 0, 0, 1, 0, 0, 19103), -- 63388
(32641, 8, 64670, 0, 0, 1, 0, 0, 19103), -- 64670
(32641, 7, 39505, 0, 0, 1, 0, 0, 19103), -- 39505
(32641, 6, 20815, 0, 0, 1, 0, 0, 19103), -- 20815
(32641, 5, 39354, 0, 0, 1, 0, 0, 19103), -- 39354
(32641, 4, 6532, 0, 0, 1, 0, 0, 19103), -- 6532
(32641, 3, 3371, 0, 0, 1, 0, 0, 19103), -- 3371
(32641, 2, 38426, 0, 0, 1, 0, 0, 19103), -- 38426
(32641, 1, 14341, 0, 0, 1, 0, 0, 19103), -- 14341
(64041, 16, 74636, 0, 0, 1, 0, 0, 19103), -- 74636
(64041, 15, 81414, 0, 0, 1, 0, 0, 19103), -- 81414
(64041, 14, 81406, 0, 0, 1, 0, 0, 19103), -- 81406
(64041, 13, 82451, 0, 0, 1, 0, 0, 19103), -- 82451
(64041, 12, 81413, 0, 0, 1, 0, 0, 19103), -- 81413
(64041, 11, 81412, 0, 0, 1, 0, 0, 19103), -- 81412
(64041, 10, 81411, 0, 0, 1, 0, 0, 19103), -- 81411
(64041, 9, 81410, 0, 0, 1, 0, 0, 19103), -- 81410
(64041, 8, 81409, 0, 0, 1, 0, 0, 19103), -- 81409
(64041, 7, 81408, 0, 0, 1, 0, 0, 19103), -- 81408
(64041, 6, 81405, 0, 0, 1, 0, 0, 19103), -- 81405
(64041, 5, 81404, 0, 0, 1, 0, 0, 19103), -- 81404
(64041, 4, 81403, 0, 0, 1, 0, 0, 19103), -- 81403
(64041, 3, 81402, 0, 0, 1, 0, 0, 19103), -- 81402
(64041, 2, 81401, 0, 0, 1, 0, 0, 19103), -- 81401
(64041, 1, 81400, 0, 0, 1, 0, 0, 19103), -- 81400
(64231, 10, 74845, 0, 0, 1, 0, 0, 19103), -- 74845
(64231, 9, 74832, 0, 0, 1, 0, 0, 19103), -- 74832
(64231, 8, 74659, 0, 0, 1, 0, 0, 19103), -- 74659
(64231, 7, 85585, 0, 0, 1, 0, 0, 19103), -- 85585
(64231, 6, 74851, 0, 0, 1, 0, 0, 19103), -- 74851
(64231, 5, 74852, 0, 0, 1, 0, 0, 19103), -- 74852
(64231, 4, 85584, 0, 0, 1, 0, 0, 19103), -- 85584
(64231, 3, 74660, 0, 0, 1, 0, 0, 19103), -- 74660
(64231, 2, 85583, 0, 0, 1, 0, 0, 19103), -- 85583
(64231, 1, 74854, 0, 0, 1, 0, 0, 19103), -- 74854
(64040, 5, 81415, 0, 0, 1, 0, 0, 19103), -- 81415
(64040, 4, 81407, 0, 0, 1, 0, 0, 19103), -- 81407
(64040, 3, 74636, 0, 0, 1, 0, 0, 19103), -- 74636
(64040, 2, 81414, 0, 0, 1, 0, 0, 19103), -- 81414
(64040, 1, 81406, 0, 0, 1, 0, 0, 19103), -- 81406
(3315, 63, 12255, 1, 0, 1, 0, 0, 19103), -- 12255
(3315, 47, 2618, 0, 0, 1, 0, 1, 19103), -- 2618
(3315, 46, 2617, 0, 0, 1, 0, 1, 19103), -- 2617
(3315, 45, 2615, 0, 0, 1, 0, 1, 19103), -- 2615
(3315, 44, 2616, 0, 0, 1, 0, 1, 19103), -- 2616
(3315, 43, 2614, 0, 0, 1, 0, 1, 19103), -- 2614
(3315, 42, 2613, 0, 0, 1, 0, 1, 19103), -- 2613
(3315, 41, 2612, 0, 0, 1, 0, 1, 19103), -- 2612
(3315, 40, 3893, 0, 0, 1, 0, 0, 19103), -- 3893
(3315, 39, 2475, 0, 0, 1, 0, 0, 19103), -- 2475
(3315, 38, 2474, 0, 0, 1, 0, 0, 19103), -- 2474
(3315, 37, 2473, 0, 0, 1, 0, 0, 19103), -- 2473
(3315, 36, 2472, 0, 0, 1, 0, 0, 19103), -- 2472
(3315, 35, 2471, 0, 0, 1, 0, 0, 19103), -- 2471
(3315, 34, 2470, 0, 0, 1, 0, 0, 19103), -- 2470
(3315, 33, 3892, 0, 0, 1, 0, 0, 19103), -- 3892
(3315, 32, 2440, 0, 0, 1, 0, 0, 19103), -- 2440
(3315, 31, 3588, 0, 0, 1, 0, 0, 19103), -- 3588
(3315, 30, 2438, 0, 0, 1, 0, 0, 19103), -- 2438
(3315, 29, 2437, 0, 0, 1, 0, 0, 19103), -- 2437
(3315, 28, 3587, 0, 0, 1, 0, 0, 19103), -- 3587
(3315, 27, 2435, 0, 0, 1, 0, 0, 19103), -- 2435
(3315, 26, 3890, 0, 0, 1, 0, 0, 19103), -- 3890
(3315, 25, 2469, 0, 0, 1, 0, 0, 19103), -- 2469
(3315, 24, 2468, 0, 0, 1, 0, 0, 19103), -- 2468
(3315, 23, 2467, 0, 0, 1, 0, 0, 19103), -- 2467
(3315, 22, 2465, 0, 0, 1, 0, 0, 19103), -- 2465
(3315, 21, 2464, 0, 0, 1, 0, 0, 19103), -- 2464
(3315, 20, 2463, 0, 0, 1, 0, 0, 19103), -- 2463
(3315, 19, 3889, 0, 0, 1, 0, 0, 19103), -- 3889
(3315, 18, 2434, 0, 0, 1, 0, 0, 19103), -- 2434
(3315, 17, 3594, 0, 0, 1, 0, 0, 19103), -- 3594
(3315, 16, 2432, 0, 0, 1, 0, 0, 19103), -- 2432
(3315, 15, 2431, 0, 0, 1, 0, 0, 19103), -- 2431
(3315, 14, 3593, 0, 0, 1, 0, 0, 19103), -- 3593
(3315, 13, 2429, 0, 0, 1, 0, 0, 19103), -- 2429
(3315, 12, 2145, 0, 0, 1, 0, 0, 19103), -- 2145
(3315, 11, 2144, 0, 0, 1, 0, 0, 19103), -- 2144
(3315, 10, 2143, 0, 0, 1, 0, 0, 19103), -- 2143
(3315, 9, 2146, 0, 0, 1, 0, 0, 19103), -- 2146
(3315, 8, 2142, 0, 0, 1, 0, 0, 19103), -- 2142
(3315, 7, 2141, 0, 0, 1, 0, 0, 19103), -- 2141
(3315, 6, 2158, 0, 0, 1, 0, 0, 19103), -- 2158
(3315, 5, 3592, 0, 0, 1, 0, 0, 19103), -- 3592
(3315, 4, 2156, 0, 0, 1, 0, 0, 19103), -- 2156
(3315, 3, 2159, 0, 0, 1, 0, 0, 19103), -- 2159
(3315, 2, 3591, 0, 0, 1, 0, 0, 19103), -- 3591
(3315, 1, 2160, 0, 0, 1, 0, 0, 19103), -- 2160
(64605, 6, 104198, 0, 5229, 1, 0, 0, 19103), -- 104198
(64605, 5, 93230, 0, 0, 1, 0, 0, 19103), -- 93230
(64605, 4, 89795, 0, 0, 1, 0, 0, 19103), -- 89795
(64605, 3, 89363, 0, 0, 1, 0, 0, 19103), -- 89363
(64605, 2, 87548, 0, 3890, 1, 0, 0, 19103), -- 87548
(64605, 1, 87549, 0, 3890, 1, 0, 0, 19103), -- 87549
(66998, 5, 74636, 0, 0, 1, 0, 0, 19103), -- 74636
(66998, 4, 81414, 0, 0, 1, 0, 0, 19103), -- 81414
(66998, 3, 81406, 0, 0, 1, 0, 0, 19103), -- 81406
(66998, 2, 81415, 0, 0, 1, 0, 0, 19103), -- 81415
(66998, 1, 81407, 0, 0, 1, 0, 0, 19103); -- 81407


DELETE FROM `gossip_menu` WHERE (`MenuId`=4347 AND `TextId`=5530) OR (`MenuId`=14565 AND `TextId`=20588) OR (`MenuId`=14819 AND `TextId`=19719) OR (`MenuId`=14615 AND `TextId`=20676) OR (`MenuId`=14582 AND `TextId`=20619) OR (`MenuId`=13829 AND `TextId`=20652) OR (`MenuId`=10188 AND `TextId`=14128) OR (`MenuId`=13609 AND `TextId`=19526) OR (`MenuId`=14422 AND `TextId`=20620) OR (`MenuId`=14581 AND `TextId`=20618) OR (`MenuId`=14584 AND `TextId`=20622) OR (`MenuId`=15579 AND `TextId`=22376) OR (`MenuId`=14583 AND `TextId`=20621) OR (`MenuId`=14379 AND `TextId`=20624) OR (`MenuId`=14877 AND `TextId`=21038) OR (`MenuId`=14872 AND `TextId`=21034) OR (`MenuId`=13871 AND `TextId`=20040) OR (`MenuId`=14982 AND `TextId`=21179) OR (`MenuId`=14812 AND `TextId`=21136) OR (`MenuId`=13505 AND `TextId`=22873) OR (`MenuId`=14955 AND `TextId`=19719) OR (`MenuId`=14357 AND `TextId`=20269) OR (`MenuId`=14409 AND `TextId`=20335) OR (`MenuId`=15637 AND `TextId`=22480) OR (`MenuId`=15153 AND `TextId`=2593) OR (`MenuId`=15719 AND `TextId`=22577);
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES
(4347, 5530, 19103), -- 3363
(14565, 20588, 19103), -- 64566
(14819, 19719, 19103), -- 65716
(14615, 20676, 19103), -- 64922
(14582, 20619, 19103), -- 64691
(13829, 20652, 19103), -- 61962
(10188, 14128, 19103), -- 64041
(13609, 19526, 19103), -- 58712
(14422, 20620, 19103), -- 58716
(14581, 20618, 19103), -- 58713
(14584, 20622, 19103), -- 58714
(15579, 22376, 19103), -- 70398
(14583, 20621, 19103), -- 58715
(14379, 20624, 19103), -- 64231
(14877, 21038, 19103), -- 64128
(14872, 21034, 19103), -- 64128
(13871, 20040, 19103), -- 62467
(14982, 21179, 19103), -- 66136
(14812, 21136, 19103), -- 66135
(13505, 22873, 19103), -- 58245
(14955, 19719, 19103), -- 66386
(14357, 20269, 19103), -- 63984
(14409, 20335, 19103), -- 64287
(15637, 22480, 19103), -- 70976
(15153, 2593, 19103), -- 64128
(15719, 22577, 19103); -- 66998

UPDATE `gameobject` SET `spawnDifficulties`='1' WHERE  `guid`=184508;
UPDATE `gameobject` SET `spawnDifficulties`='1' WHERE  `guid`=184414;
UPDATE `gameobject` SET `spawntimesecs`='120' WHERE  `guid`=184508;
UPDATE `gameobject` SET `spawntimesecs`='120' WHERE  `guid`=184414;
UPDATE `gameobject` SET `VerifiedBuild`='19103' WHERE  `guid`=184508;
UPDATE `gameobject` SET `VerifiedBuild`='19103' WHERE  `guid`=184414;

UPDATE `gossip_menu` SET `VerifiedBuild`=22566 WHERE (`MenuId`=83 AND `TextId`=580) OR (`MenuId`=6574 AND `TextId`=7790) OR (`MenuId`=6575 AND `TextId`=7789) OR (`MenuId`=6582 AND `TextId`=7792) OR (`MenuId`=7095 AND `TextId`=8349) OR (`MenuId`=6581 AND `TextId`=7799) OR (`MenuId`=6227 AND `TextId`=7400) OR (`MenuId`=6224 AND `TextId`=7395) OR (`MenuId`=6201 AND `TextId`=7382) OR (`MenuId`=6231 AND `TextId`=7390) OR (`MenuId`=6232 AND `TextId`=7406) OR (`MenuId`=6182 AND `TextId`=7334) OR (`MenuId`=6233 AND `TextId`=7389) OR (`MenuId`=6202 AND `TextId`=7355) OR (`MenuId`=11073 AND `TextId`=15400) OR (`MenuId`=6207 AND `TextId`=7356) OR (`MenuId`=8637 AND `TextId`=10831) OR (`MenuId`=6203 AND `TextId`=7357) OR (`MenuId`=6234 AND `TextId`=7387) OR (`MenuId`=6212 AND `TextId`=7365) OR (`MenuId`=6225 AND `TextId`=7397) OR (`MenuId`=7093 AND `TextId`=8347) OR (`MenuId`=8848 AND `TextId`=11472) OR (`MenuId`=6579 AND `TextId`=7795) OR (`MenuId`=6578 AND `TextId`=7794) OR (`MenuId`=6577 AND `TextId`=7793) OR (`MenuId`=6184 AND `TextId`=7338) OR (`MenuId`=6181 AND `TextId`=7336) OR (`MenuId`=6161 AND `TextId`=7314) OR (`MenuId`=6223 AND `TextId`=7383) OR (`MenuId`=3926 AND `TextId`=4785) OR (`MenuId`=9821 AND `TextId`=13584) OR (`MenuId`=3331 AND `TextId`=4072) OR (`MenuId`=3646 AND `TextId`=4443) OR (`MenuId`=4783 AND `TextId`=5839) OR (`MenuId`=8636 AND `TextId`=10833) OR (`MenuId`=8635 AND `TextId`=10832) OR (`MenuId`=8634 AND `TextId`=10834) OR (`MenuId`=6206 AND `TextId`=7360) OR (`MenuId`=6205 AND `TextId`=7359) OR (`MenuId`=6204 AND `TextId`=7358) OR (`MenuId`=6230 AND `TextId`=7404) OR (`MenuId`=6211 AND `TextId`=7364) OR (`MenuId`=6187 AND `TextId`=7341) OR (`MenuId`=6185 AND `TextId`=7340) OR (`MenuId`=6186 AND `TextId`=7339) OR (`MenuId`=6183 AND `TextId`=7337) OR (`MenuId`=4103 AND `TextId`=5005) OR (`MenuId`=5856 AND `TextId`=7028) OR (`MenuId`=1294 AND `TextId`=822) OR (`MenuId`=23 AND `TextId`=523) OR (`MenuId`=24 AND `TextId`=522) OR (`MenuId`=5854 AND `TextId`=7021) OR (`MenuId`=4185 AND `TextId`=5285) OR (`MenuId`=4006 AND `TextId`=4862) OR (`MenuId`=4021 AND `TextId`=4874) OR (`MenuId`=4012 AND `TextId`=4998);
UPDATE `gossip_menu_option` SET verifiedbuild=27547 WHERE (`MenuId`=83 AND `OptionIndex`=0) OR (`MenuId`=6575 AND `OptionIndex`=0) OR (`MenuId`=6582 AND `OptionIndex`=3) OR (`MenuId`=6582 AND `OptionIndex`=2) OR (`MenuId`=6582 AND `OptionIndex`=1) OR (`MenuId`=6582 AND `OptionIndex`=0) OR (`MenuId`=6581 AND `OptionIndex`=1) OR (`MenuId`=6581 AND `OptionIndex`=0) OR (`MenuId`=6231 AND `OptionIndex`=0) OR (`MenuId`=6182 AND `OptionIndex`=0) OR (`MenuId`=6233 AND `OptionIndex`=0) OR (`MenuId`=6202 AND `OptionIndex`=1) OR (`MenuId`=6202 AND `OptionIndex`=0) OR (`MenuId`=6207 AND `OptionIndex`=8) OR (`MenuId`=6207 AND `OptionIndex`=7) OR (`MenuId`=6207 AND `OptionIndex`=6) OR (`MenuId`=6207 AND `OptionIndex`=5) OR (`MenuId`=6207 AND `OptionIndex`=4) OR (`MenuId`=6207 AND `OptionIndex`=3) OR (`MenuId`=6207 AND `OptionIndex`=2) OR (`MenuId`=6207 AND `OptionIndex`=1) OR (`MenuId`=6207 AND `OptionIndex`=0) OR (`MenuId`=6234 AND `OptionIndex`=0) OR (`MenuId`=6579 AND `OptionIndex`=0) OR (`MenuId`=3331 AND `OptionIndex`=5) OR (`MenuId`=3331 AND `OptionIndex`=4) OR (`MenuId`=3331 AND `OptionIndex`=3) OR (`MenuId`=3331 AND `OptionIndex`=2) OR (`MenuId`=3331 AND `OptionIndex`=1) OR (`MenuId`=3331 AND `OptionIndex`=0) OR (`MenuId`=6230 AND `OptionIndex`=0) OR (`MenuId`=6211 AND `OptionIndex`=0) OR (`MenuId`=6187 AND `OptionIndex`=2) OR (`MenuId`=6187 AND `OptionIndex`=1) OR (`MenuId`=6187 AND `OptionIndex`=0) OR (`MenuId`=6185 AND `OptionIndex`=3) OR (`MenuId`=6185 AND `OptionIndex`=2) OR (`MenuId`=6185 AND `OptionIndex`=1) OR (`MenuId`=6185 AND `OptionIndex`=0) OR (`MenuId`=6186 AND `OptionIndex`=0) OR (`MenuId`=4103 AND `OptionIndex`=0) OR (`MenuId`=5856 AND `OptionIndex`=0) OR (`MenuId`=1294 AND `OptionIndex`=3) OR (`MenuId`=1294 AND `OptionIndex`=2) OR (`MenuId`=1294 AND `OptionIndex`=1) OR (`MenuId`=24 AND `OptionIndex`=0) OR (`MenuId`=5854 AND `OptionIndex`=0) OR (`MenuId`=4185 AND `OptionIndex`=0) OR (`MenuId`=4006 AND `OptionIndex`=0) OR (`MenuId`=4021 AND `OptionIndex`=0);
UPDATE `gossip_menu` SET `VerifiedBuild`=26972 WHERE (`MenuId`=10993 AND `TextId`=15290) OR (`MenuId`=11013 AND `TextId`=15221);
UPDATE `gossip_menu_option` SET `VerifiedBuild`=26972  WHERE (`MenuId`=10993 AND `OptionIndex`=0) OR (`MenuId`=11013 AND `OptionIndex`=6) OR (`MenuId`=11013 AND `OptionIndex`=5) OR (`MenuId`=11013 AND `OptionIndex`=4) OR (`MenuId`=11013 AND `OptionIndex`=3) OR (`MenuId`=11013 AND `OptionIndex`=1);


INSERT IGNORE INTO `item_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('21746', '21745', '0', '49.72523', '0', '1', '0', '1', '1', '');

UPDATE `gossip_menu` SET `VerifiedBuild`='22566' WHERE  `MenuId`=13017 AND `TextId`=18288;

DELETE FROM `gossip_menu` WHERE (`MenuId`=6201 AND `TextId`=7381) OR (`MenuId`=13018 AND `TextId`=18289);
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES
(6201, 7381, 22566), -- 14849
(13018, 18289, 22566); -- 54601

DELETE FROM `quest_offer_reward` WHERE `ID`=41662;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(41662, 0, 0, 0, 0, 0, 0, 0, 0, 'The kirin tor thank you.', 23222); -- Work Order: Ancient Rejuvenation Potions


UPDATE `quest_poi` SET `VerifiedBuild`=23222 WHERE (`QuestID`=44887 AND `BlobIndex`=0 AND `Idx1`=4); -- -Unknown-
UPDATE `quest_poi` SET `VerifiedBuild`=23222 WHERE (`QuestID`=44887 AND `BlobIndex`=0 AND `Idx1`=3); -- -Unknown-
UPDATE `quest_poi` SET `VerifiedBuild`=23222 WHERE (`QuestID`=44887 AND `BlobIndex`=0 AND `Idx1`=2); -- -Unknown-
UPDATE `quest_poi` SET `VerifiedBuild`=23222 WHERE (`QuestID`=44887 AND `BlobIndex`=0 AND `Idx1`=1); -- -Unknown-
UPDATE `quest_poi` SET `VerifiedBuild`=23222 WHERE (`QuestID`=44887 AND `BlobIndex`=0 AND `Idx1`=0); -- -Unknown-
UPDATE `quest_poi` SET `VerifiedBuild`=23222 WHERE (`QuestID`=44284 AND `BlobIndex`=0 AND `Idx1`=0); -- Piercing the Veil
UPDATE `quest_poi` SET `VerifiedBuild`=23222 WHERE (`QuestID`=44283 AND `BlobIndex`=0 AND `Idx1`=0); -- Piercing the Veil
UPDATE `quest_poi` SET `VerifiedBuild`=23222 WHERE (`QuestID`=43517 AND `BlobIndex`=0 AND `Idx1`=5); -- Fallen Power
UPDATE `quest_poi` SET `VerifiedBuild`=23222 WHERE (`QuestID`=43517 AND `BlobIndex`=1 AND `Idx1`=4); -- Fallen Power
UPDATE `quest_poi` SET `VerifiedBuild`=23222 WHERE (`QuestID`=43517 AND `BlobIndex`=0 AND `Idx1`=3); -- Fallen Power
UPDATE `quest_poi` SET `VerifiedBuild`=23222 WHERE (`QuestID`=43517 AND `BlobIndex`=1 AND `Idx1`=2); -- Fallen Power
UPDATE `quest_poi` SET `VerifiedBuild`=23222 WHERE (`QuestID`=43517 AND `BlobIndex`=0 AND `Idx1`=1); -- Fallen Power
UPDATE `quest_poi` SET `VerifiedBuild`=23222 WHERE (`QuestID`=43517 AND `BlobIndex`=0 AND `Idx1`=0); -- Fallen Power
UPDATE `quest_poi` SET `VerifiedBuild`=23222 WHERE (`QuestID`=42694 AND `BlobIndex`=1 AND `Idx1`=6); -- Back from the Dead
UPDATE `quest_poi` SET `VerifiedBuild`=23222 WHERE (`QuestID`=42694 AND `BlobIndex`=0 AND `Idx1`=5); -- Back from the Dead
UPDATE `quest_poi` SET `VerifiedBuild`=23222 WHERE (`QuestID`=42694 AND `BlobIndex`=0 AND `Idx1`=4); -- Back from the Dead
UPDATE `quest_poi` SET `VerifiedBuild`=23222 WHERE (`QuestID`=42694 AND `BlobIndex`=0 AND `Idx1`=3); -- Back from the Dead
UPDATE `quest_poi` SET `VerifiedBuild`=23222 WHERE (`QuestID`=42694 AND `BlobIndex`=0 AND `Idx1`=2); -- Back from the Dead
UPDATE `quest_poi` SET `VerifiedBuild`=23222 WHERE (`QuestID`=42694 AND `BlobIndex`=0 AND `Idx1`=1); -- Back from the Dead
UPDATE `quest_poi` SET `VerifiedBuild`=23222 WHERE (`QuestID`=42694 AND `BlobIndex`=0 AND `Idx1`=0); -- Back from the Dead
UPDATE `quest_poi` SET `VerifiedBuild`=23222 WHERE (`QuestID`=37565 AND `BlobIndex`=0 AND `Idx1`=3); -- The Right Weapon for the Job
UPDATE `quest_poi` SET `VerifiedBuild`=23222 WHERE (`QuestID`=37565 AND `BlobIndex`=1 AND `Idx1`=2); -- The Right Weapon for the Job
UPDATE `quest_poi` SET `VerifiedBuild`=23222 WHERE (`QuestID`=37565 AND `BlobIndex`=0 AND `Idx1`=1); -- The Right Weapon for the Job
UPDATE `quest_poi` SET `VerifiedBuild`=23222 WHERE (`QuestID`=37565 AND `BlobIndex`=0 AND `Idx1`=0); -- The Right Weapon for the Job
UPDATE `quest_poi` SET `VerifiedBuild`=23222 WHERE (`QuestID`=29451 AND `BlobIndex`=0 AND `Idx1`=0); -- The Master Strategist
UPDATE `quest_poi` SET `VerifiedBuild`=23222 WHERE (`QuestID`=29446 AND `BlobIndex`=0 AND `Idx1`=0); -- A Wondrous Weapon
UPDATE `quest_poi` SET `VerifiedBuild`=23222 WHERE (`QuestID`=29445 AND `BlobIndex`=0 AND `Idx1`=0); -- An Intriguing Grimoire
UPDATE `quest_poi` SET `VerifiedBuild`=23222 WHERE (`QuestID`=29433 AND `BlobIndex`=0 AND `Idx1`=0); -- Test Your Strength
UPDATE `quest_poi` SET `VerifiedBuild`=23222 WHERE (`QuestID`=29234 AND `BlobIndex`=2 AND `Idx1`=1); -- Delegation
UPDATE `quest_poi` SET `VerifiedBuild`=23222 WHERE (`QuestID`=29234 AND `BlobIndex`=1 AND `Idx1`=0); -- Delegation
UPDATE `quest_poi` SET `VerifiedBuild`=23222 WHERE (`QuestID`=41662 AND `BlobIndex`=0 AND `Idx1`=1); -- Work Order: Ancient Rejuvenation Potions
UPDATE `quest_poi` SET `VerifiedBuild`=23222 WHERE (`QuestID`=41662 AND `BlobIndex`=0 AND `Idx1`=0); -- Work Order: Ancient Rejuvenation Potions
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=44887 AND `Idx1`=4 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=44887 AND `Idx1`=3 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=44887 AND `Idx1`=2 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=44887 AND `Idx1`=1 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=44887 AND `Idx1`=0 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=44284 AND `Idx1`=0 AND `Idx2`=0); -- Piercing the Veil
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=44283 AND `Idx1`=0 AND `Idx2`=0); -- Piercing the Veil
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=43517 AND `Idx1`=5 AND `Idx2`=0); -- Fallen Power
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=43517 AND `Idx1`=4 AND `Idx2`=0); -- Fallen Power
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=43517 AND `Idx1`=3 AND `Idx2`=0); -- Fallen Power
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=43517 AND `Idx1`=2 AND `Idx2`=0); -- Fallen Power
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=43517 AND `Idx1`=1 AND `Idx2`=0); -- Fallen Power
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=43517 AND `Idx1`=0 AND `Idx2`=0); -- Fallen Power
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=42694 AND `Idx1`=6 AND `Idx2`=0); -- Back from the Dead
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=42694 AND `Idx1`=5 AND `Idx2`=0); -- Back from the Dead
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=42694 AND `Idx1`=4 AND `Idx2`=0); -- Back from the Dead
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=42694 AND `Idx1`=3 AND `Idx2`=0); -- Back from the Dead
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=42694 AND `Idx1`=2 AND `Idx2`=0); -- Back from the Dead
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=42694 AND `Idx1`=1 AND `Idx2`=0); -- Back from the Dead
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=42694 AND `Idx1`=0 AND `Idx2`=0); -- Back from the Dead
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=37565 AND `Idx1`=3 AND `Idx2`=0); -- The Right Weapon for the Job
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=37565 AND `Idx1`=2 AND `Idx2`=11); -- The Right Weapon for the Job
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=37565 AND `Idx1`=2 AND `Idx2`=10); -- The Right Weapon for the Job
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=37565 AND `Idx1`=2 AND `Idx2`=9); -- The Right Weapon for the Job
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=37565 AND `Idx1`=2 AND `Idx2`=8); -- The Right Weapon for the Job
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=37565 AND `Idx1`=2 AND `Idx2`=7); -- The Right Weapon for the Job
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=37565 AND `Idx1`=2 AND `Idx2`=6); -- The Right Weapon for the Job
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=37565 AND `Idx1`=2 AND `Idx2`=5); -- The Right Weapon for the Job
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=37565 AND `Idx1`=2 AND `Idx2`=4); -- The Right Weapon for the Job
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=37565 AND `Idx1`=2 AND `Idx2`=3); -- The Right Weapon for the Job
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=37565 AND `Idx1`=2 AND `Idx2`=2); -- The Right Weapon for the Job
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=37565 AND `Idx1`=2 AND `Idx2`=1); -- The Right Weapon for the Job
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=37565 AND `Idx1`=2 AND `Idx2`=0); -- The Right Weapon for the Job
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=37565 AND `Idx1`=1 AND `Idx2`=11); -- The Right Weapon for the Job
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=37565 AND `Idx1`=1 AND `Idx2`=10); -- The Right Weapon for the Job
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=37565 AND `Idx1`=1 AND `Idx2`=9); -- The Right Weapon for the Job
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=37565 AND `Idx1`=1 AND `Idx2`=8); -- The Right Weapon for the Job
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=37565 AND `Idx1`=1 AND `Idx2`=7); -- The Right Weapon for the Job
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=37565 AND `Idx1`=1 AND `Idx2`=6); -- The Right Weapon for the Job
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=37565 AND `Idx1`=1 AND `Idx2`=5); -- The Right Weapon for the Job
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=37565 AND `Idx1`=1 AND `Idx2`=4); -- The Right Weapon for the Job
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=37565 AND `Idx1`=1 AND `Idx2`=3); -- The Right Weapon for the Job
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=37565 AND `Idx1`=1 AND `Idx2`=2); -- The Right Weapon for the Job
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=37565 AND `Idx1`=1 AND `Idx2`=1); -- The Right Weapon for the Job
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=37565 AND `Idx1`=1 AND `Idx2`=0); -- The Right Weapon for the Job
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=37565 AND `Idx1`=0 AND `Idx2`=0); -- The Right Weapon for the Job
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=29451 AND `Idx1`=0 AND `Idx2`=0); -- The Master Strategist
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=29446 AND `Idx1`=0 AND `Idx2`=0); -- A Wondrous Weapon
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=29445 AND `Idx1`=0 AND `Idx2`=0); -- An Intriguing Grimoire
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=29433 AND `Idx1`=0 AND `Idx2`=0); -- Test Your Strength
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=29234 AND `Idx1`=1 AND `Idx2`=0); -- Delegation
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=29234 AND `Idx1`=0 AND `Idx2`=0); -- Delegation
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=41662 AND `Idx1`=1 AND `Idx2`=0); -- Work Order: Ancient Rejuvenation Potions
UPDATE `quest_poi_points` SET `VerifiedBuild`=23222 WHERE (`QuestID`=41662 AND `Idx1`=0 AND `Idx2`=0); -- Work Order: Ancient Rejuvenation Potions

DELETE FROM `quest_details` WHERE `ID` IN (39838 /*Fire!*/, 44174 /*-Unknown-*/, 41189 /*-Unknown-*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(39838, 1, 1, 0, 0, 0, 0, 0, 0, 23222), -- Fire!
(44174, 0, 0, 0, 0, 0, 0, 0, 0, 23222), -- -Unknown-
(41189, 1, 1, 0, 0, 0, 0, 0, 0, 23222); -- -Unknown-

DELETE FROM `quest_request_items` WHERE `ID`=41662;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(41662, 0, 0, 0, 0, 'Greetings, alchemist. I take it you saw our work order. Do you have the potions?', 23222); -- Work Order: Ancient Rejuvenation Potions


DELETE FROM `npc_vendor` WHERE (`entry`=112007 AND `item`=140276 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=112007 AND `item`=140275 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=112007 AND `item`=140273 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=112007 AND `item`=140272 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=112007 AND `item`=140269 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=112007 AND `item`=140266 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=112007 AND `item`=140265 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=92460 AND `item`=139491 AND `ExtendedCost`=6048 AND `type`=1) OR (`entry`=92460 AND `item`=3371 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=92460 AND `item`=22250 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96796 AND `item`=128849 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96796 AND `item`=128848 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96796 AND `item`=128839 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96796 AND `item`=128840 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96796 AND `item`=138977 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96796 AND `item`=128835 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96796 AND `item`=128836 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96796 AND `item`=138292 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96796 AND `item`=128853 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96999 AND `item`=4470 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96999 AND `item`=60335 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96999 AND `item`=33449 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96999 AND `item`=35954 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96999 AND `item`=159 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=2325 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=2604 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=2605 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=4340 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=4341 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=4342 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=6260 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=6261 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=10290 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=14341 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=8343 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=4291 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=2321 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=2320 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=7005 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=51297 AND `ExtendedCost`=2792 AND `type`=1) OR (`entry`=96978 AND `item`=51298 AND `ExtendedCost`=2793 AND `type`=1) OR (`entry`=96978 AND `item`=51296 AND `ExtendedCost`=2791 AND `type`=1) OR (`entry`=96978 AND `item`=51299 AND `ExtendedCost`=2794 AND `type`=1) OR (`entry`=96978 AND `item`=51295 AND `ExtendedCost`=2790 AND `type`=1) OR (`entry`=96978 AND `item`=51142 AND `ExtendedCost`=2787 AND `type`=1) OR (`entry`=96978 AND `item`=51141 AND `ExtendedCost`=2786 AND `type`=1) OR (`entry`=96978 AND `item`=51143 AND `ExtendedCost`=2788 AND `type`=1) OR (`entry`=96978 AND `item`=51140 AND `ExtendedCost`=2785 AND `type`=1) OR (`entry`=96978 AND `item`=51144 AND `ExtendedCost`=2789 AND `type`=1) OR (`entry`=96978 AND `item`=50825 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=50828 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=50826 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=50824 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=50827 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=51293 AND `ExtendedCost`=2783 AND `type`=1) OR (`entry`=96978 AND `item`=51294 AND `ExtendedCost`=2784 AND `type`=1) OR (`entry`=96978 AND `item`=51290 AND `ExtendedCost`=2780 AND `type`=1) OR (`entry`=96978 AND `item`=51292 AND `ExtendedCost`=2782 AND `type`=1) OR (`entry`=96978 AND `item`=51291 AND `ExtendedCost`=2781 AND `type`=1) OR (`entry`=96978 AND `item`=51146 AND `ExtendedCost`=2776 AND `type`=1) OR (`entry`=96978 AND `item`=51145 AND `ExtendedCost`=2775 AND `type`=1) OR (`entry`=96978 AND `item`=51149 AND `ExtendedCost`=2779 AND `type`=1) OR (`entry`=96978 AND `item`=51147 AND `ExtendedCost`=2777 AND `type`=1) OR (`entry`=96978 AND `item`=51148 AND `ExtendedCost`=2778 AND `type`=1) OR (`entry`=96978 AND `item`=51303 AND `ExtendedCost`=2773 AND `type`=1) OR (`entry`=96978 AND `item`=51300 AND `ExtendedCost`=2770 AND `type`=1) OR (`entry`=96978 AND `item`=51302 AND `ExtendedCost`=2772 AND `type`=1) OR (`entry`=96978 AND `item`=51304 AND `ExtendedCost`=2774 AND `type`=1) OR (`entry`=96978 AND `item`=51301 AND `ExtendedCost`=2771 AND `type`=1) OR (`entry`=96978 AND `item`=51136 AND `ExtendedCost`=2766 AND `type`=1) OR (`entry`=96978 AND `item`=51139 AND `ExtendedCost`=2769 AND `type`=1) OR (`entry`=96978 AND `item`=51137 AND `ExtendedCost`=2767 AND `type`=1) OR (`entry`=96978 AND `item`=51135 AND `ExtendedCost`=2765 AND `type`=1) OR (`entry`=96978 AND `item`=51138 AND `ExtendedCost`=2768 AND `type`=1) OR (`entry`=96978 AND `item`=50820 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=50823 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=50821 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=50819 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=50822 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=50109 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=50106 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=50108 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=50113 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=50107 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=48157 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=48191 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=48187 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=48155 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=48190 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=48185 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=48156 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=48189 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=48186 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=48153 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=48192 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=48183 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=48154 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=48188 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96978 AND `item`=48184 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=112323 AND `item`=136787 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=112323 AND `item`=136790 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=112323 AND `item`=136789 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=112323 AND `item`=136794 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=112323 AND `item`=136795 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=112323 AND `item`=140967 AND `ExtendedCost`=6102 AND `type`=1) OR (`entry`=112323 AND `item`=140937 AND `ExtendedCost`=6101 AND `type`=1) OR (`entry`=112323 AND `item`=140966 AND `ExtendedCost`=5952 AND `type`=1) OR (`entry`=112323 AND `item`=139728 AND `ExtendedCost`=6125 AND `type`=1) OR (`entry`=112323 AND `item`=139729 AND `ExtendedCost`=6125 AND `type`=1) OR (`entry`=112323 AND `item`=139724 AND `ExtendedCost`=6125 AND `type`=1) OR (`entry`=112323 AND `item`=139723 AND `ExtendedCost`=6125 AND `type`=1) OR (`entry`=112323 AND `item`=139727 AND `ExtendedCost`=6125 AND `type`=1) OR (`entry`=112323 AND `item`=139725 AND `ExtendedCost`=6125 AND `type`=1) OR (`entry`=112323 AND `item`=139730 AND `ExtendedCost`=6125 AND `type`=1) OR (`entry`=112323 AND `item`=139726 AND `ExtendedCost`=6125 AND `type`=1) OR (`entry`=112323 AND `item`=140549 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=112323 AND `item`=140540 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=112323 AND `item`=140542 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=107326 AND `item`=140231 AND `ExtendedCost`=6073 AND `type`=1) OR (`entry`=107326 AND `item`=136910 AND `ExtendedCost`=5888 AND `type`=1) OR (`entry`=107326 AND `item`=129760 AND `ExtendedCost`=5888 AND `type`=1) OR (`entry`=107326 AND `item`=118599 AND `ExtendedCost`=5886 AND `type`=1) OR (`entry`=107326 AND `item`=129878 AND `ExtendedCost`=5886 AND `type`=1) OR (`entry`=107326 AND `item`=140274 AND `ExtendedCost`=5887 AND `type`=1) OR (`entry`=107326 AND `item`=129798 AND `ExtendedCost`=5887 AND `type`=1) OR (`entry`=97331 AND `item`=44655 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=115264 AND `item`=124441 AND `ExtendedCost`=6122 AND `type`=1) OR (`entry`=115264 AND `item`=124440 AND `ExtendedCost`=6122 AND `type`=1) OR (`entry`=115264 AND `item`=124437 AND `ExtendedCost`=6122 AND `type`=1) OR (`entry`=115264 AND `item`=124439 AND `ExtendedCost`=6122 AND `type`=1) OR (`entry`=115264 AND `item`=124438 AND `ExtendedCost`=6122 AND `type`=1) OR (`entry`=115264 AND `item`=124115 AND `ExtendedCost`=6122 AND `type`=1) OR (`entry`=115264 AND `item`=124113 AND `ExtendedCost`=6122 AND `type`=1) OR (`entry`=115264 AND `item`=123919 AND `ExtendedCost`=6122 AND `type`=1) OR (`entry`=115264 AND `item`=123918 AND `ExtendedCost`=6122 AND `type`=1) OR (`entry`=115264 AND `item`=124105 AND `ExtendedCost`=6122 AND `type`=1) OR (`entry`=115264 AND `item`=124104 AND `ExtendedCost`=6122 AND `type`=1) OR (`entry`=115264 AND `item`=124103 AND `ExtendedCost`=6122 AND `type`=1) OR (`entry`=115264 AND `item`=124102 AND `ExtendedCost`=6122 AND `type`=1) OR (`entry`=115264 AND `item`=124101 AND `ExtendedCost`=6122 AND `type`=1) OR (`entry`=115264 AND `item`=124112 AND `ExtendedCost`=6122 AND `type`=1) OR (`entry`=115264 AND `item`=124111 AND `ExtendedCost`=6122 AND `type`=1) OR (`entry`=115264 AND `item`=124110 AND `ExtendedCost`=6122 AND `type`=1) OR (`entry`=115264 AND `item`=124109 AND `ExtendedCost`=6122 AND `type`=1) OR (`entry`=115264 AND `item`=124108 AND `ExtendedCost`=6122 AND `type`=1) OR (`entry`=115264 AND `item`=124107 AND `ExtendedCost`=6122 AND `type`=1) OR (`entry`=115264 AND `item`=124121 AND `ExtendedCost`=6122 AND `type`=1) OR (`entry`=115264 AND `item`=124120 AND `ExtendedCost`=6122 AND `type`=1) OR (`entry`=115264 AND `item`=124119 AND `ExtendedCost`=6122 AND `type`=1) OR (`entry`=115264 AND `item`=124118 AND `ExtendedCost`=6122 AND `type`=1) OR (`entry`=115264 AND `item`=124117 AND `ExtendedCost`=6122 AND `type`=1) OR (`entry`=115264 AND `item`=142156 AND `ExtendedCost`=6122 AND `type`=1) OR (`entry`=107109 AND `item`=136706 AND `ExtendedCost`=6072 AND `type`=1) OR (`entry`=107109 AND `item`=136702 AND `ExtendedCost`=6072 AND `type`=1) OR (`entry`=107109 AND `item`=136699 AND `ExtendedCost`=6072 AND `type`=1) OR (`entry`=107109 AND `item`=137727 AND `ExtendedCost`=6072 AND `type`=1) OR (`entry`=107109 AND `item`=137935 AND `ExtendedCost`=6072 AND `type`=1) OR (`entry`=107109 AND `item`=141861 AND `ExtendedCost`=6116 AND `type`=1) OR (`entry`=96784 AND `item`=128833 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96784 AND `item`=128834 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96784 AND `item`=128838 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96784 AND `item`=128837 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96784 AND `item`=128764 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96784 AND `item`=128763 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96784 AND `item`=44618 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96784 AND `item`=44617 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96784 AND `item`=44616 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=98724 AND `item`=127696 AND `ExtendedCost`=5889 AND `type`=1) OR (`entry`=98724 AND `item`=127705 AND `ExtendedCost`=5888 AND `type`=1) OR (`entry`=98724 AND `item`=127701 AND `ExtendedCost`=5886 AND `type`=1) OR (`entry`=98724 AND `item`=127695 AND `ExtendedCost`=5886 AND `type`=1) OR (`entry`=98724 AND `item`=127703 AND `ExtendedCost`=5887 AND `type`=1) OR (`entry`=98724 AND `item`=127707 AND `ExtendedCost`=5887 AND `type`=1) OR (`entry`=98724 AND `item`=127704 AND `ExtendedCost`=5887 AND `type`=1) OR (`entry`=92489 AND `item`=25532 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=92489 AND `item`=25477 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=92489 AND `item`=25533 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=92489 AND `item`=25531 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=92489 AND `item`=25476 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=92489 AND `item`=25475 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=92489 AND `item`=25474 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=92489 AND `item`=44234 AND `ExtendedCost`=5835 AND `type`=1) OR (`entry`=92489 AND `item`=44231 AND `ExtendedCost`=5836 AND `type`=1) OR (`entry`=92489 AND `item`=44690 AND `ExtendedCost`=5837 AND `type`=1) OR (`entry`=92489 AND `item`=44226 AND `ExtendedCost`=5838 AND `type`=1) OR (`entry`=96977 AND `item`=50994 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96977 AND `item`=50973 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96977 AND `item`=50981 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96977 AND `item`=50995 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96977 AND `item`=50972 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96977 AND `item`=50982 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96977 AND `item`=45847 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96977 AND `item`=45846 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96977 AND `item`=45839 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96977 AND `item`=45838 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96977 AND `item`=45829 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96977 AND `item`=45830 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96977 AND `item`=40739 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96977 AND `item`=40749 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96977 AND `item`=40738 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96977 AND `item`=40748 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96977 AND `item`=40695 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96977 AND `item`=40694 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96977 AND `item`=40470 AND `ExtendedCost`=2517 AND `type`=1) OR (`entry`=96977 AND `item`=40469 AND `ExtendedCost`=2513 AND `type`=1) OR (`entry`=96977 AND `item`=40468 AND `ExtendedCost`=2516 AND `type`=1) OR (`entry`=96977 AND `item`=40467 AND `ExtendedCost`=2514 AND `type`=1) OR (`entry`=96977 AND `item`=40466 AND `ExtendedCost`=2515 AND `type`=1) OR (`entry`=96977 AND `item`=40465 AND `ExtendedCost`=2517 AND `type`=1) OR (`entry`=96977 AND `item`=40463 AND `ExtendedCost`=2513 AND `type`=1) OR (`entry`=96977 AND `item`=40462 AND `ExtendedCost`=2516 AND `type`=1) OR (`entry`=96977 AND `item`=40461 AND `ExtendedCost`=2514 AND `type`=1) OR (`entry`=96977 AND `item`=40460 AND `ExtendedCost`=2515 AND `type`=1) OR (`entry`=96977 AND `item`=40494 AND `ExtendedCost`=2517 AND `type`=1) OR (`entry`=96977 AND `item`=40493 AND `ExtendedCost`=2516 AND `type`=1) OR (`entry`=96977 AND `item`=40473 AND `ExtendedCost`=2514 AND `type`=1) OR (`entry`=96977 AND `item`=40472 AND `ExtendedCost`=2515 AND `type`=1) OR (`entry`=96977 AND `item`=40471 AND `ExtendedCost`=2513 AND `type`=1) OR (`entry`=96977 AND `item`=39548 AND `ExtendedCost`=2489 AND `type`=1) OR (`entry`=96977 AND `item`=39547 AND `ExtendedCost`=2485 AND `type`=1) OR (`entry`=96977 AND `item`=39546 AND `ExtendedCost`=2488 AND `type`=1) OR (`entry`=96977 AND `item`=39545 AND `ExtendedCost`=2487 AND `type`=1) OR (`entry`=96977 AND `item`=39544 AND `ExtendedCost`=2486 AND `type`=1) OR (`entry`=96977 AND `item`=39542 AND `ExtendedCost`=2489 AND `type`=1) OR (`entry`=96977 AND `item`=39538 AND `ExtendedCost`=2485 AND `type`=1) OR (`entry`=96977 AND `item`=39539 AND `ExtendedCost`=2488 AND `type`=1) OR (`entry`=96977 AND `item`=39531 AND `ExtendedCost`=2487 AND `type`=1) OR (`entry`=96977 AND `item`=39543 AND `ExtendedCost`=2486 AND `type`=1) OR (`entry`=96977 AND `item`=39556 AND `ExtendedCost`=2489 AND `type`=1) OR (`entry`=96977 AND `item`=39555 AND `ExtendedCost`=2488 AND `type`=1) OR (`entry`=96977 AND `item`=39553 AND `ExtendedCost`=2487 AND `type`=1) OR (`entry`=96977 AND `item`=39557 AND `ExtendedCost`=2486 AND `type`=1) OR (`entry`=96977 AND `item`=39554 AND `ExtendedCost`=2485 AND `type`=1) OR (`entry`=96977 AND `item`=46184 AND `ExtendedCost`=2669 AND `type`=1) OR (`entry`=96977 AND `item`=46161 AND `ExtendedCost`=2669 AND `type`=1) OR (`entry`=96977 AND `item`=46191 AND `ExtendedCost`=2669 AND `type`=1) OR (`entry`=96977 AND `item`=46194 AND `ExtendedCost`=2667 AND `type`=1) OR (`entry`=96977 AND `item`=46186 AND `ExtendedCost`=2667 AND `type`=1) OR (`entry`=96977 AND `item`=46159 AND `ExtendedCost`=2667 AND `type`=1) OR (`entry`=96977 AND `item`=46192 AND `ExtendedCost`=2665 AND `type`=1) OR (`entry`=96977 AND `item`=46160 AND `ExtendedCost`=2665 AND `type`=1) OR (`entry`=96977 AND `item`=46185 AND `ExtendedCost`=2665 AND `type`=1) OR (`entry`=96977 AND `item`=46187 AND `ExtendedCost`=2663 AND `type`=1) OR (`entry`=96977 AND `item`=46157 AND `ExtendedCost`=2663 AND `type`=1) OR (`entry`=96977 AND `item`=46196 AND `ExtendedCost`=2663 AND `type`=1) OR (`entry`=96977 AND `item`=46183 AND `ExtendedCost`=2661 AND `type`=1) OR (`entry`=96977 AND `item`=46158 AND `ExtendedCost`=2661 AND `type`=1) OR (`entry`=96977 AND `item`=46189 AND `ExtendedCost`=2661 AND `type`=1) OR (`entry`=96977 AND `item`=45346 AND `ExtendedCost`=2668 AND `type`=1) OR (`entry`=96977 AND `item`=45356 AND `ExtendedCost`=2668 AND `type`=1) OR (`entry`=96977 AND `item`=46313 AND `ExtendedCost`=2668 AND `type`=1) OR (`entry`=96977 AND `item`=45354 AND `ExtendedCost`=2666 AND `type`=1) OR (`entry`=96977 AND `item`=45348 AND `ExtendedCost`=2666 AND `type`=1) OR (`entry`=96977 AND `item`=45358 AND `ExtendedCost`=2666 AND `type`=1) OR (`entry`=96977 AND `item`=45353 AND `ExtendedCost`=2664 AND `type`=1) OR (`entry`=96977 AND `item`=45357 AND `ExtendedCost`=2664 AND `type`=1) OR (`entry`=96977 AND `item`=45347 AND `ExtendedCost`=2664 AND `type`=1) OR (`entry`=96977 AND `item`=45349 AND `ExtendedCost`=2662 AND `type`=1) OR (`entry`=96977 AND `item`=45359 AND `ExtendedCost`=2662 AND `type`=1) OR (`entry`=96977 AND `item`=45352 AND `ExtendedCost`=2662 AND `type`=1) OR (`entry`=96977 AND `item`=45345 AND `ExtendedCost`=2660 AND `type`=1) OR (`entry`=96977 AND `item`=45355 AND `ExtendedCost`=2660 AND `type`=1) OR (`entry`=96977 AND `item`=45351 AND `ExtendedCost`=2660 AND `type`=1) OR (`entry`=93544 AND `item`=79740 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93544 AND `item`=1515 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93544 AND `item`=39489 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93544 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93544 AND `item`=39354 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93544 AND `item`=64670 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93544 AND `item`=139496 AND `ExtendedCost`=6048 AND `type`=1) OR (`entry`=93544 AND `item`=141068 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93544 AND `item`=141062 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93544 AND `item`=141055 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93544 AND `item`=141046 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93544 AND `item`=141045 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93544 AND `item`=141042 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93544 AND `item`=141040 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93544 AND `item`=141037 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93544 AND `item`=141033 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93544 AND `item`=141030 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93544 AND `item`=141036 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93544 AND `item`=137740 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93544 AND `item`=137734 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93544 AND `item`=137737 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93544 AND `item`=137732 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93544 AND `item`=137735 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93544 AND `item`=137738 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93544 AND `item`=137730 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93544 AND `item`=137733 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93544 AND `item`=137736 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93544 AND `item`=137731 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93544 AND `item`=141900 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=96802 AND `item`=128833 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96802 AND `item`=128834 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96802 AND `item`=128841 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96802 AND `item`=128842 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96802 AND `item`=128849 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96802 AND `item`=128848 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96802 AND `item`=128839 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96802 AND `item`=128840 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96802 AND `item`=138977 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96802 AND `item`=128835 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96802 AND `item`=128836 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96802 AND `item`=44574 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96802 AND `item`=44573 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96802 AND `item`=44575 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96802 AND `item`=44571 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96802 AND `item`=44570 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=115287 AND `item`=103797 AND `ExtendedCost`=5332 AND `type`=1) OR (`entry`=115287 AND `item`=103789 AND `ExtendedCost`=5332 AND `type`=1) OR (`entry`=115287 AND `item`=103795 AND `ExtendedCost`=5332 AND `type`=1) OR (`entry`=115287 AND `item`=103786 AND `ExtendedCost`=5332 AND `type`=1) OR (`entry`=115287 AND `item`=71153 AND `ExtendedCost`=5331 AND `type`=1) OR (`entry`=115287 AND `item`=89906 AND `ExtendedCost`=5331 AND `type`=1) OR (`entry`=115287 AND `item`=98114 AND `ExtendedCost`=5333 AND `type`=1) OR (`entry`=115287 AND `item`=98112 AND `ExtendedCost`=5331 AND `type`=1) OR (`entry`=115287 AND `item`=86143 AND `ExtendedCost`=5331 AND `type`=1) OR (`entry`=115287 AND `item`=98715 AND `ExtendedCost`=5489 AND `type`=1) OR (`entry`=115287 AND `item`=116429 AND `ExtendedCost`=5482 AND `type`=1) OR (`entry`=115287 AND `item`=120321 AND `ExtendedCost`=5334 AND `type`=1) OR (`entry`=96778 AND `item`=44637 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96778 AND `item`=44643 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97012 AND `item`=47658 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97012 AND `item`=40018 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97012 AND `item`=40020 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97012 AND `item`=40021 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97012 AND `item`=40019 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96980 AND `item`=2325 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96980 AND `item`=2604 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96980 AND `item`=2605 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96980 AND `item`=4340 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96980 AND `item`=4341 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96980 AND `item`=4342 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96980 AND `item`=6260 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96980 AND `item`=6261 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96980 AND `item`=10290 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96980 AND `item`=14341 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96980 AND `item`=8343 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96980 AND `item`=4291 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96980 AND `item`=2321 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96980 AND `item`=2320 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96980 AND `item`=7005 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97332 AND `item`=44648 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97332 AND `item`=44647 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93537 AND `item`=2678 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93537 AND `item`=30817 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93537 AND `item`=159 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93537 AND `item`=133593 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93537 AND `item`=133592 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93537 AND `item`=133591 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93537 AND `item`=133590 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93537 AND `item`=133589 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93537 AND `item`=133588 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97339 AND `item`=40704 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97339 AND `item`=40702 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97339 AND `item`=44641 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97339 AND `item`=44652 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97011 AND `item`=40703 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97011 AND `item`=44639 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97011 AND `item`=44638 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97004 AND `item`=39354 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97004 AND `item`=38426 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97004 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97004 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97004 AND `item`=6532 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97004 AND `item`=6530 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97004 AND `item`=4400 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97004 AND `item`=4399 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97004 AND `item`=4289 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97004 AND `item`=3371 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97004 AND `item`=4340 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97004 AND `item`=4342 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97004 AND `item`=4341 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97004 AND `item`=2325 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97004 AND `item`=2604 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97004 AND `item`=3857 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97004 AND `item`=3466 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97004 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97004 AND `item`=2678 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97004 AND `item`=14341 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97004 AND `item`=8343 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97004 AND `item`=4291 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97004 AND `item`=2321 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97004 AND `item`=2320 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97004 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97004 AND `item`=6217 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97004 AND `item`=6256 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97004 AND `item`=85663 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97004 AND `item`=7005 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97004 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93530 AND `item`=22307 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93530 AND `item`=20753 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93530 AND `item`=20752 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93530 AND `item`=20758 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93530 AND `item`=11291 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93530 AND `item`=4470 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93530 AND `item`=10938 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93530 AND `item`=10940 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93530 AND `item`=6217 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93530 AND `item`=38682 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93530 AND `item`=64670 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93530 AND `item`=139494 AND `ExtendedCost`=6048 AND `type`=1) OR (`entry`=93530 AND `item`=128591 AND `ExtendedCost`=6070 AND `type`=1) OR (`entry`=93530 AND `item`=128592 AND `ExtendedCost`=6070 AND `type`=1) OR (`entry`=93530 AND `item`=128590 AND `ExtendedCost`=6070 AND `type`=1) OR (`entry`=93530 AND `item`=128583 AND `ExtendedCost`=6070 AND `type`=1) OR (`entry`=93530 AND `item`=128584 AND `ExtendedCost`=6070 AND `type`=1) OR (`entry`=93530 AND `item`=128585 AND `ExtendedCost`=6070 AND `type`=1) OR (`entry`=93530 AND `item`=128586 AND `ExtendedCost`=6070 AND `type`=1) OR (`entry`=93530 AND `item`=128588 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93530 AND `item`=128589 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93530 AND `item`=128587 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93530 AND `item`=128579 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93530 AND `item`=128580 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93530 AND `item`=128581 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93530 AND `item`=128582 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93530 AND `item`=140634 AND `ExtendedCost`=6069 AND `type`=1) OR (`entry`=93521 AND `item`=10290 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93521 AND `item`=4342 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93521 AND `item`=6261 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93521 AND `item`=4341 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93521 AND `item`=4340 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93521 AND `item`=2605 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93521 AND `item`=2604 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93521 AND `item`=6260 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93521 AND `item`=2325 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93521 AND `item`=38426 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93521 AND `item`=4289 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93521 AND `item`=14341 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93521 AND `item`=8343 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93521 AND `item`=4291 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93521 AND `item`=2321 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93521 AND `item`=2320 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93521 AND `item`=7005 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93521 AND `item`=139490 AND `ExtendedCost`=6048 AND `type`=1) OR (`entry`=93521 AND `item`=139498 AND `ExtendedCost`=6048 AND `type`=1) OR (`entry`=93521 AND `item`=137916 AND `ExtendedCost`=6070 AND `type`=1) OR (`entry`=93521 AND `item`=137918 AND `ExtendedCost`=6070 AND `type`=1) OR (`entry`=93521 AND `item`=137919 AND `ExtendedCost`=6070 AND `type`=1) OR (`entry`=93521 AND `item`=137920 AND `ExtendedCost`=6070 AND `type`=1) OR (`entry`=93521 AND `item`=137921 AND `ExtendedCost`=6070 AND `type`=1) OR (`entry`=93521 AND `item`=137922 AND `ExtendedCost`=6070 AND `type`=1) OR (`entry`=93521 AND `item`=137923 AND `ExtendedCost`=6070 AND `type`=1) OR (`entry`=93521 AND `item`=137884 AND `ExtendedCost`=6070 AND `type`=1) OR (`entry`=93521 AND `item`=137886 AND `ExtendedCost`=6070 AND `type`=1) OR (`entry`=93521 AND `item`=137887 AND `ExtendedCost`=6070 AND `type`=1) OR (`entry`=93521 AND `item`=137888 AND `ExtendedCost`=6070 AND `type`=1) OR (`entry`=93521 AND `item`=137889 AND `ExtendedCost`=6070 AND `type`=1) OR (`entry`=93521 AND `item`=137890 AND `ExtendedCost`=6070 AND `type`=1) OR (`entry`=93521 AND `item`=137891 AND `ExtendedCost`=6070 AND `type`=1) OR (`entry`=93521 AND `item`=142407 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=97007 AND `item`=44645 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=97007 AND `item`=44636 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96987 AND `item`=50466 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96987 AND `item`=50467 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96987 AND `item`=50468 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96987 AND `item`=50469 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96987 AND `item`=50470 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96987 AND `item`=40722 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96987 AND `item`=40721 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96987 AND `item`=40724 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96987 AND `item`=40723 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93532 AND `item`=113111 AND `ExtendedCost`=2582 AND `type`=1) OR (`entry`=93532 AND `item`=79255 AND `ExtendedCost`=2583 AND `type`=1) OR (`entry`=93532 AND `item`=61981 AND `ExtendedCost`=2583 AND `type`=1) OR (`entry`=93532 AND `item`=43127 AND `ExtendedCost`=2583 AND `type`=1) OR (`entry`=93532 AND `item`=79254 AND `ExtendedCost`=2582 AND `type`=1) OR (`entry`=93532 AND `item`=61978 AND `ExtendedCost`=2582 AND `type`=1) OR (`entry`=93532 AND `item`=43126 AND `ExtendedCost`=2582 AND `type`=1) OR (`entry`=93532 AND `item`=43124 AND `ExtendedCost`=2582 AND `type`=1) OR (`entry`=93532 AND `item`=43122 AND `ExtendedCost`=2582 AND `type`=1) OR (`entry`=93532 AND `item`=43120 AND `ExtendedCost`=2582 AND `type`=1) OR (`entry`=93532 AND `item`=43118 AND `ExtendedCost`=2582 AND `type`=1) OR (`entry`=93532 AND `item`=43116 AND `ExtendedCost`=2582 AND `type`=1) OR (`entry`=93532 AND `item`=39774 AND `ExtendedCost`=2582 AND `type`=1) OR (`entry`=93532 AND `item`=39469 AND `ExtendedCost`=2582 AND `type`=1) OR (`entry`=93524 AND `item`=10290 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93524 AND `item`=4342 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93524 AND `item`=2325 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93524 AND `item`=6261 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93524 AND `item`=4340 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93524 AND `item`=4341 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93524 AND `item`=2605 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93524 AND `item`=6260 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93524 AND `item`=2604 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93524 AND `item`=2324 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93524 AND `item`=38426 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93524 AND `item`=14341 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93524 AND `item`=8343 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93524 AND `item`=4291 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93524 AND `item`=2321 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93524 AND `item`=2320 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=93524 AND `item`=139499 AND `ExtendedCost`=6048 AND `type`=1) OR (`entry`=93524 AND `item`=138011 AND `ExtendedCost`=6070 AND `type`=1) OR (`entry`=93524 AND `item`=137953 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93524 AND `item`=137965 AND `ExtendedCost`=6070 AND `type`=1) OR (`entry`=93524 AND `item`=137967 AND `ExtendedCost`=6070 AND `type`=1) OR (`entry`=93524 AND `item`=137968 AND `ExtendedCost`=6070 AND `type`=1) OR (`entry`=93524 AND `item`=137969 AND `ExtendedCost`=6070 AND `type`=1) OR (`entry`=93524 AND `item`=137970 AND `ExtendedCost`=6070 AND `type`=1) OR (`entry`=93524 AND `item`=137971 AND `ExtendedCost`=6070 AND `type`=1) OR (`entry`=93524 AND `item`=137972 AND `ExtendedCost`=6070 AND `type`=1) OR (`entry`=93524 AND `item`=137955 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93524 AND `item`=137956 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93524 AND `item`=137957 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93524 AND `item`=137958 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93524 AND `item`=137959 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=93524 AND `item`=137960 AND `ExtendedCost`=6071 AND `type`=1) OR (`entry`=96785 AND `item`=128833 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96785 AND `item`=128834 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96785 AND `item`=44626 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96785 AND `item`=44632 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96785 AND `item`=44625 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96785 AND `item`=44623 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96785 AND `item`=44622 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96785 AND `item`=44621 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96785 AND `item`=44679 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96785 AND `item`=44678 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96507 AND `item`=37460 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96479 AND `item`=44820 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96479 AND `item`=37460 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96479 AND `item`=43352 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96479 AND `item`=43626 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96479 AND `item`=37431 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96479 AND `item`=129826 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96479 AND `item`=48120 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96479 AND `item`=44822 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96479 AND `item`=46398 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96808 AND `item`=128839 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96808 AND `item`=128840 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96808 AND `item`=128761 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96808 AND `item`=128844 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96808 AND `item`=128843 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96808 AND `item`=128764 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96808 AND `item`=128763 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96808 AND `item`=138977 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96808 AND `item`=128835 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96808 AND `item`=128836 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96808 AND `item`=128833 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96808 AND `item`=128834 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96808 AND `item`=128841 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96808 AND `item`=128842 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96782 AND `item`=138977 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96782 AND `item`=128835 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96782 AND `item`=128836 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96782 AND `item`=128764 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96782 AND `item`=128763 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96782 AND `item`=35952 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96782 AND `item`=33443 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96801 AND `item`=2531 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96801 AND `item`=2523 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96801 AND `item`=2530 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96801 AND `item`=2522 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96804 AND `item`=128833 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96804 AND `item`=128834 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96804 AND `item`=128841 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96804 AND `item`=128842 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96804 AND `item`=138292 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96804 AND `item`=128853 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96804 AND `item`=44574 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96804 AND `item`=44573 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96804 AND `item`=44575 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96804 AND `item`=44571 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96804 AND `item`=44570 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96812 AND `item`=43348 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96812 AND `item`=35221 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96812 AND `item`=31775 AND `ExtendedCost`=1994 AND `type`=1) OR (`entry`=96812 AND `item`=32445 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96812 AND `item`=31781 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96812 AND `item`=31780 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96812 AND `item`=32828 AND `ExtendedCost`=1958 AND `type`=1) OR (`entry`=96812 AND `item`=31778 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96812 AND `item`=31777 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96812 AND `item`=31776 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96812 AND `item`=31804 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96812 AND `item`=31779 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=96812 AND `item`=5976 AND `ExtendedCost`=0 AND `type`=1);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(112007, 7, 140276, 0, 0, 1, 0, 0, 23222), -- Dalaran Rice Pudding
(112007, 6, 140275, 0, 0, 1, 0, 0, 23222), -- Val'sharah Berry Pie
(112007, 5, 140273, 0, 0, 1, 0, 0, 23222), -- Honey Croissant
(112007, 4, 140272, 0, 0, 1, 0, 0, 23222), -- Suramar Spiced Tea
(112007, 3, 140269, 0, 0, 1, 0, 0, 23222), -- Iced Highmountain Refresher
(112007, 2, 140266, 0, 0, 1, 0, 0, 23222), -- Kafa Kicker
(112007, 1, 140265, 0, 0, 1, 0, 0, 23222), -- Legendermainy Light Roast
(92460, 3, 139491, 0, 6048, 1, 0, 0, 23222), -- Forgotten Techniques of the Broken Isles
(92460, 2, 3371, 0, 0, 1, 0, 0, 23222), -- Crystal Vial
(92460, 1, 22250, 0, 0, 1, 0, 0, 23222), -- Herb Pouch
(96796, 9, 128849, 0, 0, 1, 0, 0, 23222), -- Scallion Kimchi
(96796, 8, 128848, 0, 0, 1, 0, 0, 23222), -- Roasted Maize
(96796, 7, 128839, 0, 0, 1, 0, 0, 23222), -- Smoked Elderhorn
(96796, 6, 128840, 0, 0, 1, 0, 0, 23222), -- Honey-Glazed Ham
(96796, 5, 138977, 0, 0, 1, 0, 0, 23222), -- Thundertotem Rice Cake
(96796, 4, 128835, 0, 0, 1, 0, 0, 23222), -- Highmountain Fry Bread
(96796, 3, 128836, 0, 0, 1, 0, 0, 23222), -- Barley Bread
(96796, 2, 138292, 0, 0, 1, 0, 0, 23222), -- Ley-Enriched Water
(96796, 1, 128853, 0, 0, 1, 0, 0, 23222), -- Highmountain Spring Water
(96999, 5, 4470, 0, 0, 1, 0, 0, 23222), -- Simple Wood
(96999, 4, 60335, 0, 0, 1, 0, 0, 23222), -- Thick Hide Pack
(96999, 3, 33449, 0, 0, 1, 0, 0, 23222), -- Crusty Flatbread
(96999, 2, 35954, 0, 0, 1, 0, 0, 23222), -- Sweetened Goat's Milk
(96999, 1, 159, 0, 0, 1, 0, 0, 23222), -- Refreshing Spring Water
(96978, 115, 2325, 0, 0, 1, 0, 0, 23222), -- Black Dye
(96978, 114, 2604, 0, 0, 1, 0, 0, 23222), -- Red Dye
(96978, 113, 2605, 0, 0, 1, 0, 0, 23222), -- Green Dye
(96978, 112, 4340, 0, 0, 1, 0, 0, 23222), -- Gray Dye
(96978, 111, 4341, 0, 0, 1, 0, 0, 23222), -- Yellow Dye
(96978, 110, 4342, 0, 0, 1, 0, 0, 23222), -- Purple Dye
(96978, 109, 6260, 0, 0, 1, 0, 0, 23222), -- Blue Dye
(96978, 108, 6261, 0, 0, 1, 0, 0, 23222), -- Orange Dye
(96978, 107, 10290, 0, 0, 1, 0, 0, 23222), -- Pink Dye
(96978, 106, 14341, 0, 0, 1, 0, 0, 23222), -- Rune Thread
(96978, 105, 8343, 0, 0, 1, 0, 0, 23222), -- Heavy Silken Thread
(96978, 104, 4291, 0, 0, 1, 0, 0, 23222), -- Silken Thread
(96978, 103, 2321, 0, 0, 1, 0, 0, 23222), -- Fine Thread
(96978, 102, 2320, 0, 0, 1, 0, 0, 23222), -- Coarse Thread
(96978, 101, 7005, 0, 0, 1, 0, 0, 23222), -- Skinning Knife
(96978, 90, 51297, 0, 2792, 1, 0, 0, 23222), -- Sanctified Lasherweave Legguards
(96978, 89, 51298, 0, 2793, 1, 0, 0, 23222), -- Sanctified Lasherweave Raiment
(96978, 88, 51296, 0, 2791, 1, 0, 0, 23222), -- Sanctified Lasherweave Headguard
(96978, 87, 51299, 0, 2794, 1, 0, 0, 23222), -- Sanctified Lasherweave Shoulderpads
(96978, 86, 51295, 0, 2790, 1, 0, 0, 23222), -- Sanctified Lasherweave Handgrips
(96978, 85, 51142, 0, 2787, 1, 0, 0, 23222), -- Sanctified Lasherweave Legguards
(96978, 84, 51141, 0, 2786, 1, 0, 0, 23222), -- Sanctified Lasherweave Raiment
(96978, 83, 51143, 0, 2788, 1, 0, 0, 23222), -- Sanctified Lasherweave Headguard
(96978, 82, 51140, 0, 2785, 1, 0, 0, 23222), -- Sanctified Lasherweave Shoulderpads
(96978, 81, 51144, 0, 2789, 1, 0, 0, 23222), -- Sanctified Lasherweave Handgrips
(96978, 75, 50825, 0, 0, 1, 0, 0, 23222), -- Lasherweave Legguards
(96978, 74, 50828, 0, 0, 1, 0, 0, 23222), -- Lasherweave Raiment
(96978, 73, 50826, 0, 0, 1, 0, 0, 23222), -- Lasherweave Headguard
(96978, 72, 50824, 0, 0, 1, 0, 0, 23222), -- Lasherweave Shoulderpads
(96978, 71, 50827, 0, 0, 1, 0, 0, 23222), -- Lasherweave Handgrips
(96978, 70, 51293, 0, 2783, 1, 0, 0, 23222), -- Sanctified Lasherweave Trousers
(96978, 69, 51294, 0, 2784, 1, 0, 0, 23222), -- Sanctified Lasherweave Vestment
(96978, 68, 51290, 0, 2780, 1, 0, 0, 23222), -- Sanctified Lasherweave Cover
(96978, 67, 51292, 0, 2782, 1, 0, 0, 23222), -- Sanctified Lasherweave Mantle
(96978, 66, 51291, 0, 2781, 1, 0, 0, 23222), -- Sanctified Lasherweave Gloves
(96978, 65, 51146, 0, 2776, 1, 0, 0, 23222), -- Sanctified Lasherweave Trousers
(96978, 64, 51145, 0, 2775, 1, 0, 0, 23222), -- Sanctified Lasherweave Vestment
(96978, 63, 51149, 0, 2779, 1, 0, 0, 23222), -- Sanctified Lasherweave Cover
(96978, 62, 51147, 0, 2777, 1, 0, 0, 23222), -- Sanctified Lasherweave Mantle
(96978, 61, 51148, 0, 2778, 1, 0, 0, 23222), -- Sanctified Lasherweave Gloves
(96978, 60, 51303, 0, 2773, 1, 0, 0, 23222), -- Sanctified Lasherweave Legplates
(96978, 59, 51300, 0, 2770, 1, 0, 0, 23222), -- Sanctified Lasherweave Robes
(96978, 58, 51302, 0, 2772, 1, 0, 0, 23222), -- Sanctified Lasherweave Helmet
(96978, 57, 51304, 0, 2774, 1, 0, 0, 23222), -- Sanctified Lasherweave Pauldrons
(96978, 56, 51301, 0, 2771, 1, 0, 0, 23222), -- Sanctified Lasherweave Gauntlets
(96978, 55, 51136, 0, 2766, 1, 0, 0, 23222), -- Sanctified Lasherweave Legplates
(96978, 54, 51139, 0, 2769, 1, 0, 0, 23222), -- Sanctified Lasherweave Robes
(96978, 53, 51137, 0, 2767, 1, 0, 0, 23222), -- Sanctified Lasherweave Helmet
(96978, 52, 51135, 0, 2765, 1, 0, 0, 23222), -- Sanctified Lasherweave Pauldrons
(96978, 51, 51138, 0, 2768, 1, 0, 0, 23222), -- Sanctified Lasherweave Gauntlets
(96978, 50, 50820, 0, 0, 1, 0, 0, 23222), -- Lasherweave Trousers
(96978, 49, 50823, 0, 0, 1, 0, 0, 23222), -- Lasherweave Vestment
(96978, 48, 50821, 0, 0, 1, 0, 0, 23222), -- Lasherweave Cover
(96978, 47, 50819, 0, 0, 1, 0, 0, 23222), -- Lasherweave Mantle
(96978, 46, 50822, 0, 0, 1, 0, 0, 23222), -- Lasherweave Gloves
(96978, 45, 50109, 0, 0, 1, 0, 0, 23222), -- Lasherweave Legplates
(96978, 44, 50106, 0, 0, 1, 0, 0, 23222), -- Lasherweave Robes
(96978, 43, 50108, 0, 0, 1, 0, 0, 23222), -- Lasherweave Helmet
(96978, 42, 50113, 0, 0, 1, 0, 0, 23222), -- Lasherweave Pauldrons
(96978, 41, 50107, 0, 0, 1, 0, 0, 23222), -- Lasherweave Gauntlets
(96978, 40, 48157, 0, 0, 1, 0, 0, 23222), -- Runetotem's Spaulders of Conquest
(96978, 39, 48191, 0, 0, 1, 0, 0, 23222), -- Runetotem's Shoulderpads of Conquest
(96978, 38, 48187, 0, 0, 1, 0, 0, 23222), -- Runetotem's Mantle of Conquest
(96978, 37, 48155, 0, 0, 1, 0, 0, 23222), -- Runetotem's Leggings of Conquest
(96978, 36, 48190, 0, 0, 1, 0, 0, 23222), -- Runetotem's Legguards of Conquest
(96978, 35, 48185, 0, 0, 1, 0, 0, 23222), -- Runetotem's Trousers of Conquest
(96978, 34, 48156, 0, 0, 1, 0, 0, 23222), -- Runetotem's Robe of Conquest
(96978, 33, 48189, 0, 0, 1, 0, 0, 23222), -- Runetotem's Raiments of Conquest
(96978, 32, 48186, 0, 0, 1, 0, 0, 23222), -- Runetotem's Vestments of Conquest
(96978, 31, 48153, 0, 0, 1, 0, 0, 23222), -- Runetotem's Handguards of Conquest
(96978, 30, 48192, 0, 0, 1, 0, 0, 23222), -- Runetotem's Handgrips of Conquest
(96978, 29, 48183, 0, 0, 1, 0, 0, 23222), -- Runetotem's Gloves of Conquest
(96978, 28, 48154, 0, 0, 1, 0, 0, 23222), -- Runetotem's Headpiece of Conquest
(96978, 27, 48188, 0, 0, 1, 0, 0, 23222), -- Runetotem's Headguard of Conquest
(96978, 26, 48184, 0, 0, 1, 0, 0, 23222), -- Runetotem's Cover of Conquest
(112323, 19, 136787, 0, 0, 1, 0, 0, 23222), -- Tome of the Wilds: Treant Form
(112323, 18, 136790, 0, 0, 1, 0, 0, 23222), -- Tome of the Wilds: Track Beasts
(112323, 17, 136789, 0, 0, 1, 0, 0, 23222), -- Tome of the Wilds: Stag Form
(112323, 16, 136794, 0, 0, 1, 0, 0, 23222), -- Tome of the Wilds: Flap
(112323, 15, 136795, 0, 0, 1, 0, 0, 23222), -- Tome of the Wilds: Charm Woodland Creature
(112323, 14, 140967, 0, 6102, 1, 0, 0, 23222), -- Archdruid's Greater Armor Kit
(112323, 13, 140937, 0, 6101, 1, 0, 0, 23222), -- Archdruid's Armor Kit
(112323, 12, 140966, 0, 5952, 1, 0, 0, 23222), -- Archdruid's Lesser Armor Kit
(112323, 11, 139728, 0, 6125, 1, 0, 0, 23222), -- Amice of the Dreamgrove
(112323, 10, 139729, 0, 6125, 1, 0, 0, 23222), -- Cord of the Dreamgrove
(112323, 9, 139724, 0, 6125, 1, 43054, 0, 23222), -- Sandals of the Dreamgrove
(112323, 8, 139723, 0, 6125, 1, 0, 0, 23222), -- Robes of the Dreamgrove
(112323, 7, 139727, 0, 6125, 1, 0, 0, 23222), -- Leggings of the Dreamgrove
(112323, 6, 139725, 0, 6125, 1, 0, 0, 23222), -- Gloves of the Dreamgrove
(112323, 5, 139730, 0, 6125, 1, 0, 0, 23222), -- Bracers of the Dreamgrove
(112323, 4, 139726, 0, 6125, 1, 0, 0, 23222), -- Hood of the Dreamgrove
(112323, 3, 140549, 0, 0, 1, 0, 0, 23222), -- Pillar of the Dreamgrove
(112323, 2, 140540, 0, 0, 1, 0, 0, 23222), -- Dreamgrove Blade
(112323, 1, 140542, 0, 0, 1, 0, 0, 23222), -- Dreamgrove Spire
(107326, 7, 140231, 0, 6073, 1, 0, 0, 23222), -- Narcissa's Mirror
(107326, 6, 136910, 0, 5888, 1, 0, 0, 23222), -- Alarm-o-Bot
(107326, 5, 129760, 0, 5888, 1, 0, 0, 23222), -- Fel Piglet
(107326, 4, 118599, 0, 5886, 1, 0, 0, 23222), -- Autumnal Sproutling
(107326, 3, 129878, 0, 5886, 1, 0, 0, 23222), -- Nightwatch Swooper
(107326, 2, 140274, 0, 5887, 1, 0, 0, 23222), -- River Calf
(107326, 1, 129798, 0, 5887, 1, 0, 0, 23222), -- Plump Jelly
(97331, 1, 44655, 0, 0, 1, 0, 0, 23222), -- Dalaran Stave
(115264, 26, 124441, 0, 6122, 1, 0, 0, 23222), -- Leylight Shard
(115264, 25, 124440, 0, 6122, 1, 0, 0, 23222), -- Arkhana
(115264, 24, 124437, 0, 6122, 1, 0, 0, 23222), -- Shal'dorei Silk
(115264, 23, 124439, 0, 6122, 1, 0, 0, 23222), -- Unbroken Tooth
(115264, 22, 124438, 0, 6122, 1, 0, 0, 23222), -- Unbroken Claw
(115264, 21, 124115, 0, 6122, 1, 0, 0, 23222), -- Stormscale
(115264, 20, 124113, 0, 6122, 1, 0, 0, 23222), -- Stonehide Leather
(115264, 19, 123919, 0, 6122, 1, 0, 0, 23222), -- Felslate
(115264, 18, 123918, 0, 6122, 1, 0, 0, 23222), -- Leystone Ore
(115264, 17, 124105, 0, 6122, 1, 0, 0, 23222), -- Starlight Rose
(115264, 16, 124104, 0, 6122, 1, 0, 0, 23222), -- Fjarnskaggl
(115264, 15, 124103, 0, 6122, 1, 0, 0, 23222), -- Foxflower
(115264, 14, 124102, 0, 6122, 1, 0, 0, 23222), -- Dreamleaf
(115264, 13, 124101, 0, 6122, 1, 0, 0, 23222), -- Aethril
(115264, 12, 124112, 0, 6122, 1, 0, 0, 23222), -- Black Barracuda
(115264, 11, 124111, 0, 6122, 1, 0, 0, 23222), -- Runescale Koi
(115264, 10, 124110, 0, 6122, 1, 0, 0, 23222), -- Stormray
(115264, 9, 124109, 0, 6122, 1, 0, 0, 23222), -- Highmountain Salmon
(115264, 8, 124108, 0, 6122, 1, 0, 0, 23222), -- Mossgill Perch
(115264, 7, 124107, 0, 6122, 1, 0, 0, 23222), -- Cursed Queenfish
(115264, 6, 124121, 0, 6122, 1, 0, 0, 23222), -- Wildfowl Egg
(115264, 5, 124120, 0, 6122, 1, 0, 0, 23222), -- Leyblood
(115264, 4, 124119, 0, 6122, 1, 0, 0, 23222), -- Big Gamy Ribs
(115264, 3, 124118, 0, 6122, 1, 0, 0, 23222), -- Fatty Bearsteak
(115264, 2, 124117, 0, 6122, 1, 0, 0, 23222), -- Lean Shank
(115264, 1, 142156, 0, 6122, 1, 0, 0, 23222), -- -Unknown-
(107109, 11, 136706, 0, 6072, 1, 0, 0, 23222), -- Technique: Straszan Mark
(107109, 10, 136702, 0, 6072, 1, 0, 0, 23222), -- Formula: Soul Fibril
(107109, 9, 136699, 0, 6072, 1, 0, 0, 23222), -- Recipe: Flamespike
(107109, 8, 137727, 0, 6072, 1, 0, 0, 23222), -- Schematic: Mecha-Bond Imprint Matrix
(107109, 7, 137935, 0, 6072, 1, 0, 0, 23222), -- Recipe: Leather Love Seat
(107109, 2, 141861, 0, 6116, 1, 0, 0, 23222), -- Boon of the Nether
(96784, 9, 128833, 0, 0, 1, 0, 0, 23222), -- Kaldorei Ginger Wine
(96784, 8, 128834, 0, 0, 1, 0, 0, 23222), -- Bradensbrook Gorse Wine
(96784, 7, 128838, 0, 0, 1, 0, 0, 23222), -- Foxberries
(96784, 6, 128837, 0, 0, 1, 0, 0, 23222), -- Dried Bilberries
(96784, 5, 128764, 0, 0, 1, 0, 0, 23222), -- Moist Azsunian Feta
(96784, 4, 128763, 0, 0, 1, 0, 0, 23222), -- Pungent Vrykul Gamalost
(96784, 3, 44618, 0, 0, 1, 0, 0, 23222), -- Glass of Aged Dalaran Red
(96784, 2, 44617, 0, 0, 1, 0, 0, 23222), -- Glass of Dalaran Red
(96784, 1, 44616, 0, 0, 1, 0, 0, 23222), -- Glass of Dalaran White
(98724, 7, 127696, 0, 5889, 1, 0, 0, 23222), -- Magic Pet Mirror
(98724, 6, 127705, 0, 5888, 1, 0, 0, 23222), -- Lost Netherpup
(98724, 5, 127701, 0, 5886, 1, 0, 0, 23222), -- Glowing Sporebat
(98724, 4, 127695, 0, 5886, 1, 0, 0, 23222), -- Spirit Wand
(98724, 3, 127703, 0, 5887, 1, 0, 0, 23222), -- Dusty Sporewing
(98724, 2, 127707, 0, 5887, 1, 0, 0, 23222), -- Indestructible Bone
(98724, 1, 127704, 0, 5887, 1, 0, 0, 23222), -- Bloodthorn Hatchling
(92489, 22, 25532, 0, 0, 1, 0, 0, 23222), -- Swift Yellow Wind Rider
(92489, 21, 25477, 0, 0, 1, 0, 0, 23222), -- Swift Red Wind Rider
(92489, 20, 25533, 0, 0, 1, 0, 0, 23222), -- Swift Purple Wind Rider
(92489, 19, 25531, 0, 0, 1, 0, 0, 23222), -- Swift Green Wind Rider
(92489, 18, 25476, 0, 0, 1, 0, 0, 23222), -- Green Wind Rider
(92489, 17, 25475, 0, 0, 1, 0, 0, 23222), -- Blue Wind Rider
(92489, 16, 25474, 0, 0, 1, 0, 0, 23222), -- Tawny Wind Rider
(92489, 8, 44234, 0, 5835, 1, 0, 0, 23222), -- Reins of the Traveler's Tundra Mammoth
(92489, 7, 44231, 0, 5836, 1, 0, 0, 23222), -- Reins of the Wooly Mammoth
(92489, 6, 44690, 0, 5837, 1, 0, 0, 23222), -- Armored Blue Wind Rider
(92489, 5, 44226, 0, 5838, 1, 0, 0, 23222), -- Reins of the Armored Brown Bear
(96977, 98, 50994, 0, 0, 1, 0, 0, 23222), -- Belt of Petrified Ivy
(96977, 97, 50973, 0, 0, 1, 0, 0, 23222), -- Vestments of Spruce and Fir
(96977, 96, 50981, 0, 0, 1, 0, 0, 23222), -- Gloves of the Great Horned Owl
(96977, 95, 50995, 0, 0, 1, 0, 0, 23222), -- Vengeful Noose
(96977, 94, 50972, 0, 0, 1, 0, 0, 23222), -- Shadow Seeker's Tunic
(96977, 93, 50982, 0, 0, 1, 0, 0, 23222), -- Cat Burglar's Grips
(96977, 92, 45847, 0, 0, 1, 0, 0, 23222), -- Wildstrider Legguards
(96977, 91, 45846, 0, 0, 1, 0, 0, 23222), -- Leggings of Wavering Shadow
(96977, 90, 45839, 0, 0, 1, 0, 0, 23222), -- Grips of the Secret Grove
(96977, 89, 45838, 0, 0, 1, 0, 0, 23222), -- Gloves of the Blind Stalker
(96977, 88, 45829, 0, 0, 1, 0, 0, 23222), -- Belt of the Twilight Assassin
(96977, 87, 45830, 0, 0, 1, 0, 0, 23222), -- Belt of the Living Thicket
(96977, 86, 40739, 0, 0, 1, 0, 0, 23222), -- Bands of the Great Tree
(96977, 85, 40749, 0, 0, 1, 0, 0, 23222), -- Rainey's Chewed Boots
(96977, 84, 40738, 0, 0, 1, 0, 0, 23222), -- Wristwraps of the Cutthroat
(96977, 83, 40748, 0, 0, 1, 0, 0, 23222), -- Boots of Captain Ellis
(96977, 82, 40695, 0, 0, 1, 0, 0, 23222), -- Vine Belt of the Woodland Dryad
(96977, 81, 40694, 0, 0, 1, 0, 0, 23222), -- Jorach's Crocolisk Skin Belt
(96977, 75, 40470, 0, 2517, 1, 0, 0, 23222), -- Valorous Dreamwalker Mantle
(96977, 74, 40469, 0, 2513, 1, 0, 0, 23222), -- Valorous Dreamwalker Vestments
(96977, 73, 40468, 0, 2516, 1, 0, 0, 23222), -- Valorous Dreamwalker Trousers
(96977, 72, 40467, 0, 2514, 1, 0, 0, 23222), -- Valorous Dreamwalker Cover
(96977, 71, 40466, 0, 2515, 1, 0, 0, 23222), -- Valorous Dreamwalker Gloves
(96977, 70, 40465, 0, 2517, 1, 0, 0, 23222), -- Valorous Dreamwalker Spaulders
(96977, 69, 40463, 0, 2513, 1, 0, 0, 23222), -- Valorous Dreamwalker Robe
(96977, 68, 40462, 0, 2516, 1, 0, 0, 23222), -- Valorous Dreamwalker Leggings
(96977, 67, 40461, 0, 2514, 1, 0, 0, 23222), -- Valorous Dreamwalker Headpiece
(96977, 66, 40460, 0, 2515, 1, 0, 0, 23222), -- Valorous Dreamwalker Handguards
(96977, 65, 40494, 0, 2517, 1, 0, 0, 23222), -- Valorous Dreamwalker Shoulderpads
(96977, 64, 40493, 0, 2516, 1, 0, 0, 23222), -- Valorous Dreamwalker Legguards
(96977, 63, 40473, 0, 2514, 1, 0, 0, 23222), -- Valorous Dreamwalker Headguard
(96977, 62, 40472, 0, 2515, 1, 0, 0, 23222), -- Valorous Dreamwalker Handgrips
(96977, 61, 40471, 0, 2513, 1, 0, 0, 23222), -- Valorous Dreamwalker Raiments
(96977, 55, 39548, 0, 2489, 1, 0, 0, 23222), -- Heroes' Dreamwalker Mantle
(96977, 54, 39547, 0, 2485, 1, 0, 0, 23222), -- Heroes' Dreamwalker Vestments
(96977, 53, 39546, 0, 2488, 1, 0, 0, 23222), -- Heroes' Dreamwalker Trousers
(96977, 52, 39545, 0, 2487, 1, 0, 0, 23222), -- Heroes' Dreamwalker Cover
(96977, 51, 39544, 0, 2486, 1, 0, 0, 23222), -- Heroes' Dreamwalker Gloves
(96977, 50, 39542, 0, 2489, 1, 0, 0, 23222), -- Heroes' Dreamwalker Spaulders
(96977, 49, 39538, 0, 2485, 1, 0, 0, 23222), -- Heroes' Dreamwalker Robe
(96977, 48, 39539, 0, 2488, 1, 0, 0, 23222), -- Heroes' Dreamwalker Leggings
(96977, 47, 39531, 0, 2487, 1, 0, 0, 23222), -- Heroes' Dreamwalker Headpiece
(96977, 46, 39543, 0, 2486, 1, 0, 0, 23222), -- Heroes' Dreamwalker Handguards
(96977, 45, 39556, 0, 2489, 1, 0, 0, 23222), -- Heroes' Dreamwalker Shoulderpads
(96977, 44, 39555, 0, 2488, 1, 0, 0, 23222), -- Heroes' Dreamwalker Legguards
(96977, 43, 39553, 0, 2487, 1, 0, 0, 23222), -- Heroes' Dreamwalker Headguard
(96977, 42, 39557, 0, 2486, 1, 0, 0, 23222), -- Heroes' Dreamwalker Handgrips
(96977, 41, 39554, 0, 2485, 1, 0, 0, 23222), -- Heroes' Dreamwalker Raiments
(96977, 35, 46184, 0, 2669, 1, 0, 0, 23222), -- Conqueror's Nightsong Headpiece
(96977, 34, 46161, 0, 2669, 1, 0, 0, 23222), -- Conqueror's Nightsong Headguard
(96977, 33, 46191, 0, 2669, 1, 0, 0, 23222), -- Conqueror's Nightsong Cover
(96977, 32, 46194, 0, 2667, 1, 0, 0, 23222), -- Conqueror's Nightsong Vestments
(96977, 31, 46186, 0, 2667, 1, 0, 0, 23222), -- Conqueror's Nightsong Robe
(96977, 30, 46159, 0, 2667, 1, 0, 0, 23222), -- Conqueror's Nightsong Raiments
(96977, 29, 46192, 0, 2665, 1, 0, 0, 23222), -- Conqueror's Nightsong Trousers
(96977, 28, 46160, 0, 2665, 1, 0, 0, 23222), -- Conqueror's Nightsong Legguards
(96977, 27, 46185, 0, 2665, 1, 0, 0, 23222), -- Conqueror's Nightsong Leggings
(96977, 26, 46187, 0, 2663, 1, 0, 0, 23222), -- Conqueror's Nightsong Spaulders
(96977, 25, 46157, 0, 2663, 1, 0, 0, 23222), -- Conqueror's Nightsong Shoulderpads
(96977, 24, 46196, 0, 2663, 1, 0, 0, 23222), -- Conqueror's Nightsong Mantle
(96977, 23, 46183, 0, 2661, 1, 0, 0, 23222), -- Conqueror's Nightsong Handguards
(96977, 22, 46158, 0, 2661, 1, 0, 0, 23222), -- Conqueror's Nightsong Handgrips
(96977, 21, 46189, 0, 2661, 1, 0, 0, 23222), -- Conqueror's Nightsong Gloves
(96977, 15, 45346, 0, 2668, 1, 0, 0, 23222), -- Valorous Nightsong Headpiece
(96977, 14, 45356, 0, 2668, 1, 0, 0, 23222); -- Valorous Nightsong Headguard

INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(96977, 13, 46313, 0, 2668, 1, 0, 0, 23222), -- Valorous Nightsong Cover
(96977, 12, 45354, 0, 2666, 1, 0, 0, 23222), -- Valorous Nightsong Vestments
(96977, 11, 45348, 0, 2666, 1, 0, 0, 23222), -- Valorous Nightsong Robe
(96977, 10, 45358, 0, 2666, 1, 0, 0, 23222), -- Valorous Nightsong Raiments
(96977, 9, 45353, 0, 2664, 1, 0, 0, 23222), -- Valorous Nightsong Trousers
(96977, 8, 45357, 0, 2664, 1, 0, 0, 23222), -- Valorous Nightsong Legguards
(96977, 7, 45347, 0, 2664, 1, 0, 0, 23222), -- Valorous Nightsong Leggings
(96977, 6, 45349, 0, 2662, 1, 0, 0, 23222), -- Valorous Nightsong Spaulders
(96977, 5, 45359, 0, 2662, 1, 0, 0, 23222), -- Valorous Nightsong Shoulderpads
(96977, 4, 45352, 0, 2662, 1, 0, 0, 23222), -- Valorous Nightsong Mantle
(96977, 3, 45345, 0, 2660, 1, 0, 0, 23222), -- Valorous Nightsong Handguards
(96977, 2, 45355, 0, 2660, 1, 0, 0, 23222), -- Valorous Nightsong Handgrips
(96977, 1, 45351, 0, 2660, 1, 0, 0, 23222), -- Valorous Nightsong Gloves
(93544, 53, 79740, 0, 0, 1, 0, 0, 23222), -- Plain Wooden Staff
(93544, 52, 1515, 0, 0, 1, 0, 0, 23222), -- Rough Wooden Staff
(93544, 51, 39489, 3, 0, 1, 0, 0, 23222), -- Scribe's Satchel
(93544, 50, 39505, 0, 0, 1, 0, 0, 23222), -- Virtuoso Inking Set
(93544, 49, 39354, 0, 0, 1, 0, 0, 23222), -- Light Parchment
(93544, 48, 64670, 0, 0, 1, 0, 0, 23222), -- Vanishing Powder
(93544, 23, 139496, 0, 6048, 1, 0, 0, 23222), -- Forgotten Techniques of the Broken Isles
(93544, 22, 141068, 0, 6071, 1, 0, 0, 23222), -- Technique: Glyph of the Blazing Savior
(93544, 21, 141062, 0, 6071, 1, 0, 0, 23222), -- Technique: Glyph of the Inquisitor's Eye
(93544, 20, 141055, 0, 6071, 1, 0, 0, 23222), -- Technique: Glyph of Yu'lon's Grace
(93544, 19, 141046, 0, 6071, 1, 0, 0, 23222), -- Technique: Glyph of the Dire Stable
(93544, 18, 141045, 0, 6071, 1, 0, 0, 23222), -- Technique: Glyph of the Bullseye
(93544, 17, 141042, 0, 6071, 1, 0, 0, 23222), -- Technique: Glyph of the Storm
(93544, 16, 141040, 0, 6071, 1, 0, 0, 23222), -- Technique: Glyph of the Feral Chameleon
(93544, 15, 141037, 0, 6071, 1, 0, 0, 23222), -- Technique: Glyph of Mana Touched Souls
(93544, 14, 141033, 0, 6071, 1, 0, 0, 23222), -- Technique: Glyph of the Crimson Shell
(93544, 13, 141030, 0, 6071, 1, 0, 0, 23222), -- Technique: Glyph of Cracked Ice
(93544, 12, 141036, 0, 6071, 1, 0, 0, 23222), -- Technique: Glyph of Fel-Enemies
(93544, 11, 137740, 0, 6071, 1, 0, 0, 23222), -- Technique: Glyph of the Wraith Walker
(93544, 10, 137734, 0, 6071, 1, 0, 0, 23222), -- Technique: Glyph of the Sentinel
(93544, 9, 137737, 0, 6071, 1, 0, 0, 23222), -- Technique: Glyph of Stellar Flare
(93544, 8, 137732, 0, 6071, 1, 0, 0, 23222), -- Technique: Glyph of Sparkles
(93544, 7, 137735, 0, 6071, 1, 0, 0, 23222), -- Technique: Glyph of Crackling Crane Lightning
(93544, 6, 137738, 0, 6071, 1, 0, 0, 23222), -- Technique: Glyph of the Queen
(93544, 5, 137730, 0, 6071, 1, 0, 0, 23222), -- Technique: Glyph of Ghostly Fade
(93544, 4, 137733, 0, 6071, 1, 0, 0, 23222), -- Technique: Glyph of Blackout
(93544, 3, 137736, 0, 6071, 1, 0, 0, 23222), -- Technique: Glyph of the Spectral Raptor
(93544, 2, 137731, 0, 6071, 1, 0, 0, 23222), -- Technique: Glyph of Fel Imp
(93544, 1, 141900, 0, 6071, 1, 0, 0, 23222), -- Technique: Glyph of Falling Thunder
(96802, 16, 128833, 0, 0, 1, 0, 0, 23222), -- Kaldorei Ginger Wine
(96802, 15, 128834, 0, 0, 1, 0, 0, 23222), -- Bradensbrook Gorse Wine
(96802, 14, 128841, 0, 0, 1, 0, 0, 23222), -- Highmountain Tiswin
(96802, 13, 128842, 0, 0, 1, 0, 0, 23222), -- Tideskorn Mead Ale
(96802, 12, 128849, 0, 0, 1, 0, 0, 23222), -- Scallion Kimchi
(96802, 11, 128848, 0, 0, 1, 0, 0, 23222), -- Roasted Maize
(96802, 10, 128839, 0, 0, 1, 0, 0, 23222), -- Smoked Elderhorn
(96802, 9, 128840, 0, 0, 1, 0, 0, 23222), -- Honey-Glazed Ham
(96802, 8, 138977, 0, 0, 1, 0, 0, 23222), -- Thundertotem Rice Cake
(96802, 7, 128835, 0, 0, 1, 0, 0, 23222), -- Highmountain Fry Bread
(96802, 6, 128836, 0, 0, 1, 0, 0, 23222), -- Barley Bread
(96802, 5, 44574, 0, 0, 1, 0, 0, 23222), -- Skin of Mulgore Firewater
(96802, 4, 44573, 0, 0, 1, 0, 0, 23222), -- Cup of Frog Venom Brew
(96802, 3, 44575, 0, 0, 1, 0, 0, 23222), -- Flask of Bitter Cactus Cider
(96802, 2, 44571, 0, 0, 1, 0, 0, 23222), -- Bottle of Silvermoon Port
(96802, 1, 44570, 0, 0, 1, 0, 0, 23222), -- Glass of Eversong Wine
(115287, 84, 103797, 0, 5332, 1, 0, 0, 23222), -- Big Pink Bow
(115287, 83, 103789, 0, 5332, 1, 0, 0, 23222), -- "Little Princess" Costume
(115287, 82, 103795, 0, 5332, 1, 0, 0, 23222), -- "Dread Pirate" Costume
(115287, 81, 103786, 0, 5332, 1, 0, 0, 23222), -- "Dapper Gentleman" Costume
(115287, 80, 71153, 0, 5331, 1, 0, 0, 23222), -- Magical Pet Biscuit
(115287, 79, 89906, 0, 5331, 1, 0, 0, 23222), -- Magical Mini-Treat
(115287, 78, 98114, 0, 5333, 1, 0, 0, 23222), -- Pet Treat
(115287, 77, 98112, 0, 5331, 1, 0, 0, 23222), -- Lesser Pet Treat
(115287, 4, 86143, 0, 5331, 1, 0, 0, 23222), -- Battle Pet Bandage
(115287, 3, 98715, 0, 5489, 1, 0, 0, 23222), -- Marked Flawless Battle-Stone
(115287, 2, 116429, 0, 5482, 1, 0, 0, 23222), -- Flawless Battle-Training Stone
(115287, 1, 120321, 0, 5334, 1, 0, 0, 23222), -- Mystery Bag
(96778, 2, 44637, 0, 0, 1, 0, 1, 23222), -- Dalaran Crossbow
(96778, 1, 44643, 0, 0, 1, 0, 1, 23222), -- Dalaran Bow
(97012, 5, 47658, 0, 0, 1, 0, 0, 23222), -- Brimstone Igniter
(97012, 4, 40018, 0, 0, 1, 0, 1, 23222), -- Wand of Onyx
(97012, 3, 40020, 0, 0, 1, 0, 1, 23222), -- Wand of Jade
(97012, 2, 40021, 0, 0, 1, 0, 1, 23222), -- Wand of Crystal
(97012, 1, 40019, 0, 0, 1, 0, 1, 23222), -- Wand of Amber
(96980, 115, 2325, 0, 0, 1, 0, 0, 23222), -- Black Dye
(96980, 114, 2604, 0, 0, 1, 0, 0, 23222), -- Red Dye
(96980, 113, 2605, 0, 0, 1, 0, 0, 23222), -- Green Dye
(96980, 112, 4340, 0, 0, 1, 0, 0, 23222), -- Gray Dye
(96980, 111, 4341, 0, 0, 1, 0, 0, 23222), -- Yellow Dye
(96980, 110, 4342, 0, 0, 1, 0, 0, 23222), -- Purple Dye
(96980, 109, 6260, 0, 0, 1, 0, 0, 23222), -- Blue Dye
(96980, 108, 6261, 0, 0, 1, 0, 0, 23222), -- Orange Dye
(96980, 107, 10290, 0, 0, 1, 0, 0, 23222), -- Pink Dye
(96980, 106, 14341, 0, 0, 1, 0, 0, 23222), -- Rune Thread
(96980, 105, 8343, 0, 0, 1, 0, 0, 23222), -- Heavy Silken Thread
(96980, 104, 4291, 0, 0, 1, 0, 0, 23222), -- Silken Thread
(96980, 103, 2321, 0, 0, 1, 0, 0, 23222), -- Fine Thread
(96980, 102, 2320, 0, 0, 1, 0, 0, 23222), -- Coarse Thread
(96980, 101, 7005, 0, 0, 1, 0, 0, 23222), -- Skinning Knife
(97332, 2, 44648, 0, 0, 1, 0, 0, 23222), -- Purple Turban
(97332, 1, 44647, 0, 0, 1, 0, 0, 23222), -- Violet Hat
(93537, 9, 2678, 0, 0, 1, 0, 0, 23222), -- Mild Spices
(93537, 8, 30817, 0, 0, 1, 0, 0, 23222), -- Simple Flour
(93537, 7, 159, 0, 0, 1, 0, 0, 23222), -- Refreshing Spring Water
(93537, 6, 133593, 0, 0, 1, 0, 0, 23222), -- -Unknown-
(93537, 5, 133592, 0, 0, 1, 0, 0, 23222), -- -Unknown-
(93537, 4, 133591, 0, 0, 1, 0, 0, 23222), -- -Unknown-
(93537, 3, 133590, 0, 0, 1, 0, 0, 23222), -- -Unknown-
(93537, 2, 133589, 0, 0, 1, 0, 0, 23222), -- -Unknown-
(93537, 1, 133588, 0, 0, 1, 0, 0, 23222), -- Flaked Sea Salt
(97339, 4, 40704, 0, 0, 1, 0, 0, 23222), -- Pride
(97339, 3, 40702, 0, 0, 1, 0, 0, 23222), -- Rolfsen's Ripper
(97339, 2, 44641, 0, 0, 1, 0, 1, 23222), -- Dalaran Knuckles
(97339, 1, 44652, 0, 0, 1, 0, 1, 23222), -- Dalaran Dagger
(97011, 3, 40703, 0, 0, 1, 0, 0, 23222), -- Grasscutter
(97011, 2, 44639, 0, 0, 1, 0, 1, 23222), -- Dalaran Greatsword
(97011, 1, 44638, 0, 0, 1, 0, 1, 23222), -- Dalaran Sword
(97004, 30, 39354, 0, 0, 1, 0, 0, 23222), -- Light Parchment
(97004, 29, 38426, 0, 0, 1, 0, 0, 23222), -- Eternium Thread
(97004, 28, 39505, 0, 0, 1, 0, 0, 23222), -- Virtuoso Inking Set
(97004, 27, 20815, 0, 0, 1, 0, 0, 23222), -- Jeweler's Kit
(97004, 26, 6532, 0, 0, 1, 0, 0, 23222), -- Bright Baubles
(97004, 25, 6530, 0, 0, 1, 0, 0, 23222), -- Nightcrawlers
(97004, 24, 4400, 0, 0, 1, 0, 0, 23222), -- Heavy Stock
(97004, 23, 4399, 0, 0, 1, 0, 0, 23222), -- Wooden Stock
(97004, 22, 4289, 0, 0, 1, 0, 0, 23222), -- Salt
(97004, 21, 3371, 0, 0, 1, 0, 0, 23222), -- Crystal Vial
(97004, 20, 4340, 0, 0, 1, 0, 0, 23222), -- Gray Dye
(97004, 19, 4342, 0, 0, 1, 0, 0, 23222), -- Purple Dye
(97004, 18, 4341, 0, 0, 1, 0, 0, 23222), -- Yellow Dye
(97004, 17, 2325, 0, 0, 1, 0, 0, 23222), -- Black Dye
(97004, 16, 2604, 0, 0, 1, 0, 0, 23222), -- Red Dye
(97004, 15, 3857, 0, 0, 1, 0, 0, 23222), -- Coal
(97004, 14, 3466, 0, 0, 1, 0, 0, 23222), -- Strong Flux
(97004, 13, 2880, 0, 0, 1, 0, 0, 23222), -- Weak Flux
(97004, 12, 2678, 0, 0, 1, 0, 0, 23222), -- Mild Spices
(97004, 11, 14341, 0, 0, 1, 0, 0, 23222), -- Rune Thread
(97004, 10, 8343, 0, 0, 1, 0, 0, 23222), -- Heavy Silken Thread
(97004, 9, 4291, 0, 0, 1, 0, 0, 23222), -- Silken Thread
(97004, 8, 2321, 0, 0, 1, 0, 0, 23222), -- Fine Thread
(97004, 7, 2320, 0, 0, 1, 0, 0, 23222), -- Coarse Thread
(97004, 6, 5956, 0, 0, 1, 0, 0, 23222), -- Blacksmith Hammer
(97004, 5, 6217, 0, 0, 1, 0, 0, 23222), -- Copper Rod
(97004, 4, 6256, 0, 0, 1, 0, 0, 23222), -- Fishing Pole
(97004, 3, 85663, 0, 0, 1, 0, 0, 23222), -- Herbalist's Spade
(97004, 2, 7005, 0, 0, 1, 0, 0, 23222), -- Skinning Knife
(97004, 1, 2901, 0, 0, 1, 0, 0, 23222), -- Mining Pick
(93530, 37, 22307, 0, 0, 1, 0, 0, 23222), -- Pattern: Enchanted Mageweave Pouch
(93530, 36, 20753, 0, 0, 1, 0, 0, 23222), -- Formula: Lesser Wizard Oil
(93530, 35, 20752, 0, 0, 1, 0, 0, 23222), -- Formula: Minor Mana Oil
(93530, 34, 20758, 0, 0, 1, 0, 0, 23222), -- Formula: Minor Wizard Oil
(93530, 33, 11291, 0, 0, 1, 0, 0, 23222), -- Star Wood
(93530, 32, 4470, 0, 0, 1, 0, 0, 23222), -- Simple Wood
(93530, 31, 10938, 1, 0, 1, 0, 0, 23222), -- Lesser Magic Essence
(93530, 30, 10940, 2, 0, 1, 0, 0, 23222), -- Strange Dust
(93530, 29, 6217, 0, 0, 1, 0, 0, 23222), -- Copper Rod
(93530, 28, 38682, 0, 0, 1, 0, 0, 23222), -- Enchanting Vellum
(93530, 27, 64670, 0, 0, 1, 0, 0, 23222), -- Vanishing Powder
(93530, 16, 139494, 0, 6048, 1, 0, 0, 23222), -- Forgotten Formulas of the Broken Isles
(93530, 15, 128591, 0, 6070, 1, 0, 0, 23222), -- Formula: Enchant Cloak - Binding of Agility
(93530, 14, 128592, 0, 6070, 1, 0, 0, 23222), -- Formula: Enchant Cloak - Binding of Intellect
(93530, 13, 128590, 0, 6070, 1, 0, 0, 23222), -- Formula: Enchant Cloak - Binding of Strength
(93530, 12, 128583, 0, 6070, 1, 0, 0, 23222), -- Formula: Enchant Ring - Binding of Critical Strike
(93530, 11, 128584, 0, 6070, 1, 0, 0, 23222), -- Formula: Enchant Ring - Binding of Haste
(93530, 10, 128585, 0, 6070, 1, 0, 0, 23222), -- Formula: Enchant Ring - Binding of Mastery
(93530, 9, 128586, 0, 6070, 1, 0, 0, 23222), -- Formula: Enchant Ring - Binding of Versatility
(93530, 8, 128588, 0, 6071, 1, 0, 0, 23222), -- Formula: Enchant Cloak - Word of Agility
(93530, 7, 128589, 0, 6071, 1, 0, 0, 23222), -- Formula: Enchant Cloak - Word of Intellect
(93530, 6, 128587, 0, 6071, 1, 0, 0, 23222), -- Formula: Enchant Cloak - Word of Strength
(93530, 5, 128579, 0, 6071, 1, 0, 0, 23222), -- Formula: Enchant Ring - Word of Critical Strike
(93530, 4, 128580, 0, 6071, 1, 0, 0, 23222), -- Formula: Enchant Ring - Word of Haste
(93530, 3, 128581, 0, 6071, 1, 0, 0, 23222), -- Formula: Enchant Ring - Word of Mastery
(93530, 2, 128582, 0, 6071, 1, 0, 0, 23222), -- Formula: Enchant Ring - Word of Versatility
(93530, 1, 140634, 0, 6069, 1, 0, 0, 23222), -- Formula: Ley Shatter
(93521, 35, 10290, 0, 0, 1, 0, 0, 23222), -- Pink Dye
(93521, 34, 4342, 0, 0, 1, 0, 0, 23222), -- Purple Dye
(93521, 33, 6261, 0, 0, 1, 0, 0, 23222), -- Orange Dye
(93521, 32, 4341, 0, 0, 1, 0, 0, 23222), -- Yellow Dye
(93521, 31, 4340, 0, 0, 1, 0, 0, 23222), -- Gray Dye
(93521, 30, 2605, 0, 0, 1, 0, 0, 23222), -- Green Dye
(93521, 29, 2604, 0, 0, 1, 0, 0, 23222), -- Red Dye
(93521, 28, 6260, 0, 0, 1, 0, 0, 23222), -- Blue Dye
(93521, 27, 2325, 0, 0, 1, 0, 0, 23222), -- Black Dye
(93521, 26, 38426, 0, 0, 1, 0, 0, 23222), -- Eternium Thread
(93521, 25, 4289, 0, 0, 1, 0, 0, 23222), -- Salt
(93521, 24, 14341, 0, 0, 1, 0, 0, 23222), -- Rune Thread
(93521, 23, 8343, 0, 0, 1, 0, 0, 23222), -- Heavy Silken Thread
(93521, 22, 4291, 0, 0, 1, 0, 0, 23222), -- Silken Thread
(93521, 21, 2321, 0, 0, 1, 0, 0, 23222), -- Fine Thread
(93521, 20, 2320, 0, 0, 1, 0, 0, 23222), -- Coarse Thread
(93521, 19, 7005, 0, 0, 1, 0, 0, 23222), -- Skinning Knife
(93521, 17, 139490, 0, 6048, 1, 0, 0, 23222), -- Forgotten Techniques of the Broken Isles
(93521, 16, 139498, 0, 6048, 1, 0, 0, 23222), -- Forgotten Patterns of the Broken Isles
(93521, 15, 137916, 0, 6070, 1, 0, 0, 23222), -- Recipe: Gravenscale Armbands
(93521, 14, 137918, 0, 6070, 1, 0, 0, 23222), -- Recipe: Gravenscale Spaulders
(93521, 13, 137919, 0, 6070, 1, 0, 0, 23222), -- Recipe: Gravenscale Leggings
(93521, 12, 137920, 0, 6070, 1, 0, 0, 23222), -- Recipe: Gravenscale Warhelm
(93521, 11, 137921, 0, 6070, 1, 0, 0, 23222), -- Recipe: Gravenscale Grips
(93521, 10, 137922, 0, 6070, 1, 0, 0, 23222), -- Recipe: Gravenscale Treads
(93521, 9, 137923, 0, 6070, 1, 0, 0, 23222), -- Recipe: Gravenscale Hauberk
(93521, 8, 137884, 0, 6070, 1, 0, 0, 23222), -- Recipe: Dreadleather Bindings
(93521, 7, 137886, 0, 6070, 1, 0, 0, 23222), -- Recipe: Dreadleather Shoulderguard
(93521, 6, 137887, 0, 6070, 1, 0, 0, 23222), -- Recipe: Dreadleather Pants
(93521, 5, 137888, 0, 6070, 1, 0, 0, 23222), -- Recipe: Dreadleather Mask
(93521, 4, 137889, 0, 6070, 1, 0, 0, 23222), -- Recipe: Dreadleather Gloves
(93521, 3, 137890, 0, 6070, 1, 0, 0, 23222), -- Recipe: Dreadleather Footpads
(93521, 2, 137891, 0, 6070, 1, 0, 0, 23222), -- Recipe: Dreadleather Jerkin
(93521, 1, 142407, 0, 6071, 1, 0, 0, 23222), -- -Unknown-
(97007, 2, 44645, 0, 0, 1, 0, 1, 23222), -- Dalaran Hammer
(97007, 1, 44636, 0, 0, 1, 0, 1, 23222), -- Dalaran Cudgel
(96987, 9, 50466, 0, 0, 1, 0, 0, 23222), -- Sentinel's Winter Cloak
(96987, 8, 50467, 0, 0, 1, 0, 0, 23222), -- Might of the Ocean Serpent
(96987, 7, 50468, 0, 0, 1, 0, 0, 23222), -- Drape of the Violet Tower
(96987, 6, 50469, 0, 0, 1, 0, 0, 23222), -- Volde's Cloak of the Night Sky
(96987, 5, 50470, 0, 0, 1, 0, 0, 23222), -- Recovered Scarlet Onslaught Cape
(96987, 4, 40722, 0, 0, 1, 0, 0, 23222), -- Platinum Mesh Cloak
(96987, 3, 40721, 0, 0, 1, 0, 0, 23222), -- Hammerhead Sharkskin Cloak
(96987, 2, 40724, 0, 0, 1, 0, 0, 23222), -- Cloak of Kea Feathers
(96987, 1, 40723, 0, 0, 1, 0, 0, 23222), -- Disguise of the Kumiho
(93532, 14, 113111, 0, 2582, 1, 0, 0, 23222), -- Warbinder's Ink
(93532, 13, 79255, 0, 2583, 1, 0, 0, 23222), -- Starlight Ink
(93532, 12, 61981, 0, 2583, 1, 0, 0, 23222), -- Inferno Ink
(93532, 11, 43127, 0, 2583, 1, 0, 0, 23222), -- Snowfall Ink
(93532, 10, 79254, 0, 2582, 1, 0, 0, 23222), -- Ink of Dreams
(93532, 9, 61978, 0, 2582, 1, 0, 0, 23222), -- Blackfallow Ink
(93532, 8, 43126, 0, 2582, 1, 0, 0, 23222), -- Ink of the Sea
(93532, 7, 43124, 0, 2582, 1, 0, 0, 23222), -- Ethereal Ink
(93532, 6, 43122, 0, 2582, 1, 0, 0, 23222), -- Shimmering Ink
(93532, 5, 43120, 0, 2582, 1, 0, 0, 23222), -- Celestial Ink
(93532, 4, 43118, 0, 2582, 1, 0, 0, 23222), -- Jadefire Ink
(93532, 3, 43116, 0, 2582, 1, 0, 0, 23222), -- Lion's Ink
(93532, 2, 39774, 0, 2582, 1, 0, 0, 23222), -- Midnight Ink
(93532, 1, 39469, 0, 2582, 1, 0, 0, 23222), -- Moonglow Ink
(93524, 34, 10290, 0, 0, 1, 0, 0, 23222), -- Pink Dye
(93524, 33, 4342, 0, 0, 1, 0, 0, 23222), -- Purple Dye
(93524, 32, 2325, 0, 0, 1, 0, 0, 23222), -- Black Dye
(93524, 31, 6261, 0, 0, 1, 0, 0, 23222), -- Orange Dye
(93524, 30, 4340, 0, 0, 1, 0, 0, 23222), -- Gray Dye
(93524, 29, 4341, 0, 0, 1, 0, 0, 23222), -- Yellow Dye
(93524, 28, 2605, 0, 0, 1, 0, 0, 23222), -- Green Dye
(93524, 27, 6260, 0, 0, 1, 0, 0, 23222), -- Blue Dye
(93524, 26, 2604, 0, 0, 1, 0, 0, 23222), -- Red Dye
(93524, 25, 2324, 0, 0, 1, 0, 0, 23222), -- Bleach
(93524, 22, 38426, 0, 0, 1, 0, 0, 23222), -- Eternium Thread
(93524, 21, 14341, 0, 0, 1, 0, 0, 23222), -- Rune Thread
(93524, 20, 8343, 0, 0, 1, 0, 0, 23222), -- Heavy Silken Thread
(93524, 19, 4291, 0, 0, 1, 0, 0, 23222), -- Silken Thread
(93524, 18, 2321, 0, 0, 1, 0, 0, 23222), -- Fine Thread
(93524, 17, 2320, 0, 0, 1, 0, 0, 23222), -- Coarse Thread
(93524, 16, 139499, 0, 6048, 1, 0, 0, 23222), -- Forgotten Patterns of the Broken Isles
(93524, 15, 138011, 0, 6070, 1, 0, 0, 23222), -- Pattern: Silkweave Satchel
(93524, 14, 137953, 0, 6071, 1, 0, 0, 23222), -- Pattern: Silkweave Bracers
(93524, 13, 137965, 0, 6070, 1, 0, 0, 23222), -- Pattern: Imbued Silkweave Bracers
(93524, 12, 137967, 0, 6070, 1, 0, 0, 23222), -- Pattern: Imbued Silkweave Epaulets
(93524, 11, 137968, 0, 6070, 1, 0, 0, 23222), -- Pattern: Imbued Silkweave Pantaloons
(93524, 10, 137969, 0, 6070, 1, 0, 0, 23222), -- Pattern: Imbued Silkweave Hood
(93524, 9, 137970, 0, 6070, 1, 0, 0, 23222); -- Pattern: Imbued Silkweave Gloves

INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(93524, 8, 137971, 0, 6070, 1, 0, 0, 23222), -- Pattern: Imbued Silkweave Slippers
(93524, 7, 137972, 0, 6070, 1, 0, 0, 23222), -- Pattern: Imbued Silkweave Robe
(93524, 6, 137955, 0, 6071, 1, 0, 0, 23222), -- Pattern: Silkweave Epaulets
(93524, 5, 137956, 0, 6071, 1, 0, 0, 23222), -- Pattern: Silkweave Pantaloons
(93524, 4, 137957, 0, 6071, 1, 0, 0, 23222), -- Pattern: Silkweave Hood
(93524, 3, 137958, 0, 6071, 1, 0, 0, 23222), -- Pattern: Silkweave Gloves
(93524, 2, 137959, 0, 6071, 1, 0, 0, 23222), -- Pattern: Silkweave Slippers
(93524, 1, 137960, 0, 6071, 1, 0, 0, 23222), -- Pattern: Silkweave Robe
(96785, 10, 128833, 0, 0, 1, 0, 0, 23222), -- Kaldorei Ginger Wine
(96785, 9, 128834, 0, 0, 1, 0, 0, 23222), -- Bradensbrook Gorse Wine
(96785, 8, 44626, 0, 0, 1, 0, 0, 23222), -- Cask of Aged Dalaran Red
(96785, 7, 44632, 0, 0, 1, 0, 0, 23222), -- Cask of Dalaran Red
(96785, 6, 44625, 0, 0, 1, 0, 0, 23222), -- Bottle of Aged Dalaran Red
(96785, 5, 44623, 0, 0, 1, 0, 0, 23222), -- Bottle of Dalaran Red
(96785, 4, 44622, 0, 0, 1, 0, 0, 23222), -- Cask of Dalaran White
(96785, 3, 44621, 0, 0, 1, 0, 0, 23222), -- Bottle of Dalaran White
(96785, 2, 44679, 0, 0, 1, 0, 0, 23222), -- Red Wine Glass
(96785, 1, 44678, 0, 0, 1, 0, 0, 23222), -- Wine Glass
(96507, 1, 37460, 0, 0, 1, 0, 0, 23222), -- Rope Pet Leash
(96479, 9, 44820, 0, 0, 1, 0, 0, 23222), -- Red Ribbon Pet Leash
(96479, 8, 37460, 0, 0, 1, 0, 0, 23222), -- Rope Pet Leash
(96479, 7, 43352, 0, 0, 1, 0, 0, 23222), -- Pet Grooming Kit
(96479, 6, 43626, 0, 0, 1, 0, 0, 23222), -- Happy Pet Snack
(96479, 5, 37431, 0, 0, 1, 0, 0, 23222), -- Fetch Ball
(96479, 4, 129826, 0, 0, 1, 0, 0, 23222), -- Nursery Spider
(96479, 3, 48120, 0, 0, 1, 0, 0, 23222), -- Obsidian Hatchling
(96479, 2, 44822, 0, 0, 1, 0, 0, 23222), -- Albino Snake
(96479, 1, 46398, 0, 0, 1, 0, 0, 23222), -- Cat Carrier (Calico Cat)
(96808, 14, 128839, 0, 0, 1, 0, 0, 23222), -- Smoked Elderhorn
(96808, 13, 128840, 0, 0, 1, 0, 0, 23222), -- Honey-Glazed Ham
(96808, 12, 128761, 0, 0, 1, 0, 0, 23222), -- Azsunian Olives
(96808, 11, 128844, 0, 0, 1, 0, 0, 23222), -- Dried Mango
(96808, 10, 128843, 0, 0, 1, 0, 0, 23222), -- Azsunian Grapes
(96808, 9, 128764, 0, 0, 1, 0, 0, 23222), -- Moist Azsunian Feta
(96808, 8, 128763, 0, 0, 1, 0, 0, 23222), -- Pungent Vrykul Gamalost
(96808, 7, 138977, 0, 0, 1, 0, 0, 23222), -- Thundertotem Rice Cake
(96808, 6, 128835, 0, 0, 1, 0, 0, 23222), -- Highmountain Fry Bread
(96808, 5, 128836, 0, 0, 1, 0, 0, 23222), -- Barley Bread
(96808, 4, 128833, 0, 0, 1, 0, 0, 23222), -- Kaldorei Ginger Wine
(96808, 3, 128834, 0, 0, 1, 0, 0, 23222), -- Bradensbrook Gorse Wine
(96808, 2, 128841, 0, 0, 1, 0, 0, 23222), -- Highmountain Tiswin
(96808, 1, 128842, 0, 0, 1, 0, 0, 23222), -- Tideskorn Mead Ale
(96782, 7, 138977, 0, 0, 1, 0, 0, 23222), -- Thundertotem Rice Cake
(96782, 6, 128835, 0, 0, 1, 0, 0, 23222), -- Highmountain Fry Bread
(96782, 5, 128836, 0, 0, 1, 0, 0, 23222), -- Barley Bread
(96782, 4, 128764, 0, 0, 1, 0, 0, 23222), -- Moist Azsunian Feta
(96782, 3, 128763, 0, 0, 1, 0, 0, 23222), -- Pungent Vrykul Gamalost
(96782, 2, 35952, 0, 0, 1, 0, 0, 23222), -- Briny Hardcheese
(96782, 1, 33443, 0, 0, 1, 0, 0, 23222), -- Sour Goat Cheese
(96801, 4, 2531, 0, 0, 1, 0, 1, 23222), -- Great Axe
(96801, 3, 2523, 0, 0, 1, 0, 1, 23222), -- Bullova
(96801, 2, 2530, 0, 0, 1, 0, 1, 23222), -- Francisca
(96801, 1, 2522, 0, 0, 1, 0, 1, 23222), -- Crescent Axe
(96804, 11, 128833, 0, 0, 1, 0, 0, 23222), -- Kaldorei Ginger Wine
(96804, 10, 128834, 0, 0, 1, 0, 0, 23222), -- Bradensbrook Gorse Wine
(96804, 9, 128841, 0, 0, 1, 0, 0, 23222), -- Highmountain Tiswin
(96804, 8, 128842, 0, 0, 1, 0, 0, 23222), -- Tideskorn Mead Ale
(96804, 7, 138292, 0, 0, 1, 0, 0, 23222), -- Ley-Enriched Water
(96804, 6, 128853, 0, 0, 1, 0, 0, 23222), -- Highmountain Spring Water
(96804, 5, 44574, 0, 0, 1, 0, 0, 23222), -- Skin of Mulgore Firewater
(96804, 4, 44573, 0, 0, 1, 0, 0, 23222), -- Cup of Frog Venom Brew
(96804, 3, 44575, 0, 0, 1, 0, 0, 23222), -- Flask of Bitter Cactus Cider
(96804, 2, 44571, 0, 0, 1, 0, 0, 23222), -- Bottle of Silvermoon Port
(96804, 1, 44570, 0, 0, 1, 0, 0, 23222), -- Glass of Eversong Wine
(96812, 14, 43348, 0, 0, 1, 0, 0, 23222), -- Tabard of the Explorer
(96812, 12, 35221, 0, 0, 1, 0, 0, 23222), -- Tabard of the Shattered Sun
(96812, 11, 31775, 0, 1994, 1, 0, 0, 23222), -- Sporeggar Tabard
(96812, 10, 32445, 0, 0, 1, 0, 0, 23222), -- Skyguard Tabard
(96812, 9, 31781, 0, 0, 1, 0, 0, 23222), -- Sha'tar Tabard
(96812, 8, 31780, 0, 0, 1, 0, 0, 23222), -- Scryers Tabard
(96812, 7, 32828, 0, 1958, 1, 0, 0, 23222), -- Ogri'la Tabard
(96812, 6, 31778, 0, 0, 1, 0, 0, 23222), -- Lower City Tabard
(96812, 5, 31777, 0, 0, 1, 0, 0, 23222), -- Keepers of Time Tabard
(96812, 4, 31776, 0, 0, 1, 0, 0, 23222), -- Consortium Tabard
(96812, 3, 31804, 0, 0, 1, 0, 0, 23222), -- Cenarion Expedition Tabard
(96812, 2, 31779, 0, 0, 1, 0, 0, 23222), -- Aldor Tabard
(96812, 1, 5976, 0, 0, 1, 0, 0, 23222); -- Guild Tabard


UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=96780 AND `item`=3424 AND `ExtendedCost`=0 AND `type`=1); -- Bouquet of Black Roses
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=96780 AND `item`=3423 AND `ExtendedCost`=0 AND `type`=1); -- Bouquet of White Roses
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=96780 AND `item`=3420 AND `ExtendedCost`=0 AND `type`=1); -- Black Rose
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=96780 AND `item`=3422 AND `ExtendedCost`=0 AND `type`=1); -- Beautiful Wildflowers
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=96780 AND `item`=3419 AND `ExtendedCost`=0 AND `type`=1); -- Red Rose
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=96780 AND `item`=3421 AND `ExtendedCost`=0 AND `type`=1); -- Simple Wildflowers
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93526 AND `item`=52188 AND `ExtendedCost`=0 AND `type`=1); -- Jeweler's Setting
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93526 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1); -- Jeweler's Kit
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93526 AND `item`=139497 AND `ExtendedCost`=6048 AND `type`=1); -- Forgotten Designs of the Broken Isles
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93526 AND `item`=137837 AND `ExtendedCost`=6070 AND `type`=1); -- Design: Grim Furystone Gorget
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93526 AND `item`=137832 AND `ExtendedCost`=6070 AND `type`=1); -- Design: Sylvan Maelstrom Amulet
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93526 AND `item`=137833 AND `ExtendedCost`=6070 AND `type`=1); -- Design: Intrepid Necklace of Prophecy
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93526 AND `item`=137830 AND `ExtendedCost`=6070 AND `type`=1); -- Design: Tranquil Necklace of Prophecy
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93526 AND `item`=137835 AND `ExtendedCost`=6070 AND `type`=1); -- Design: Righteous Dawnlight Medallion
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93526 AND `item`=137827 AND `ExtendedCost`=6070 AND `type`=1); -- Design: Blessed Dawnlight Medallion
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93526 AND `item`=137834 AND `ExtendedCost`=6070 AND `type`=1); -- Design: Ancient Maelstrom Amulet
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93526 AND `item`=137836 AND `ExtendedCost`=6070 AND `type`=1); -- Design: Raging Furystone Gorget
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93526 AND `item`=137817 AND `ExtendedCost`=6071 AND `type`=1); -- Design: Deep Amber Loop
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93526 AND `item`=137819 AND `ExtendedCost`=6071 AND `type`=1); -- Design: Azsunite Loop
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93526 AND `item`=137862 AND `ExtendedCost`=6071 AND `type`=1); -- Design: Queen's Opal Loop
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93526 AND `item`=137818 AND `ExtendedCost`=6071 AND `type`=1); -- Design: Skystone Loop
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93526 AND `item`=137820 AND `ExtendedCost`=6071 AND `type`=1); -- Design: Deep Amber Pendant
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93526 AND `item`=137822 AND `ExtendedCost`=6071 AND `type`=1); -- Design: Azsunite Pendant
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93526 AND `item`=137863 AND `ExtendedCost`=6071 AND `type`=1); -- Design: Queen's Opal Pendant
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93526 AND `item`=137821 AND `ExtendedCost`=6071 AND `type`=1); -- Design: Skystone Pendant
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93188 AND `item`=139489 AND `ExtendedCost`=6048 AND `type`=1); -- Forgotten Techniques of the Broken Isles
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93188 AND `item`=3857 AND `ExtendedCost`=0 AND `type`=1); -- Coal
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93188 AND `item`=18567 AND `ExtendedCost`=0 AND `type`=1); -- Elemental Flux
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93188 AND `item`=3466 AND `ExtendedCost`=0 AND `type`=1); -- Strong Flux
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93188 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1); -- Weak Flux
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93188 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1); -- Blacksmith Hammer
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93188 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1); -- Mining Pick
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=96780 AND `item`=3424 AND `ExtendedCost`=0 AND `type`=1); -- Bouquet of Black Roses
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=96780 AND `item`=3423 AND `ExtendedCost`=0 AND `type`=1); -- Bouquet of White Roses
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=96780 AND `item`=3420 AND `ExtendedCost`=0 AND `type`=1); -- Black Rose
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=96780 AND `item`=3422 AND `ExtendedCost`=0 AND `type`=1); -- Beautiful Wildflowers
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=96780 AND `item`=3419 AND `ExtendedCost`=0 AND `type`=1); -- Red Rose
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=96780 AND `item`=3421 AND `ExtendedCost`=0 AND `type`=1); -- Simple Wildflowers
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=92489 AND `item`=63251 AND `ExtendedCost`=0 AND `type`=1); -- Mei's Masterful Brew
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97342 AND `item`=42376 AND `ExtendedCost`=0 AND `type`=1); -- Yellow Martial Shirt
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97342 AND `item`=42378 AND `ExtendedCost`=0 AND `type`=1); -- Red Martial Shirt
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97342 AND `item`=42377 AND `ExtendedCost`=0 AND `type`=1); -- Purple Martial Shirt
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97342 AND `item`=42375 AND `ExtendedCost`=0 AND `type`=1); -- Green Martial Shirt
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97342 AND `item`=42374 AND `ExtendedCost`=0 AND `type`=1); -- Blue Martial Shirt
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97342 AND `item`=42372 AND `ExtendedCost`=0 AND `type`=1); -- Scarlet Filigreed Shirt
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97342 AND `item`=42373 AND `ExtendedCost`=0 AND `type`=1); -- Golden Filigreed Shirt
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97342 AND `item`=42369 AND `ExtendedCost`=0 AND `type`=1); -- Ebon Filigreed Shirt
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97342 AND `item`=42370 AND `ExtendedCost`=0 AND `type`=1); -- Cerulean Filigreed Shirt
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97342 AND `item`=42371 AND `ExtendedCost`=0 AND `type`=1); -- Amber Filigreed Shirt
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97342 AND `item`=42368 AND `ExtendedCost`=0 AND `type`=1); -- Scarlet Filigreed Doublet
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97342 AND `item`=42363 AND `ExtendedCost`=0 AND `type`=1); -- Golden Filigreed Doublet
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97342 AND `item`=42360 AND `ExtendedCost`=0 AND `type`=1); -- Ebon Filigreed Doublet
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97342 AND `item`=42361 AND `ExtendedCost`=0 AND `type`=1); -- Cerulean Filigreed Doublet
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97342 AND `item`=42365 AND `ExtendedCost`=0 AND `type`=1); -- Amber Filigreed Doublet
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97342 AND `item`=53852 AND `ExtendedCost`=0 AND `type`=1); -- Embroidered Shirt
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93543 AND `item`=139599 AND `ExtendedCost`=6049 AND `type`=1); -- Empowered Ring of the Kirin Tor
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97005 AND `item`=50357 AND `ExtendedCost`=0 AND `type`=1); -- Maghia's Misguided Quill
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97005 AND `item`=50358 AND `ExtendedCost`=0 AND `type`=1); -- Purified Lunar Dust
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97005 AND `item`=50355 AND `ExtendedCost`=0 AND `type`=1); -- Herkuml War Token
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97005 AND `item`=50356 AND `ExtendedCost`=0 AND `type`=1); -- Corroded Skeleton Key
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97005 AND `item`=48722 AND `ExtendedCost`=0 AND `type`=1); -- Shard of the Crystal Heart
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97005 AND `item`=48724 AND `ExtendedCost`=0 AND `type`=1); -- Talisman of Resurgence
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97005 AND `item`=47734 AND `ExtendedCost`=0 AND `type`=1); -- Mark of Supremacy
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97005 AND `item`=47735 AND `ExtendedCost`=0 AND `type`=1); -- Glyph of Indomitability
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97005 AND `item`=40683 AND `ExtendedCost`=0 AND `type`=1); -- Valor Medal of the First War
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97005 AND `item`=40682 AND `ExtendedCost`=0 AND `type`=1); -- Sundial of the Exiled
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97005 AND `item`=40685 AND `ExtendedCost`=0 AND `type`=1); -- The Egg of Mortal Essence
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97005 AND `item`=40684 AND `ExtendedCost`=0 AND `type`=1); -- Mirror of Truth
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=92936 AND `item`=128847 AND `ExtendedCost`=0 AND `type`=1); -- Lovingly Crafted Carrot Cake
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=92936 AND `item`=128846 AND `ExtendedCost`=0 AND `type`=1); -- Tiramisu
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=92936 AND `item`=128845 AND `ExtendedCost`=0 AND `type`=1); -- Sweet Rice Cake
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=92936 AND `item`=42431 AND `ExtendedCost`=0 AND `type`=1); -- Dalaran Brownie
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=92936 AND `item`=42430 AND `ExtendedCost`=0 AND `type`=1); -- Dalaran Doughnut
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=92936 AND `item`=42429 AND `ExtendedCost`=0 AND `type`=1); -- Red Velvet Cupcake
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=92936 AND `item`=42436 AND `ExtendedCost`=0 AND `type`=1); -- Chocolate Celebration Cake
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=92936 AND `item`=35954 AND `ExtendedCost`=0 AND `type`=1); -- Sweetened Goat's Milk
UPDATE `npc_vendor` SET `slot`=60, `maxcount`=5, `VerifiedBuild`=23222 WHERE (`entry`=93539 AND `item`=23817 AND `ExtendedCost`=0 AND `type`=1); -- Schematic: Titanium Toolbox
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93539 AND `item`=141047 AND `ExtendedCost`=6071 AND `type`=1); -- Technique: Glyph of the Goblin Anti-Grav Flare
UPDATE `npc_vendor` SET `slot`=37, `VerifiedBuild`=23222 WHERE (`entry`=93539 AND `item`=39354 AND `ExtendedCost`=0 AND `type`=1); -- Light Parchment
UPDATE `npc_vendor` SET `slot`=36, `maxcount`=2, `VerifiedBuild`=23222 WHERE (`entry`=93539 AND `item`=4364 AND `ExtendedCost`=0 AND `type`=1); -- Coarse Blasting Powder
UPDATE `npc_vendor` SET `slot`=35, `maxcount`=3, `VerifiedBuild`=23222 WHERE (`entry`=93539 AND `item`=4357 AND `ExtendedCost`=0 AND `type`=1); -- Rough Blasting Powder
UPDATE `npc_vendor` SET `slot`=34, `VerifiedBuild`=23222 WHERE (`entry`=93539 AND `item`=10647 AND `ExtendedCost`=0 AND `type`=1); -- Engineer's Ink
UPDATE `npc_vendor` SET `slot`=33, `VerifiedBuild`=23222 WHERE (`entry`=93539 AND `item`=3466 AND `ExtendedCost`=0 AND `type`=1); -- Strong Flux
UPDATE `npc_vendor` SET `slot`=32, `VerifiedBuild`=23222 WHERE (`entry`=93539 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1); -- Weak Flux
UPDATE `npc_vendor` SET `slot`=31, `VerifiedBuild`=23222 WHERE (`entry`=93539 AND `item`=39684 AND `ExtendedCost`=0 AND `type`=1); -- Hair Trigger
UPDATE `npc_vendor` SET `slot`=30, `VerifiedBuild`=23222 WHERE (`entry`=93539 AND `item`=40533 AND `ExtendedCost`=0 AND `type`=1); -- Walnut Stock
UPDATE `npc_vendor` SET `slot`=29, `VerifiedBuild`=23222 WHERE (`entry`=93539 AND `item`=4400 AND `ExtendedCost`=0 AND `type`=1); -- Heavy Stock
UPDATE `npc_vendor` SET `slot`=28, `VerifiedBuild`=23222 WHERE (`entry`=93539 AND `item`=4399 AND `ExtendedCost`=0 AND `type`=1); -- Wooden Stock
UPDATE `npc_vendor` SET `slot`=27, `VerifiedBuild`=23222 WHERE (`entry`=93539 AND `item`=90146 AND `ExtendedCost`=0 AND `type`=1); -- Tinker's Kit
UPDATE `npc_vendor` SET `slot`=26, `VerifiedBuild`=23222 WHERE (`entry`=93539 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1); -- Mining Pick
UPDATE `npc_vendor` SET `slot`=25, `VerifiedBuild`=23222 WHERE (`entry`=93539 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1); -- Blacksmith Hammer
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93539 AND `item`=139495 AND `ExtendedCost`=6048 AND `type`=1); -- Forgotten Schematics of the Broken Isles
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93539 AND `item`=136631 AND `ExtendedCost`=0 AND `type`=1); -- Surface-to-Infernal Rocket Launcher
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93539 AND `item`=136632 AND `ExtendedCost`=0 AND `type`=1); -- Chaos Blaster
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93539 AND `item`=136629 AND `ExtendedCost`=0 AND `type`=1); -- Felgibber Shotgun
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93539 AND `item`=136630 AND `ExtendedCost`=0 AND `type`=1); -- "Twirling Bottom" Repeater
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93539 AND `item`=136638 AND `ExtendedCost`=0 AND `type`=1); -- True Iron Barrel
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93539 AND `item`=136636 AND `ExtendedCost`=0 AND `type`=1); -- Sniping Scope
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93539 AND `item`=136633 AND `ExtendedCost`=0 AND `type`=1); -- Loose Trigger
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93539 AND `item`=136637 AND `ExtendedCost`=0 AND `type`=1); -- Oversized Blasting Cap
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93539 AND `item`=137710 AND `ExtendedCost`=6071 AND `type`=1); -- Schematic: Failure Detection Pylon
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93539 AND `item`=137709 AND `ExtendedCost`=6071 AND `type`=1); -- Schematic: Auto-Hammer
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93539 AND `item`=137708 AND `ExtendedCost`=6071 AND `type`=1); -- Schematic: Gunpack
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93539 AND `item`=137707 AND `ExtendedCost`=6071 AND `type`=1); -- Schematic: Pump-Action Bandage Gun
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93539 AND `item`=137705 AND `ExtendedCost`=6071 AND `type`=1); -- Schematic: Deployable Bullet Dispenser
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=93539 AND `item`=137691 AND `ExtendedCost`=6070 AND `type`=1); -- Schematic: Intra-Dalaran Wormhole Generator
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=92184 AND `item`=3857 AND `ExtendedCost`=0 AND `type`=1); -- Coal
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=92184 AND `item`=18567 AND `ExtendedCost`=0 AND `type`=1); -- Elemental Flux
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=92184 AND `item`=3466 AND `ExtendedCost`=0 AND `type`=1); -- Strong Flux
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=92184 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1); -- Weak Flux
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=92184 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1); -- Blacksmith Hammer
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=92184 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1); -- Mining Pick
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=92184 AND `item`=139493 AND `ExtendedCost`=6048 AND `type`=1); -- Forgotten Plans of the Broken Isles
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=92184 AND `item`=123935 AND `ExtendedCost`=6071 AND `type`=1); -- Recipe: Leystone Breastplate
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=92184 AND `item`=123934 AND `ExtendedCost`=6071 AND `type`=1); -- Recipe: Leystone Boots
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=92184 AND `item`=123933 AND `ExtendedCost`=6071 AND `type`=1); -- Recipe: Leystone Gauntlets
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=92184 AND `item`=123932 AND `ExtendedCost`=6071 AND `type`=1); -- Recipe: Leystone Helm
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=92184 AND `item`=137680 AND `ExtendedCost`=6071 AND `type`=1); -- Recipe: Leystone Greaves
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=92184 AND `item`=123930 AND `ExtendedCost`=6071 AND `type`=1); -- Recipe: Leystone Pauldrons
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=92184 AND `item`=123928 AND `ExtendedCost`=6071 AND `type`=1); -- Recipe: Leystone Armguards
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97001 AND `item`=40699 AND `ExtendedCost`=0 AND `type`=1); -- Handbook of Obscure Remedies
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97001 AND `item`=40698 AND `ExtendedCost`=0 AND `type`=1); -- Ward of the Violet Citadel
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97342 AND `item`=42376 AND `ExtendedCost`=0 AND `type`=1); -- Yellow Martial Shirt
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97342 AND `item`=42378 AND `ExtendedCost`=0 AND `type`=1); -- Red Martial Shirt
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97342 AND `item`=42377 AND `ExtendedCost`=0 AND `type`=1); -- Purple Martial Shirt
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97342 AND `item`=42375 AND `ExtendedCost`=0 AND `type`=1); -- Green Martial Shirt
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97342 AND `item`=42374 AND `ExtendedCost`=0 AND `type`=1); -- Blue Martial Shirt
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97342 AND `item`=42372 AND `ExtendedCost`=0 AND `type`=1); -- Scarlet Filigreed Shirt
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97342 AND `item`=42373 AND `ExtendedCost`=0 AND `type`=1); -- Golden Filigreed Shirt
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97342 AND `item`=42369 AND `ExtendedCost`=0 AND `type`=1); -- Ebon Filigreed Shirt
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97342 AND `item`=42370 AND `ExtendedCost`=0 AND `type`=1); -- Cerulean Filigreed Shirt
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97342 AND `item`=42371 AND `ExtendedCost`=0 AND `type`=1); -- Amber Filigreed Shirt
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97342 AND `item`=42368 AND `ExtendedCost`=0 AND `type`=1); -- Scarlet Filigreed Doublet
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97342 AND `item`=42363 AND `ExtendedCost`=0 AND `type`=1); -- Golden Filigreed Doublet
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97342 AND `item`=42360 AND `ExtendedCost`=0 AND `type`=1); -- Ebon Filigreed Doublet
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97342 AND `item`=42361 AND `ExtendedCost`=0 AND `type`=1); -- Cerulean Filigreed Doublet
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97342 AND `item`=42365 AND `ExtendedCost`=0 AND `type`=1); -- Amber Filigreed Doublet
UPDATE `npc_vendor` SET `VerifiedBuild`=23222 WHERE (`entry`=97342 AND `item`=53852 AND `ExtendedCost`=0 AND `type`=1); -- Embroidered Shirt
UPDATE `quest_objectives` SET `VerifiedBuild`=23222 WHERE `ID`=283306; -- 283306
UPDATE `quest_objectives` SET `VerifiedBuild`=23222 WHERE `ID`=283305; -- 283305
UPDATE `quest_objectives` SET `VerifiedBuild`=23222 WHERE `ID`=285484; -- 285484
UPDATE `quest_objectives` SET `VerifiedBuild`=23222 WHERE `ID`=285483; -- 285483
UPDATE `quest_objectives` SET `VerifiedBuild`=23222 WHERE `ID`=282607; -- 282607
UPDATE `quest_objectives` SET `VerifiedBuild`=23222 WHERE `ID`=282813; -- 282813
UPDATE `quest_objectives` SET `VerifiedBuild`=23222 WHERE `ID`=282818; -- 282818
UPDATE `quest_objectives` SET `VerifiedBuild`=23222 WHERE `ID`=282817; -- 282817
UPDATE `quest_objectives` SET `VerifiedBuild`=23222 WHERE `ID`=282501; -- 282501
UPDATE `quest_visual_effect` SET `VerifiedBuild`=23222 WHERE (`ID`=282501 AND `Index`=0);
UPDATE `quest_visual_effect` SET `VerifiedBuild`=23222 WHERE (`ID`=282818 AND `Index`=0);
UPDATE `quest_visual_effect` SET `VerifiedBuild`=23222 WHERE (`ID`=283306 AND `Index`=0);
UPDATE `quest_visual_effect` SET `VerifiedBuild`=23222 WHERE (`ID`=283305 AND `Index`=0);
UPDATE `creature_questitem` SET `VerifiedBuild`=23222 WHERE (`CreatureEntry`=27131 AND `Idx`=1); -- Grizzly Bear
UPDATE `creature_questitem` SET `VerifiedBuild`=23222 WHERE (`CreatureEntry`=27131 AND `Idx`=0); -- Grizzly Bear
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=250402; -- Chair
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=251211; -- Well-worn Scroll
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=248972; -- Demonsbreath Crucible
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=259374; -- Stool
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=259371; -- Stool
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=259361; -- Bench
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=259367; -- Bench
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=250887; -- Training Troops
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=251209; -- Frosted Doughnut
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=250400; -- Chair
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=250397; -- Chair
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=250391; -- Chair
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=248523; -- Khadgar's Lockbox
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=248852; -- Cage
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=247571; -- Lockpicking Junk 03
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=248975; -- Shaldorei Silk Filter
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=251304; -- Portal to Sanctum of Light
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=259355; -- Bench
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=250303; -- Bench
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=250260; -- Chair
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=250305; -- Chair
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=250310; -- Chair
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=250302; -- Bench
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=252965; -- Summoning Ancient of War
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=251210; -- Crystal Ball
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=259369; -- Stool
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=247564; -- Table Poison
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=248860; -- Books
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=249012; -- Advanced Corks
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=259379; -- Bench
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=259373; -- Stool
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=259370; -- Bench
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=259362; -- Bench
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=250311; -- Chair
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=250306; -- Chair
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=250301; -- Bench
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=250407; -- Chair
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=250389; -- Bench
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=248858; -- Papers
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=247572; -- Chair
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=248971; -- Precipitating Powder
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=259377; -- Stool
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=259372; -- Stool
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=259352; -- Bench
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=259378; -- Bench
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=250304; -- Bench
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=259366; -- Bench
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=250312; -- Chair
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=250261; -- Chair
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=250307; -- Chair
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=250405; -- Chair
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=250401; -- Chair
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=250395; -- Chair
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=248855; -- Torch
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=247579; -- Dagger
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=247558; -- Smokebomb 01
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=248857; -- Lantern
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=248964; -- Dual-Chambered Mixing Flask
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=259358; -- Bench
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=259360; -- Bench
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=259364; -- Bench
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=250308; -- Chair
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=250309; -- Chair
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=250258; -- Chair
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=250417; -- Archmage Vargoth's Journal
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=250399; -- Chair
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=248973; -- Shaldorei Silk Filter
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=259353; -- Bench
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=242029; -- Guild Vault
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=242030; -- Guild Vault
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=250390; -- Chair
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=248970; -- High-Capacity Decoction Conduit
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=259376; -- Bench
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=259354; -- Bench
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=259356; -- Bench
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=259368; -- Bench
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=259363; -- Bench
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=250403; -- Chair
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=250398; -- Chair
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=250404; -- Chair
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=248859; -- Papers
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=250388; -- Bench
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=259359; -- Bench
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=259365; -- Bench
UPDATE `gameobject_template` SET `VerifiedBuild`=23222 WHERE `entry`=259357; -- Bench
UPDATE `gameobject_questitem` SET `VerifiedBuild`=23222 WHERE (`GameObjectEntry`=250417 AND `Idx`=0); -- Archmage Vargoth's Journal
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5917; -- 5917
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5916; -- 5916
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5915; -- 5915
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5914; -- 5914
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5913; -- 5913
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5912; -- 5912
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5911; -- 5911
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5910; -- 5910
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5909; -- 5909
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5908; -- 5908
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5907; -- 5907
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5906; -- 5906
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5905; -- 5905
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5904; -- 5904
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5903; -- 5903
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5902; -- 5902
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5901; -- 5901
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5900; -- 5900
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5899; -- 5899
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5898; -- 5898
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5897; -- 5897
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5896; -- 5896
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5895; -- 5895
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5894; -- 5894
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5893; -- 5893
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5892; -- 5892
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5891; -- 5891
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5890; -- 5890
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5889; -- 5889
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5888; -- 5888
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5886; -- 5886
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5887; -- 5887
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5885; -- 5885
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5884; -- 5884
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5883; -- 5883
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5882; -- 5882
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5881; -- 5881
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5880; -- 5880
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5879; -- 5879
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5878; -- 5878
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5877; -- 5877
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5876; -- 5876
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5875; -- 5875
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5874; -- 5874
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5872; -- 5872
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5871; -- 5871
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5870; -- 5870
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5869; -- 5869
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5868; -- 5868
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5867; -- 5867
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5866; -- 5866
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5865; -- 5865
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5864; -- 5864
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5863; -- 5863
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5862; -- 5862
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5861; -- 5861
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5860; -- 5860
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5859; -- 5859
UPDATE `page_text` SET `VerifiedBuild`=23222 WHERE `ID`=5788; -- 5788
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=27410; -- 27410
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=26965; -- 26965
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=13349; -- 13349
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=27916; -- 27916
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=27677; -- 27677
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=27209; -- 27209
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=28423; -- 28423
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=27917; -- 27917
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=9185; -- 9185
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=25785; -- 25785
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=21408; -- 21408
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=30575; -- 30575
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=30217; -- 30217
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=28740; -- 28740
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=9189; -- 9189
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=30056; -- 30056
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=29130; -- 29130
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=13573; -- 13573
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=9193; -- 9193
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=5716; -- 5716
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=9186; -- 9186
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=26474; -- 26474
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=27896; -- 27896
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=29298; -- 29298
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=13581; -- 13581
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=16540; -- 16540
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=13583; -- 13583
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=28502; -- 28502
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=30560; -- 30560
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=14162; -- 14162
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=27374; -- 27374
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=28482; -- 28482
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=13461; -- 13461
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=27918; -- 27918
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=27898; -- 27898
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=27453; -- 27453
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=27340; -- 27340
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=29022; -- 29022
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=30559; -- 30559
UPDATE `npc_text` SET `VerifiedBuild`=23222 WHERE `ID`=5006; -- 5006
UPDATE `trainer` SET `Greeting`='Care to learn how to turn the ore that you find into weapons and metal armor?' WHERE  `Id`=27;
UPDATE `trainer` SET `VerifiedBuild`=23420 WHERE `Id` IN (10, 91, 136, 46, 407, 580, 27, 160);


DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN (56068, 4254, 1701, 1355, 1263, 7955, 1702, 5392, 63075, 1241, 1699, 2326);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES
(56068, 10),
(4254, 91),
(1701, 91),
(1355, 136),
(1263, 46),
(7955, 46),
(1702, 407),
(5392, 91),
(63075, 580),
(1241, 27),
(1699, 136),
(2326, 160);

Update `gossip_menu` SET `VerifiedBuild`=23420 WHERE (`MenuId`=6182 AND `TextId`=7334) OR (`MenuId`=6184 AND `TextId`=7338) OR (`MenuId`=5665 AND `TextId`=6961) OR (`MenuId`=6201 AND `TextId`=7381) OR (`MenuId`=13410 AND `TextId`=19057) OR (`MenuId`=13142 AND `TextId`=18508) OR (`MenuId`=13168 AND `TextId`=18562) OR (`MenuId`=6161 AND `TextId`=7314) OR (`MenuId`=13131 AND `TextId`=18472) OR (`MenuId`=13017 AND `TextId`=18288) OR (`MenuId`=6230 AND `TextId`=7404) OR (`MenuId`=6234 AND `TextId`=7387) OR (`MenuId`=11073 AND `TextId`=15400) OR (`MenuId`=6207 AND `TextId`=7356) OR (`MenuId`=6202 AND `TextId`=7355) OR (`MenuId`=8637 AND `TextId`=10831) OR (`MenuId`=8636 AND `TextId`=10833) OR (`MenuId`=8635 AND `TextId`=10832) OR (`MenuId`=8634 AND `TextId`=10834) OR (`MenuId`=6206 AND `TextId`=7360) OR (`MenuId`=6205 AND `TextId`=7359) OR (`MenuId`=6204 AND `TextId`=7358) OR (`MenuId`=6203 AND `TextId`=7357) OR (`MenuId`=13075 AND `TextId`=18372) OR (`MenuId`=6183 AND `TextId`=7337) OR (`MenuId`=15306 AND `TextId`=21955) OR (`MenuId`=13082 AND `TextId`=18371) OR (`MenuId`=13076 AND `TextId`=18363) OR (`MenuId`=13075 AND `TextId`=18362) OR (`MenuId`=13081 AND `TextId`=18370) OR (`MenuId`=13080 AND `TextId`=18369) OR (`MenuId`=13079 AND `TextId`=18366) OR (`MenuId`=13078 AND `TextId`=18365) OR (`MenuId`=13077 AND `TextId`=18364) OR (`MenuId`=8848 AND `TextId`=11472) OR (`MenuId`=13083 AND `TextId`=7795) OR (`MenuId`=6578 AND `TextId`=7794) OR (`MenuId`=6577 AND `TextId`=7793) OR (`MenuId`=13113 AND `TextId`=18444) OR (`MenuId`=12992 AND `TextId`=18269) OR (`MenuId`=4359 AND `TextId`=5581) OR (`MenuId`=7690 AND `TextId`=9384) OR (`MenuId`=5853 AND `TextId`=7021) OR (`MenuId`=4001 AND `TextId`=4855) OR (`MenuId`=11523 AND `TextId`=16077) OR (`MenuId`=3186 AND `TextId`=5857) OR (`MenuId`=4135 AND `TextId`=5112) OR (`MenuId`=14991 AND `TextId`=20326) OR (`MenuId`=4783 AND `TextId`=5839) OR (`MenuId`=12180 AND `TextId`=17125) OR (`MenuId`=2741 AND `TextId`=3395) OR (`MenuId`=13953 AND `TextId`=4833) OR (`MenuId`=13950 AND `TextId`=5724) OR (`MenuId`=5855 AND `TextId`=7028) OR (`MenuId`=13948 AND `TextId`=4435) OR (`MenuId`=1297 AND `TextId`=823) OR (`MenuId`=9821 AND `TextId`=13584) OR (`MenuId`=11519 AND `TextId`=16074);


DELETE FROM `npc_vendor` WHERE (`entry`=90974 AND `item`=128527 AND `ExtendedCost`=5912 AND `type`=1) OR (`entry`=90974 AND `item`=128482 AND `ExtendedCost`=5913 AND `type`=1) OR (`entry`=90974 AND `item`=128250 AND `ExtendedCost`=5919 AND `type`=1) OR (`entry`=90974 AND `item`=128444 AND `ExtendedCost`=5918 AND `type`=1) OR (`entry`=90974 AND `item`=128462 AND `ExtendedCost`=5916 AND `type`=1) OR (`entry`=90974 AND `item`=128491 AND `ExtendedCost`=5921 AND `type`=1) OR (`entry`=90974 AND `item`=128445 AND `ExtendedCost`=5920 AND `type`=1) OR (`entry`=90974 AND `item`=128474 AND `ExtendedCost`=5911 AND `type`=1) OR (`entry`=90974 AND `item`=128452 AND `ExtendedCost`=5905 AND `type`=1) OR (`entry`=90974 AND `item`=128492 AND `ExtendedCost`=5915 AND `type`=1) OR (`entry`=90974 AND `item`=128294 AND `ExtendedCost`=5894 AND `type`=1) OR (`entry`=90977 AND `item`=3857 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=90977 AND `item`=18567 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=90977 AND `item`=3466 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=90977 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=90977 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=90977 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=95424 AND `item`=128487 AND `ExtendedCost`=5909 AND `type`=1) OR (`entry`=95424 AND `item`=128478 AND `ExtendedCost`=5458 AND `type`=1) OR (`entry`=95424 AND `item`=128450 AND `ExtendedCost`=5908 AND `type`=1) OR (`entry`=95424 AND `item`=128503 AND `ExtendedCost`=5923 AND `type`=1) OR (`entry`=95424 AND `item`=122283 AND `ExtendedCost`=5903 AND `type`=1) OR (`entry`=95424 AND `item`=128502 AND `ExtendedCost`=5922 AND `type`=1) OR (`entry`=95424 AND `item`=128441 AND `ExtendedCost`=5904 AND `type`=1) OR (`entry`=95424 AND `item`=128454 AND `ExtendedCost`=5905 AND `type`=1) OR (`entry`=95424 AND `item`=123974 AND `ExtendedCost`=5883 AND `type`=1) OR (`entry`=95424 AND `item`=127785 AND `ExtendedCost`=5953 AND `type`=1) OR (`entry`=96130 AND `item`=124560 AND `ExtendedCost`=5899 AND `type`=1) OR (`entry`=96130 AND `item`=124559 AND `ExtendedCost`=5899 AND `type`=1) OR (`entry`=96130 AND `item`=124558 AND `ExtendedCost`=5899 AND `type`=1) OR (`entry`=96130 AND `item`=124557 AND `ExtendedCost`=5899 AND `type`=1) OR (`entry`=96130 AND `item`=124556 AND `ExtendedCost`=5899 AND `type`=1) OR (`entry`=96130 AND `item`=124553 AND `ExtendedCost`=5899 AND `type`=1) OR (`entry`=96130 AND `item`=124552 AND `ExtendedCost`=5899 AND `type`=1) OR (`entry`=96130 AND `item`=124550 AND `ExtendedCost`=5899 AND `type`=1) OR (`entry`=96130 AND `item`=124555 AND `ExtendedCost`=5899 AND `type`=1) OR (`entry`=96130 AND `item`=124551 AND `ExtendedCost`=5899 AND `type`=1) OR (`entry`=96130 AND `item`=124554 AND `ExtendedCost`=5899 AND `type`=1) OR (`entry`=96130 AND `item`=124561 AND `ExtendedCost`=5899 AND `type`=1) OR (`entry`=96130 AND `item`=124562 AND `ExtendedCost`=5898 AND `type`=1) OR (`entry`=96130 AND `item`=994 AND `ExtendedCost`=5893 AND `type`=2) OR (`entry`=96130 AND `item`=128225 AND `ExtendedCost`=5892 AND `type`=1) OR (`entry`=90972 AND `item`=115355 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=90972 AND `item`=115354 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=90972 AND `item`=115353 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=90972 AND `item`=115352 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=90972 AND `item`=115351 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=90972 AND `item`=117452 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32639 AND `item`=4565 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32639 AND `item`=79249 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32639 AND `item`=63388 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32639 AND `item`=64670 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32639 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32639 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32639 AND `item`=39354 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32639 AND `item`=6532 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32639 AND `item`=3371 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32639 AND `item`=38426 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=32639 AND `item`=14341 AND `ExtendedCost`=0 AND `type`=1);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(90974, 12, 128527, 0, 5912, 1, 0, 0, 21463), -- 128527
(90974, 11, 128482, 0, 5913, 1, 0, 0, 21463), -- 128482
(90974, 10, 128250, 0, 5919, 1, 0, 0, 21463), -- 128250
(90974, 9, 128444, 0, 5918, 1, 0, 0, 21463), -- 128444
(90974, 7, 128462, 0, 5916, 1, 0, 0, 21463), -- 128462
(90974, 6, 128491, 0, 5921, 1, 0, 0, 21463), -- 128491
(90974, 5, 128445, 0, 5920, 1, 0, 0, 21463), -- 128445
(90974, 4, 128474, 0, 5911, 1, 0, 0, 21463), -- 128474
(90974, 3, 128452, 0, 5905, 1, 0, 0, 21463), -- 128452
(90974, 2, 128492, 0, 5915, 1, 0, 0, 21463), -- 128492
(90974, 1, 128294, 0, 5894, 1, 0, 0, 21463), -- 128294
(90977, 6, 3857, 0, 0, 1, 0, 0, 21463), -- 3857
(90977, 5, 18567, 0, 0, 1, 0, 0, 21463), -- 18567
(90977, 4, 3466, 0, 0, 1, 0, 0, 21463), -- 3466
(90977, 3, 2880, 0, 0, 1, 0, 0, 21463), -- 2880
(90977, 2, 5956, 0, 0, 1, 0, 0, 21463), -- 5956
(90977, 1, 2901, 0, 0, 1, 0, 0, 21463), -- 2901
(95424, 11, 128487, 0, 5909, 1, 0, 0, 21463), -- 128487
(95424, 10, 128478, 0, 5458, 1, 0, 0, 21463), -- 128478
(95424, 9, 128450, 0, 5908, 1, 0, 0, 21463), -- 128450
(95424, 8, 128503, 0, 5923, 1, 0, 0, 21463), -- 128503
(95424, 7, 122283, 0, 5903, 1, 0, 0, 21463), -- 122283
(95424, 5, 128502, 0, 5922, 1, 0, 0, 21463), -- 128502
(95424, 4, 128441, 0, 5904, 1, 0, 0, 21463), -- 128441
(95424, 3, 128454, 0, 5905, 1, 0, 0, 21463), -- 128454
(95424, 2, 123974, 0, 5883, 1, 0, 0, 21463), -- 123974
(95424, 1, 127785, 0, 5953, 1, 0, 0, 21463), -- 127785
(96130, 15, 124560, 0, 5899, 1, 0, 0, 21463), -- 124560
(96130, 14, 124559, 0, 5899, 1, 0, 0, 21463), -- 124559
(96130, 13, 124558, 0, 5899, 1, 0, 0, 21463), -- 124558
(96130, 12, 124557, 0, 5899, 1, 0, 0, 21463), -- 124557
(96130, 11, 124556, 0, 5899, 1, 0, 0, 21463), -- 124556
(96130, 10, 124553, 0, 5899, 1, 0, 0, 21463), -- 124553
(96130, 9, 124552, 0, 5899, 1, 0, 0, 21463), -- 124552
(96130, 8, 124550, 0, 5899, 1, 0, 0, 21463), -- 124550
(96130, 7, 124555, 0, 5899, 1, 0, 0, 21463), -- 124555
(96130, 6, 124551, 0, 5899, 1, 0, 0, 21463), -- 124551
(96130, 5, 124554, 0, 5899, 1, 0, 0, 21463), -- 124554
(96130, 4, 124561, 0, 5899, 1, 0, 0, 21463), -- 124561
(96130, 3, 124562, 0, 5898, 1, 0, 0, 21463), -- 124562
(96130, 2, 994, 1, 5893, 2, 0, 0, 21463), -- 994
(96130, 1, 128225, 0, 5892, 1, 0, 0, 21463), -- 128225
(90972, 6, 115355, 0, 0, 1, 0, 0, 21463), -- 115355
(90972, 5, 115354, 0, 0, 1, 0, 0, 21463), -- 115354
(90972, 4, 115353, 0, 0, 1, 0, 0, 21463), -- 115353
(90972, 3, 115352, 0, 0, 1, 0, 0, 21463), -- 115352
(90972, 2, 115351, 0, 0, 1, 0, 0, 21463), -- 115351
(90972, 1, 117452, 0, 0, 1, 0, 0, 21463), -- 117452
(32639, 11, 4565, 0, 0, 1, 0, 0, 21463), -- 4565
(32639, 10, 79249, 0, 0, 1, 0, 0, 21463), -- 79249
(32639, 9, 63388, 0, 0, 1, 0, 0, 21463), -- 63388
(32639, 8, 64670, 0, 0, 1, 0, 0, 21463), -- 64670
(32639, 7, 39505, 0, 0, 1, 0, 0, 21463), -- 39505
(32639, 6, 20815, 0, 0, 1, 0, 0, 21463), -- 20815
(32639, 5, 39354, 0, 0, 1, 0, 0, 21463), -- 39354
(32639, 4, 6532, 0, 0, 1, 0, 0, 21463), -- 6532
(32639, 3, 3371, 0, 0, 1, 0, 0, 21463), -- 3371
(32639, 2, 38426, 0, 0, 1, 0, 0, 21463), -- 38426
(32639, 1, 14341, 0, 0, 1, 0, 0, 21463); -- 14341

DELETE FROM `creature` WHERE `id`=15879 AND `map`=0 AND `zoneid`=12;

DELETE FROM `areatrigger` WHERE `guid` IN (48,49);
INSERT INTO `areatrigger` VALUES ('49', '100007', '1712', '245760', '-3442.35', '9521.4', '9.57194', '');
INSERT INTO `areatrigger` VALUES ('48', '100010', '1669', '1', '-3217.97', '9423.45', '-172.491', '');
