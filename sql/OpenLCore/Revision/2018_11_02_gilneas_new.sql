/*=================
-- Gilneas Updates
=================*/
-- Quest Offer Reward
UPDATE `quest_offer_reward` SET `Emote1`=2, `VerifiedBuild`=27843 WHERE `ID`=13518; -- The Last Wave of Survivors
UPDATE `quest_offer_reward` SET `Emote1`=6, `VerifiedBuild`=27843 WHERE `ID`=26385; -- Breaking Waves of Change
UPDATE `quest_offer_reward` SET `Emote1`=1, `VerifiedBuild`=27843 WHERE `ID`=28517; -- The Howling Oak




UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `WorldMapAreaId`=62, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13561 AND `BlobIndex`=0 AND `Idx1`=0); -- Solace for the Highborne
UPDATE `quest_poi` SET `WorldMapAreaId`=62, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13563 AND `BlobIndex`=0 AND `Idx1`=2); -- A Love Eternal
UPDATE `quest_poi` SET `WorldMapAreaId`=62, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13563 AND `BlobIndex`=0 AND `Idx1`=1); -- A Love Eternal
UPDATE `quest_poi` SET `WorldMapAreaId`=62, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13563 AND `BlobIndex`=0 AND `Idx1`=0); -- A Love Eternal
UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `WorldMapAreaId`=62, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13564 AND `BlobIndex`=0 AND `Idx1`=0); -- A Lost Companion
UPDATE `quest_poi` SET `WorldMapAreaId`=62, `Flags`=2, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13562 AND `BlobIndex`=0 AND `Idx1`=0); -- The Final Flame of Bashal'Aran
UPDATE `quest_poi` SET `WorldMapAreaId`=62, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13557 AND `BlobIndex`=1 AND `Idx1`=2); -- Bearer of Good Fortune
UPDATE `quest_poi` SET `WorldMapAreaId`=62, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13557 AND `BlobIndex`=2 AND `Idx1`=1); -- Bearer of Good Fortune
UPDATE `quest_poi` SET `WorldMapAreaId`=62, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13557 AND `BlobIndex`=0 AND `Idx1`=0); -- Bearer of Good Fortune
UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `WorldMapAreaId`=62, `Flags`=0, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13529 AND `BlobIndex`=0 AND `Idx1`=0); -- The Corruption's Source
UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `WorldMapAreaId`=62, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13554 AND `BlobIndex`=0 AND `Idx1`=0); -- A Cure In The Dark
UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `WorldMapAreaId`=62, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13528 AND `BlobIndex`=0 AND `Idx1`=0); -- Buzzbox 723
UPDATE `quest_poi` SET `WorldMapAreaId`=62, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13527 AND `BlobIndex`=0 AND `Idx1`=0); -- No Accounting for Taste
UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `WorldMapAreaId`=62, `Flags`=7, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13520 AND `BlobIndex`=0 AND `Idx1`=0); -- The Boon of the Seas
UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `WorldMapAreaId`=62, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13521 AND `BlobIndex`=0 AND `Idx1`=0); -- Buzzbox 413
UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `WorldMapAreaId`=62, `Flags`=2, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13518 AND `BlobIndex`=0 AND `Idx1`=0); -- The Last Wave of Survivors
UPDATE `quest_poi` SET `WorldMapAreaId`=62, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=26385 AND `BlobIndex`=0 AND `Idx1`=0); -- Breaking Waves of Change
UPDATE `quest_poi` SET `WorldMapAreaId`=89, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=28517 AND `BlobIndex`=0 AND `Idx1`=0); -- The Howling Oak


