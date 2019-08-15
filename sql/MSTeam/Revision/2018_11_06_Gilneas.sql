
-- Quest Offer Reward
UPDATE `quest_offer_reward` SET `Emote1`=6, `Emote2`=1, `Emote3`=2, `Emote4`=1, `VerifiedBuild`=27843 WHERE `ID`=26482; -- True Power of the Rod
UPDATE `quest_offer_reward` SET `Emote1`=6, `VerifiedBuild`=27843 WHERE `ID`=26456; -- Report from the Northern Front
UPDATE `quest_offer_reward` SET `VerifiedBuild`=27843 WHERE `ID`=26481; -- A New Adornment
UPDATE `quest_offer_reward` SET `Emote1`=66, `VerifiedBuild`=27843 WHERE `ID`=13989; -- King of the Foulweald
UPDATE `quest_offer_reward` SET `VerifiedBuild`=27843 WHERE `ID`=26480; -- Dartol's Rod
UPDATE `quest_offer_reward` SET `Emote1`=4, `Emote2`=2, `EmoteDelay2`=1000, `VerifiedBuild`=27843 WHERE `ID`=13924; -- All's Well
UPDATE `quest_offer_reward` SET `Emote1`=6, `Emote2`=1, `Emote3`=1, `VerifiedBuild`=27843 WHERE `ID`=26479; -- Return to Raene
UPDATE `quest_offer_reward` SET `Emote1`=1, `VerifiedBuild`=27843 WHERE `ID`=13922; -- In the Hands of the Perverse
UPDATE `quest_offer_reward` SET `Emote1`=6, `Emote2`=21, `Emote3`=6, `VerifiedBuild`=27843 WHERE `ID`=26478; -- Playing Possum
UPDATE `quest_offer_reward` SET `Emote1`=1, `EmoteDelay1`=1000, `VerifiedBuild`=27843 WHERE `ID`=13921; -- He Who Would Be Forgiven
UPDATE `quest_offer_reward` SET `Emote1`=1, `VerifiedBuild`=27843 WHERE `ID`=26477; -- Search the Bole
UPDATE `quest_offer_reward` SET `Emote1`=66, `Emote2`=15, `VerifiedBuild`=27843 WHERE `ID`=13935; -- Defend the Tree!
UPDATE `quest_offer_reward` SET `VerifiedBuild`=27843 WHERE `ID`=13919; -- A Trip to the Moonwell
UPDATE `quest_offer_reward` SET `Emote1`=1, `VerifiedBuild`=27843 WHERE `ID`=13928; -- Recover the Fallen
UPDATE `quest_offer_reward` SET `Emote1`=1, `Emote2`=2, `VerifiedBuild`=27843 WHERE `ID`=13886; -- Vortex
UPDATE `quest_offer_reward` SET `Emote1`=34, `VerifiedBuild`=27843 WHERE `ID`=13880; -- Hot Lava
UPDATE `quest_offer_reward` SET `Emote1`=34, `VerifiedBuild`=27843 WHERE `ID`=13884; -- Put Out The Fire
UPDATE `quest_offer_reward` SET `Emote1`=1, `Emote2`=1, `VerifiedBuild`=27843 WHERE `ID`=13877; -- Go With The Flow
UPDATE `quest_offer_reward` SET `Emote1`=6, `VerifiedBuild`=27843 WHERE `ID`=26476; -- Dryad Delivery
UPDATE `quest_offer_reward` SET `Emote1`=5, `Emote2`=2, `VerifiedBuild`=27843 WHERE `ID`=26475; -- Elune's Tear
UPDATE `quest_offer_reward` SET `Emote1`=1, `Emote2`=1, `VerifiedBuild`=27843 WHERE `ID`=13874; -- A Not-So-Charmed Life
UPDATE `quest_offer_reward` SET `Emote1`=1, `Emote2`=53, `VerifiedBuild`=27843 WHERE `ID`=13876; -- Too Far Gone
UPDATE `quest_offer_reward` SET `Emote1`=4, `Emote2`=2, `VerifiedBuild`=27843 WHERE `ID`=13853; -- Return Fire
UPDATE `quest_offer_reward` SET `Emote1`=273, `VerifiedBuild`=27843 WHERE `ID`=13849; -- Astranaar's Burning!
UPDATE `quest_offer_reward` SET `Emote1`=25, `VerifiedBuild`=27843 WHERE `ID`=13872; -- Worgen Wisdom
UPDATE `quest_offer_reward` SET `VerifiedBuild`=27843 WHERE `ID`=13868; -- Corrupting Influence?
UPDATE `quest_offer_reward` SET `Emote1`=2, `VerifiedBuild`=27843 WHERE `ID`=13867; -- Culling the Furbolg Threat
UPDATE `quest_offer_reward` SET `Emote1`=6, `Emote2`=2, `VerifiedBuild`=27843 WHERE `ID`=26474; -- Orendil's Cure
UPDATE `quest_offer_reward` SET `Emote1`=18, `Emote2`=6, `EmoteDelay2`=2000, `VerifiedBuild`=27843 WHERE `ID`=13645; -- To Raene Wolfrunner
UPDATE `quest_offer_reward` SET `Emote1`=6, `Emote2`=1, `VerifiedBuild`=27843 WHERE `ID`=13646; -- Astranaar Bound
UPDATE `quest_offer_reward` SET `Emote1`=1, `VerifiedBuild`=27843 WHERE `ID`=13642; -- Bathed in Light
UPDATE `quest_offer_reward` SET `Emote1`=5, `Emote2`=1, `Emote3`=1, `VerifiedBuild`=27843 WHERE `ID`=26464; -- The Lost Gem
UPDATE `quest_offer_reward` SET `Emote1`=33, `VerifiedBuild`=27843 WHERE `ID`=13644; -- That Which Has Risen
UPDATE `quest_offer_reward` SET `VerifiedBuild`=27843 WHERE `ID`=26463; -- Finding Teronis
UPDATE `quest_offer_reward` SET `Emote1`=274, `Emote2`=2, `VerifiedBuild`=27843 WHERE `ID`=13626; -- Respect for the Fallen
UPDATE `quest_offer_reward` SET `Emote1`=2, `Emote2`=6, `VerifiedBuild`=27843 WHERE `ID`=13630; -- The Reason Why
UPDATE `quest_offer_reward` SET `Emote1`=2, `Emote2`=6, `VerifiedBuild`=27843 WHERE `ID`=13632; -- Rear Guard Duty
UPDATE `quest_offer_reward` SET `Emote1`=1, `Emote2`=2, `VerifiedBuild`=27843 WHERE `ID`=13624; -- A Squad of Your Own




