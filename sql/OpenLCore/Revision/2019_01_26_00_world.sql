DELETE FROM `conversation_actor_template` WHERE `Id` IN (47862, 32351, 52166, 52174, 52175);
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES
(47862, 92976, 62849, 23877),
(32351, 91109, 35095, 23877),
(52166, 104799, 67912, 23877),
(52174, 111204, 35095, 23877),
(52175, 111228, 71620, 23877);

DELETE FROM `conversation_line_template` WHERE `Id` IN (2071, 3687, 3686, 2070, 6194, 2068, 1286, 1285, 8388, 6635, 6634, 6627, 6631, 6630, 8604, 8603, 8602, 3685, 3684, 3683, 3689, 3688, 6626, 8020, 8019, 8018, 8017, 8016, 8015, 6633, 6632, 6629, 6628, 3690, 6318, 6317, 6316, 6315, 6314, 6624, 6623, 1217, 1216, 3510, 3509, 3508, 1238, 1239);
INSERT INTO `conversation_line_template` (`Id`, `StartTime`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(2071, 0, 150, 0, 0, 23877),
(3687, 4544, 1865266072, 1, 0, 23877),
(3686, 0, 1865266072, 0, 0, 23877),
(2070, 0, 150, 0, 0, 23877),
(6194, 0, 99, 0, 0, 23877),
(2068, 0, 150, 0, 0, 23877),
(1286, 5600, 2096091, 1, 0, 23877),
(1285, 0, 2096091, 0, 0, 23877),
(8388, 13850, 101, 1, 0, 23877),
(6635, 5012, 101, 1, 0, 23877),
(6634, 0, 99, 0, 0, 23877),
(6627, 0, 585, 0, 0, 23877),
(6631, 3978, 101, 1, 0, 23877),
(6630, 0, 585, 0, 0, 23877),
(8604, 27974, 0, 0, 0, 23877),
(8603, 20729, 0, 1, 0, 23877),
(8602, 0, 0, 0, 0, 23877),
(3685, 8180, 0, 1, 0, 23877),
(3684, 6804, 0, 1, 0, 23877),
(3683, 0, 0, 0, 0, 23877),
(3689, 4252, 0, 1, 0, 23877),
(3688, 0, 0, 0, 0, 23877),
(6626, 0, 99, 0, 0, 23877),
(8020, 44795, 0, 0, 0, 23877),
(8019, 34198, 0, 0, 0, 23877),
(8018, 24844, 0, 0, 0, 23877),
(8017, 16624, 0, 0, 0, 23877),
(8016, 8082, 0, 0, 0, 23877),
(8015, 0, 0, 0, 0, 23877),
(6633, 3910, 101, 1, 0, 23877),
(6632, 0, 99, 0, 0, 23877),
(6629, 4287, 101, 1, 0, 23877),
(6628, 0, 99, 0, 0, 23877),
(3690, 0, 0, 0, 0, 23877),
(6318, 39360, 1691914272, 1, 0, 23877),
(6317, 25719, 1691914272, 1, 0, 23877),
(6316, 14905, 1691914272, 1, 0, 23877),
(6315, 7581, 1691914272, 1, 0, 23877),
(6314, 0, 1691914272, 0, 0, 23877),
(6624, 7234, 0, 0, 0, 23877),
(6623, 0, 0, 0, 0, 23877),
(1217, 5883, 2096091, 1, 0, 23877),
(1216, 0, 2096091, 0, 0, 23877),
(3510, 26655, 0, 0, 0, 23877),
(3509, 7115, 0, 1, 0, 23877),
(3508, 0, 0, 0, 0, 23877),
(1238, 1650, 0, 1, 0, 23877),
(1239, 0, 0, 0, 0, 23877);

DELETE FROM `conversation_template` WHERE `Id` IN (478, 450, 461, 1711, 1710, 1709, 1708, 3586, 3143, 3142, 3141, 3140, 3139, 3138, 3137, 1618, 3824, 847, 846, 844, 2974, 2954);
INSERT INTO `conversation_template` (`Id`, `FirstLineID`, `LastLineEndTime`, `VerifiedBuild`) VALUES
(478, 1285, 13450, 23877),
(450, 1216, 10840, 23877),
(461, 1239, 6000, 23877),
(1711, 3690, 4832, 23877),
(1710, 3688, 7766, 23877),
(1709, 3686, 11811, 23877),
(1708, 3683, 12512, 23877),
(3586, 8015, 55342, 23877),
(3143, 6634, 18835, 23877),
(3142, 6632, 8399, 23877),
(3141, 6630, 6250, 23877),
(3140, 6628, 7225, 23877),
(3139, 6627, 5938, 23877),
(3138, 6626, 4647, 23877),
(3137, 6623, 18490, 23877),
(1618, 3508, 33037, 23877),
(3824, 8602, 38604, 23877),
(847, 2071, 5547, 23877),
(846, 2070, 5738, 23877),
(844, 2068, 7218, 23877),
(2974, 6314, 45247, 23877),
(2954, 6194, 6193, 23877);

UPDATE `creature_template` SET `gossip_menu_id`='18395' WHERE  `entry`=92618;
UPDATE `creature_template` SET `gossip_menu_id`='18406' WHERE  `entry`=92620;
UPDATE `creature_template` SET `gossip_menu_id`='7998' WHERE  `entry`=92684;
UPDATE `creature_template` SET `gossip_menu_id`='18407' WHERE  `entry`=92619;
UPDATE `creature_template` SET `gossip_menu_id`='18396' WHERE  `entry`=92678;
UPDATE `creature_template` SET `gossip_menu_id`='19951' WHERE  `entry`=94594;
UPDATE `creature_template` SET `gossip_menu_id`='19474' WHERE  `entry`=104799;
UPDATE `creature_template` SET `gossip_menu_id`='19419' WHERE  `entry`=104728;
UPDATE `creature_template` SET `gossip_menu_id`='18443' WHERE  `entry`=92783;
UPDATE `creature_template` SET `gossip_menu_id`='19405' WHERE  `entry`=104739;
UPDATE `creature_template` SET `gossip_menu_id`='18593' WHERE  `entry`=94863;
UPDATE `creature_template` SET `gossip_menu_id`='18596' WHERE  `entry`=95118;
UPDATE `creature_template` SET `gossip_menu_id`='18402' WHERE  `entry`=92742;
UPDATE `creature_template` SET `gossip_menu_id`='18439' WHERE  `entry`=92680;
UPDATE `creature_template` SET `gossip_menu_id`='18440' WHERE  `entry`=92697;
UPDATE `creature_template` SET `gossip_menu_id`='19878' WHERE  `entry`=108978;
UPDATE `creature_template` SET `gossip_menu_id`='6944' WHERE  `entry`=100459;
UPDATE `creature_template` SET `gossip_menu_id`='18250' WHERE  `entry`=91109;
UPDATE `creature_template` SET `gossip_menu_id`='19025' WHERE  `entry`=91496;
UPDATE `creature_template` SET `gossip_menu_id`='18480' WHERE  `entry`=93890;
UPDATE `creature_template` SET `gossip_menu_id`='8903' WHERE  `entry`=92001;
UPDATE `creature_template` SET `gossip_menu_id`='18248' WHERE  `entry`=73426;
UPDATE `creature_template` SET `gossip_menu_id`='18247' WHERE  `entry`=73427;
UPDATE `creature_template` SET `npcflag`='1' WHERE  `entry`=73427;
UPDATE `creature_template` SET `gossip_menu_id`='10182' WHERE  `entry`=92000;
UPDATE `creature_template` SET `gossip_menu_id`='18314' WHERE  `entry`=91066;