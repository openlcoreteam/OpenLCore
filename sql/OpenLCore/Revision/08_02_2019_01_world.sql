SET @ENTRY := 88797;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,2,64,0,100,0,0,0,0,0,33,88743,0,0,0,0,0,7,0,0,0,0,0,0,0,"Elder Aldryth 88797 - On Gossip Hello - Quest Credit 'Find Elder Aldryth Credit 88743'"),
(@ENTRY,0,2,3,64,0,100,0,0,0,0,0,53,1,@ENTRY*100+00,0,0,0,0,7,0,0,0,0,0,0,0,"Elder Aldryth 88797 - On Gossip Hello - Start Waypoint"),
(@ENTRY,0,3,4,40,0,100,0,3,0,0,0,54,5000,0,0,0,0,0,7,0,0,0,0,0,0,0,"Elder Aldryth 88797 - On Waypoint 3 Reached - Pause Waypoint"),
(@ENTRY,0,4,5,40,0,100,0,3,0,0,0,1,0,4000,0,0,0,0,1,0,0,0,0,0,0,0,"Elder Aldryth 88797 - On Waypoint 3 Reached - Say Line 0"),
(@ENTRY,0,5,6,40,0,100,0,4,0,0,0,54,10000,0,0,0,0,0,7,0,0,0,0,0,0,0,"Elder Aldryth 88797 - On Waypoint 4 Reached - Pause Waypoint"),
(@ENTRY,0,6,7,40,0,100,0,4,0,0,0,1,1,3000,0,0,0,0,1,0,0,0,0,0,0,0,"Elder Aldryth 88797 - On Waypoint 4 Reached - Say Line 1"),
(@ENTRY,0,7,8,40,0,100,0,5,0,0,0,1,2,7000,0,0,0,0,1,0,0,0,0,0,0,0,"Elder Aldryth 88797 - On Waypoint 5 Reached - Say Line 2"),
(@ENTRY,0,8,9,40,0,100,0,5,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Elder Aldryth 88797 - On Waypoint 5 Reached - Despawn Instant");

-- Elder Aldryth 88797 Waypoint
DELETE FROM `waypoints` WHERE `entry`=88797;
INSERT INTO `waypoints`(`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(8879700,1,200.659485,6423.083008,-22.386225,'Elder Aldryth waypoint 1'),
(8879700,2,194.590363,6422.728516,-22.840078,'Elder Aldryth waypoint 2'),
(8879700,3,194.590363,6422.728516,-1.630288,'Elder Aldryth waypoint 3'), 
(8879700,4,196.034836,6428.789551,-1.582636,'Elder Aldryth waypoint 4'),
(8879700,5,196.211792,6456.946777,-1.532654,'Elder Aldryth waypoint 5');

-- Elder Aldryth 88797
DELETE FROM `creature_text` WHERE `creatureid`=88797;
INSERT INTO `creature_text` (`creatureid`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`broadcastTextId`,`textRange`,`comment`) VALUES
(88797,0,0,'Gracias, extraño.',12,0,100,0,0,0,0,0,'Elder Aldryth'),
(88797,1,0,'No sé lo que pasó escuché un ruido fuerte y luego me encontré atascado debajo de esta viga. Desde entonces, solo he estado esperando.',12,0,100,0,0,0,0,0,'Elder Aldryth'),
(88797,2,0,'Ahora, ¿a dónde se escapó esa hermosa chica?',12,0,100,0,0,0,0,0,'Elder Aldryth');