-- Quest Poi
DELETE FROM `quest_poi` WHERE (`QuestID`=26482 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=26482 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=26481 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=26481 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13989 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13989 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=26480 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13924 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=26479 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13922 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13922 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=26478 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=26478 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=26456 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13935 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13935 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13886 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13880 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13880 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13884 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13884 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13928 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13928 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=26477 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=26477 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=26477 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13919 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=26476 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=26475 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=26475 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13877 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13876 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13876 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13853 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13853 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13874 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13874 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13872 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13868 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13849 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13849 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=26453 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13867 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=13867 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=13867 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13646 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=26474 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13645 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13644 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13644 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=26464 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=26464 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13626 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=13626 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13626 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13632 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13632 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13630 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=13630 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=13630 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13630 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=26463 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13642 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13642 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13624 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=13624 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13624 AND `BlobIndex`=0 AND `Idx1`=1);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `WoDUnk1`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(26482, 0, 2, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 59260, 0, 27843), -- True Power of the Rod
(26482, 0, 1, 30, 0, 0, 1, 63, 0, 0, 1, 0, 0, 0, 0, 27843), -- True Power of the Rod
(26481, 0, 2, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 59260, 0, 27843), -- A New Adornment
(26481, 0, 1, 0, 256981, 5388, 1, 63, 0, 0, 1, 0, 0, 0, 0, 27843), -- A New Adornment
(13989, 0, 2, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 59260, 0, 27843), -- King of the Foulweald
(13989, 0, 1, 0, 267078, 12918, 1, 63, 0, 0, 1, 0, 0, 0, 0, 27843), -- King of the Foulweald
(26480, 0, 1, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 58846, 0, 27843), -- Dartol's Rod
(13924, 0, 1, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 295240, 0, 27843), -- All's Well
(26479, 0, 1, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 60444, 0, 27843), -- Return to Raene
(13922, 0, 2, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 294639, 0, 27843), -- In the Hands of the Perverse
(13922, 0, 1, 0, 264423, 5508, 1, 63, 0, 0, 1, 0, 0, 0, 0, 27843), -- In the Hands of the Perverse
(26478, 0, 2, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 60444, 0, 27843), -- Playing Possum
(26478, 0, 1, 0, 251982, 5519, 1, 63, 0, 0, 1, 0, 0, 0, 0, 27843), -- Playing Possum
(26456, 0, 1, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 295298, 0, 27843), -- Report from the Northern Front
(13935, 0, 2, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 295757, 0, 27843), -- Defend the Tree!
(13935, 0, 1, 0, 256915, 32856, 1, 63, 0, 0, 1, 0, 0, 0, 0, 27843), -- Defend the Tree!
(13886, 0, 2, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 293736, 0, 27843), -- Vortex
(13880, 0, 2, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 293737, 0, 27843), -- Hot Lava
(13880, 0, 1, 0, 254541, 195002, 1, 63, 0, 0, 1, 0, 0, 0, 0, 27843), -- Hot Lava
(13884, 0, 2, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 293738, 0, 27843), -- Put Out The Fire
(13884, 0, 1, 0, 265031, 34314, 1, 63, 0, 0, 1, 0, 0, 0, 0, 27843), -- Put Out The Fire
(13928, 0, 2, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 295298, 0, 27843), -- Recover the Fallen
(13928, 0, 1, 0, 262617, 46543, 1, 63, 0, 0, 1, 0, 0, 0, 0, 27843), -- Recover the Fallen
(26477, 0, 3, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 60444, 0, 27843), -- Search the Bole
(26477, 0, 2, 27, 0, 0, 1, 63, 0, 0, 1, 0, 0, 0, 0, 27843), -- Search the Bole
(26477, 0, 1, 0, 251974, 5464, 1, 63, 0, 0, 1, 0, 0, 0, 0, 27843), -- Search the Bole
(13919, 0, 1, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 59026, 0, 27843), -- A Trip to the Moonwell
(26476, 0, 1, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 58846, 0, 27843), -- Dryad Delivery
(26475, 0, 2, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 59026, 0, 27843), -- Elune's Tear
(26475, 0, 1, 0, 251915, 5493, 1, 63, 0, 0, 1, 0, 0, 0, 0, 27843), -- Elune's Tear
(13877, 0, 1, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 293354, 0, 27843), -- Go With The Flow
(13876, 0, 2, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 293474, 0, 27843), -- Too Far Gone
(13876, 0, 1, 0, 264851, 5544, 1, 63, 0, 0, 3, 0, 0, 0, 0, 27843), -- Too Far Gone
(13853, 0, 2, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 61901, 0, 27843), -- Return Fire
(13853, 0, 1, 0, 264365, 34176, 1, 63, 0, 0, 3, 0, 0, 0, 0, 27843), -- Return Fire
(13874, 0, 2, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 293354, 0, 27843), -- A Not-So-Charmed Life
(13874, 0, 1, 0, 266941, 16602, 1, 63, 0, 0, 1, 0, 0, 0, 0, 27843), -- A Not-So-Charmed Life
(13872, 0, 1, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 58846, 0, 27843), -- Worgen Wisdom
(13868, 0, 1, 32, 0, 0, 1, 63, 0, 0, 2, 0, 0, 0, 0, 27843), -- Corrupting Influence?
(13849, 0, 2, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 61901, 0, 27843), -- Astranaar's Burning!
(13849, 0, 1, 0, 254158, 34123, 1, 63, 0, 0, 1, 0, 0, 0, 0, 27843), -- Astranaar's Burning!
(26453, 0, 1, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 140841, 0, 27843), -- A Helping Hand
(13867, 0, 3, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 58846, 0, 27843), -- Culling the Furbolg Threat
(13867, 1, 2, 0, 264513, 3925, 1, 63, 0, 0, 1, 0, 0, 0, 0, 27843), -- Culling the Furbolg Threat
(13867, 0, 1, 0, 264513, 3925, 1, 63, 0, 0, 1, 0, 0, 0, 0, 27843), -- Culling the Furbolg Threat
(13646, 0, 1, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 287052, 0, 27843), -- Astranaar Bound
(26474, 0, 1, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 281616, 0, 27843), -- Orendil's Cure
(13645, 0, 1, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 281616, 0, 27843), -- To Raene Wolfrunner
(13644, 0, 2, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 287040, 0, 27843), -- That Which Has Risen
(13644, 0, 1, 0, 266903, 33444, 1, 63, 0, 0, 1, 0, 0, 0, 0, 27843), -- That Which Has Risen
(26464, 0, 2, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 59021, 0, 27843), -- The Lost Gem
(26464, 0, 1, 0, 265853, 5463, 1, 63, 0, 0, 1, 0, 0, 0, 0, 27843), -- The Lost Gem
(13626, 0, 3, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 283595, 0, 27843), -- Respect for the Fallen
(13626, 0, 2, 1, 267121, 45043, 1, 63, 0, 0, 1, 0, 0, 0, 0, 27843), -- Respect for the Fallen
(13626, 0, 1, 0, 267120, 45042, 1, 63, 0, 0, 1, 0, 0, 0, 0, 27843), -- Respect for the Fallen
(13632, 0, 2, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 99034, 0, 27843), -- Rear Guard Duty
(13632, 0, 1, 0, 258096, 33389, 1, 63, 0, 0, 1, 0, 0, 0, 0, 27843), -- Rear Guard Duty
(13630, 0, 4, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 283345, 0, 27843), -- The Reason Why
(13630, 0, 3, 2, 264169, 194311, 1, 63, 0, 0, 1, 0, 0, 0, 0, 27843), -- The Reason Why
(13630, 0, 2, 1, 264168, 194310, 1, 63, 0, 0, 1, 0, 0, 0, 0, 27843), -- The Reason Why
(13630, 0, 1, 0, 264167, 194309, 1, 63, 0, 0, 1, 0, 0, 0, 0, 27843), -- The Reason Why
(26463, 0, 1, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 281616, 0, 27843), -- Finding Teronis
(13642, 0, 2, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 281616, 0, 27843), -- Bathed in Light
(13642, 0, 1, 0, 262952, 45066, 1, 63, 0, 0, 1, 0, 0, 0, 0, 27843), -- Bathed in Light
(13624, 0, 3, 32, 0, 0, 1, 63, 0, 0, 0, 0, 0, 283595, 0, 27843), -- A Squad of Your Own
(13624, 0, 2, 1, 264253, 33334, 1, 63, 0, 0, 1, 0, 0, 0, 0, 27843), -- A Squad of Your Own
(13624, 0, 1, 0, 264252, 33283, 1, 63, 0, 0, 1, 0, 0, 0, 0, 27843); -- A Squad of Your Own

UPDATE `quest_poi` SET `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=26482 AND `BlobIndex`=0 AND `Idx1`=0); -- True Power of the Rod
UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=26481 AND `BlobIndex`=0 AND `Idx1`=0); -- A New Adornment
UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13989 AND `BlobIndex`=0 AND `Idx1`=0); -- King of the Foulweald
UPDATE `quest_poi` SET `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=26480 AND `BlobIndex`=0 AND `Idx1`=0); -- Dartol's Rod
UPDATE `quest_poi` SET `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13924 AND `BlobIndex`=0 AND `Idx1`=0); -- All's Well
UPDATE `quest_poi` SET `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=26479 AND `BlobIndex`=0 AND `Idx1`=0); -- Return to Raene
UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13922 AND `BlobIndex`=0 AND `Idx1`=0); -- In the Hands of the Perverse
UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=26478 AND `BlobIndex`=0 AND `Idx1`=0); -- Playing Possum
UPDATE `quest_poi` SET `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=26456 AND `BlobIndex`=0 AND `Idx1`=0); -- Report from the Northern Front
UPDATE `quest_poi` SET `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13921 AND `BlobIndex`=0 AND `Idx1`=0); -- He Who Would Be Forgiven
UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13935 AND `BlobIndex`=0 AND `Idx1`=0); -- Defend the Tree!
UPDATE `quest_poi` SET `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13886 AND `BlobIndex`=0 AND `Idx1`=1); -- Vortex
UPDATE `quest_poi` SET `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13886 AND `BlobIndex`=0 AND `Idx1`=0); -- Vortex
UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13880 AND `BlobIndex`=0 AND `Idx1`=0); -- Hot Lava
UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13884 AND `BlobIndex`=0 AND `Idx1`=0); -- Put Out The Fire
UPDATE `quest_poi` SET `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13928 AND `BlobIndex`=0 AND `Idx1`=0); -- Recover the Fallen
UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=26477 AND `BlobIndex`=0 AND `Idx1`=0); -- Search the Bole
UPDATE `quest_poi` SET `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13919 AND `BlobIndex`=0 AND `Idx1`=0); -- A Trip to the Moonwell
UPDATE `quest_poi` SET `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=26476 AND `BlobIndex`=0 AND `Idx1`=0); -- Dryad Delivery
UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=26475 AND `BlobIndex`=0 AND `Idx1`=0); -- Elune's Tear
UPDATE `quest_poi` SET `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13877 AND `BlobIndex`=0 AND `Idx1`=0); -- Go With The Flow
UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `WorldMapAreaId`=63, `Flags`=1, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13876 AND `BlobIndex`=0 AND `Idx1`=0); -- Too Far Gone
UPDATE `quest_poi` SET `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13853 AND `BlobIndex`=0 AND `Idx1`=0); -- Return Fire
UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13874 AND `BlobIndex`=0 AND `Idx1`=0); -- A Not-So-Charmed Life
UPDATE `quest_poi` SET `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13872 AND `BlobIndex`=0 AND `Idx1`=0); -- Worgen Wisdom
UPDATE `quest_poi` SET `WorldMapAreaId`=63, `Flags`=0, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13868 AND `BlobIndex`=0 AND `Idx1`=0); -- Corrupting Influence?
UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13849 AND `BlobIndex`=0 AND `Idx1`=0); -- Astranaar's Burning!
UPDATE `quest_poi` SET `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=26453 AND `BlobIndex`=0 AND `Idx1`=0); -- A Helping Hand
UPDATE `quest_poi` SET `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=26898 AND `BlobIndex`=0 AND `Idx1`=1); -- Blackfathom Deeps
UPDATE `quest_poi` SET `WorldMapAreaId`=221, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=26898 AND `BlobIndex`=0 AND `Idx1`=0); -- Blackfathom Deeps
UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13867 AND `BlobIndex`=0 AND `Idx1`=0); -- Culling the Furbolg Threat
UPDATE `quest_poi` SET `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13646 AND `BlobIndex`=0 AND `Idx1`=0); -- Astranaar Bound
UPDATE `quest_poi` SET `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=26474 AND `BlobIndex`=0 AND `Idx1`=0); -- Orendil's Cure
UPDATE `quest_poi` SET `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13645 AND `BlobIndex`=0 AND `Idx1`=0); -- To Raene Wolfrunner
UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13644 AND `BlobIndex`=0 AND `Idx1`=0); -- That Which Has Risen
UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=26464 AND `BlobIndex`=0 AND `Idx1`=0); -- The Lost Gem
UPDATE `quest_poi` SET `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13626 AND `BlobIndex`=0 AND `Idx1`=0); -- Respect for the Fallen
UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13632 AND `BlobIndex`=0 AND `Idx1`=0); -- Rear Guard Duty
UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13630 AND `BlobIndex`=0 AND `Idx1`=0); -- The Reason Why
UPDATE `quest_poi` SET `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=26463 AND `BlobIndex`=0 AND `Idx1`=0); -- Finding Teronis
UPDATE `quest_poi` SET `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13642 AND `BlobIndex`=0 AND `Idx1`=0); -- Bathed in Light
UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `WorldMapAreaId`=63, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=13624 AND `BlobIndex`=0 AND `Idx1`=0); -- A Squad of Your Own


