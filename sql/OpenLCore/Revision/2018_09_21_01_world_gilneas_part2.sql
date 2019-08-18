/*=================
-- Gilneas Part 2
=================*/
-- All Hell Breaks Loose (14093)
UPDATE `quest_template_addon` SET `NextQuestID`='14099' WHERE  `ID`=14093;


-- Evacuate the Merchant Square (14098)
UPDATE `quest_template_addon` SET `NextQuestID`='14099' WHERE  `ID`=14098;


-- Something's Amiss (14094)
UPDATE `quest_template_addon` SET `PrevQuestID`='14091', `ExclusiveGroup`='-14093' WHERE  `ID`=14094;
UPDATE `quest_template` SET `RewardNextQuest`='14099' WHERE  `ID`=14094;


-- Safety in Numbers (14291)
UPDATE `quest_template_addon` SET `NextQuestID`='24930' WHERE  `ID`=14291;
UPDATE `quest_template` SET `RewardNextQuest`='24930' WHERE  `ID`=14291;


-- Someone\'s Keeping Track of You (14275)
UPDATE `quest_template_addon` SET `NextQuestID`='14290' WHERE  `ID`=14275;
UPDATE `quest_template` SET `RewardNextQuest`='14290' WHERE  `ID`=14275;


-- Safety in Numbers (14290)
UPDATE `quest_template_addon` SET `NextQuestID`='24930' WHERE  `ID`=14290;
UPDATE `quest_template` SET `RewardNextQuest`='24930' WHERE  `ID`=14290;


-- Arcane Inquiries (14277)
UPDATE `quest_template_addon` SET `NextQuestID`='14288' WHERE  `ID`=14277;
UPDATE `quest_template` SET `RewardNextQuest`='14288' WHERE  `ID`=14277;


-- Safety in Numbers (14288)
UPDATE `quest_template_addon` SET `NextQuestID`='24930' WHERE  `ID`=14288;
UPDATE `quest_template` SET `RewardNextQuest`='24930' WHERE  `ID`=14288;


-- Seek the Sister (14278)
UPDATE `quest_template_addon` SET `NextQuestID`='14289' WHERE  `ID`=14278;
UPDATE `quest_template` SET `RewardNextQuest`='14289' WHERE  `ID`=14278;


-- Safety in Numbers (14289)
UPDATE `quest_template_addon` SET `NextQuestID`='24930' WHERE  `ID`=14289;
UPDATE `quest_template` SET `RewardNextQuest`='24930' WHERE  `ID`=14289;


-- Seek the Sister (14269)
UPDATE `quest_template_addon` SET `NextQuestID`='14285' WHERE  `ID`=14269;
UPDATE `quest_template` SET `RewardNextQuest`='14285' WHERE  `ID`=14269;


-- Safety in Numbers (14285)
UPDATE `quest_template_addon` SET `NextQuestID`='24930' WHERE  `ID`=14285;
UPDATE `quest_template` SET `RewardNextQuest`='24930' WHERE  `ID`=14285;


-- Shady Associates (14273)
UPDATE `quest_template_addon` SET `NextQuestID`='14287' WHERE  `ID`=14273;
UPDATE `quest_template` SET `RewardNextQuest`='14287' WHERE  `ID`=14273;


-- Safety in Numbers (14287)
UPDATE `quest_template_addon` SET `NextQuestID`='24930' WHERE  `ID`=14287;
UPDATE `quest_template` SET `RewardNextQuest`='24930' WHERE  `ID`=14287;


-- Your Instructor (14265)
UPDATE `quest_template_addon` SET `NextQuestID`='14286' WHERE  `ID`=14265;
UPDATE `quest_template` SET `RewardNextQuest`='14286' WHERE  `ID`=14265;


-- Safety in Numbers (14286)
UPDATE `quest_template_addon` SET `NextQuestID`='24930' WHERE  `ID`=14286;
UPDATE `quest_template` SET `RewardNextQuest`='24930' WHERE  `ID`=14286;


