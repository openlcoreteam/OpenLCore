/*=================
-- Gilneas Part 3
=================*/
-- Triggers
UPDATE `creature_template` SET `InhabitType`='4', `flags_extra`='128' WHERE  `entry`=35374;


-- Conditions
DELETE FROM `conditions` WHERE `SourceEntry` IN (68087, 68070, 80281) AND `SourceTypeOrReferenceId`= 13;
INSERT INTO conditions (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ScriptName`, `Comment`) VALUES
(13, 1, 68087, 0, 0, 31, 0, 3, 35374, 0, 0, 0, '', 'Just Citizen'),
(13, 1, 80281, 0, 0, 31, 0, 3, 35374, 0, 0, 0, '', 'Summon Citizen and Worgen'),
(13, 3, 68070, 0, 0, 31, 0, 3, 35374, 0, 0, 0, '', 'Summon Citizen and Worgen');


-- Rampaging Worgen (34884)
UPDATE `creature_template` SET `flags_extra`='2' WHERE  `entry`=34884;


-- Royal Orders (14099)
UPDATE `quest_template_addon` SET `PrevQuestID`='14093' WHERE  `ID`=14099;


-- Creature Text
DELETE FROM `creature_text` WHERE `CreatureID` IN (34981, 35836, 34913);
INSERT INTO `creature_text` (`CreatureID`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES
(34981, 0, 0, 'What in the world?  Let\'s get out of here!', 12, 0, 100, 1, 0, 0, 35235, 'Frightened Citizen to Player'),
(34981, 0, 1, 'Let\'s go!', 12, 0, 100, 1, 0, 0, 35236, 'Frightened Citizen to Player'),
(34981, 0, 2, 'No time to waste!', 12, 0, 100, 1, 0, 0, 35237, 'Frightened Citizen to Player'),
(34981, 0, 3, 'Worgen!  Worgen everywhere!', 12, 0, 100, 1, 0, 0, 35238, 'Frightened Citizen to Player'),
(34981, 0, 4, 'Flee!  They\'re everywhere!', 12, 0, 100, 1, 0, 0, 35240, 'Frightened Citizen to Player'),
(34981, 0, 5, 'This place isn\'t safe.  Let''s leave!', 12, 0, 100, 1, 0, 0, 35239, 'Frightened Citizen to Player'),
(34981, 0, 6, 'Protect me, please!', 12, 0, 100, 1, 0, 0, 35234, 'Frightened Citizen to Player'),
(35836, 0, 0, 'It\'s coming right for me!!', 12, 0, 100, 1, 0, 0, 36037, 'Frightened Citizen to Player'),
(35836, 0, 1, 'Help me, please!', 12, 0, 100, 1, 0, 0, 36038, 'Frightened Citizen to Player'),
(35836, 0, 2, 'There\'s one after me!', 12, 0, 100, 1, 0, 0, 36039, 'Frightened Citizen to Player'),
(35836, 0, 3, 'Help!', 12, 0, 100, 1, 0, 0, 36040, 'Frightened Citizen to Player'),
(35836, 0, 4, 'I don\'t want to die!', 12, 0, 100, 1, 0, 0, 36041, 'Frightened Citizen to Player'),
(34913, 0, 0, 'Stand your ground, men!', 14, 0, 100, 0, 0, 19617, 35166, 'Prince Liam Greymane'),
(34913, 0, 1, 'Defeat these foul beasts!', 14, 0, 100, 0, 0, 19618, 35167, 'Prince Liam Greymane'),
(34913, 0, 2, 'Protect the civilians!', 14, 0, 100, 0, 0, 19619, 35168, 'Prince Liam Greymane'),
(34913, 0, 3, 'Push them back!', 14, 0, 100, 0, 0, 19620, 35169, 'Prince Liam Greymane'),
(34913, 0, 4, 'Take heart, men!  We must protect our city!', 14, 0, 100, 0, 0, 19621, 35170, 'Prince Liam Greymane');


-- Prince Liam Greymane (34913) ***npc_prince_liam_greymane_34913***
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=34913;
DELETE FROM `smart_scripts` WHERE `entryorguid`=34913;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(34913, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Prince Liam Greymane - On Aggro - Say Line 0");


-- Supply Crate (195306)
UPDATE `gameobject_template_addon` SET `flags`=4 WHERE `entry`=195306;


-- Gwen Armstead (34936)
UPDATE `creature_template` SET `flags_extra`=2 WHERE `entry`=34936;


-- Lord Godfrey (35115) ***npc_lord_godfrey_35115***
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=35115;
DELETE FROM `smart_scripts` WHERE `entryorguid`=35115;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(35115, 0, 0, 1, 19, 0, 100, 0, 24930, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Lord Godfrey - On Quest Accept - Say Line 0"),
(35115, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Lord Godfrey - Target Player"),
(35115, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 11, 35112, 10, 0, 0, 0, 0, 0, "Lord Godfrey - Target King Genn Greymane"),
(35115, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 11, 35112, 10, 0, 0, 0, 0, 0, "Lord Godfrey - Set Data 1");


-- King Genn Greymane (35112) ***npc_king_genn_greymane_35112***
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=35112;
DELETE FROM `smart_scripts` WHERE `entryorguid`=35112;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(35112, 0, 0, 0, 38, 0, 100, 0, 0, 1, 0, 0, 67, 0, 5000, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "King Genn Greymane - On Data Set 1 - Trigger Timed Event"),
(35112, 0, 1, 0, 59, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "King Genn Greymane - On Timed Event 0 Triggered - Say Line 0");


-- Creature Text
DELETE FROM `creature_text` WHERE `CreatureID` IN (35112,35115,35378,35550,35905,35907,35906);
INSERT INTO `creature_text` (`CreatureID`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES
(35112, 0, 0, 'Enough! I\'ve made up my mind. We need Crowley on our side.', 12, 0, 100, 0, 0, 0, 38602, 'King Genn Greymane to Player'),
(35115, 0, 0, 'We ought to leave Crowley in prison with those beasts!', 12, 0, 100, 0, 0, 0, 38601, 'Lord Godfrey to Player'),
(35378, 0, 0, 'This mastiff will help you find the hidden worgen.', 12, 0, 100, 0, 0, 19696, 38744, 'Lorna Crowley to Player'),
(35550, 0, 0, 'Keep them back!', 14, 0, 100, 0, 0, 19712, 36092, 'King Genn Greymane'),
(35550, 0, 1, 'Fire!', 14, 0, 100, 0, 0, 19710, 36091, 'King Genn Greymane'),
(35550, 0, 2, 'Hold the barricades! Do not give them an inch!', 14, 0, 100, 0, 0, 19709, 36090, 'King Genn Greymane'),
(35905, 0, 0, 'Rescue Krennan Aranas by using your vehicle\'s ability.$B|TInterface\\Icons\\inv_misc_groupneedmore.blp:64|t', 42, 0, 100, 0, 0, 0, 36078, 'King Greymane\'s Horse to Player'),
(35907, 0, 0, 'Thank you! I owe you my life.', 12, 0, 100, 0, 0, 20922, 38729, 'Krennan Aranas to King Greymane\'s Horse'),
(35907, 1, 0, 'Thank you! I owe you my life.', 12, 0, 100, 0, 0, 20922, 38729, 'Krennan Aranas to King Greymane\'s Horse'),
(35906, 0, 0, 'We\'ve got Aranas!  Fire at will!', 14, 0, 100, 0, 0, 19634, 36099, 'Lord Godfrey to Player');


-- Lord Darius Crowley (35077) ***npc_lord_darius_crowley_35077***
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=35077;
DELETE FROM `smart_scripts` WHERE `entryorguid`=35077;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(35077, 0, 0, 0, 19, 0, 100, 0, 14154, 0, 0, 0, 11, 66914, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Lord Darius Crowley - On Quest Acept - Cast Gilneas - Quest - Gilneas Prison Periodic Forcecast");


-- Wounded Guard (47091) ***npc_wounded_guard_47091***
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=47091;
DELETE FROM `smart_scripts` WHERE `entryorguid`=47091;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(47091, 0, 0, 0, 8, 0, 100, 0, 774, 0, 0, 0, 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Wounded Guard - On Spellhit - Quest Credit"),
(47091, 0, 1, 0, 8, 0, 100, 0, 2061, 0, 0, 0, 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Wounded Guard - On Spellhit - Quest Credit"),
(47091, 0, 2, 0, 1, 0, 100, 0, 1, 1, 30000, 30000, 11, 46577, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Wounded Guard - OCC - Cast Wounded");


-- Bloodfang Worgen (35118) ***npc_bloodfang_worgen_35118***
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=35118;
DELETE FROM `smart_scripts` WHERE `entryorguid`=35118;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(35118, 0, 0, 1, 2, 0, 100, 1, 0, 30, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Bloodfang Worgen - Cast Enrage at 30% HP"),
(35118, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Bloodfang Worgen - Say Line 0"),
(35118, 0, 2, 0, 8, 0, 100, 0, 100, 0, 0, 0, 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Bloodfang Worgen - On Spellhhit - Quest Credit"),
(35118, 0, 3, 0, 8, 0, 100, 0, 56641, 0, 0, 0, 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Bloodfang Worgen - On Spellhhit - Quest Credit"),
(35118, 0, 4, 0, 8, 0, 100, 0, 2098, 0, 0, 0, 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Bloodfang Worgen - On Spellhhit - Quest Credit"),
(35118, 0, 5, 0, 8, 0, 100, 0, 348, 0, 0, 0, 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Bloodfang Worgen - On Spellhhit - Quest Credit"),
(35118, 0, 6, 0, 8, 0, 100, 0, 5143, 0, 0, 0, 33, 44175, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Bloodfang Worgen - On Spellhhit - Quest Credit");


-- Myriam Spellwaker (35872) ***npc_mariam_spellwalker_35872***
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=35872;
DELETE FROM `smart_scripts` WHERE `entryorguid`=35872;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(35872, 0, 0, 0, 37, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Myriam Spellwaker - On AI Initialize - Disable Combat Movement"),
(35872, 0, 1, 0, 0, 0, 100, 0, 0, 0, 3000, 3000, 11, 11538, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Myriam Spellwaker - Cast Frostbolt");


-- Sergeant Cleese (35839) ***npc_sergeant_cleese_35839***
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=35839;
DELETE FROM `smart_scripts` WHERE `entryorguid`=35839;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(35839, 0, 0, 0, 37, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Sergeant Cleese - On AI Initialize - Disable Combat Movement");


-- Lorna Crowley (35378) ***npc_lorna_crowley_35378***
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=35378;
DELETE FROM `smart_scripts` WHERE `entryorguid`=35378;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(35378, 0, 0, 0, 19, 0, 100, 0, 14204, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Lorna Crowley - On Quest Accept - Say Line 0");


-- Conditions
DELETE FROM `conditions` WHERE `SourceEntry` IN (67805, 68228, 68235) AND `SourceTypeOrReferenceId`= 13;
INSERT INTO conditions (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ScriptName`, `Comment`) VALUES
(13, 1, 67805, 0, 0, 31, 0, 3, 35463, 0, 0, 0, '', 'Attack Lurker - Target Bloodfang Lurker'),
(13, 1, 68228, 0, 0, 31, 0, 3, 35753, 0, 0, 0, '', 'Rescue Krennan - Target Krennan'),
(13, 1, 68235, 0, 0, 31, 0, 3, 35374, 0, 0, 0, '', 'Cannon Fire - Target Generic Trigger');