-- Quest Poi Points
DELETE FROM `quest_poi_points` WHERE (`QuestID`=13561 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13561 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=13561 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=13561 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=13561 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=13561 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=13561 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=13561 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=13563 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=13563 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13564 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13564 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13564 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13564 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13562 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13831 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13529 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13529 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=13529 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=13529 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=13529 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=13529 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=13529 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=13529 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=13554 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13554 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=13554 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=13554 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13554 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13554 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13554 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13554 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13554 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13528 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13528 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=13528 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13528 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13528 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13528 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13528 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13528 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13527 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13520 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=13520 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=13520 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13520 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13520 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=13520 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=13520 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=13520 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=13520 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=13520 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13520 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13520 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13520 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13520 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13520 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13521 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13521 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13521 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13521 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13521 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13521 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13521 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13522 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13518 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=26385 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=28517 AND `Idx1`=1 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES
(13561, 3, 0, 6788, -9, 27843), -- Solace for the Highborne
(13561, 2, 7, 6639, -130, 27843), -- Solace for the Highborne
(13561, 2, 6, 6617, -67, 27843), -- Solace for the Highborne
(13561, 2, 5, 6631, -35, 27843), -- Solace for the Highborne
(13561, 2, 4, 6663, 14, 27843), -- Solace for the Highborne
(13561, 2, 3, 6740, 24, 27843), -- Solace for the Highborne
(13561, 2, 2, 6768, -101, 27843), -- Solace for the Highborne
(13561, 2, 1, 6750, -174, 27843), -- Solace for the Highborne
(13563, 4, 0, 7452, -269, 27843), -- A Love Eternal
(13563, 3, 0, 7384, -224, 27843), -- A Love Eternal
(13564, 2, 0, 7446, -277, 27843), -- A Lost Companion
(13564, 1, 3, 6471, 242, 27843), -- A Lost Companion
(13564, 1, 2, 6538, 309, 27843), -- A Lost Companion
(13564, 1, 1, 6605, 242, 27843), -- A Lost Companion
(13562, 2, 0, 7372, -259, 27843), -- The Final Flame of Bashal'Aran
(13831, 1, 0, 6768, -696, 27843), -- A Troubling Prescription
(13529, 3, 0, 6926, -654, 27843), -- The Corruption's Source
(13529, 2, 7, 6806, -776, 27843), -- The Corruption's Source
(13529, 2, 6, 6719, -692, 27843), -- The Corruption's Source
(13529, 2, 5, 6717, -646, 27843), -- The Corruption's Source
(13529, 2, 4, 6739, -639, 27843), -- The Corruption's Source
(13529, 2, 3, 6874, -634, 27843), -- The Corruption's Source
(13529, 2, 2, 6898, -636, 27843), -- The Corruption's Source
(13529, 2, 1, 6876, -767, 27843), -- The Corruption's Source
(13554, 2, 0, 6963, -485, 27843), -- A Cure In The Dark
(13554, 1, 8, 6818, -782, 27843), -- A Cure In The Dark
(13554, 1, 7, 6806, -776, 27843), -- A Cure In The Dark
(13554, 1, 6, 6719, -693, 27843), -- A Cure In The Dark
(13554, 1, 5, 6717, -646, 27843), -- A Cure In The Dark
(13554, 1, 4, 6739, -640, 27843), -- A Cure In The Dark
(13554, 1, 3, 6874, -634, 27843), -- A Cure In The Dark
(13554, 1, 2, 6898, -636, 27843), -- A Cure In The Dark
(13554, 1, 1, 6876, -767, 27843), -- A Cure In The Dark
(13528, 2, 0, 7375, -289, 27843), -- Buzzbox 723
(13528, 1, 7, 7155, -609, 27843), -- Buzzbox 723
(13528, 1, 6, 6952, -555, 27843), -- Buzzbox 723
(13528, 1, 5, 6897, -526, 27843), -- Buzzbox 723
(13528, 1, 4, 6889, -505, 27843), -- Buzzbox 723
(13528, 1, 3, 6957, -360, 27843), -- Buzzbox 723
(13528, 1, 2, 7154, -387, 27843), -- Buzzbox 723
(13528, 1, 1, 7371, -586, 27843), -- Buzzbox 723
(13527, 2, 0, 7376, -425, 27843), -- No Accounting for Taste
(13520, 5, 0, 7444, -332, 27843), -- The Boon of the Seas
(13520, 4, 0, 7444, -267, 27843), -- The Boon of the Seas
(13520, 3, 0, 7438, -276, 27843), -- The Boon of the Seas
(13520, 2, 0, 7344, -221, 27843), -- The Boon of the Seas
(13520, 1, 11, 7422, -424, 27843), -- The Boon of the Seas
(13520, 1, 10, 7383, -355, 27843), -- The Boon of the Seas
(13520, 1, 9, 7408, -192, 27843), -- The Boon of the Seas
(13520, 1, 8, 7421, -184, 27843), -- The Boon of the Seas
(13520, 1, 7, 7446, -175, 27843), -- The Boon of the Seas
(13520, 1, 6, 7459, -171, 27843), -- The Boon of the Seas
(13520, 1, 5, 7490, -164, 27843), -- The Boon of the Seas
(13520, 1, 4, 7555, -179, 27843), -- The Boon of the Seas
(13520, 1, 3, 7587, -311, 27843), -- The Boon of the Seas
(13520, 1, 2, 7569, -377, 27843), -- The Boon of the Seas
(13520, 1, 1, 7535, -445, 27843), -- The Boon of the Seas
(13521, 2, 0, 7375, -289, 27843), -- Buzzbox 413
(13521, 1, 6, 7294, -338, 27843), -- Buzzbox 413
(13521, 1, 5, 7401, -15, 27843), -- Buzzbox 413
(13521, 1, 4, 7507, -30, 27843), -- Buzzbox 413
(13521, 1, 3, 7533, -112, 27843), -- Buzzbox 413
(13521, 1, 2, 7582, -278, 27843), -- Buzzbox 413
(13521, 1, 1, 7580, -541, 27843), -- Buzzbox 413
(13522, 2, 0, 7370, -229, 27843), -- Threat from the Water
(13518, 5, 0, 7447, -328, 27843), -- The Last Wave of Survivors
(26385, 1, 0, 10316, 2447, 27843), -- Breaking Waves of Change
(28517, 1, 0, 8355, 991, 27843); -- The Howling Oak

UPDATE `quest_poi_points` SET `X`=6701, `Y`=-174, `VerifiedBuild`=27843 WHERE (`QuestID`=13561 AND `Idx1`=2 AND `Idx2`=0); -- Solace for the Highborne
UPDATE `quest_poi_points` SET `X`=6617, `Y`=-88, `VerifiedBuild`=27843 WHERE (`QuestID`=13561 AND `Idx1`=1 AND `Idx2`=5); -- Solace for the Highborne
UPDATE `quest_poi_points` SET `X`=6597, `Y`=-30, `VerifiedBuild`=27843 WHERE (`QuestID`=13561 AND `Idx1`=1 AND `Idx2`=4); -- Solace for the Highborne
UPDATE `quest_poi_points` SET `X`=6685, `Y`=23, `VerifiedBuild`=27843 WHERE (`QuestID`=13561 AND `Idx1`=1 AND `Idx2`=3); -- Solace for the Highborne
UPDATE `quest_poi_points` SET `X`=6734, `Y`=27, `VerifiedBuild`=27843 WHERE (`QuestID`=13561 AND `Idx1`=1 AND `Idx2`=2); -- Solace for the Highborne
UPDATE `quest_poi_points` SET `X`=6753, `Y`=-135, `VerifiedBuild`=27843 WHERE (`QuestID`=13561 AND `Idx1`=1 AND `Idx2`=1); -- Solace for the Highborne
UPDATE `quest_poi_points` SET `X`=6732, `Y`=-206, `VerifiedBuild`=27843 WHERE (`QuestID`=13561 AND `Idx1`=1 AND `Idx2`=0); -- Solace for the Highborne
UPDATE `quest_poi_points` SET `X`=6788, `Y`=-9, `VerifiedBuild`=27843 WHERE (`QuestID`=13561 AND `Idx1`=0 AND `Idx2`=0); -- Solace for the Highborne
UPDATE `quest_poi_points` SET `X`=6538, `Y`=175, `VerifiedBuild`=27843 WHERE (`QuestID`=13564 AND `Idx1`=1 AND `Idx2`=0); -- A Lost Companion
UPDATE `quest_poi_points` SET `X`=6542, `Y`=239, `VerifiedBuild`=27843 WHERE (`QuestID`=13564 AND `Idx1`=0 AND `Idx2`=0); -- A Lost Companion
UPDATE `quest_poi_points` SET `X`=6858, `Y`=-796, `VerifiedBuild`=27843 WHERE (`QuestID`=13529 AND `Idx1`=2 AND `Idx2`=0); -- The Corruption's Source
UPDATE `quest_poi_points` SET `X`=6798, `Y`=-747, `VerifiedBuild`=27843 WHERE (`QuestID`=13529 AND `Idx1`=1 AND `Idx2`=0); -- The Corruption's Source
UPDATE `quest_poi_points` SET `X`=7373, `Y`=-288, `VerifiedBuild`=27843 WHERE (`QuestID`=13529 AND `Idx1`=0 AND `Idx2`=0); -- The Corruption's Source
UPDATE `quest_poi_points` SET `X`=6858, `Y`=-796, `VerifiedBuild`=27843 WHERE (`QuestID`=13554 AND `Idx1`=1 AND `Idx2`=0); -- A Cure In The Dark
UPDATE `quest_poi_points` SET `X`=7375, `Y`=-289, `VerifiedBuild`=27843 WHERE (`QuestID`=13554 AND `Idx1`=0 AND `Idx2`=0); -- A Cure In The Dark
UPDATE `quest_poi_points` SET `X`=7331, `Y`=-645, `VerifiedBuild`=27843 WHERE (`QuestID`=13528 AND `Idx1`=1 AND `Idx2`=0); -- Buzzbox 723
UPDATE `quest_poi_points` SET `X`=6963, `Y`=-485, `VerifiedBuild`=27843 WHERE (`QuestID`=13528 AND `Idx1`=0 AND `Idx2`=0); -- Buzzbox 723
UPDATE `quest_poi_points` SET `X`=7471, `Y`=-484, `VerifiedBuild`=27843 WHERE (`QuestID`=13520 AND `Idx1`=1 AND `Idx2`=0); -- The Boon of the Seas
UPDATE `quest_poi_points` SET `X`=7415, `Y`=-250, `VerifiedBuild`=27843 WHERE (`QuestID`=13520 AND `Idx1`=0 AND `Idx2`=0); -- The Boon of the Seas
UPDATE `quest_poi_points` SET `X`=7317, `Y`=-544, `VerifiedBuild`=27843 WHERE (`QuestID`=13521 AND `Idx1`=1 AND `Idx2`=0); -- Buzzbox 413
UPDATE `quest_poi_points` SET `X`=7376, `Y`=-425, `VerifiedBuild`=27843 WHERE (`QuestID`=13521 AND `Idx1`=0 AND `Idx2`=0); -- Buzzbox 413
UPDATE `quest_poi_points` SET `Y`=128, `VerifiedBuild`=27843 WHERE (`QuestID`=13522 AND `Idx1`=1 AND `Idx2`=10); -- Threat from the Water
UPDATE `quest_poi_points` SET `Y`=184, `VerifiedBuild`=27843 WHERE (`QuestID`=13522 AND `Idx1`=1 AND `Idx2`=9); -- Threat from the Water
UPDATE `quest_poi_points` SET `Y`=156, `VerifiedBuild`=27843 WHERE (`QuestID`=13522 AND `Idx1`=1 AND `Idx2`=4); -- Threat from the Water
UPDATE `quest_poi_points` SET `Y`=15, `VerifiedBuild`=27843 WHERE (`QuestID`=13522 AND `Idx1`=1 AND `Idx2`=2); -- Threat from the Water
UPDATE `quest_poi_points` SET `X`=7439, `Y`=106, `VerifiedBuild`=27843 WHERE (`QuestID`=13518 AND `Idx1`=4 AND `Idx2`=0); -- The Last Wave of Survivors
UPDATE `quest_poi_points` SET `X`=7296, `Y`=243, `VerifiedBuild`=27843 WHERE (`QuestID`=13518 AND `Idx1`=3 AND `Idx2`=0); -- The Last Wave of Survivors
UPDATE `quest_poi_points` SET `X`=7456, `Y`=164, `VerifiedBuild`=27843 WHERE (`QuestID`=13518 AND `Idx1`=2 AND `Idx2`=0); -- The Last Wave of Survivors
UPDATE `quest_poi_points` SET `X`=7366, `Y`=135, `VerifiedBuild`=27843 WHERE (`QuestID`=13518 AND `Idx1`=1 AND `Idx2`=0); -- The Last Wave of Survivors
UPDATE `quest_poi_points` SET `X`=7420, `Y`=-283, `VerifiedBuild`=27843 WHERE (`QuestID`=13518 AND `Idx1`=0 AND `Idx2`=0); -- The Last Wave of Survivors


-- Quest Details
DELETE FROM `quest_details` WHERE `ID` IN (13563 /*A Love Eternal*/, 13564 /*A Lost Companion*/, 13562 /*The Final Flame of Bashal'Aran*/, 13831 /*A Troubling Prescription*/, 13557 /*Bearer of Good Fortune*/, 13529 /*The Corruption's Source*/, 13554 /*A Cure In The Dark*/, 13528 /*Buzzbox 723*/, 13527 /*No Accounting for Taste*/, 13520 /*The Boon of the Seas*/, 13521 /*Buzzbox 413*/, 13522 /*Threat from the Water*/, 26385 /*Breaking Waves of Change*/, 28517 /*The Howling Oak*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(13563, 1, 0, 0, 0, 0, 0, 0, 0, 27843), -- A Love Eternal
(13564, 0, 0, 0, 0, 0, 0, 0, 0, 27843), -- A Lost Companion
(13562, 1, 0, 0, 0, 0, 0, 0, 0, 27843), -- The Final Flame of Bashal'Aran
(13831, 0, 0, 0, 0, 0, 0, 0, 0, 27843), -- A Troubling Prescription
(13557, 0, 0, 0, 0, 0, 0, 0, 0, 27843), -- Bearer of Good Fortune
(13529, 1, 0, 0, 0, 0, 0, 0, 0, 27843), -- The Corruption's Source
(13554, 0, 0, 0, 0, 0, 0, 0, 0, 27843), -- A Cure In The Dark
(13528, 1, 0, 0, 0, 0, 0, 0, 0, 27843), -- Buzzbox 723
(13527, 0, 0, 0, 0, 0, 0, 0, 0, 27843), -- No Accounting for Taste
(13520, 2, 1, 0, 0, 0, 60, 0, 0, 27843), -- The Boon of the Seas
(13521, 5, 0, 0, 0, 0, 0, 0, 0, 27843), -- Buzzbox 413
(13522, 1, 0, 0, 0, 0, 0, 0, 0, 27843), -- Threat from the Water
(26385, 5, 2, 0, 0, 0, 60, 0, 0, 27843), -- Breaking Waves of Change
(28517, 1, 0, 0, 0, 0, 0, 0, 0, 27843); -- The Howling Oak


-- Quest Request Items
UPDATE `quest_request_items` SET `EmoteOnComplete`=1, `VerifiedBuild`=27843 WHERE `ID`=13563; -- A Love Eternal
UPDATE `quest_request_items` SET `EmoteOnComplete`=6, `EmoteOnCompleteDelay`=200, `VerifiedBuild`=27843 WHERE `ID`=13831; -- A Troubling Prescription
UPDATE `quest_request_items` SET `EmoteOnComplete`=6, `VerifiedBuild`=27843 WHERE `ID`=13557; -- Bearer of Good Fortune
UPDATE `quest_request_items` SET `EmoteOnComplete`=3, `VerifiedBuild`=27843 WHERE `ID`=13554; -- A Cure In The Dark
UPDATE `quest_request_items` SET `VerifiedBuild`=27843 WHERE `ID`=13528; -- Buzzbox 723
UPDATE `quest_request_items` SET `EmoteOnComplete`=6, `VerifiedBuild`=27843 WHERE `ID`=13527; -- No Accounting for Taste
UPDATE `quest_request_items` SET `VerifiedBuild`=27843 WHERE `ID`=13521; -- Buzzbox 413
UPDATE `quest_request_items` SET `EmoteOnComplete`=6, `VerifiedBuild`=27843 WHERE `ID`=13520; -- The Boon of the Seas





-- Creature Template Addon
DELETE FROM `creature_template_addon` WHERE `entry` IN (3843 /*3843 (Anaya) - Generic Quest Invisibility 3*/, 32961 /*32961 (Shaldyn) - Generic Quest Invisibility 2, Feign Death*/, 32962 /*32962 (Gershala Nightwhisper) - Generic Quest Invisibility 2, Feign Death*/, 32959 /*32959 (Cerellean Whiteclaw) - Generic Quest Invisibility 2*/, 32960 /*32960 (Volcor) - Generic Quest Invisibility 2, Feign Death*/, 33100 /*33100 (Valdaron) - Generic Quest Invisibility 1, Permanent Feign Death*/, 33103 /*33103 (Mavralyn) - Generic Quest Invisibility 1, Permanent Feign Death*/, 33099 /*33099 (Terenthis) - Generic Quest Invisibility 1, Permanent Feign Death*/, 33101 /*33101 (Allyndia) - Generic Quest Invisibility 1, Permanent Feign Death (Drowned + Stunned)*/, 33102 /*33102 (Gwennyth Bly'Leggonde) - Generic Quest Invisibility 1, Permanent Feign Death*/, 33098 /*33098 (Grondal Moonbreeze) - Generic Quest Invisibility 1, Permanent Feign Death*/, 33096 /*33096 (Barithras Moonshade) - Generic Quest Invisibility 1, Permanent Feign Death (Drowned + Stunned)*/, 33097 /*33097 (Dalmond) - Generic Quest Invisibility 1, Permanent Feign Death*/, 63084 /*63084 (Poe)*/, 63083 /*63083 (Will Larsons)*/, 62246 /*62246 (Shimmershell Snail)*/, 64375 /*64375 (Shimmershell Snail)*/, 118905 /*118905 (Huntress Duskrunner)*/, 118920 /*118920 (Priestess Allysa)*/, 118916 /*118916 (Priest Ellandras)*/, 118921 /*118921 (Priestess Selveria)*/, 118918 /*118918 (Priest Sal'shanan)*/, 118900 /*118900 (Darnassian Dignitary)*/, 118917 /*118917 (Priest Iridil)*/, 118919 /*118919 (Priestess Celentria)*/, 118899 /*118899 (Darnassus Dilettante)*/, 118891 /*118891 (Taylenne Sweetsong)*/, 52644 /*52644 (Tarien Silverdew)*/, 48738 /*48738 (Malfurion Stormrage) - Generic Quest Invisibility 10*/, 48737 /*48737 (Tyrande Whisperwind) - Generic Quest Invisibility 10*/, 48735 /*48735 (Gwen Armstead) - Generic Quest Invisibility 10*/, 48736 /*48736 (Genn Greymane) - Generic Quest Invisibility 10*/, 36479 /*36479 (Archmage Mordent Evenshade)*/, 50502 /*50502 (Vitus Darkwalker)*/, 50499 /*50499 (Myriam Spellwaker) - Arcane Intellect*/, 50510 /*50510 (Rachel DeSimone)*/, 50509 /*50509 (Jenn Stravaganza)*/, 50508 /*50508 (Carrie Eileen Steen)*/, 50506 /*50506 (Talran of the Wild) - Mark of the Wild*/, 50520 /*50520 (Gilnean Refugee)*/, 50518 /*50518 (Gilnean Refugee)*/, 50517 /*50517 (Gilnean Refugee)*/, 50516 /*50516 (Gilnean Refugee)*/, 50519 /*50519 (Gilnean Refugee)*/, 50507 /*50507 (Vassandra Stormclaw) - Mark of the Wild*/, 50504 /*50504 (Belysra Starbreeze) - Power Word: Fortitude*/, 50501 /*50501 (Sister Almyra)*/, 50505 /*50505 (Lyros Swiftwind) - Mark of the Wild*/, 50521 /*50521 (Gilnean Refugee)*/, 50513 /*50513 (Jamie Harriott)*/, 50497 /*50497 (Huntsman Blake)*/, 50500 /*50500 (Sergeant Cleese)*/, 52645 /*52645 (Aessa Silverdew)*/, 55285 /*55285 (Astrid Langstrump)*/, 55272 /*55272 (Mountain Horse)*/, 55273 /*55273 (Swift Mountain Horse)*/);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(3843, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 3843 (Anaya) - 
(32961, 0, 0, 65536, 1, 0, 0, 0, 0, '57626'), -- 32961 (Shaldyn) - Feign Death
(32962, 0, 0, 65536, 1, 0, 0, 0, 0, '51329'), -- 32962 (Gershala Nightwhisper) - Feign Death
(32959, 0, 0, 65536, 257, 0, 0, 0, 0, ''), -- 32959 (Cerellean Whiteclaw) - 
(32960, 0, 0, 65536, 1, 0, 0, 0, 0, '57626'), -- 32960 (Volcor) - Feign Death
(33100, 0, 0, 65536, 1, 0, 0, 0, 0, '29266'), -- 33100 (Valdaron) - Permanent Feign Death
(33103, 0, 0, 65536, 1, 0, 0, 0, 0, '29266'), -- 33103 (Mavralyn) - Permanent Feign Death
(33099, 0, 0, 65536, 1, 0, 0, 0, 0, '29266'), -- 33099 (Terenthis) - Permanent Feign Death
(33101, 0, 0, 65536, 1, 0, 0, 0, 0, '61971'), -- 33101 (Allyndia) - Permanent Feign Death (Drowned + Stunned)
(33102, 0, 0, 65536, 1, 0, 0, 0, 0, '29266'), -- 33102 (Gwennyth Bly'Leggonde) - Permanent Feign Death
(33098, 0, 0, 65536, 1, 0, 0, 0, 0, '29266'), -- 33098 (Grondal Moonbreeze) - Permanent Feign Death
(33096, 0, 0, 65536, 1, 0, 0, 0, 0, '61971'), -- 33096 (Barithras Moonshade) - Permanent Feign Death (Drowned + Stunned)
(33097, 0, 0, 65536, 1, 0, 0, 0, 0, '29266'), -- 33097 (Dalmond) - Permanent Feign Death
(63084, 0, 0, 33554432, 1, 0, 0, 0, 0, ''), -- 63084 (Poe)
(63083, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 63083 (Will Larsons)
(62246, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 62246 (Shimmershell Snail)
(64375, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 64375 (Shimmershell Snail)
(118905, 0, 6448, 0, 257, 0, 0, 0, 0, ''), -- 118905 (Huntress Duskrunner)
(118920, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 118920 (Priestess Allysa)
(118916, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 118916 (Priest Ellandras)
(118921, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 118921 (Priestess Selveria)
(118918, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 118918 (Priest Sal'shanan)
(118900, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 118900 (Darnassian Dignitary)
(118917, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 118917 (Priest Iridil)
(118919, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 118919 (Priestess Celentria)
(118899, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 118899 (Darnassus Dilettante)
(118891, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 118891 (Taylenne Sweetsong)
(52644, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 52644 (Tarien Silverdew)
(48738, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 48738 (Malfurion Stormrage) - 
(48737, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 48737 (Tyrande Whisperwind) - 
(48735, 0, 0, 65536, 1, 0, 0, 0, 0, ''), -- 48735 (Gwen Armstead) - 
(48736, 0, 0, 65536, 0, 0, 0, 0, 0, ''), -- 48736 (Genn Greymane) - 
(36479, 0, 0, 0, 256, 0, 0, 0, 0, ''), -- 36479 (Archmage Mordent Evenshade)
(50502, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 50502 (Vitus Darkwalker)
(50499, 0, 0, 0, 0, 0, 0, 0, 0, '13326'), -- 50499 (Myriam Spellwaker) - Arcane Intellect
(50510, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 50510 (Rachel DeSimone)
(50509, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 50509 (Jenn Stravaganza)
(50508, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 50508 (Carrie Eileen Steen)
(50506, 0, 0, 0, 256, 0, 0, 0, 0, '79833'), -- 50506 (Talran of the Wild) - Mark of the Wild
(50520, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 50520 (Gilnean Refugee)
(50518, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 50518 (Gilnean Refugee)
(50517, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 50517 (Gilnean Refugee)
(50516, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 50516 (Gilnean Refugee)
(50519, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 50519 (Gilnean Refugee)
(50507, 0, 0, 0, 256, 0, 0, 0, 0, '79833'), -- 50507 (Vassandra Stormclaw) - Mark of the Wild
(50504, 0, 0, 0, 256, 0, 0, 0, 0, '13864'), -- 50504 (Belysra Starbreeze) - Power Word: Fortitude
(50501, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 50501 (Sister Almyra)
(50505, 0, 0, 0, 256, 0, 0, 0, 0, '79833'), -- 50505 (Lyros Swiftwind) - Mark of the Wild
(50521, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 50521 (Gilnean Refugee)
(50513, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 50513 (Jamie Harriott)
(50497, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- 50497 (Huntsman Blake)
(50500, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 50500 (Sergeant Cleese)
(52645, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 52645 (Aessa Silverdew)
(55285, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 55285 (Astrid Langstrump)
(55272, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 55272 (Mountain Horse)
(55273, 0, 0, 0, 1, 0, 0, 0, 0, ''); -- 55273 (Swift Mountain Horse)

UPDATE `creature_template_addon` SET `bytes1`=3 WHERE `entry`=33127; -- 33127 (Moonstalker)
UPDATE `creature_template_addon` SET `auras`='51329' WHERE `entry`=33053; -- 33053 (Grimclaw)
UPDATE `creature_template_addon` SET `auras`='64196' WHERE `entry`=33997; -- 33997 (Cliffspring Falls Workbench)
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=89715; -- 89715 (Franklin Martin)
UPDATE `creature_template_addon` SET `bytes1`=65536, `bytes2`=1, `auras`='51329 80185' WHERE `entry`=33095; -- 33095 (Shaldyn)
UPDATE `creature_template_addon` SET `bytes1`=65536, `bytes2`=1, `auras`='51329 80185' WHERE `entry`=32911; -- 32911 (Gershala Nightwhisper)
UPDATE `creature_template_addon` SET `bytes1`=65536, `bytes2`=1, `auras`='51329 80185' WHERE `entry`=33093; -- 33093 (Cerellean Whiteclaw)
UPDATE `creature_template_addon` SET `bytes1`=65536, `bytes2`=1, `auras`='51329 80185' WHERE `entry`=33094; -- 33094 (Volcor)
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=32972; -- 32972 (Serendia Oakwhisper)
UPDATE `creature_template_addon` SET `auras`='29266' WHERE `entry`=32974; -- 32974 (Laird)
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=32639; -- 32639 (Gnimo)
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=32638; -- 32638 (Hakmud of Argus)
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=32973; -- 32973 (Dentaria Silverglade)
UPDATE `creature_template_addon` SET `mount`=14332 WHERE `entry`=32912; -- 32912 (Sentinel Lendra)
UPDATE `creature_template_addon` SET `mount`=22474 WHERE `entry`=33115; -- 33115 (Lor'danel Sentinel)
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=4216; -- 4216 (Chardryn)
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=4236; -- 4236 (Cyridan)
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=4234; -- 4234 (Andrus)
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=4172; -- 4172 (Anadyia)
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=4177; -- 4177 (Melea)
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=4240; -- 4240 (Caynrus)
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=4180; -- 4180 (Ealyshia Dewwhisper)
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=4231; -- 4231 (Kieran)
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=4235; -- 4235 (Turian)
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=4233; -- 4233 (Mythidan)
UPDATE `creature_template_addon` SET `bytes2`=258 WHERE `entry`=4173; -- 4173 (Landria)
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=4175; -- 4175 (Vinasia)
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=4521; -- 4521 (Treshala Fallowbrook)
UPDATE `creature_template_addon` SET `path_id`=0 WHERE `entry`=4169; -- 4169 (Jaeana)
UPDATE `creature_template_addon` SET `path_id`=0 WHERE `entry`=14378; -- 14378 (Huntress Skymane)
UPDATE `creature_template_addon` SET `path_id`=0 WHERE `entry`=14380; -- 14380 (Huntress Leafrunner)
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=11070; -- 11070 (Lalina Summermoon)
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=3468; -- 3468 (Ancient of Lore)
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=4211; -- 4211 (Dannelor)
UPDATE `creature_template_addon` SET `path_id`=0 WHERE `entry`=5782; -- 5782 (Crildor)
UPDATE `creature_template_addon` SET `path_id`=0 WHERE `entry`=14379; -- 14379 (Huntress Ravenoak)
UPDATE `creature_template_addon` SET `bytes1`=50331648, `bytes2`=257 WHERE `entry`=62450; -- 62450 (Lanfen, Brewer of Fine Teas)


-- Creature Model Info
UPDATE `creature_model_info` SET `BoundingRadius`=1.190805, `VerifiedBuild`=27843 WHERE `DisplayID`=5561;
UPDATE `creature_model_info` SET `BoundingRadius`=0.9736701, `VerifiedBuild`=27843 WHERE `DisplayID`=913;
UPDATE `creature_model_info` SET `BoundingRadius`=1.099457, `VerifiedBuild`=27843 WHERE `DisplayID`=4762;
UPDATE `creature_model_info` SET `BoundingRadius`=1.078952, `VerifiedBuild`=27843 WHERE `DisplayID`=8013;
UPDATE `creature_model_info` SET `BoundingRadius`=0.8892583, `VerifiedBuild`=27843 WHERE `DisplayID`=1015;
UPDATE `creature_model_info` SET `BoundingRadius`=0.7732681, `VerifiedBuild`=27843 WHERE `DisplayID`=911;
UPDATE `creature_model_info` SET `BoundingRadius`=1.240524, `VerifiedBuild`=27843 WHERE `DisplayID`=5430;
UPDATE `creature_model_info` SET `BoundingRadius`=0.1942373, `VerifiedBuild`=27843 WHERE `DisplayID`=30059;
UPDATE `creature_model_info` SET `BoundingRadius`=1.119721, `CombatReach`=2.3, `VerifiedBuild`=27843 WHERE `DisplayID`=982;
UPDATE `creature_model_info` SET `BoundingRadius`=0.8276196, `CombatReach`=1.7, `VerifiedBuild`=27843 WHERE `DisplayID`=1006;
UPDATE `creature_model_info` SET `BoundingRadius`=0.9736701, `CombatReach`=2, `VerifiedBuild`=27843 WHERE `DisplayID`=14316;
UPDATE `creature_model_info` SET `BoundingRadius`=1.219685, `VerifiedBuild`=27843 WHERE `DisplayID`=2161;
UPDATE `creature_model_info` SET `BoundingRadius`=0.7698298, `CombatReach`=1.5, `VerifiedBuild`=27843 WHERE `DisplayID`=42863;
UPDATE `creature_model_info` SET `BoundingRadius`=3.274714, `VerifiedBuild`=27843 WHERE `DisplayID`=14514;
UPDATE `creature_model_info` SET `BoundingRadius`=0.75, `CombatReach`=1.25, `VerifiedBuild`=27843 WHERE `DisplayID`=42408;
UPDATE `creature_model_info` SET `BoundingRadius`=0.5212237, `VerifiedBuild`=27843 WHERE `DisplayID`=30160;
UPDATE `creature_model_info` SET `BoundingRadius`=0.8148559, `CombatReach`=1.0625, `VerifiedBuild`=27843 WHERE `DisplayID`=1938;
UPDATE `creature_model_info` SET `BoundingRadius`=0.3127342, `VerifiedBuild`=27843 WHERE `DisplayID`=30159;
UPDATE `creature_model_info` SET `BoundingRadius`=0.306, `CombatReach`=1.5, `VerifiedBuild`=27843 WHERE `DisplayID`=74955;
UPDATE `creature_model_info` SET `BoundingRadius`=0.306, `CombatReach`=1.5, `VerifiedBuild`=27843 WHERE `DisplayID`=74961;
UPDATE `creature_model_info` SET `BoundingRadius`=0.389, `CombatReach`=1.5, `VerifiedBuild`=27843 WHERE `DisplayID`=74956;
UPDATE `creature_model_info` SET `BoundingRadius`=0.306, `CombatReach`=1.5, `VerifiedBuild`=27843 WHERE `DisplayID`=74962;
UPDATE `creature_model_info` SET `BoundingRadius`=0.389, `CombatReach`=1.5, `VerifiedBuild`=27843 WHERE `DisplayID`=74959;
UPDATE `creature_model_info` SET `BoundingRadius`=0.389, `CombatReach`=1.5, `VerifiedBuild`=27843 WHERE `DisplayID`=74947;
UPDATE `creature_model_info` SET `BoundingRadius`=0.306, `CombatReach`=1.5, `VerifiedBuild`=27843 WHERE `DisplayID`=74951;
UPDATE `creature_model_info` SET `BoundingRadius`=0.389, `CombatReach`=1.5, `VerifiedBuild`=27843 WHERE `DisplayID`=74949;
UPDATE `creature_model_info` SET `BoundingRadius`=0.306, `CombatReach`=1.5, `VerifiedBuild`=27843 WHERE `DisplayID`=74950;
UPDATE `creature_model_info` SET `BoundingRadius`=0.306, `CombatReach`=1.5, `VerifiedBuild`=27843 WHERE `DisplayID`=74952;
UPDATE `creature_model_info` SET `BoundingRadius`=0.389, `CombatReach`=1.5, `VerifiedBuild`=27843 WHERE `DisplayID`=74948;
UPDATE `creature_model_info` SET `BoundingRadius`=0.389, `CombatReach`=1.5, `VerifiedBuild`=27843 WHERE `DisplayID`=74946;
UPDATE `creature_model_info` SET `BoundingRadius`=0.389, `CombatReach`=1.5, `VerifiedBuild`=27843 WHERE `DisplayID`=74958;
UPDATE `creature_model_info` SET `BoundingRadius`=0.306, `CombatReach`=1.5, `VerifiedBuild`=27843 WHERE `DisplayID`=74960;
UPDATE `creature_model_info` SET `BoundingRadius`=0.306, `CombatReach`=1.5, `VerifiedBuild`=27843 WHERE `DisplayID`=74953;
UPDATE `creature_model_info` SET `BoundingRadius`=0.306, `CombatReach`=1.5, `VerifiedBuild`=27843 WHERE `DisplayID`=74941;
UPDATE `creature_model_info` SET `BoundingRadius`=0.4905002, `VerifiedBuild`=27843 WHERE `DisplayID`=39096;
UPDATE `creature_model_info` SET `BoundingRadius`=0.4905002, `VerifiedBuild`=27843 WHERE `DisplayID`=39095;
UPDATE `creature_model_info` SET `BoundingRadius`=1.15275, `CombatReach`=2.175, `VerifiedBuild`=27843 WHERE `DisplayID`=613;
UPDATE `creature_model_info` SET `BoundingRadius`=0.8948377, `VerifiedBuild`=27843 WHERE `DisplayID`=14331;
UPDATE `creature_model_info` SET `BoundingRadius`=0.8948377, `VerifiedBuild`=27843 WHERE `DisplayID`=14332;
UPDATE `creature_model_info` SET `BoundingRadius`=0.8948377, `VerifiedBuild`=27843 WHERE `DisplayID`=14632;
UPDATE `creature_model_info` SET `BoundingRadius`=0.8852055, `VerifiedBuild`=27843 WHERE `DisplayID`=6448;
UPDATE `creature_model_info` SET `BoundingRadius`=0.8852055, `VerifiedBuild`=27843 WHERE `DisplayID`=6444;
UPDATE `creature_model_info` SET `BoundingRadius`=0.8852055, `VerifiedBuild`=27843 WHERE `DisplayID`=6080;
UPDATE `creature_model_info` SET `BoundingRadius`=0.8852055, `VerifiedBuild`=27843 WHERE `DisplayID`=29755;
UPDATE `creature_model_info` SET `BoundingRadius`=0.347222, `CombatReach`=1.5, `VerifiedBuild`=27843 WHERE `DisplayID`=42497;
UPDATE `creature_model_info` SET `BoundingRadius`=0.117737, `VerifiedBuild`=27843 WHERE `DisplayID`=36620;


-- NPC Vendor
UPDATE `npc_vendor` SET `slot`=8, `VerifiedBuild`=27843 WHERE (`entry`=4187 AND `item`=1202 AND `ExtendedCost`=0 AND `type`=1); -- Wall Shield
UPDATE `npc_vendor` SET `slot`=7, `VerifiedBuild`=27843 WHERE (`entry`=4187 AND `item`=17187 AND `ExtendedCost`=0 AND `type`=1); -- Banded Buckler
UPDATE `npc_vendor` SET `slot`=6, `VerifiedBuild`=27843 WHERE (`entry`=4187 AND `item`=850 AND `ExtendedCost`=0 AND `type`=1); -- Chainmail Gloves
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=27843 WHERE (`entry`=4187 AND `item`=1846 AND `ExtendedCost`=0 AND `type`=1); -- Chainmail Bracers
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=27843 WHERE (`entry`=4187 AND `item`=849 AND `ExtendedCost`=0 AND `type`=1); -- Chainmail Boots
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=27843 WHERE (`entry`=4187 AND `item`=848 AND `ExtendedCost`=0 AND `type`=1); -- Chainmail Pants
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=27843 WHERE (`entry`=4187 AND `item`=1845 AND `ExtendedCost`=0 AND `type`=1); -- Chainmail Belt
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=27843 WHERE (`entry`=4187 AND `item`=847 AND `ExtendedCost`=0 AND `type`=1); -- Chainmail Armor


-- Creature Equip Template
UPDATE `creature_equip_template` SET `ItemID1`=77365, `ItemID3`=77364 WHERE (`CreatureID`=7999 AND `ID`=1); -- Tyrande Whisperwind