-- Quest Poi Points
DELETE FROM `quest_poi_points` WHERE (`QuestID`=26482 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=26481 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13989 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=26480 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13924 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=26479 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13922 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13922 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13922 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13922 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13922 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13922 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13922 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=26478 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=26456 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13935 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13935 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=13935 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=13935 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=13935 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=13935 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13935 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13935 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13935 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13935 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13935 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13886 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13880 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13880 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=13880 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=13880 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13880 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13880 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13880 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13880 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13880 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13884 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13884 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=13884 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=13884 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=13884 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=13884 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=13884 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13884 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13884 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13884 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13884 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13884 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13928 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=26477 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=26477 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=26477 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=26477 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=26477 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=26477 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=13919 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=26476 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=26475 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=26475 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=26475 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=26475 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=26475 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=26475 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13877 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13876 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13853 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13874 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13874 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=13874 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13874 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13874 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13874 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13874 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13874 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13872 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13868 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13849 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13849 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=13849 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=13849 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=13849 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13849 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13849 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13849 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13849 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13849 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=26453 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13867 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13867 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=13867 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=13867 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=13867 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=13867 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=13867 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=13646 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=26474 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13645 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13644 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=26464 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=26464 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=26464 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=26464 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=26464 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=26464 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=26464 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=26464 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=26464 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=26464 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=26464 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=26464 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13626 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13632 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13632 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=13632 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=13632 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=13632 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=13632 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=13632 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13632 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13632 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13632 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13632 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13632 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13630 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=26463 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13642 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13624 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13624 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=13624 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=13624 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=13624 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=13624 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=13624 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=13624 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=13624 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=13624 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=13624 AND `Idx1`=2 AND `Idx2`=1);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES
(26482, 2, 0, 1787, -1232, 27843), -- True Power of the Rod
(26481, 2, 0, 1787, -1232, 27843), -- A New Adornment
(13989, 2, 0, 1787, -1232, 27843), -- King of the Foulweald
(26480, 1, 0, 2767, -412, 27843), -- Dartol's Rod
(13924, 1, 0, 2368, -1706, 27843), -- All's Well
(26479, 1, 0, 2379, -1711, 27843), -- Return to Raene
(13922, 2, 0, 2368, -1706, 27843), -- In the Hands of the Perverse
(13922, 1, 6, 2475, -2149, 27843), -- In the Hands of the Perverse
(13922, 1, 5, 2506, -2117, 27843), -- In the Hands of the Perverse
(13922, 1, 4, 2548, -2107, 27843), -- In the Hands of the Perverse
(13922, 1, 3, 2619, -2116, 27843), -- In the Hands of the Perverse
(13922, 1, 2, 2619, -2133, 27843), -- In the Hands of the Perverse
(13922, 1, 1, 2602, -2234, 27843), -- In the Hands of the Perverse
(26478, 2, 0, 2379, -1711, 27843), -- Playing Possum
(26456, 1, 0, 2415, -1702, 27843), -- Report from the Northern Front
(13935, 2, 0, 2710, -1891, 27843), -- Defend the Tree!
(13935, 1, 10, 2504, -1793, 27843), -- Defend the Tree!
(13935, 1, 9, 2437, -1672, 27843), -- Defend the Tree!
(13935, 1, 8, 2546, -1683, 27843), -- Defend the Tree!
(13935, 1, 7, 2577, -1694, 27843), -- Defend the Tree!
(13935, 1, 6, 2790, -1819, 27843), -- Defend the Tree!
(13935, 1, 5, 2798, -1826, 27843), -- Defend the Tree!
(13935, 1, 4, 2811, -1849, 27843), -- Defend the Tree!
(13935, 1, 3, 2812, -1856, 27843), -- Defend the Tree!
(13935, 1, 2, 2809, -1861, 27843), -- Defend the Tree!
(13935, 1, 1, 2754, -1918, 27843), -- Defend the Tree!
(13886, 2, 0, 2491, -1318, 27843), -- Vortex
(13880, 2, 0, 2501, -1318, 27843), -- Hot Lava
(13880, 1, 8, 2571, -1338, 27843), -- Hot Lava
(13880, 1, 7, 2544, -1281, 27843), -- Hot Lava
(13880, 1, 6, 2523, -1216, 27843), -- Hot Lava
(13880, 1, 5, 2622, -1064, 27843), -- Hot Lava
(13880, 1, 4, 2677, -1023, 27843), -- Hot Lava
(13880, 1, 3, 2723, -995, 27843), -- Hot Lava
(13880, 1, 2, 2961, -1133, 27843), -- Hot Lava
(13880, 1, 1, 2891, -1287, 27843), -- Hot Lava
(13884, 2, 0, 2493, -1304, 27843), -- Put Out The Fire
(13884, 1, 11, 2583, -1339, 27843), -- Put Out The Fire
(13884, 1, 10, 2539, -1253, 27843), -- Put Out The Fire
(13884, 1, 9, 2539, -1204, 27843), -- Put Out The Fire
(13884, 1, 8, 2589, -1123, 27843), -- Put Out The Fire
(13884, 1, 7, 2660, -1046, 27843), -- Put Out The Fire
(13884, 1, 6, 2702, -1018, 27843), -- Put Out The Fire
(13884, 1, 5, 2744, -1011, 27843), -- Put Out The Fire
(13884, 1, 4, 2925, -1123, 27843), -- Put Out The Fire
(13884, 1, 3, 2949, -1184, 27843), -- Put Out The Fire
(13884, 1, 2, 2907, -1264, 27843), -- Put Out The Fire
(13884, 1, 1, 2829, -1308, 27843), -- Put Out The Fire
(13928, 2, 0, 2415, -1702, 27843), -- Recover the Fallen
(26477, 3, 0, 2379, -1711, 27843), -- Search the Bole
(26477, 2, 5, 3113, -1436, 27843), -- Search the Bole
(26477, 2, 4, 3115, -1418, 27843), -- Search the Bole
(26477, 2, 3, 3261, -1423, 27843), -- Search the Bole
(26477, 2, 2, 3363, -1442, 27843), -- Search the Bole
(26477, 2, 1, 3411, -1471, 27843), -- Search the Bole
(13919, 1, 0, 2682, -455, 27843), -- A Trip to the Moonwell
(26476, 1, 0, 2767, -412, 27843), -- Dryad Delivery
(26475, 2, 0, 2682, -455, 27843), -- Elune's Tear
(26475, 1, 5, 2821, -1032, 27843), -- Elune's Tear
(26475, 1, 4, 2815, -981, 27843), -- Elune's Tear
(26475, 1, 3, 2856, -952, 27843), -- Elune's Tear
(26475, 1, 2, 2910, -971, 27843), -- Elune's Tear
(26475, 1, 1, 2929, -1018, 27843), -- Elune's Tear
(13877, 1, 0, 2758, -400, 27843), -- Go With The Flow
(13876, 2, 0, 3518, -490, 27843), -- Too Far Gone
(13853, 2, 0, 2759, -312, 27843), -- Return Fire
(13874, 2, 0, 2758, -400, 27843), -- A Not-So-Charmed Life
(13874, 1, 7, 3329, -758, 27843), -- A Not-So-Charmed Life
(13874, 1, 6, 3302, -705, 27843), -- A Not-So-Charmed Life
(13874, 1, 5, 3314, -676, 27843), -- A Not-So-Charmed Life
(13874, 1, 4, 3359, -600, 27843), -- A Not-So-Charmed Life
(13874, 1, 3, 3386, -573, 27843), -- A Not-So-Charmed Life
(13874, 1, 2, 3482, -618, 27843), -- A Not-So-Charmed Life
(13874, 1, 1, 3458, -661, 27843), -- A Not-So-Charmed Life
(13872, 1, 0, 2767, -412, 27843), -- Worgen Wisdom
(13868, 1, 0, 3389, -252, 27843), -- Corrupting Influence?
(13849, 2, 0, 2759, -312, 27843), -- Astranaar's Burning!
(13849, 1, 9, 2696, -477, 27843), -- Astranaar's Burning!
(13849, 1, 8, 2646, -454, 27843), -- Astranaar's Burning!
(13849, 1, 7, 2639, -438, 27843), -- Astranaar's Burning!
(13849, 1, 6, 2641, -376, 27843), -- Astranaar's Burning!
(13849, 1, 5, 2734, -297, 27843), -- Astranaar's Burning!
(13849, 1, 4, 2800, -264, 27843), -- Astranaar's Burning!
(13849, 1, 3, 2811, -275, 27843), -- Astranaar's Burning!
(13849, 1, 2, 2819, -317, 27843), -- Astranaar's Burning!
(13849, 1, 1, 2785, -441, 27843), -- Astranaar's Burning!
(26453, 1, 0, 2754, -317, 27843), -- A Helping Hand
(13867, 3, 0, 2767, -412, 27843), -- Culling the Furbolg Threat
(13867, 2, 6, 3165, -529, 27843), -- Culling the Furbolg Threat
(13867, 2, 5, 2895, -104, 27843), -- Culling the Furbolg Threat
(13867, 2, 4, 2939, -78, 27843), -- Culling the Furbolg Threat
(13867, 2, 3, 3006, -43, 27843), -- Culling the Furbolg Threat
(13867, 2, 2, 3208, -18, 27843), -- Culling the Furbolg Threat
(13867, 2, 1, 3566, -374, 27843), -- Culling the Furbolg Threat
(13646, 1, 0, 3289, 154, 27843), -- Astranaar Bound
(26474, 1, 0, 3265, 152, 27843), -- Orendil's Cure
(13645, 1, 0, 3265, 152, 27843), -- To Raene Wolfrunner
(13644, 2, 0, 3183, 537, 27843), -- That Which Has Risen
(26464, 2, 0, 3183, 532, 27843), -- The Lost Gem
(26464, 1, 11, 3114, 422, 27843), -- The Lost Gem
(26464, 1, 10, 3050, 451, 27843), -- The Lost Gem
(26464, 1, 9, 2917, 520, 27843), -- The Lost Gem
(26464, 1, 8, 2917, 549, 27843), -- The Lost Gem
(26464, 1, 7, 2980, 587, 27843), -- The Lost Gem
(26464, 1, 6, 3118, 616, 27843), -- The Lost Gem
(26464, 1, 5, 3187, 617, 27843), -- The Lost Gem
(26464, 1, 4, 3218, 580, 27843), -- The Lost Gem
(26464, 1, 3, 3218, 518, 27843), -- The Lost Gem
(26464, 1, 2, 3216, 484, 27843), -- The Lost Gem
(26464, 1, 1, 3185, 449, 27843), -- The Lost Gem
(13626, 3, 0, 3255, 161, 27843), -- Respect for the Fallen
(13632, 2, 0, 3306, 129, 27843), -- Rear Guard Duty
(13632, 1, 11, 3543, -204, 27843), -- Rear Guard Duty
(13632, 1, 10, 3469, -113, 27843), -- Rear Guard Duty
(13632, 1, 9, 3429, -63, 27843), -- Rear Guard Duty
(13632, 1, 8, 3389, 7, 27843), -- Rear Guard Duty
(13632, 1, 7, 3351, 91, 27843), -- Rear Guard Duty
(13632, 1, 6, 3371, 151, 27843), -- Rear Guard Duty
(13632, 1, 5, 3464, 164, 27843), -- Rear Guard Duty
(13632, 1, 4, 3497, 161, 27843), -- Rear Guard Duty
(13632, 1, 3, 3568, 75, 27843), -- Rear Guard Duty
(13632, 1, 2, 3590, -4, 27843), -- Rear Guard Duty
(13632, 1, 1, 3595, -124, 27843), -- Rear Guard Duty
(13630, 4, 0, 3287, 137, 27843), -- The Reason Why
(26463, 1, 0, 3265, 152, 27843), -- Finding Teronis
(13642, 2, 0, 3265, 152, 27843), -- Bathed in Light
(13624, 3, 0, 3255, 161, 27843), -- A Squad of Your Own
(13624, 2, 10, 3153, 55, 27843), -- A Squad of Your Own
(13624, 2, 9, 3079, 83, 27843), -- A Squad of Your Own
(13624, 2, 8, 3079, 85, 27843), -- A Squad of Your Own
(13624, 2, 7, 3098, 146, 27843), -- A Squad of Your Own
(13624, 2, 6, 3126, 187, 27843), -- A Squad of Your Own
(13624, 2, 5, 3127, 188, 27843), -- A Squad of Your Own
(13624, 2, 4, 3192, 198, 27843), -- A Squad of Your Own
(13624, 2, 3, 3207, 184, 27843), -- A Squad of Your Own
(13624, 2, 2, 3207, 181, 27843), -- A Squad of Your Own
(13624, 2, 1, 3207, 136, 27843); -- A Squad of Your Own