-- Bloodfang Lurker (35463) ***npc_bloodfang_lurker_35463***
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=35463;
DELETE FROM `smart_scripts` WHERE `entryorguid`=35463;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(35463, 0, 0, 1, 2, 0, 100, 1, 0, 30, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Bloodfang Lurker - Cast Enrage at 30% HP"),
(35463, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Bloodfang Lurker - Say Line 0"),
(35463, 0, 2, 3, 11, 0, 100, 1, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Bloodfang Lurker - On Respawn - Set React State Pasive"),
(35463, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 5916, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Bloodfang Lurker - Cast Shadowstalker Stealth"),
(35463, 0, 4, 5, 7, 0, 100, 1, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Bloodfang Lurker - On Evade - Set React State Pasive"),
(35463, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 5916, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Bloodfang Lurker - Cast Shadowstalker Stealth"),
(35463, 0, 6, 0, 4, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Bloodfang Lurker - On Aggro - Set React State Agressive");


-- Lord Godfrey (35906) ***npc_lord_godfrey_35906***
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=35906;
DELETE FROM `smart_scripts` WHERE `entryorguid`=35906;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(35906, 0, 0, 1, 20, 0, 100, 0, 14293, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Lord Godfrey - On Quest Reward - Say Line 0"),
(35906, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, 3591400, 0, 0, 0, 0, 0, 10, 376902, 0, 0, 0, 0, 0, 0, "Lord Godfrey - Actionlist");


-- Commandeered Cannon (35914) ***npc_commandeered_cannon_35914***
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=35914;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (35914,3591400);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(3591400,9,0,0,0,0,100,0,3000,3000,0,0,11,68235,0,0,0,0,0,1,0,0,0,0,0,0,0,"Commandeered Cannon - On Script - Cast Cannon Fire"),
(3591400,9,1,0,0,0,100,0,2000,2000,0,0,11,68235,0,0,0,0,0,1,0,0,0,0,0,0,0,"Commandeered Cannon - On Script - Cast Cannon Fire"),
(3591400,9,2,0,0,0,100,0,2000,2000,0,0,11,68235,0,0,0,0,0,1,0,0,0,0,0,0,0,"Commandeered Cannon - On Script - Cast Cannon Fire");


-- Krennan Aranas (35753)
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=35753;


-- Flags Extra
UPDATE `creature_template` SET `flags_extra`=2 WHERE `entry` IN (35112,35115,47091,35912,35873,35869,35874,38832,35550,35618,51947,35906,44469,44461,44463,44465,35554,44455,35552,35911,44470,44468,44459,35551);


-- Not Selectable Gameobjects
UPDATE `gameobject_template_addon` SET `flags`= `flags`|16 WHERE `entry` IN (195466,195465,195430,195454,195453);


-- Rampaging Worgen (35660) ***npc_rampaging_worgen_35660***
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=35660;
DELETE FROM `smart_scripts` WHERE `entryorguid`=35660;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(35660, 0, 0, 1, 2, 0, 100, 1, 0, 30, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Rampaging Worgen - Cast Enrage at 30% HP"),
(35660, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Rampaging Worgen - Say Line 0"),
(35660, 0, 2, 0, 54, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Rampaging Worgen - On Just Summoned - Set React State Passive"),
(35660, 0, 3, 0, 1, 0, 100, 1, 60000, 60000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Rampaging Worgen - Despawn Instant"),
(35660, 0, 4, 0, 1, 0, 100, 1, 3000, 3000, 0, 0, 29, 0, 0, 0, 0, 0, 0, 11, 35830, 15, 0, 0, 0, 0, 0, "Rampaging Worgen - Follow Creature"),
(35660, 0, 5, 0, 1, 0, 100, 1, 4000, 4000, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Rampaging Worgen - Set React State Agressive");


-- Merchant Square Door (195327)
UPDATE `gameobject_template_addon` SET `flags`=4 WHERE `entry`=195327;


-- Quest Offer Reward
UPDATE `quest_offer_reward` SET `RewardText`='You\'ve done it again, $n. The freed villagers are eager to help us against the Forsaken in any way they can.', `VerifiedBuild`=25383 WHERE `ID`=24575; -- Liberation Day
UPDATE `quest_offer_reward` SET `RewardText`='I thank you, $n. Our people will no longer suffer under that monstrosity\'s yoke.', `VerifiedBuild`=25383 WHERE `ID`=24674; -- Slaves to No One
UPDATE `quest_offer_reward` SET `RewardText`='I thank you, $n. Our men and women will have a last good meal before they set off for battle.', `VerifiedBuild`=25383 WHERE `ID`=24675; -- Last Meal
UPDATE `quest_offer_reward` SET `Emote1`=1, `RewardText`='I am glad to have you here, $n. We\'re surrounded by Forsaken on all sides and can use all the help we can get.', `VerifiedBuild`=25383 WHERE `ID`=24677; -- Flank the Forsaken
UPDATE `quest_offer_reward` SET `Emote1`=1, `RewardText`='I wish it could''ve been avoided, $n. Let us ensure this is resolved without further bloodshed.', `VerifiedBuild`=25383 WHERE `ID`=24592; -- Betrayal at Tempest's Reach
UPDATE `quest_offer_reward` SET `RewardText`='$n!$B$BGenn... they\'ve taken Genn... they\'ve taken... our king!', `VerifiedBuild`=25383 WHERE `ID`=24672; -- Onwards and Upwards
UPDATE `quest_offer_reward` SET `RewardText`='It is done then, $n. You are one of us now.', `VerifiedBuild`=25383 WHERE `ID`=24593; -- Neither Human Nor Beast
UPDATE `quest_offer_reward` SET `Emote1`=66, `RewardText`='I knew we could count on you. You\'ve done well, $n.', `VerifiedBuild`=25383 WHERE `ID`=24646; -- Take Back What's Ours
UPDATE `quest_offer_reward` SET `Emote1`=1, `VerifiedBuild`=25383 WHERE `ID`=24628; -- Preparations
UPDATE `quest_offer_reward` SET `RewardText`='You are as good as I remember, $n. It is good to have you back.', `VerifiedBuild`=25383 WHERE `ID`=24627; -- At Our Doorstep
UPDATE `quest_offer_reward` SET `Emote1`=1, `RewardText`='You\'re all right, $n! I\'ve been waiting for this day for a long time, it truly is great to see you friend.$B$BI\'ve heard of what you\'ve done and I\'m thankful... especially for Lorna -- she\'s all I\'ve left. I will send for her right away.', `VerifiedBuild`=25383 WHERE `ID`=24617; -- Tal'doren, the Wild Home
UPDATE `quest_offer_reward` SET `Emote1`=1, `Emote2`=66, `RewardText`='Well done, $n. The scout never had a chance.', `VerifiedBuild`=25383 WHERE `ID`=24616; -- Losing Your Tail
UPDATE `quest_offer_reward` SET `RewardText`='I\'ve been expecting you, $n. Do not be alarmed.$B$BMy name is Belysra. I am a priestess of the moon... a night elf.$B$BYou might not know my people, but the destinies of our two races have been linked since the Curse befell you.', `VerifiedBuild`=25383 WHERE `ID`=24578; -- The Blackwald
UPDATE `quest_offer_reward` SET `RewardText`='Great job, $n. We\'ve heard rumors of survivors further in the mountains. Now we\'ll be able to send scouts there.', `VerifiedBuild`=25383 WHERE `ID`=24501; -- Queen-Sized Troubles
UPDATE `quest_offer_reward` SET `RewardText`='You\'ve done well, $n. The spiders are everywhere, however, and I\'m afraid we\'ve barely put a dent in their numbers.', `VerifiedBuild`=25383 WHERE `ID`=24484; -- Pest Control
UPDATE `quest_offer_reward` SET `RewardText`='Thank you, $n. It will take some time, but I\'ll try to make sense of what we have.', `VerifiedBuild`=25383 WHERE `ID`=24495; -- Pieces of the Past
UPDATE `quest_offer_reward` SET `RewardText`='It\'s good to see you made it, $n. It looks like most everybody did.$B$BWe\'re not doing too bad so far for an emergency evacuation.', `VerifiedBuild`=25383 WHERE `ID`=24483; -- Stormglen
UPDATE `quest_offer_reward` SET `Emote1`=1, `Emote2`=273, `RewardText`='You definitely got the ettin angry, $n.  I heard him myself.$B$BLet\'s hope this works.', `VerifiedBuild`=25383 WHERE `ID`=24472; -- Introductions Are in Order
UPDATE `quest_offer_reward` SET `Emote1`=1, `RewardText`='You\'ve done it again, $n. You have my thanks.', `VerifiedBuild`=25383 WHERE `ID`=24468; -- Stranded at the Marsh
UPDATE `quest_offer_reward` SET `Emote1`=1, `Emote2`=25, `RewardText`='Thanks for stopping, $n. Our carriage got hit pretty bad.$B$BThe one in front of us got it worse.', `VerifiedBuild`=25383 WHERE `ID`=24438; -- Exodus
UPDATE `quest_offer_reward` SET `RewardText`='Look, $n! Look at what\'s become of Duskhaven!$B$BLook at what\'s become of the last safe place in Gilneas!', `VerifiedBuild`=25383 WHERE `ID`=14467; -- Alas, Gilneas!
UPDATE `quest_offer_reward` SET `RewardText`='There you are, $n. I\'ve been expecting you.$B$BI got word of your recovery and... wait -- do you feel that?', `VerifiedBuild`=25383 WHERE `ID`=14466; -- The King's Observatory
UPDATE `quest_offer_reward` SET `Emote1`=2, `RewardText`='$n. I\'ve heard much about you.$B$BI understand you were crucial in my family\'s survival during the outbreak in Gilneas City.', `VerifiedBuild`=25383 WHERE `ID`=14465; -- To Greymane Manor
UPDATE `quest_offer_reward` SET `RewardText`='Excellent work, $n. I think I speak for everyone when I say the sooner we get out of here, the better.', `VerifiedBuild`=25383 WHERE `ID`=14463; -- Horses for Duskhaven
UPDATE `quest_offer_reward` SET `Emote1`=1, `RewardText`='You\'re a peach, $n. Thanks!', `VerifiedBuild`=25383 WHERE `ID`=14400; -- I Can't Wear This
UPDATE `quest_offer_reward` SET `RewardText`='Why thank you, $n. I hope you didn\'t peek!$B$BWhere are your manners, dear?', `VerifiedBuild`=25383 WHERE `ID`=14399; -- Grandma's Lost It Alright
UPDATE `quest_offer_reward` SET `Emote1`=1, `RewardText`='This is great, $n. I should be able to finish the repairs in no time.', `VerifiedBuild`=25383 WHERE `ID`=14404; -- Not Quite Shipshape
UPDATE `quest_offer_reward` SET `RewardText`='Stay back! Don\'t make me...$B$BIs it you? By the Light! It\'s you, $n!', `VerifiedBuild`=25383 WHERE `ID`=14406; -- The Crowley Orchard
UPDATE `quest_offer_reward` SET `RewardText`='You did what you could, $n. With any luck a few others will find their way to shore.', `VerifiedBuild`=25383 WHERE `ID`=14395; -- Gasping for Breath
UPDATE `quest_offer_reward` SET `RewardText`='The ocean, $n. It swallowed everything... the land... the Forsaken... our men!', `VerifiedBuild`=25383 WHERE `ID`=14396; -- As the Land Shatters
UPDATE `quest_offer_reward` SET `RewardText`='You did it, $n. That should take the wind out of their sails.', `VerifiedBuild`=25383 WHERE `ID`=14386; -- Leader of the Pack
UPDATE `quest_offer_reward` SET `RewardText`='Well done, $n. You might be a bloody beast, but you\'re our beast.', `VerifiedBuild`=25383 WHERE `ID`=14382; -- Two By Sea
UPDATE `quest_offer_reward` SET `RewardText`='Well done, $n. You might be a bloody beast, but you\'re our beast.', `VerifiedBuild`=25383 WHERE `ID`=14382; -- Two By Sea
UPDATE `quest_offer_reward` SET `RewardText`='Not bad, $n. It\'s a good thing you\'re on our side.', `VerifiedBuild`=25383 WHERE `ID`=14369; -- Unleash the Beast
UPDATE `quest_offer_reward` SET `RewardText`='My children are safe! You\'ve done a wonderful thing, $n. I don\'t know how to thank you!', `VerifiedBuild`=25383 WHERE `ID`=14368; -- Save the Children!
UPDATE `quest_offer_reward` SET `RewardText`='The Forsaken are here in full strength, $n. We barely have enough men to hold them back.', `VerifiedBuild`=25383 WHERE `ID`=14367; -- The Allens' Storm Cellar
UPDATE `quest_offer_reward` SET `RewardText`='Great news, $n. I\'ve sent the remaining militia to the shore to meet the Forsaken force head on.', `VerifiedBuild`=25383 WHERE `ID`=14366; -- Holding Steady
UPDATE `quest_offer_reward` SET `RewardText`='You and me, $n. We make a great team...$B$BIt\'s good to have you back.', `VerifiedBuild`=25383 WHERE `ID`=14348; -- You Can't Take 'Em Alone
UPDATE `quest_offer_reward` SET `RewardText`='Yes, $n! Just like old times...$B$BI\'m going to have to work hard at not shooting you, but Krennan explained everything to us.', `VerifiedBuild`=25383 WHERE `ID`=14347; -- Hold the Line
UPDATE `quest_offer_reward` SET `RewardText`='$n!!! You ARE alive!$B$BI thought I was having dreams about the old days when I heard your voice...', `VerifiedBuild`=25383 WHERE `ID`=14336; -- Kill or Be Killed
UPDATE `quest_offer_reward` SET `RewardText`='Forsaken! Quick, $n! We must mount a defense.', `VerifiedBuild`=25383 WHERE `ID`=14321; -- Invasion
UPDATE `quest_offer_reward` SET `RewardText`='I need you to pull through, $n. This dosage is strong enough to kill a horse.$B$BBut I know you. I know what you\'re made of.  You will be fine.$B$BTrust me.  I know what you''re going through.$B$BNow drink up and close your eyes.', `VerifiedBuild`=25383 WHERE `ID`=14375; -- Last Chance at Humanity
UPDATE `quest_offer_reward` SET `RewardText`='They... they\'ve stopped coming.$B$BNo, $n. That\'s not a good thing.', `VerifiedBuild`=25383 WHERE `ID`=14222; -- Last Stand
UPDATE `quest_offer_reward` SET `RewardText`='We\'ve given them everything we have... yet still they come. Do not worry, $n. We\'ll slay many more before today is over.', `VerifiedBuild`=25383 WHERE `ID`=14221; -- Never Surrender, Sometimes Retreat
UPDATE `quest_offer_reward` SET `RewardText`='You\'ve done well, $n. You\'ve done more than could be asked of any Gilnean.$B$BWe\'re running low on ammunition.  It''s time to regroup inside now.', `VerifiedBuild`=25383 WHERE `ID`=14218; -- By Blood and Ash
UPDATE `quest_offer_reward` SET `RewardText`='Brace yourself, $n.$B$BHere they come.', `VerifiedBuild`=25383 WHERE `ID`=14212; -- Sacrifices
UPDATE `quest_offer_reward` SET `RewardText`='We\'re left with very few choices, $n. What we do next will be a critical decision.', `VerifiedBuild`=25383 WHERE `ID`=14294; -- Time to Regroup
UPDATE `quest_offer_reward` SET `RewardText`='Well done, $n. We\'ll make sure Krennan makes it out of the city alive.', `VerifiedBuild`=25383 WHERE `ID`=14293; -- Save Krennan Aranas
UPDATE `quest_offer_reward` SET `RewardText`='We did it, $n. Thanks to you a good man has survived.', `VerifiedBuild`=25383 WHERE `ID`=14154; -- By the Skin of His Teeth
UPDATE `quest_offer_reward` SET `RewardText`='$n! Where have you been?$B$BAnyway... it\'s great to see you in one piece.', `VerifiedBuild`=25383 WHERE `ID`=14265; -- Your Instructor
UPDATE `quest_offer_reward` SET `RewardText`='Good job, $n. Thanks to you, many Gilneans will live to see another day.', `VerifiedBuild`=25383 WHERE `ID`=14098; -- Evacuate the Merchant Square
UPDATE `quest_offer_reward` SET `RewardText`='It\'s no use, $n! They\'re not letting up.', `VerifiedBuild`=25383 WHERE `ID`=14093; -- All Hell Breaks Loose


-- Quest Poi Points
DELETE FROM `quest_poi_points` WHERE (`QuestID`=24675 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=14369 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=14369 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=14369 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=14369 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=14369 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=14369 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=14369 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=14369 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=14369 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=14369 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=14369 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14157 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14098 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=31814 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=31814 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=31814 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES
(24675, 2, 0, -1366, 1217, 25383), -- Last Meal
(14369, 1, 0, -1844, 2567, 25383), -- Unleash the Beast
(14369, 0, 9, -2211, 2475, 25383), -- Unleash the Beast
(14369, 0, 8, -2243, 2554, 25383), -- Unleash the Beast
(14369, 0, 7, -2115, 2683, 25383), -- Unleash the Beast
(14369, 0, 6, -2103, 2686, 25383), -- Unleash the Beast
(14369, 0, 5, -1958, 2711, 25383), -- Unleash the Beast
(14369, 0, 4, -1943, 2694, 25383), -- Unleash the Beast
(14369, 0, 3, -1933, 2563, 25383), -- Unleash the Beast
(14369, 0, 2, -1978, 2528, 25383), -- Unleash the Beast
(14369, 0, 1, -2058, 2470, 25383), -- Unleash the Beast
(14369, 0, 0, -2179, 2462, 25383), -- Unleash the Beast
(14157, 0, 0, -1749, 1426, 25383), -- Old Divisions
(14098, 2, 0, -1438, 1401, 25383), -- Evacuate the Merchant Square
(31814, 2, 0, -222, -3165, 25383), -- Analynn
(31814, 1, 0, 3537, 535, 25383), -- Analynn
(31814, 0, 0, 3537, 535, 25383); -- Analynn

UPDATE `quest_poi_points` SET `X`=-1673, `Y`=1345, `VerifiedBuild`=25383 WHERE (`QuestID`=14293 AND `Idx1`=1 AND `Idx2`=0); -- Save Krennan Aranas
UPDATE `quest_poi_points` SET `X`=-1786, `Y`=1438, `VerifiedBuild`=25383 WHERE (`QuestID`=14293 AND `Idx1`=0 AND `Idx2`=0); -- Save Krennan Aranas


-- Quest Details
DELETE FROM `quest_details` WHERE `ID` IN (24676 /*Push Them Out*/, 24674 /*Slaves to No One*/, 24675 /*Last Meal*/, 24575 /*Liberation Day*/, 24677 /*Flank the Forsaken*/, 24592 /*Betrayal at Tempest's Reach*/, 24672 /*Onwards and Upwards*/, 24673 /*Return to Stormglen*/, 24593 /*Neither Human Nor Beast*/, 24646 /*Take Back What's Ours*/, 24628 /*Preparations*/, 24627 /*At Our Doorstep*/, 24617 /*Tal'doren, the Wild Home*/, 24616 /*Losing Your Tail*/, 24578 /*The Blackwald*/, 24501 /*Queen-Sized Troubles*/, 24495 /*Pieces of the Past*/, 24484 /*Pest Control*/, 24483 /*Stormglen*/, 24472 /*Introductions Are in Order*/, 24468 /*Stranded at the Marsh*/, 24438 /*Exodus*/, 14466 /*The King's Observatory*/, 14465 /*To Greymane Manor*/, 14463 /*Horses for Duskhaven*/, 14405 /*Escape By Sea*/, 14402 /*Ready to Go*/, 14401 /*Grandma's Cat*/, 14400 /*I Can't Wear This*/, 14399 /*Grandma's Lost It Alright*/, 14412 /*Washed Up*/, 14404 /*Not Quite Shipshape*/, 14416 /*The Hungry Ettin*/, 14406 /*The Crowley Orchard*/, 14403 /*The Hayward Brothers*/, 14398 /*Grandma Wahl*/, 14397 /*Evacuation*/, 14395 /*Gasping for Breath*/, 14396 /*As the Land Shatters*/, 14386 /*Leader of the Pack*/, 14368 /*Save the Children!*/, 14382 /*Two By Sea*/, 14369 /*Unleash the Beast*/, 14367 /*The Allens' Storm Cellar*/, 14366 /*Holding Steady*/, 14347 /*Hold the Line*/, 14348 /*You Can't Take 'Em Alone*/, 14336 /*Kill or Be Killed*/, 14321 /*Invasion*/, 14320 /*In Need of Ingredients*/, 14313 /*Among Humans Again*/, 14222 /*Last Stand*/, 14221 /*Never Surrender, Sometimes Retreat*/, 14218 /*By Blood and Ash*/, 14212 /*Sacrifices*/, 14294 /*Time to Regroup*/, 14293 /*Save Krennan Aranas*/, 14214 /*Message to Greymane*/, 14204 /*From the Shadows*/, 14159 /*The Rebel Lord's Arsenal*/, 26129 /*Brothers In Arms*/, 14154 /*By the Skin of His Teeth*/, 28850 /*The Prison Rooftop*/, 24930 /*While You're At It*/, 14157 /*Old Divisions*/, 14286 /*Safety in Numbers*/, 14265 /*Your Instructor*/, 14099 /*Royal Orders*/, 14094 /*Salvage the Supplies*/, 14098 /*Evacuate the Merchant Square*/, 14093 /*All Hell Breaks Loose*/, 14091 /*Something's Amiss*/, 14078 /*Lockdown!*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(24676, 1, 0, 0, 0, 0, 0, 0, 0, 25383), -- Push Them Out
(24674, 1, 0, 0, 0, 0, 0, 0, 0, 25383), -- Slaves to No One
(24675, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Last Meal
(24575, 1, 274, 0, 0, 0, 0, 0, 0, 25383), -- Liberation Day
(24677, 274, 0, 0, 0, 0, 0, 0, 0, 25383), -- Flank the Forsaken
(24592, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Betrayal at Tempest's Reach
(24672, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Onwards and Upwards
(24673, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Return to Stormglen
(24593, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Neither Human Nor Beast
(24646, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Take Back What's Ours
(24628, 1, 0, 0, 0, 0, 0, 0, 0, 25383), -- Preparations
(24627, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- At Our Doorstep
(24617, 25, 0, 0, 0, 0, 0, 0, 0, 25383), -- Tal'doren, the Wild Home
(24616, 1, 25, 0, 0, 0, 0, 0, 0, 25383), -- Losing Your Tail
(24578, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- The Blackwald
(24501, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Queen-Sized Troubles
(24495, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Pieces of the Past
(24484, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Pest Control
(24483, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Stormglen
(24472, 1, 6, 5, 0, 0, 0, 0, 0, 25383), -- Introductions Are in Order
(24468, 1, 25, 0, 0, 0, 0, 0, 0, 25383), -- Stranded at the Marsh
(24438, 1, 0, 0, 0, 0, 0, 0, 0, 25383), -- Exodus
(14466, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- The King's Observatory
(14465, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- To Greymane Manor
(14463, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Horses for Duskhaven
(14405, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Escape By Sea
(14402, 1, 0, 0, 0, 0, 0, 0, 0, 25383), -- Ready to Go
(14401, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Grandma's Cat
(14400, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- I Can't Wear This
(14399, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Grandma's Lost It Alright
(14412, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Washed Up
(14404, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Not Quite Shipshape
(14416, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- The Hungry Ettin
(14406, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- The Crowley Orchard
(14403, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- The Hayward Brothers
(14398, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Grandma Wahl
(14397, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Evacuation
(14395, 25, 6, 1, 0, 0, 0, 0, 0, 25383), -- Gasping for Breath
(14396, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- As the Land Shatters
(14386, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Leader of the Pack
(14368, 18, 0, 0, 0, 0, 0, 0, 0, 25383), -- Save the Children!
(14382, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Two By Sea
(14369, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Unleash the Beast
(14367, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- The Allens' Storm Cellar
(14366, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Holding Steady
(14347, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Hold the Line
(14348, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- You Can't Take 'Em Alone
(14336, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Kill or Be Killed
(14321, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Invasion
(14320, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- In Need of Ingredients
(14313, 1, 5, 274, 0, 0, 0, 0, 0, 25383), -- Among Humans Again
(14222, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Last Stand
(14221, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Never Surrender, Sometimes Retreat
(14218, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- By Blood and Ash
(14212, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Sacrifices
(14294, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Time to Regroup
(14293, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Save Krennan Aranas
(14214, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Message to Greymane
(14204, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- From the Shadows
(14159, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- The Rebel Lord's Arsenal
(26129, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Brothers In Arms
(14154, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- By the Skin of His Teeth
(28850, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- The Prison Rooftop
(24930, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- While You're At It
(14157, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Old Divisions
(14286, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Safety in Numbers
(14265, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Your Instructor
(14099, 25, 0, 0, 0, 0, 0, 0, 0, 25383), -- Royal Orders
(14094, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Salvage the Supplies
(14098, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Evacuate the Merchant Square
(14093, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- All Hell Breaks Loose
(14091, 0, 0, 0, 0, 0, 0, 0, 0, 25383), -- Something's Amiss
(14078, 0, 0, 0, 0, 0, 0, 0, 0, 25383); -- Lockdown!


-- Quest Request Items
UPDATE `quest_request_items` SET `CompletionText`='Did you get what I needed, $n?', `VerifiedBuild`=25383 WHERE `ID`=24675; -- Last Meal
UPDATE `quest_request_items` SET `CompletionText`='Do you have the scythe, $n?', `VerifiedBuild`=25383 WHERE `ID`=24646; -- Take Back What's Ours
UPDATE `quest_request_items` SET `CompletionText`='You\'ve returned, $n.', `VerifiedBuild`=25383 WHERE `ID`=24628; -- Preparations
UPDATE `quest_request_items` SET `CompletionText`='How did it go, $n?', `VerifiedBuild`=25383 WHERE `ID`=24472; -- Introductions Are in Order
UPDATE `quest_request_items` SET `CompletionText`='You\'re such a charming young $gman:lady;, $n.', `VerifiedBuild`=25383 WHERE `ID`=14401; -- Grandma's Cat
UPDATE `quest_request_items` SET `CompletionText`='Do you have my supplies, $n?', `VerifiedBuild`=25383 WHERE `ID`=14404; -- Not Quite Shipshape
UPDATE `quest_request_items` SET `CompletionText`='Have you salvaged the supplies, $n?', `VerifiedBuild`=25383 WHERE `ID`=14094; -- Salvage the Supplies


-- Lord Darius Crowley (35077) ***npc_lord_darius_crowley_35077***
SET @ENTRY := 35077;
UPDATE `creature_template` SET `AIName`="SmartAI", `DamageModifier`= 3 WHERE `entry`=35077;
DELETE FROM `smart_scripts` WHERE `entryorguid`=35077;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(35077, 0, 0, 0, 19, 0, 100, 0, 14154, 0, 0, 0, 11, 66914, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Lord Darius Crowley - On Quest Accept - Cast Gilneas - Quest - Gilneas Prison Periodic Forcecast"),
(35077, 0, 1, 0, 37, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Lord Darius Crowley - On AI Initialize - Disable Combat Movement"),
(35077, 0, 2, 0, 0, 0, 100, 0, 6000, 6000, 15000, 17000, 11, 67825, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Lord Darius Crowley - Cast Left Hook");


-- Tobias Mistmantle (35124)
UPDATE `creature_template` SET `DamageModifier`=3 WHERE `entry`=35124;


-- Worgen Alpha (35167) ***npc_worgen_alpha_35167***
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=35167;
DELETE FROM `smart_scripts` WHERE `entryorguid`=35167;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(35167, 0, 0, 1, 2, 0, 100, 1, 0, 30, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Worgen Alpha - Cast Enrage at 30% HP"),
(35167, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Worgen Alpha - Say Line 0"),
(35167, 0, 2, 0, 54, 0, 100, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1639.317, 1491.14, 67.34758, 0, "Worgen Alpha - On Just Summoned - Move to Pos");


-- Josiah Event Trigger (50415) ***npc_josiah_avery_trigger_50415***
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=50415;
DELETE FROM `smart_scripts` WHERE `entryorguid`=50415;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(50415, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 44, 171, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Josiah Event Trigger - On Just Summoned - Set Phase 171"),
(50415, 0, 1, 0, 1, 0, 100, 1, 2000, 2000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, "Josiah Event Trigger - Say Line 0");


-- Creature Text
DELETE FROM `creature_text` WHERE `CreatureID` IN (50415,35911,35552,35551,35753);
INSERT INTO `creature_text` (`CreatureID`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES
(50415, 0, 0, 'You\'ve been bitten by a worgen. It\'s probably nothing, but it sure stings a little.$B$B|TInterface\\Icons\\INV_Misc_monsterfang_02.blp:32|t', 42, 0, 100, 0, 0, 19614, 50192, 'Josiah Event Trigger to Player'),
(35911, 0, 0, 'If we can make it past the gates into Duskhaven we\'ll be safe. The eastern mountains are virtually impassable.', 12, 0, 100, 1, 0, 19696, 36107, 'King Genn Greymane to Player'),
(35911, 1, 0, 'We were fools to take up arms against each other, Darius. The worgen would\'ve never stood a chance.', 12, 0, 100, 1, 0, 19696, 36108, 'King Genn Greymane to Player'),
(35551, 0, 0, 'I\'ll stay behind with the Royal Guard, father. It is my duty to Gilneas.', 12, 0, 100, 1, 0, 19696, 36106, 'Prince Liam Greymane to Player'),
(35552, 0, 0, 'We need to keep the worgen\'s attention in the city, Genn. It\'s the only shot we have for the survivors to make it to Duskhaven.', 12, 0, 100, 66, 0, 19696, 36103, 'Lord Darius Crowley to Player'),
(35552, 1, 0, 'Not a chance, boy. Gilneas is going to need its king\'s undivided attention. Can\'t have your father wondering whether his child is alive or not.', 12, 0, 100, 66, 0, 19696, 36104, 'Lord Darius Crowley to Player'),
(35552, 2, 0, 'My men and I will hole up inside the Light\'s Dawn Cathedral. I\'ve already given the order and the cannons are on their way. Lead our people well, Genn.', 12, 0, 100, 66, 0, 19696, 36105, 'Lord Darius Crowley to Player'),
(35753, 0, 0, 'Help! Up here!', 14, 0, 100, 0, 0, 19615, 46756, 'Krennan Aranas to Player');


-- Conditions
DELETE FROM `conditions` WHERE `SourceEntry`= 67350 AND `SourceTypeOrReferenceId`= 13;
INSERT INTO conditions (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ScriptName`, `Comment`) VALUES
(13, 1, 67350, 0, 0, 31, 0, 3, 35374, 0, 0, 0, '', 'Summon Josiah - Target Lab Trigger'),
(13, 4, 67350, 0, 0, 31, 0, 3, 35374, 0, 0, 0, '', 'Summon Josiah - Target Lab Trigger');


-- InhabitType
UPDATE `creature_template` SET `InhabitType`= 1 | 8 WHERE `entry` IN (35907,35504,35509,50474);


-- Gilneas City Guard (35504) ***npc_gilnean_city_guard_35504***
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=35504;
DELETE FROM `smart_scripts` WHERE `entryorguid`=35504;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(35504, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 11, 67595, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Gilneas City Guard - Cast Shoot"),
(35504, 0, 1, 0, 1, 0, 100, 0, 2000, 2000, 2000, 2000, 49, 0, 0, 0, 0, 0, 0, 11, 35505, 20, 0, 0, 0, 0, 0, "Gilneas City Guard - Attack Creature Bloodfang Ripper");


-- Gilneas City Guard (50474)
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=50474;
DELETE FROM `smart_scripts` WHERE `entryorguid`=50474;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(50474, 0, 0, 0, 1, 0, 100, 0, 0, 0, 2000, 2000, 49, 0, 0, 0, 0, 0, 0, 11, 50471, 10, 0, 0, 0, 0, 0, "Gilneas City Guard - Attack Creature Afflicted Gilnean");


-- Afflicted Gilnean (50471)
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=50471;
DELETE FROM `smart_scripts` WHERE `entryorguid`=50471;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(50471, 0, 0, 0, 1, 0, 100, 0, 0, 0, 2000, 2000, 49, 0, 0, 0, 0, 0, 0, 11, 50474, 10, 0, 0, 0, 0, 0, "Afflicted Gilnean - Attack Creature Gilneas City Guard");


-- King Genn Greymane (35911)
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=35911;
DELETE FROM `smart_scripts` WHERE `entryorguid`=35911;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(35911, 0, 0, 1, 20, 0, 100, 0, 14294, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "King Genn Greymane - On Quest Rewarded - Say Line 0"),
(35911, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 80, 3555200, 0, 0, 0, 0, 0, 10, 377011, 0, 0, 0, 0, 0, 0, "King Genn Greymane - Actionlist"),
(35911, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 80, 3591100, 0, 0, 0, 0, 0, 10, 377012, 0, 0, 0, 0, 0, 0, "King Genn Greymane - Actionlist"),
(35911, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, 3555100, 0, 0, 0, 0, 0, 10, 377026, 0, 0, 0, 0, 0, 0, "King Genn Greymane - Actionlist");


-- Lord Darius Crowley (35552) ***npc_lord_darius_crowley_35552***
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=35552;
DELETE FROM `smart_scripts` WHERE `entryorguid`=3555200;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(3555200,9,0,0,0,0,100,0,8000,8000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lord Darius Crowley - Talk 0"),
(3555200,9,1,0,0,0,100,0,14000,14000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lord Darius Crowley - Talk 1"),
(3555200,9,2,0,0,0,100,0,9000,9000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lord Darius Crowley - Talk 2");


-- King Genn Greymane (35911)
DELETE FROM `smart_scripts` WHERE `entryorguid`=3591100;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(3591100,9,0,0,0,0,100,0,39000,39000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"King Genn Greymane - Talk 1");


-- Prince Liam Greymane (35551)
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=35551;
DELETE FROM `smart_scripts` WHERE `entryorguid`=3555100;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(3555100,9,0,0,0,0,100,0,16000,16000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Prince Liam Greymane - Talk 0");


-- Flags Extra
UPDATE `creature_template` SET `flags_extra`= `flags_extra` | 2 WHERE `entry` IN (35870,35233,35230);

-- NPC Spellclick Spells
UPDATE `creature_template` SET `npcflag`= 16777216 WHERE `entry` IN (44427,35231,44428,35317,44429);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (44427, 35231, 44428, 35317, 44429);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(44427, 67001, 3, 0),
(44428, 46598, 3, 0),
(35231, 46598, 1, 0),
(44429, 82992, 3, 0),
(35317, 43671, 1, 0);


-- Vehicle Template Accessory
DELETE FROM `vehicle_template_accessory` WHERE `entry`= 35231;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `summontype`, `summontimer`, `description`) VALUES
(35231, 35230, 1, 1, 5, 0, 'Crowley\'s Horse - Lord Darius Crowley');


-- Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`= 18 AND `SourceGroup` IN (44427, 35317, 44428, 44429);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `Comment`) VALUES
(18, 44427, 67001, 9, 14212, 'Required Quest Active for Spellclick'),
(18, 44429, 82992, 9, 14212, 'Required Quest Active for Spellclick'),
(18, 35317, 43671, 9, 14218, 'Required Quest Active for Spellclick');


-- Waypoint Data
DELETE FROM `waypoint_data` WHERE `id`=352310;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `move_type`) VALUES
(352310, 1, -1686.12, 1655.639, 20.61058, 1),
(352310, 2, -1668.156, 1639.432, 20.61058, 1),
(352310, 3, -1666.63, 1628.859, 20.53271, 1),
(352310, 4, -1670.76, 1617.431, 20.61058, 1),
(352310, 5, -1693.648, 1592.639, 20.61058, 1),
(352310, 6, -1708.017, 1590.55, 20.61042, 1),
(352310, 7, -1719.366, 1595.649, 20.61042, 1),
(352310, 8, -1720.566, 1610.141, 20.6074, 1),
(352310, 9, -1711.898, 1629.703, 20.6074, 1),
(352310, 10, -1698.149, 1656.483, 20.61058, 1),
(352310, 11, -1696.424, 1682.012, 20.52616, 1),
(352310, 12, -1684.675, 1700.12, 20.46484, 1),
(352310, 13, -1658.309, 1710.313, 20.58983, 1),
(352310, 14, -1625.477, 1712.299, 21.80511, 1),
(352310, 15, -1592.095, 1710.71, 20.58986, 1);


DELETE FROM `waypoint_data` WHERE `id`=352311;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `move_type`) VALUES
(352311, 1, -1545.082, 1684.233, 20.60992, 1),
(352311, 2, -1542.793, 1656.083, 20.60992, 1),
(352311, 3, -1542.998, 1640.535, 20.60992, 1),
(352311, 4, -1520.733, 1618.097, 20.61054, 1),
(352311, 5, -1498.792, 1621.738, 20.61054, 1),
(352311, 6, -1468.356, 1630.78, 20.61054, 1),
(352311, 7, -1441.646, 1627.67, 20.61054, 1),
(352311, 8, -1429.844, 1616.627, 20.58984, 1),
(352311, 9, -1417.991, 1586.554, 20.58984, 1),
(352311, 10, -1429.177, 1548.783, 20.84849, 1),
(352311, 11, -1447.417, 1532.79, 20.60095, 1),
(352311, 12, -1463.104, 1535.031, 20.61054, 1),
(352311, 13, -1483.035, 1544.151, 20.61054, 1),
(352311, 14, -1505.156, 1568.611, 20.61053, 1),
(352311, 15, -1531.599, 1581.872, 26.53872, 1),
(352311, 16, -1540.594, 1574.429, 29.20671, 1);


DELETE FROM `waypoint_data` WHERE `id`=444280;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `move_type`) VALUES
(444280, 1, -1512.36, 1570.78, 24.06706, 1),
(444280, 2, -1498.715, 1565.426, 20.87811, 1),
(444280, 3, -1487.863, 1557.163, 20.85, 1),
(444280, 4, -1474.18, 1542.68, 20.61054, 1),
(444280, 5, -1457.6, 1532.64, 20.60095, 1),
(444280, 6, -1438.01, 1525.31, 20.87622, 1),
(444280, 7, -1424.2, 1545.7, 20.46568, 1),
(444280, 8, -1411.29, 1556.16, 20.55698, 1),
(444280, 9, -1414.19, 1577.65, 20.58984, 1),
(444280, 10, -1427.47, 1617.3, 20.58984, 1),
(444280, 11, -1445.54, 1633.9, 20.61054, 1),
(444280, 12, -1470.71, 1658.21, 20.61054, 1),
(444280, 13, -1491.05, 1658.74, 20.61054, 1),
(444280, 14, -1515.33, 1641.18, 20.60992, 1),
(444280, 15, -1526.75, 1630.37, 20.61054, 1),
(444280, 16, -1528.42, 1610.71, 20.61054, 1),
(444280, 17, -1532.39, 1585.36, 26.53804, 1);


-- Conditions
DELETE FROM `conditions` WHERE `SourceEntry`= 67063 AND `SourceTypeOrReferenceId`= 13;
INSERT INTO conditions (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ScriptName`, `Comment`) VALUES
(13, 7, 67063, 0, 0, 31, 0, 3, 35229, 0, 0, 0, '', 'Throw Torch - Target Bloodfang Stalker');


-- Creature Text
DELETE FROM `creature_text` WHERE `CreatureID`=35230;
INSERT INTO `creature_text` (`CreatureID`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES
(35230, 0, 0, 'Let\'s round up as many of them as we can. Every worgen chasing us is one less worgen chasing the survivors!', 12, 0, 100, 0, 0, 19696, 35498, 'Lord Darius Crowley to Player'),
(35230, 1, 0, 'You\'ll never catch us, you blasted mongrels!', 14, 0, 100, 0, 0, 19696, 35497, 'Lord Darius Crowley to Player');


-- Lord Darius Crowley (35230)
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=35230;
DELETE FROM `smart_scripts` WHERE `entryorguid`=35230;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(35230, 0, 0, 0, 60, 0, 100, 1, 7000, 7000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lord Darius Crowley - Event Update - Say Line 0"),
(35230, 0, 1, 0, 60, 0, 100, 1, 39000, 39000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lord Darius Crowley - Event Update - Say Line 1");


-- Northgate Rebel (41015) ***npc_northgate_rebel_41015***
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=41015;
DELETE FROM `smart_scripts` WHERE `entryorguid`=41015;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(41015, 0, 0, 0, 1, 0, 100, 0, 0, 0, 2000, 2000, 49, 0, 0, 0, 0, 0, 0, 11, 35627, 0, 0, 0, 0, 0, 0, "Northgate Rebel - Attack Creature Frenzied Stalker");


-- Crowley's Horse (44428)
UPDATE `creature_template` SET `VehicleID`=1025, `speed_run`=1.28571, `spell1`=67063 WHERE `entry`=44428;


-- Lord Darius Crowley (35566) ***npc_lord_darius_crowley_35566***
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=35566;
DELETE FROM `smart_scripts` WHERE `entryorguid`=35566;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(35566, 0, 0, 1, 20, 0, 100, 0, 14222, 0, 0, 0, 85, 98274, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Lord Darius Crowley - On Quest Reward - Player Cast on Self Force Worgen Altered Form"),
(35566, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 85, 68630, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Lord Darius Crowley - Player Cast on Self Curse of the Worgen");


-- Vitus Darkwalker (35869)
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=35869;
DELETE FROM `smart_scripts` WHERE `entryorguid`=35869;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(35869, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 45104, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Vitus Darkwalker - On Reset - Cast Shadow Channelling");


-- Bloodfang Lurker (35463) ***npc_bloodfang_lurker_35463***
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=35463;
DELETE FROM `smart_scripts` WHERE `entryorguid`=35463;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(35463, 0, 0, 1, 2, 0, 100, 1, 0, 30, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Bloodfang Lurker - Cast Enrage at 30% HP"),
(35463, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Bloodfang Lurker - Say Line 0"),
(35463, 0, 2, 3, 11, 0, 100, 1, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Bloodfang Lurker - On Respawn - Set React State Passive"),
(35463, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 5916, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Bloodfang Lurker - On Respawn - Cast Shadowstalker Stealth"),
(35463, 0, 4, 5, 7, 0, 100, 1, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Bloodfang Lurker - On Evade - Set React State Passive "),
(35463, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 5916, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Bloodfang Lurker - Cast Shadowstalker Stealth"),
(35463, 0, 6, 0, 4, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Bloodfang Lurker - On Aggro - Set React State Agressive"),
(35463, 0, 7, 0, 8, 0, 100, 0, 67805, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Bloodfang Lurker - On Spellhit - Attack Player");


-- Celestine of the Harvest (44459)
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=44459;
DELETE FROM `smart_scripts` WHERE `entryorguid`=44459;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(44459, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 13236, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Celestine of the Harvest - On Reset - Cast Nature Channeling");


-- Vitus Darkwalker (44469)
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=44469;
DELETE FROM `smart_scripts` WHERE `entryorguid`=44469;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(44469, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 45104, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Vitus Darkwalker - On Reset - Cast Shadow Channelling");


-- DBErrors
DELETE FROM `smart_scripts` WHERE `entryorguid`=35907 AND `source_type`=0 AND `id`=0 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (35907, 0, 0, 0, 11, 0, 100, 1, 0, 0, 0, 0, '', 11, 46598, 0, 0, 0, 0, 0, 11, 35905, 10, 0, 0, 0, 0, 0, 'Krennan Aranas - On Respawn - Cast Ride Vehicle Hardcoded');
DELETE FROM `smart_scripts` WHERE `entryorguid`=35907 AND `source_type`=0 AND `id`=1 AND `link`=2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (35907, 0, 1, 2, 38, 0, 100, 1, 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Krennan Aranas - On Data Set - Say Text 0');
DELETE FROM `smart_scripts` WHERE `entryorguid`=35907 AND `source_type`=0 AND `id`=2 AND `link`=3;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (35907, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, '', 24, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Krennan Aranas - On Data Set - Prevent Combat Movement');
DELETE FROM `smart_scripts` WHERE `entryorguid`=35907 AND `source_type`=0 AND `id`=3 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (35907, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, '', 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Krennan Aranas - On Data Set - Despawn in 1 seg');