-- Deprecated Quests Disables
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry` IN (14283,14276,14281,14279,14272,14274,14266);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
(1, 14283, 0, '', '', 'Deprecated Quest: Moonfire (Worgen)'),
(1, 14276, 0, '', '', 'Deprecated Quest: Steady Shot (Worgen)'),
(1, 14281, 0, '', '', 'Deprecated Quest: Frost Nova (Worgen)'),
(1, 14279, 0, '', '', 'Deprecated Quest: Learning the Word (Worgen)'),
(1, 14272, 0, '', '', 'Deprecated Quest: Eviscerate (Worgen)'),
(1, 14274, 0, '', '', 'Deprecated Quest: Corruption (Worgen)'),
(1, 14266, 0, '', '', 'Deprecated Quest: Charge (Worgen)');


-- While You're At It (24930)
UPDATE `quest_template_addon` SET `NextQuestID`='14157' WHERE  `ID`=24930;
UPDATE `quest_template` SET `RewardNextQuest`='14157' WHERE  `ID`=24930;


-- Old Divisions (14157)
UPDATE `quest_template_addon` SET `PrevQuestID`='24930' WHERE  `ID`=14157;


-- Brothers In Arms (26129)
UPDATE `quest_template_addon` SET `NextQuestID`='14159' WHERE  `ID`=26129;
UPDATE `quest_template` SET `RewardNextQuest`='14159' WHERE  `ID`=26129;


-- The Rebel Lord's Arsenal (14159)
UPDATE `quest_template_addon` SET `PrevQuestID`='26129', `NextQuestID`='14204' WHERE  `ID`=14159;
UPDATE `quest_template` SET `RewardNextQuest`='14204' WHERE  `ID`=14159;


-- Save Krennan Aranas (14293)
UPDATE `quest_template_addon` SET `NextQuestID`='14294' WHERE  `ID`=14293;
UPDATE `quest_template` SET `RewardNextQuest`='14294' WHERE  `ID`=14293;


-- Time to Regroup (14294)
UPDATE `quest_template_addon` SET `NextQuestID`='14212' WHERE  `ID`=14294;
UPDATE `quest_template` SET `RewardNextQuest`='14212' WHERE  `ID`=14294;


-- Last Stand (14222)
UPDATE `quest_template_addon` SET `NextQuestID`='14375' WHERE  `ID`=14222;
UPDATE `quest_template` SET `RewardNextQuest`='14375' WHERE  `ID`=14222;


-- Last Chance at Humanity (14375)
UPDATE `quest_template_addon` SET `PrevQuestID`='14222', `NextQuestID`='14313' WHERE  `ID`=14375;
UPDATE `quest_template` SET `RewardNextQuest`='14313' WHERE  `ID`=14375;


-- In Need of Ingredients (14320)
UPDATE `quest_template` SET `RewardNextQuest`='14321' WHERE  `ID`=14320;


-- Kill or Be Killed (14336)
UPDATE `quest_template_addon` SET `PrevQuestID`='14321' WHERE  `ID`=14336;


-- Hold the Line (14347)
UPDATE `quest_template_addon` SET `ExclusiveGroup`='-14347' WHERE  `ID`=14347;


-- You Can't Take 'Em Alone (14348)
UPDATE `quest_template_addon` SET `ExclusiveGroup`='-14347' WHERE  `ID`=14348;


-- Unleash the Beast (14369)
UPDATE `quest_template_addon` SET `PrevQuestID`='14367', `NextQuestID`='14386', `ExclusiveGroup`='-14369' WHERE  `ID`=14369;
UPDATE `quest_template` SET `RewardNextQuest`='14386' WHERE  `ID`=14369;


-- Two By Sea (14382)
UPDATE `quest_template_addon` SET `PrevQuestID`='14367', `NextQuestID`='14386', `ExclusiveGroup`='-14369' WHERE  `ID`=14382;
UPDATE `quest_template` SET `RewardNextQuest`='14386' WHERE  `ID`=14382;


-- Save the Children! (14368)
UPDATE `quest_template_addon` SET `PrevQuestID`='14367', `NextQuestID`='14386', `ExclusiveGroup`='-14369' WHERE  `ID`=14368;
UPDATE `quest_template` SET `RewardNextQuest`='14386' WHERE  `ID`=14368;


-- Leader of the Pack (14386)
UPDATE `quest_template_addon` SET `NextQuestID`='14396' WHERE  `ID`=14386;
UPDATE `quest_template` SET `RewardNextQuest`='14396' WHERE  `ID`=14386;


-- Evacuation (14397)
UPDATE `quest_template_addon` SET `NextQuestID`='14398' WHERE  `ID`=14397;
UPDATE `quest_template` SET `RewardNextQuest`='14398' WHERE  `ID`=14397;


-- I Can't Wear This (14400)
UPDATE `quest_template_addon` SET `PrevQuestID`='14399' WHERE  `ID`=14400;


-- Grandma's Cat (14401)
UPDATE `quest_template_addon` SET `PrevQuestID`='14400' WHERE  `ID`=14401;


-- The King's Observatory (14466)
UPDATE `quest_template_addon` SET `NextQuestID`='14467' WHERE  `ID`=14466;
UPDATE `quest_template` SET `RewardNextQuest`='14467' WHERE  `ID`=14466;


-- Alas, Gilneas! (14467)
UPDATE `quest_template_addon` SET `NextQuestID`='24438' WHERE  `ID`=14467;
UPDATE `quest_template` SET `RewardNextQuest`='24438' WHERE  `ID`=14467;


-- Exodus (24438)
UPDATE `quest_template_addon` SET `NextQuestID`='24468' WHERE  `ID`=24438;
UPDATE `quest_template` SET `RewardNextQuest`='24468' WHERE  `ID`=24438;


-- Stranded at the Marsh (24468)
UPDATE `quest_template_addon` SET `NextQuestID`='24472' WHERE  `ID`=24468;
UPDATE `quest_template` SET `RewardNextQuest`='24472' WHERE  `ID`=24468;


-- Introductions Are in Order (24472)
UPDATE `quest_template_addon` SET `NextQuestID`='24483' WHERE  `ID`=24472;
UPDATE `quest_template` SET `RewardNextQuest`='24483' WHERE  `ID`=24472;


-- Stormglen (24483)
UPDATE `quest_template_addon` SET `PrevQuestID`='24472' WHERE  `ID`=24483;


-- Pest Control (24484)
UPDATE `quest_template_addon` SET `PrevQuestID`='24483', `ExclusiveGroup`='-24484' WHERE  `ID`=24484;


-- Pieces of the Past (24495)
UPDATE `quest_template_addon` SET `PrevQuestID`='24483', `NextQuestID`='24501', `ExclusiveGroup`='-24484' WHERE  `ID`=24495;
UPDATE `quest_template` SET `RewardNextQuest`='24501' WHERE  `ID`=24495;


-- Queen-Sized Troubles (24501)
UPDATE `quest_template_addon` SET `NextQuestID`='24578' WHERE  `ID`=24501;
UPDATE `quest_template` SET `RewardNextQuest`='24578' WHERE  `ID`=24501;


-- The Blackwald (24578)
UPDATE `quest_template_addon` SET `PrevQuestID`='24501' WHERE  `ID`=24578;


-- Losing Your Tail (24616)
UPDATE `quest_template_addon` SET `PrevQuestID`='24578' WHERE  `ID`=24616;


-- Tal'doren, the Wild Home (24617)
UPDATE `quest_template_addon` SET `PrevQuestID`='24616' WHERE  `ID`=24617;


-- At Our Doorstep (24627)
UPDATE `quest_template_addon` SET `ExclusiveGroup`='-24627' WHERE  `ID`=24627;
UPDATE `quest_template` SET `RewardNextQuest`='24646' WHERE  `ID`=24627;


-- Preparations (24628)
UPDATE `quest_template_addon` SET `PrevQuestID`='24617', `NextQuestID`='24646', `ExclusiveGroup`='-24627' WHERE  `ID`=24628;
UPDATE `quest_template` SET `RewardNextQuest`='24646' WHERE  `ID`=24628;


-- Take Back What's Ours (24646)
UPDATE `quest_template_addon` SET `NextQuestID`='24593' WHERE  `ID`=24646;
UPDATE `quest_template` SET `RewardNextQuest`='24593' WHERE  `ID`=24646;


-- Return to Stormglen (24673)
UPDATE `quest_template_addon` SET `PrevQuestID`='24593' WHERE  `ID`=24673;


-- Onwards and Upwards (24672)
UPDATE `quest_template_addon` SET `PrevQuestID`='24673' WHERE  `ID`=24672;


-- Betrayal at Tempest's Reach (24592)
UPDATE `quest_template_addon` SET `PrevQuestID`='24672', `NextQuestID`='24677' WHERE  `ID`=24592;
UPDATE `quest_template` SET `RewardNextQuest`='24677' WHERE  `ID`=24592;


-- Flank the Forsaken (24677)
UPDATE `quest_template_addon` SET `NextQuestID`='24575' WHERE  `ID`=24677;
UPDATE `quest_template` SET `RewardNextQuest`='24575' WHERE  `ID`=24677;


-- Liberation Day (24575)
UPDATE `quest_template_addon` SET `PrevQuestID`='24677', `NextQuestID`='24676', `ExclusiveGroup`='-24575' WHERE  `ID`=24575;
UPDATE `quest_template` SET `RewardNextQuest`='24676' WHERE  `ID`=24575;


-- Last Meal (24675)
UPDATE `quest_template_addon` SET `PrevQuestID`='24677', `NextQuestID`='24676', `ExclusiveGroup`='-24575' WHERE  `ID`=24675;
UPDATE `quest_template` SET `RewardNextQuest`='24676' WHERE  `ID`=24675;


-- Slaves to No One (24674)
UPDATE `quest_template_addon` SET `PrevQuestID`='24677', `NextQuestID`='24676', `ExclusiveGroup`='-24575' WHERE  `ID`=24674;
UPDATE `quest_template` SET `RewardNextQuest`='24676' WHERE  `ID`=24674;


-- Push Them Out (24676)
UPDATE `quest_template_addon` SET `NextQuestID`='24904' WHERE  `ID`=24676;
UPDATE `quest_template` SET `RewardNextQuest`='24904' WHERE  `ID`=24676;


-- The Hunt For Sylvanas (24902)
UPDATE `quest_template_addon` SET `PrevQuestID`='24904' WHERE  `ID`=24902;


-- Vengeance or Survival (24903)
UPDATE `quest_template_addon` SET `PrevQuestID`='24902' WHERE  `ID`=24903;


-- Slowing the Inevitable (24920)
UPDATE `quest_template_addon` SET `PrevQuestID`='24903' WHERE  `ID`=24920;


-- Knee-Deep (24678)
UPDATE `quest_template_addon` SET `PrevQuestID`='24920' WHERE  `ID`=24678;


-- Laid to Rest (24602)
UPDATE `quest_template_addon` SET `PrevQuestID`='24678' WHERE  `ID`=24602;


-- Patriarch's Blessing (24679)
UPDATE `quest_template_addon` SET `PrevQuestID`='24602' WHERE  `ID`=24679;


-- Keel Harbor (24680)
UPDATE `quest_template_addon` SET `PrevQuestID`='24679' WHERE  `ID`=24680;


-- They Have Allies, But So Do We (24681)
UPDATE `quest_template_addon` SET `PrevQuestID`='24680', `NextQuestID`='26706' WHERE  `ID`=24681;
UPDATE `quest_template` SET `RewardNextQuest`='26706' WHERE  `ID`=24681;


-- Endgame (26706)
UPDATE `quest_template_addon` SET `NextQuestID`='14434' WHERE  `ID`=26706;
UPDATE `quest_template` SET `RewardNextQuest`='14434' WHERE  `ID`=26706;


-- Rut'theran Village (14434)
UPDATE `quest_template_addon` SET `NextQuestID`='28517' WHERE  `ID`=14434;
UPDATE `quest_template` SET `RewardNextQuest`='28517' WHERE  `ID`=14434;


-- Supply Crate (195306)
DELETE FROM `gameobject_template_locale` WHERE `entry`=195306 AND `locale`='esES';
INSERT INTO `gameobject_template_locale` (`entry`, `locale`, `name`, `castBarCaption`, `unk1`, `VerifiedBuild`) VALUES 
(195306, 'esES', 'Cajon de suministros', '', NULL, 26365);

DELETE FROM `gameobject_template_locale` WHERE `entry`=195306 AND `locale`='esMX';
INSERT INTO `gameobject_template_locale` (`entry`, `locale`, `name`, `castBarCaption`, `unk1`, `VerifiedBuild`) VALUES 
(195306, 'esMX', 'Cajon de suministros', '', NULL, 26365);


-- Mailbox (202591)
DELETE FROM `gameobject_template_locale` WHERE `entry`=202591 AND `locale`='esES';
INSERT INTO `gameobject_template_locale` (`entry`, `locale`, `name`, `castBarCaption`, `unk1`, `VerifiedBuild`) VALUES 
(202591, 'esES', 'Buzon', '', NULL, 26365);

DELETE FROM `gameobject_template_locale` WHERE `entry`=202591 AND `locale`='esMX';
INSERT INTO `gameobject_template_locale` (`entry`, `locale`, `name`, `castBarCaption`, `unk1`, `VerifiedBuild`) VALUES 
(202591, 'esMX', 'Buzon', '', NULL, 26365);


-- Gilneas Market Evacuation Credit (35006)
UPDATE `creature_template` SET `InhabitType`='4', `flags_extra`='128' WHERE  `entry`=35006;


-- Panicked Citizen (34851)
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE  `guid` IN (223364,223329,223381,223344,223324,223358,223354,223365,223377,223366,223379,223352,223304,223382,223258,223260,223356,223360);

DELETE FROM `smart_scripts` WHERE `entryorguid`=34851;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(34851, 0, 0, 0, 1, 0, 60, 0, 10000, 120000, 60000, 240000, '', 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Panicked Citizen - OCC - Say Text');


-- Frightened Chicken (44426)
UPDATE `creature` SET `spawndist`='3', `MovementType`='1' WHERE  `id`=44426 AND NOT `MovementType`='2';

UPDATE creature_template SET AIName ='SmartAI' WHERE entry =44426;
DELETE FROM `smart_scripts` WHERE `entryorguid`=44426;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(44426, 0, 0, 0, 10, 0, 100, 512, 1, 8, 5000, 6000, '', 11, 52716, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Frightened Chicken - On Player Distance - Cast Terrified');