UPDATE `quest_poi_points` SET `X`=1613, `Y`=-1457, `VerifiedBuild`=27843 WHERE (`QuestID`=26481 AND `Idx1`=1 AND `Idx2`=0); -- A New Adornment
UPDATE `quest_poi_points` SET `X`=1787, `Y`=-1232, `VerifiedBuild`=27843 WHERE (`QuestID`=26481 AND `Idx1`=0 AND `Idx2`=0); -- A New Adornment
UPDATE `quest_poi_points` SET `X`=2219, `Y`=-1588, `VerifiedBuild`=27843 WHERE (`QuestID`=13989 AND `Idx1`=1 AND `Idx2`=0); -- King of the Foulweald
UPDATE `quest_poi_points` SET `X`=1787, `Y`=-1232, `VerifiedBuild`=27843 WHERE (`QuestID`=13989 AND `Idx1`=0 AND `Idx2`=0); -- King of the Foulweald
UPDATE `quest_poi_points` SET `X`=2592, `Y`=-2251, `VerifiedBuild`=27843 WHERE (`QuestID`=13922 AND `Idx1`=1 AND `Idx2`=0); -- In the Hands of the Perverse
UPDATE `quest_poi_points` SET `X`=2368, `Y`=-1706, `VerifiedBuild`=27843 WHERE (`QuestID`=13922 AND `Idx1`=0 AND `Idx2`=0); -- In the Hands of the Perverse
UPDATE `quest_poi_points` SET `X`=2357, `Y`=-1907, `VerifiedBuild`=27843 WHERE (`QuestID`=26478 AND `Idx1`=1 AND `Idx2`=0); -- Playing Possum
UPDATE `quest_poi_points` SET `X`=2379, `Y`=-1711, `VerifiedBuild`=27843 WHERE (`QuestID`=26478 AND `Idx1`=0 AND `Idx2`=0); -- Playing Possum
UPDATE `quest_poi_points` SET `X`=2718, `Y`=-1919, `VerifiedBuild`=27843 WHERE (`QuestID`=13935 AND `Idx1`=1 AND `Idx2`=0); -- Defend the Tree!
UPDATE `quest_poi_points` SET `X`=2415, `Y`=-1702, `VerifiedBuild`=27843 WHERE (`QuestID`=13935 AND `Idx1`=0 AND `Idx2`=0); -- Defend the Tree!
UPDATE `quest_poi_points` SET `X`=2611, `Y`=-1384, `VerifiedBuild`=27843 WHERE (`QuestID`=13880 AND `Idx1`=1 AND `Idx2`=0); -- Hot Lava
UPDATE `quest_poi_points` SET `X`=2501, `Y`=-1318, `VerifiedBuild`=27843 WHERE (`QuestID`=13880 AND `Idx1`=0 AND `Idx2`=0); -- Hot Lava
UPDATE `quest_poi_points` SET `X`=2621, `Y`=-1363, `VerifiedBuild`=27843 WHERE (`QuestID`=13884 AND `Idx1`=1 AND `Idx2`=0); -- Put Out The Fire
UPDATE `quest_poi_points` SET `X`=2493, `Y`=-1304, `VerifiedBuild`=27843 WHERE (`QuestID`=13884 AND `Idx1`=0 AND `Idx2`=0); -- Put Out The Fire
UPDATE `quest_poi_points` SET `X`=3115, `Y`=-1471, `VerifiedBuild`=27843 WHERE (`QuestID`=26477 AND `Idx1`=2 AND `Idx2`=0); -- Search the Bole
UPDATE `quest_poi_points` SET `X`=3107, `Y`=-1472, `VerifiedBuild`=27843 WHERE (`QuestID`=26477 AND `Idx1`=1 AND `Idx2`=0); -- Search the Bole
UPDATE `quest_poi_points` SET `X`=2379, `Y`=-1711, `VerifiedBuild`=27843 WHERE (`QuestID`=26477 AND `Idx1`=0 AND `Idx2`=0); -- Search the Bole
UPDATE `quest_poi_points` SET `X`=2902, `Y`=-1057, `VerifiedBuild`=27843 WHERE (`QuestID`=26475 AND `Idx1`=1 AND `Idx2`=0); -- Elune's Tear
UPDATE `quest_poi_points` SET `X`=2682, `Y`=-455, `VerifiedBuild`=27843 WHERE (`QuestID`=26475 AND `Idx1`=0 AND `Idx2`=0); -- Elune's Tear
UPDATE `quest_poi_points` SET `X`=3486, `Y`=-621, `VerifiedBuild`=27843 WHERE (`QuestID`=13876 AND `Idx1`=1 AND `Idx2`=0); -- Too Far Gone
UPDATE `quest_poi_points` SET `X`=3518, `Y`=-490, `VerifiedBuild`=27843 WHERE (`QuestID`=13876 AND `Idx1`=0 AND `Idx2`=0); -- Too Far Gone
UPDATE `quest_poi_points` SET `X`=3361, `Y`=-770, `VerifiedBuild`=27843 WHERE (`QuestID`=13874 AND `Idx1`=1 AND `Idx2`=0); -- A Not-So-Charmed Life
UPDATE `quest_poi_points` SET `X`=2758, `Y`=-400, `VerifiedBuild`=27843 WHERE (`QuestID`=13874 AND `Idx1`=0 AND `Idx2`=0); -- A Not-So-Charmed Life
UPDATE `quest_poi_points` SET `X`=2721, `Y`=-480, `VerifiedBuild`=27843 WHERE (`QuestID`=13849 AND `Idx1`=1 AND `Idx2`=0); -- Astranaar's Burning!
UPDATE `quest_poi_points` SET `X`=2759, `Y`=-312, `VerifiedBuild`=27843 WHERE (`QuestID`=13849 AND `Idx1`=0 AND `Idx2`=0); -- Astranaar's Burning!
UPDATE `quest_poi_points` SET `X`=3276, `Y`=-593, `VerifiedBuild`=27843 WHERE (`QuestID`=13867 AND `Idx1`=2 AND `Idx2`=0); -- Culling the Furbolg Threat
UPDATE `quest_poi_points` SET `X`=3426, `Y`=-596, `VerifiedBuild`=27843 WHERE (`QuestID`=13867 AND `Idx1`=1 AND `Idx2`=2); -- Culling the Furbolg Threat
UPDATE `quest_poi_points` SET `X`=3428, `Y`=-594, `VerifiedBuild`=27843 WHERE (`QuestID`=13867 AND `Idx1`=1 AND `Idx2`=1); -- Culling the Furbolg Threat
UPDATE `quest_poi_points` SET `X`=3429, `Y`=-597, `VerifiedBuild`=27843 WHERE (`QuestID`=13867 AND `Idx1`=1 AND `Idx2`=0); -- Culling the Furbolg Threat
UPDATE `quest_poi_points` SET `X`=2767, `Y`=-412, `VerifiedBuild`=27843 WHERE (`QuestID`=13867 AND `Idx1`=0 AND `Idx2`=0); -- Culling the Furbolg Threat
UPDATE `quest_poi_points` SET `X`=3040, `Y`=527, `VerifiedBuild`=27843 WHERE (`QuestID`=13644 AND `Idx1`=1 AND `Idx2`=0); -- That Which Has Risen
UPDATE `quest_poi_points` SET `X`=3183, `Y`=537, `VerifiedBuild`=27843 WHERE (`QuestID`=13644 AND `Idx1`=0 AND `Idx2`=0); -- That Which Has Risen
UPDATE `quest_poi_points` SET `X`=3151, `Y`=418, `VerifiedBuild`=27843 WHERE (`QuestID`=26464 AND `Idx1`=1 AND `Idx2`=0); -- The Lost Gem
UPDATE `quest_poi_points` SET `X`=3265, `Y`=152, `VerifiedBuild`=27843 WHERE (`QuestID`=26464 AND `Idx1`=0 AND `Idx2`=0); -- The Lost Gem
UPDATE `quest_poi_points` SET `X`=3588, `Y`=-232, `VerifiedBuild`=27843 WHERE (`QuestID`=13632 AND `Idx1`=1 AND `Idx2`=0); -- Rear Guard Duty
UPDATE `quest_poi_points` SET `X`=3306, `Y`=129, `VerifiedBuild`=27843 WHERE (`QuestID`=13632 AND `Idx1`=0 AND `Idx2`=0); -- Rear Guard Duty
UPDATE `quest_poi_points` SET `X`=3458, `Y`=50, `VerifiedBuild`=27843 WHERE (`QuestID`=13630 AND `Idx1`=3 AND `Idx2`=0); -- The Reason Why
UPDATE `quest_poi_points` SET `X`=3397, `Y`=111, `VerifiedBuild`=27843 WHERE (`QuestID`=13630 AND `Idx1`=2 AND `Idx2`=0); -- The Reason Why
UPDATE `quest_poi_points` SET `X`=3467, `Y`=-53, `VerifiedBuild`=27843 WHERE (`QuestID`=13630 AND `Idx1`=1 AND `Idx2`=0); -- The Reason Why
UPDATE `quest_poi_points` SET `X`=3287, `Y`=137, `VerifiedBuild`=27843 WHERE (`QuestID`=13630 AND `Idx1`=0 AND `Idx2`=0); -- The Reason Why
UPDATE `quest_poi_points` SET `X`=3187, `Y`=48, `VerifiedBuild`=27843 WHERE (`QuestID`=13624 AND `Idx1`=2 AND `Idx2`=0); -- A Squad of Your Own
UPDATE `quest_poi_points` SET `X`=3128, `Y`=169, `VerifiedBuild`=27843 WHERE (`QuestID`=13624 AND `Idx1`=1 AND `Idx2`=4); -- A Squad of Your Own
UPDATE `quest_poi_points` SET `X`=3182, `Y`=198, `VerifiedBuild`=27843 WHERE (`QuestID`=13624 AND `Idx1`=1 AND `Idx2`=3); -- A Squad of Your Own
UPDATE `quest_poi_points` SET `Y`=102, `VerifiedBuild`=27843 WHERE (`QuestID`=13624 AND `Idx1`=1 AND `Idx2`=2); -- A Squad of Your Own
UPDATE `quest_poi_points` SET `X`=3180, `Y`=45, `VerifiedBuild`=27843 WHERE (`QuestID`=13624 AND `Idx1`=1 AND `Idx2`=1); -- A Squad of Your Own
UPDATE `quest_poi_points` SET `X`=3049, `Y`=20, `VerifiedBuild`=27843 WHERE (`QuestID`=13624 AND `Idx1`=1 AND `Idx2`=0); -- A Squad of Your Own
UPDATE `quest_poi_points` SET `X`=3255, `Y`=161, `VerifiedBuild`=27843 WHERE (`QuestID`=13624 AND `Idx1`=0 AND `Idx2`=0); -- A Squad of Your Own


-- Quest Details
DELETE FROM `quest_details` WHERE `ID` IN (13965 /*Check in on the Edunes*/, 26482 /*True Power of the Rod*/, 26481 /*A New Adornment*/, 13989 /*King of the Foulweald*/, 26480 /*Dartol's Rod*/, 13924 /*All's Well*/, 26479 /*Return to Raene*/, 13922 /*In the Hands of the Perverse*/, 26478 /*Playing Possum*/, 26456 /*Report from the Northern Front*/, 13921 /*He Who Would Be Forgiven*/, 13935 /*Defend the Tree!*/, 13886 /*Vortex*/, 13880 /*Hot Lava*/, 13884 /*Put Out The Fire*/, 13928 /*Recover the Fallen*/, 26477 /*Search the Bole*/, 13919 /*A Trip to the Moonwell*/, 26476 /*Dryad Delivery*/, 26475 /*Elune's Tear*/, 13877 /*Go With The Flow*/, 13876 /*Too Far Gone*/, 13853 /*Return Fire*/, 13874 /*A Not-So-Charmed Life*/, 13872 /*Worgen Wisdom*/, 13868 /*Corrupting Influence?*/, 13849 /*Astranaar's Burning!*/, 26453 /*A Helping Hand*/, 26898 /*Blackfathom Deeps*/, 13867 /*Culling the Furbolg Threat*/, 13646 /*Astranaar Bound*/, 26474 /*Orendil's Cure*/, 13645 /*To Raene Wolfrunner*/, 13644 /*That Which Has Risen*/, 26464 /*The Lost Gem*/, 13626 /*Respect for the Fallen*/, 13632 /*Rear Guard Duty*/, 13630 /*The Reason Why*/, 26463 /*Finding Teronis*/, 13642 /*Bathed in Light*/, 13624 /*A Squad of Your Own*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(13965, 6, 2, 1, 0, 0, 0, 0, 0, 27843), -- Check in on the Edunes
(26482, 0, 0, 0, 0, 0, 0, 0, 0, 27843), -- True Power of the Rod
(26481, 0, 0, 0, 0, 0, 0, 0, 0, 27843), -- A New Adornment
(13989, 5, 0, 0, 0, 0, 0, 0, 0, 27843), -- King of the Foulweald
(26480, 6, 1, 1, 0, 0, 0, 0, 0, 27843), -- Dartol's Rod
(13924, 16, 2, 0, 0, 0, 1000, 0, 0, 27843), -- All's Well
(26479, 4, 1, 0, 0, 0, 0, 0, 0, 27843), -- Return to Raene
(13922, 1, 0, 0, 0, 0, 0, 0, 0, 27843), -- In the Hands of the Perverse
(26478, 1, 1, 18, 1, 0, 0, 0, 0, 27843), -- Playing Possum
(26456, 1, 0, 0, 0, 0, 0, 0, 0, 27843), -- Report from the Northern Front
(13921, 0, 0, 0, 0, 0, 0, 0, 0, 27843), -- He Who Would Be Forgiven
(13935, 1, 0, 0, 0, 0, 0, 0, 0, 27843), -- Defend the Tree!
(13886, 33, 0, 0, 0, 0, 0, 0, 0, 27843), -- Vortex
(13880, 33, 0, 0, 0, 1000, 0, 0, 0, 27843), -- Hot Lava
(13884, 33, 0, 0, 0, 0, 0, 0, 0, 27843), -- Put Out The Fire
(13928, 1, 1, 25, 0, 0, 0, 0, 0, 27843), -- Recover the Fallen
(26477, 1, 1, 1, 0, 0, 0, 0, 0, 27843), -- Search the Bole
(13919, 274, 6, 25, 0, 0, 1000, 0, 0, 27843), -- A Trip to the Moonwell
(26476, 1, 1, 0, 0, 0, 0, 0, 0, 27843), -- Dryad Delivery
(26475, 18, 1, 20, 0, 0, 1000, 2000, 0, 27843), -- Elune's Tear
(13877, 1, 1, 1, 0, 1000, 0, 0, 0, 27843), -- Go With The Flow
(13876, 1, 1, 53, 0, 0, 0, 0, 0, 27843), -- Too Far Gone
(13853, 5, 0, 0, 0, 0, 0, 0, 0, 27843), -- Return Fire
(13874, 1, 1, 25, 0, 0, 1000, 0, 0, 27843), -- A Not-So-Charmed Life
(13872, 0, 0, 0, 0, 0, 0, 0, 0, 27843), -- Worgen Wisdom
(13868, 0, 0, 0, 0, 0, 0, 0, 0, 27843), -- Corrupting Influence?
(13849, 5, 0, 0, 0, 0, 0, 0, 0, 27843), -- Astranaar's Burning!
(26453, 1, 274, 1, 0, 0, 0, 0, 0, 27843), -- A Helping Hand
(26898, 1, 1, 0, 0, 0, 0, 0, 0, 27843), -- Blackfathom Deeps
(13867, 1, 25, 0, 0, 0, 0, 0, 0, 27843), -- Culling the Furbolg Threat
(13646, 4, 2, 1, 0, 0, 0, 0, 0, 27843), -- Astranaar Bound
(26474, 1, 1, 0, 0, 0, 0, 0, 0, 27843), -- Orendil's Cure
(13645, 6, 2, 0, 0, 0, 0, 0, 0, 27843), -- To Raene Wolfrunner
(13644, 33, 0, 0, 0, 0, 0, 0, 0, 27843), -- That Which Has Risen
(26464, 0, 0, 0, 0, 0, 0, 0, 0, 27843), -- The Lost Gem
(13626, 1, 1, 1, 0, 0, 0, 0, 0, 27843), -- Respect for the Fallen
(13632, 1, 25, 2, 0, 0, 0, 0, 0, 27843), -- Rear Guard Duty
(13630, 1, 1, 6, 0, 0, 0, 0, 0, 27843), -- The Reason Why
(26463, 1, 1, 6, 0, 0, 0, 0, 0, 27843), -- Finding Teronis
(13642, 1, 1, 6, 0, 0, 0, 0, 0, 27843), -- Bathed in Light
(13624, 5, 1, 25, 0, 0, 0, 0, 0, 27843); -- A Squad of Your Own


-- Quest Request Items
UPDATE `quest_request_items` SET `EmoteOnComplete`=6, `VerifiedBuild`=27843 WHERE `ID`=26482; -- True Power of the Rod
UPDATE `quest_request_items` SET `EmoteOnComplete`=6, `VerifiedBuild`=27843 WHERE `ID`=26456; -- Report from the Northern Front
UPDATE `quest_request_items` SET `VerifiedBuild`=27843 WHERE `ID`=26481; -- A New Adornment
UPDATE `quest_request_items` SET `EmoteOnComplete`=6, `VerifiedBuild`=27843 WHERE `ID`=13924; -- All's Well
UPDATE `quest_request_items` SET `EmoteOnComplete`=6, `VerifiedBuild`=27843 WHERE `ID`=26479; -- Return to Raene
UPDATE `quest_request_items` SET `EmoteOnComplete`=1, `VerifiedBuild`=27843 WHERE `ID`=13922; -- In the Hands of the Perverse
UPDATE `quest_request_items` SET `EmoteOnComplete`=6, `VerifiedBuild`=27843 WHERE `ID`=26478; -- Playing Possum
UPDATE `quest_request_items` SET `EmoteOnComplete`=1, `VerifiedBuild`=27843 WHERE `ID`=26477; -- Search the Bole
UPDATE `quest_request_items` SET `EmoteOnComplete`=1, `VerifiedBuild`=27843 WHERE `ID`=13928; -- Recover the Fallen
UPDATE `quest_request_items` SET `EmoteOnComplete`=34, `VerifiedBuild`=27843 WHERE `ID`=13880; -- Hot Lava
UPDATE `quest_request_items` SET `EmoteOnComplete`=6, `VerifiedBuild`=27843 WHERE `ID`=26476; -- Dryad Delivery
UPDATE `quest_request_items` SET `EmoteOnComplete`=6, `VerifiedBuild`=27843 WHERE `ID`=26475; -- Elune's Tear
UPDATE `quest_request_items` SET `EmoteOnComplete`=6, `VerifiedBuild`=27843 WHERE `ID`=13874; -- A Not-So-Charmed Life
UPDATE `quest_request_items` SET `EmoteOnComplete`=1, `VerifiedBuild`=27843 WHERE `ID`=13876; -- Too Far Gone
UPDATE `quest_request_items` SET `VerifiedBuild`=27843 WHERE `ID`=13872; -- Worgen Wisdom
UPDATE `quest_request_items` SET `EmoteOnComplete`=6, `VerifiedBuild`=27843 WHERE `ID`=13868; -- Corrupting Influence?
UPDATE `quest_request_items` SET `EmoteOnComplete`=1, `VerifiedBuild`=27843 WHERE `ID`=26474; -- Orendil's Cure
UPDATE `quest_request_items` SET `EmoteOnComplete`=6, `VerifiedBuild`=27843 WHERE `ID`=13645; -- To Raene Wolfrunner
UPDATE `quest_request_items` SET `EmoteOnComplete`=6, `VerifiedBuild`=27843 WHERE `ID`=13642; -- Bathed in Light
UPDATE `quest_request_items` SET `EmoteOnComplete`=2, `VerifiedBuild`=27843 WHERE `ID`=26464; -- The Lost Gem
UPDATE `quest_request_items` SET `EmoteOnComplete`=1, `VerifiedBuild`=27843 WHERE `ID`=13626; -- Respect for the Fallen





-- Creature Template Addon
DELETE FROM `creature_template_addon` WHERE `entry` IN (62312 /*62312 (Frog)*/, 34621 /*34621 (Silverwind Defender) - True Power of the Rod: See Invisibility 3 - Alliance, True Power of the Rod: Quest Invisibility 3*/, 34620 /*34620 (Rampaging Furbolg) - True Power of the Rod: See Invisibility 3 - Alliance, True Power of the Rod: Quest Invisibility 3*/, 12918 /*12918 (Chief Murgut)*/, 10640 /*10640 (Oakpaw) - Corrupted Strength Passive, Corrupted Stamina Passive, Corrupted Agility Passive*/, 10642 /*10642 (Eck'alom)*/, 34358 /*34358 (Avrus the Redeemed) - In the Hands of the Perverse: Quest Invisibility 2*/, 10647 /*10647 (Prince Raze)*/, 32850 /*32850 (Warsong Demolisher)*/, 34418 /*34418 (ELM General Purpose Bunny (scale x2 - Phase I)) - Goddess's Boon*/, 34390 /*34390 (Warsong Trampler)*/, 29876 /*29876 (ELM General Purpose Bunny (Phase I))*/, 32856 /*32856 (Warsong Invader)*/, 61169 /*61169 (Roach)*/, 16030 /*16030 (Maggot)*/);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(62312, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 62312 (Frog)
(34621, 0, 0, 65536, 1, 0, 0, 0, 0, ''), -- 34621 (Silverwind Defender) - 
(34620, 0, 0, 65536, 1, 0, 0, 0, 0, ''), -- 34620 (Rampaging Furbolg) - 
(12918, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 12918 (Chief Murgut)
(10640, 0, 0, 0, 1, 0, 0, 0, 0, '6821 6822 6820'), -- 10640 (Oakpaw) - Corrupted Strength Passive, Corrupted Stamina Passive, Corrupted Agility Passive
(10642, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 10642 (Eck'alom)
(34358, 0, 0, 65536, 257, 0, 0, 0, 0, ''), -- 34358 (Avrus the Redeemed) - In the Hands of the Perverse: Quest Invisibility 2
(10647, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 10647 (Prince Raze)
(32850, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 32850 (Warsong Demolisher)
(34418, 0, 0, 0, 1, 0, 0, 0, 0, '65408'), -- 34418 (ELM General Purpose Bunny (scale x2 - Phase I)) - Goddess's Boon
(34390, 0, 14578, 0, 1, 0, 0, 0, 0, ''), -- 34390 (Warsong Trampler)
(29876, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 29876 (ELM General Purpose Bunny (Phase I))
(32856, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 32856 (Warsong Invader)
(61169, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 61169 (Roach)
(16030, 0, 0, 0, 1, 0, 0, 0, 0, ''); -- 16030 (Maggot)

UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=19908; -- 19908 (Su'ura Swiftarrow)
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=14715; -- 14715 (Silverwing Elite)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=3784; -- 3784 (Shadethicket Bark Ripper)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=3917; -- 3917 (Befouled Water Elemental)
UPDATE `creature_template_addon` SET `bytes1`=131072, `bytes2`=1, `auras`='3616 77806' WHERE `entry`=3821; -- 3821 (Wildthorn Lurker)
UPDATE `creature_template_addon` SET `bytes2`=1, `auras`='6942' WHERE `entry`=3759; -- 3759 (Felmusk Rogue)
UPDATE `creature_template_addon` SET `auras`='6942' WHERE `entry`=3758; -- 3758 (Felmusk Satyr)
UPDATE `creature_template_addon` SET `bytes2`=1, `auras`='6942' WHERE `entry`=3762; -- 3762 (Felmusk Felsworn)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=3782; -- 3782 (Shadethicket Stone Mover)
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=89713; -- 89713 (Koak Hoburn)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=3834; -- 3834 (Crazed Ancient)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=3919; -- 3919 (Withered Ancient)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=3820; -- 3820 (Wildthorn Venomspitter)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=3833; -- 3833 (Cenarion Vindicator)
UPDATE `creature_template_addon` SET `bytes2`=1, `auras`='8612' WHERE `entry`=3815; -- 3815 (Blink Dragon)
UPDATE `creature_template_addon` SET `bytes2`=234881025, `auras`='7090' WHERE `entry`=3797; -- 3797 (Cenarion Protector)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=3817; -- 3817 (Shadowhorn Stag)
UPDATE `creature_template_addon` SET `bytes1`=0, `auras`='' WHERE `entry`=4054; -- 4054 (Laughing Sister)
UPDATE `creature_template_addon` SET `auras`='29266' WHERE `entry`=3916; -- 3916 (Shael'dryn)
UPDATE `creature_template_addon` SET `bytes2`=257, `auras`='18950' WHERE `entry`=8015; -- 8015 (Ashenvale Sentinel)
UPDATE `creature_template_addon` SET `bytes2`=2 WHERE `entry`=3745; -- 3745 (Foulweald Pathfinder)
UPDATE `creature_template_addon` SET `bytes2`=1, `auras`='6821' WHERE `entry`=3743; -- 3743 (Foulweald Warrior)
UPDATE `creature_template_addon` SET `bytes2`=1, `auras`='6823' WHERE `entry`=3750; -- 3750 (Foulweald Totemic)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=3810; -- 3810 (Elder Ashenvale Bear)
UPDATE `creature_template_addon` SET `bytes2`=1, `auras`='42470' WHERE `entry`=3780; -- 3780 (Singed Shambler)
UPDATE `creature_template_addon` SET `bytes1`=1, `bytes2`=1, `auras`='6813' WHERE `entry`=3921; -- 3921 (Thistlefur Ursa)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=3809; -- 3809 (Ashenvale Bear)
UPDATE `creature_template_addon` SET `bytes1`=65536, `bytes2`=0, `auras`='64672' WHERE `entry`=34163; -- 34163 (Hellscream's Hellion)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=34419; -- 34419 (Astranaar Skirmisher)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=3819; -- 3819 (Wildthorn Stalker)
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=3823; -- 3823 (Ghostpaw Runner)
UPDATE `creature_template_addon` SET `auras`='62856' WHERE `entry`=24288; -- 24288 (ELM General Purpose Bunny Hide Body)
UPDATE `creature_template_addon` SET `bytes2`=1, `auras`='29266 3582' WHERE `entry`=3730; -- 3730 (Dark Strand Excavator)
UPDATE `creature_template_addon` SET `auras`='6813' WHERE `entry`=33389; -- 33389 (Thistlefur Wise One)
UPDATE `creature_template_addon` SET `bytes2`=1, `auras`='6813' WHERE `entry`=3924; -- 3924 (Thistlefur Shaman)
UPDATE `creature_template_addon` SET `bytes2`=1, `auras`='29266' WHERE `entry`=3728; -- 3728 (Dark Strand Adept)
UPDATE `creature_template_addon` SET `bytes2`=1, `auras`='29266' WHERE `entry`=3725; -- 3725 (Dark Strand Cultist)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=3816; -- 3816 (Wild Buck)
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=33407; -- 33407 (Goblin Operator)
UPDATE `creature_template_addon` SET `bytes1`=1 WHERE `entry`=33375; -- 33375 (Injured Sentinel)


-- Creature Model Info
UPDATE `creature_model_info` SET `BoundingRadius`=0.1575, `CombatReach`=0.675, `VerifiedBuild`=27843 WHERE `DisplayID`=16724;
UPDATE `creature_model_info` SET `BoundingRadius`=1.708019, `VerifiedBuild`=27843 WHERE `DisplayID`=2024;
UPDATE `creature_model_info` SET `BoundingRadius`=1.672791, `VerifiedBuild`=27843 WHERE `DisplayID`=29300;
UPDATE `creature_model_info` SET `BoundingRadius`=1.087314, `VerifiedBuild`=27843 WHERE `DisplayID`=6825;
UPDATE `creature_model_info` SET `BoundingRadius`=0.8363954, `VerifiedBuild`=27843 WHERE `DisplayID`=1010;
UPDATE `creature_model_info` SET `BoundingRadius`=1.488507, `CombatReach`=1.25, `VerifiedBuild`=27843 WHERE `DisplayID`=33846;
UPDATE `creature_model_info` SET `BoundingRadius`=1.012185, `VerifiedBuild`=27843 WHERE `DisplayID`=525;
UPDATE `creature_model_info` SET `BoundingRadius`=2.491802, `CombatReach`=1.25, `VerifiedBuild`=27843 WHERE `DisplayID`=1104;
UPDATE `creature_model_info` SET `BoundingRadius`=1.95, `CombatReach`=1.625, `VerifiedBuild`=27843 WHERE `DisplayID`=776;
UPDATE `creature_model_info` SET `BoundingRadius`=1.370605, `CombatReach`=1.5, `VerifiedBuild`=27843 WHERE `DisplayID`=11331;
UPDATE `creature_model_info` SET `BoundingRadius`=1.054312, `CombatReach`=1.5, `VerifiedBuild`=27843 WHERE `DisplayID`=2010;
UPDATE `creature_model_info` SET `BoundingRadius`=1.054312, `CombatReach`=1.5, `VerifiedBuild`=27843 WHERE `DisplayID`=2011;
UPDATE `creature_model_info` SET `BoundingRadius`=4.509168, `VerifiedBuild`=27843 WHERE `DisplayID`=12750;
UPDATE `creature_model_info` SET `BoundingRadius`=2.059549, `VerifiedBuild`=27843 WHERE `DisplayID`=29241;
UPDATE `creature_model_info` SET `BoundingRadius`=2.491802, `VerifiedBuild`=27843 WHERE `DisplayID`=336;
UPDATE `creature_model_info` SET `BoundingRadius`=1.263899, `VerifiedBuild`=27843 WHERE `DisplayID`=2725;
UPDATE `creature_model_info` SET `BoundingRadius`=1.263899, `VerifiedBuild`=27843 WHERE `DisplayID`=150;
UPDATE `creature_model_info` SET `BoundingRadius`=1.0601, `CombatReach`=1.1, `VerifiedBuild`=27843 WHERE `DisplayID`=1267;
UPDATE `creature_model_info` SET `BoundingRadius`=1.029775, `VerifiedBuild`=27843 WHERE `DisplayID`=2281;
UPDATE `creature_model_info` SET `BoundingRadius`=0.9382192, `VerifiedBuild`=27843 WHERE `DisplayID`=1991;
UPDATE `creature_model_info` SET `BoundingRadius`=0.5056454, `VerifiedBuild`=27843 WHERE `DisplayID`=2723;
UPDATE `creature_model_info` SET `BoundingRadius`=1.411822, `VerifiedBuild`=27843 WHERE `DisplayID`=14315;
UPDATE `creature_model_info` SET `BoundingRadius`=0.5056454, `VerifiedBuild`=27843 WHERE `DisplayID`=2721;
UPDATE `creature_model_info` SET `BoundingRadius`=0.9200349, `VerifiedBuild`=27843 WHERE `DisplayID`=6821;
UPDATE `creature_model_info` SET `BoundingRadius`=3.480037, `VerifiedBuild`=27843 WHERE `DisplayID`=14506;
UPDATE `creature_model_info` SET `BoundingRadius`=3.572416, `VerifiedBuild`=27843 WHERE `DisplayID`=29166;
UPDATE `creature_model_info` SET `BoundingRadius`=0.9200349, `VerifiedBuild`=27843 WHERE `DisplayID`=937;
UPDATE `creature_model_info` SET `BoundingRadius`=1.254593, `VerifiedBuild`=27843 WHERE `DisplayID`=6829;
UPDATE `creature_model_info` SET `BoundingRadius`=0.8363954, `VerifiedBuild`=27843 WHERE `DisplayID`=6824;
UPDATE `creature_model_info` SET `BoundingRadius`=1.119721, `CombatReach`=2.3, `VerifiedBuild`=27843 WHERE `DisplayID`=982;
UPDATE `creature_model_info` SET `BoundingRadius`=1.078952, `VerifiedBuild`=27843 WHERE `DisplayID`=1992;
UPDATE `creature_model_info` SET `BoundingRadius`=1.313861, `VerifiedBuild`=27843 WHERE `DisplayID`=1084;
UPDATE `creature_model_info` SET `BoundingRadius`=1.708019, `VerifiedBuild`=27843 WHERE `DisplayID`=1086;
UPDATE `creature_model_info` SET `BoundingRadius`=1.970792, `VerifiedBuild`=27843 WHERE `DisplayID`=8389;
UPDATE `creature_model_info` SET `BoundingRadius`=1.087314, `VerifiedBuild`=27843 WHERE `DisplayID`=1996;
UPDATE `creature_model_info` SET `BoundingRadius`=1.184271, `VerifiedBuild`=27843 WHERE `DisplayID`=29421;
UPDATE `creature_model_info` SET `BoundingRadius`=1.087314, `VerifiedBuild`=27843 WHERE `DisplayID`=6803;
UPDATE `creature_model_info` SET `BoundingRadius`=1.087314, `VerifiedBuild`=27843 WHERE `DisplayID`=1999;
UPDATE `creature_model_info` SET `BoundingRadius`=1.119721, `CombatReach`=2.3, `VerifiedBuild`=27843 WHERE `DisplayID`=820;
UPDATE `creature_model_info` SET `BoundingRadius`=1.275, `CombatReach`=1.0625, `VerifiedBuild`=27843 WHERE `DisplayID`=643;
UPDATE `creature_model_info` SET `BoundingRadius`=4.810745, `VerifiedBuild`=27843 WHERE `DisplayID`=29642;
UPDATE `creature_model_info` SET `BoundingRadius`=0.8363954, `VerifiedBuild`=27843 WHERE `DisplayID`=3024;
UPDATE `creature_model_info` SET `BoundingRadius`=2.118032, `VerifiedBuild`=27843 WHERE `DisplayID`=1103;
UPDATE `creature_model_info` SET `BoundingRadius`=3.222464, `CombatReach`=5, `VerifiedBuild`=27843 WHERE `DisplayID`=28981;
UPDATE `creature_model_info` SET `BoundingRadius`=0.8363954, `VerifiedBuild`=27843 WHERE `DisplayID`=16861;
UPDATE `creature_model_info` SET `BoundingRadius`=0.9200349, `VerifiedBuild`=27843 WHERE `DisplayID`=6801;
UPDATE `creature_model_info` SET `BoundingRadius`=0.9200349, `VerifiedBuild`=27843 WHERE `DisplayID`=6823;
UPDATE `creature_model_info` SET `BoundingRadius`=30, `CombatReach`=60, `VerifiedBuild`=27843 WHERE `DisplayID`=1070;
UPDATE `creature_model_info` SET `BoundingRadius`=1.003675, `VerifiedBuild`=27843 WHERE `DisplayID`=5773;
UPDATE `creature_model_info` SET `BoundingRadius`=4.119178, `VerifiedBuild`=27843 WHERE `DisplayID`=25092;
UPDATE `creature_model_info` SET `BoundingRadius`=0.8852055, `VerifiedBuild`=27843 WHERE `DisplayID`=9991;


-- NPC Vendor
UPDATE `npc_vendor` SET `slot`=20, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=8766 AND `ExtendedCost`=0 AND `type`=1); -- Morning Glory Dew
UPDATE `npc_vendor` SET `slot`=19, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=1645 AND `ExtendedCost`=0 AND `type`=1); -- Moonberry Juice
UPDATE `npc_vendor` SET `slot`=18, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=1708 AND `ExtendedCost`=0 AND `type`=1); -- Sweet Nectar
UPDATE `npc_vendor` SET `slot`=17, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=1205 AND `ExtendedCost`=0 AND `type`=1); -- Melon Juice
UPDATE `npc_vendor` SET `slot`=16, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=1179 AND `ExtendedCost`=0 AND `type`=1); -- Ice Cold Milk
UPDATE `npc_vendor` SET `slot`=15, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=159 AND `ExtendedCost`=0 AND `type`=1); -- Refreshing Spring Water
UPDATE `npc_vendor` SET `slot`=14, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=8953 AND `ExtendedCost`=0 AND `type`=1); -- Deep Fried Plantains
UPDATE `npc_vendor` SET `slot`=13, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=4602 AND `ExtendedCost`=0 AND `type`=1); -- Moon Harvest Pumpkin
UPDATE `npc_vendor` SET `slot`=12, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=4539 AND `ExtendedCost`=0 AND `type`=1); -- Goldenbark Apple
UPDATE `npc_vendor` SET `slot`=11, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=4538 AND `ExtendedCost`=0 AND `type`=1); -- Snapvine Watermelon
UPDATE `npc_vendor` SET `slot`=10, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=4537 AND `ExtendedCost`=0 AND `type`=1); -- Tel'Abim Banana
UPDATE `npc_vendor` SET `slot`=9, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=4536 AND `ExtendedCost`=0 AND `type`=1); -- Shiny Red Apple
UPDATE `npc_vendor` SET `slot`=8, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=21031 AND `ExtendedCost`=0 AND `type`=1); -- Cabbage Kimchi
UPDATE `npc_vendor` SET `slot`=7, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=21033 AND `ExtendedCost`=0 AND `type`=1); -- Radish Kimchi
UPDATE `npc_vendor` SET `slot`=6, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=21030 AND `ExtendedCost`=0 AND `type`=1); -- Darnassus Kimchi Pie
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=16168 AND `ExtendedCost`=0 AND `type`=1); -- Heaven Peach
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=16169 AND `ExtendedCost`=0 AND `type`=1); -- Wild Ricecake
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=16170 AND `ExtendedCost`=0 AND `type`=1); -- Steamed Mandu
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=16167 AND `ExtendedCost`=0 AND `type`=1); -- Versicolor Treat
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=16166 AND `ExtendedCost`=0 AND `type`=1); -- Bean Soup
UPDATE `npc_vendor` SET `slot`=20, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=8766 AND `ExtendedCost`=0 AND `type`=1); -- Morning Glory Dew
UPDATE `npc_vendor` SET `slot`=19, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=1645 AND `ExtendedCost`=0 AND `type`=1); -- Moonberry Juice
UPDATE `npc_vendor` SET `slot`=18, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=1708 AND `ExtendedCost`=0 AND `type`=1); -- Sweet Nectar
UPDATE `npc_vendor` SET `slot`=17, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=1205 AND `ExtendedCost`=0 AND `type`=1); -- Melon Juice
UPDATE `npc_vendor` SET `slot`=16, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=1179 AND `ExtendedCost`=0 AND `type`=1); -- Ice Cold Milk
UPDATE `npc_vendor` SET `slot`=15, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=159 AND `ExtendedCost`=0 AND `type`=1); -- Refreshing Spring Water
UPDATE `npc_vendor` SET `slot`=14, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=8953 AND `ExtendedCost`=0 AND `type`=1); -- Deep Fried Plantains
UPDATE `npc_vendor` SET `slot`=13, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=4602 AND `ExtendedCost`=0 AND `type`=1); -- Moon Harvest Pumpkin
UPDATE `npc_vendor` SET `slot`=12, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=4539 AND `ExtendedCost`=0 AND `type`=1); -- Goldenbark Apple
UPDATE `npc_vendor` SET `slot`=11, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=4538 AND `ExtendedCost`=0 AND `type`=1); -- Snapvine Watermelon
UPDATE `npc_vendor` SET `slot`=10, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=4537 AND `ExtendedCost`=0 AND `type`=1); -- Tel'Abim Banana
UPDATE `npc_vendor` SET `slot`=9, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=4536 AND `ExtendedCost`=0 AND `type`=1); -- Shiny Red Apple
UPDATE `npc_vendor` SET `slot`=8, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=21031 AND `ExtendedCost`=0 AND `type`=1); -- Cabbage Kimchi
UPDATE `npc_vendor` SET `slot`=7, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=21033 AND `ExtendedCost`=0 AND `type`=1); -- Radish Kimchi
UPDATE `npc_vendor` SET `slot`=6, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=21030 AND `ExtendedCost`=0 AND `type`=1); -- Darnassus Kimchi Pie
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=16168 AND `ExtendedCost`=0 AND `type`=1); -- Heaven Peach
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=16169 AND `ExtendedCost`=0 AND `type`=1); -- Wild Ricecake
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=16170 AND `ExtendedCost`=0 AND `type`=1); -- Steamed Mandu
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=16167 AND `ExtendedCost`=0 AND `type`=1); -- Versicolor Treat
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=27843 WHERE (`entry`=3961 AND `item`=16166 AND `ExtendedCost`=0 AND `type`=1); -- Bean Soup
UPDATE `npc_vendor` SET `slot`=20, `IgnoreFiltering`=1, `VerifiedBuild`=27843 WHERE (`entry`=33381 AND `item`=2445 AND `ExtendedCost`=0 AND `type`=1); -- Large Metal Shield
UPDATE `npc_vendor` SET `slot`=19, `IgnoreFiltering`=1, `VerifiedBuild`=27843 WHERE (`entry`=33381 AND `item`=17188 AND `ExtendedCost`=0 AND `type`=1); -- Ringed Buckler
UPDATE `npc_vendor` SET `slot`=18, `IgnoreFiltering`=1, `VerifiedBuild`=27843 WHERE (`entry`=33381 AND `item`=718 AND `ExtendedCost`=0 AND `type`=1); -- Scalemail Gloves
UPDATE `npc_vendor` SET `slot`=17, `IgnoreFiltering`=1, `VerifiedBuild`=27843 WHERE (`entry`=33381 AND `item`=1852 AND `ExtendedCost`=0 AND `type`=1); -- Scalemail Bracers
UPDATE `npc_vendor` SET `slot`=16, `IgnoreFiltering`=1, `VerifiedBuild`=27843 WHERE (`entry`=33381 AND `item`=287 AND `ExtendedCost`=0 AND `type`=1); -- Scalemail Boots
UPDATE `npc_vendor` SET `slot`=15, `IgnoreFiltering`=1, `VerifiedBuild`=27843 WHERE (`entry`=33381 AND `item`=286 AND `ExtendedCost`=0 AND `type`=1); -- Scalemail Pants
UPDATE `npc_vendor` SET `slot`=14, `IgnoreFiltering`=1, `VerifiedBuild`=27843 WHERE (`entry`=33381 AND `item`=1853 AND `ExtendedCost`=0 AND `type`=1); -- Scalemail Belt
UPDATE `npc_vendor` SET `slot`=13, `IgnoreFiltering`=1, `VerifiedBuild`=27843 WHERE (`entry`=33381 AND `item`=285 AND `ExtendedCost`=0 AND `type`=1); -- Scalemail Vest
UPDATE `npc_vendor` SET `slot`=12, `VerifiedBuild`=27843 WHERE (`entry`=33381 AND `item`=239 AND `ExtendedCost`=0 AND `type`=1); -- Cured Leather Gloves
UPDATE `npc_vendor` SET `slot`=11, `VerifiedBuild`=27843 WHERE (`entry`=33381 AND `item`=1850 AND `ExtendedCost`=0 AND `type`=1); -- Cured Leather Bracers
UPDATE `npc_vendor` SET `slot`=10, `VerifiedBuild`=27843 WHERE (`entry`=33381 AND `item`=238 AND `ExtendedCost`=0 AND `type`=1); -- Cured Leather Boots
UPDATE `npc_vendor` SET `slot`=9, `VerifiedBuild`=27843 WHERE (`entry`=33381 AND `item`=237 AND `ExtendedCost`=0 AND `type`=1); -- Cured Leather Pants
UPDATE `npc_vendor` SET `slot`=8, `VerifiedBuild`=27843 WHERE (`entry`=33381 AND `item`=1849 AND `ExtendedCost`=0 AND `type`=1); -- Cured Leather Belt
UPDATE `npc_vendor` SET `slot`=7, `VerifiedBuild`=27843 WHERE (`entry`=33381 AND `item`=236 AND `ExtendedCost`=0 AND `type`=1); -- Cured Leather Armor
UPDATE `npc_vendor` SET `slot`=6, `VerifiedBuild`=27843 WHERE (`entry`=33381 AND `item`=203 AND `ExtendedCost`=0 AND `type`=1); -- Thick Cloth Gloves
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=27843 WHERE (`entry`=33381 AND `item`=3598 AND `ExtendedCost`=0 AND `type`=1); -- Thick Cloth Bracers
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=27843 WHERE (`entry`=33381 AND `item`=202 AND `ExtendedCost`=0 AND `type`=1); -- Thick Cloth Shoes
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=27843 WHERE (`entry`=33381 AND `item`=201 AND `ExtendedCost`=0 AND `type`=1); -- Thick Cloth Pants
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=27843 WHERE (`entry`=33381 AND `item`=3597 AND `ExtendedCost`=0 AND `type`=1); -- Thick Cloth Belt
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=27843 WHERE (`entry`=33381 AND `item`=200 AND `ExtendedCost`=0 AND `type`=1); -- Thick Cloth Vest


-- Creature Equip Template
DELETE FROM `creature_equip_template` WHERE (`CreatureID`=32856 AND `ID`=4) OR (`CreatureID`=32856 AND `ID`=3) OR (`CreatureID`=32856 AND `ID`=2) OR (`CreatureID`=32856 AND `ID`=1) OR (`CreatureID`=33334 AND `ID`=4) OR (`CreatureID`=33334 AND `ID`=3) OR (`CreatureID`=33334 AND `ID`=2) OR (`CreatureID`=33334 AND `ID`=1);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES
(32856, 4, 18062, 0, 0, 0, 0, 0, 0, 0, 0), -- Warsong Invader
(32856, 3, 10898, 0, 0, 12456, 0, 0, 0, 0, 0), -- Warsong Invader
(32856, 2, 14877, 0, 0, 0, 0, 0, 0, 0, 0), -- Warsong Invader
(32856, 1, 17383, 0, 0, 0, 0, 0, 0, 0, 0), -- Warsong Invader
(33334, 4, 17383, 0, 0, 0, 0, 0, 0, 0, 0), -- Horde Invader
(33334, 3, 10898, 0, 0, 12456, 0, 0, 0, 0, 0), -- Horde Invader
(33334, 2, 14877, 0, 0, 0, 0, 0, 0, 0, 0), -- Horde Invader
(33334, 1, 18062, 0, 0, 0, 0, 0, 0, 0, 0); -- Horde Invader







