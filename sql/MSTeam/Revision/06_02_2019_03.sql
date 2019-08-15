SET @CGUID = 447346;

DELETE FROM `creature_queststarter` WHERE `id` = '122065';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('122065', '47867');

DELETE FROM `creature_questender` WHERE `id` = '122065';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('122065', '47835'),
('122065', '48507');

DELETE FROM `creature_queststarter` WHERE `id` = '121756';
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
('121756', '47223');

DELETE FROM `creature_questender` WHERE `id` = '121756';
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
('121756', '47222'),
('121756', '47867');


DELETE FROM `conversation_actors` WHERE (`ConversationId`=5337 AND `ConversationActorId`=120223 AND `Idx`=0) OR (`ConversationId`=5708 AND `Idx`=3) OR (`ConversationId`=5708 AND `Idx`=0) OR (`ConversationId`=5708 AND `Idx`=2) OR (`ConversationId`=5070 AND `Idx`=0) OR (`ConversationId`=5710 AND `Idx`=2) OR (`ConversationId`=5710 AND `Idx`=1) OR (`ConversationId`=5710 AND `Idx`=0) OR (`ConversationId`=5073 AND `Idx`=0) OR (`ConversationId`=5335 AND `Idx`=1) OR (`ConversationId`=5335 AND `Idx`=0) OR (`ConversationId`=5711 AND `Idx`=0) OR (`ConversationId`=5220 AND `Idx`=0) OR (`ConversationId`=5063 AND `Idx`=0) OR (`ConversationId`=5062 AND `Idx`=1) OR (`ConversationId`=5065 AND `Idx`=0) OR (`ConversationId`=5213 AND `Idx`=3) OR (`ConversationId`=5213 AND `Idx`=2) OR (`ConversationId`=5213 AND `Idx`=1) OR (`ConversationId`=5213 AND `Idx`=0) OR (`ConversationId`=5066 AND `Idx`=1) OR (`ConversationId`=5066 AND `Idx`=0);
INSERT INTO `conversation_actors` (`ConversationId`, `ConversationActorId`, `Idx`, `VerifiedBuild`) VALUES
(5337, 120223, 0, 27326),
(5708, 60352, 3, 27326), 
(5708, 128782, 0, 27326), 
(5708, 128781, 2, 27326), 
(5070, 60352, 0, 27326), 
(5710, 59244, 2, 27326), 
(5710, 60352, 1, 27326), 
(5710, 121261, 0, 27326), 
(5073, 126172, 0, 27326), 
(5335, 122065, 1, 27326), 
(5335, 121756, 0, 27326), 
(5711, 60352, 0, 27326), 
(5220, 60352, 0, 27326), 
(5063, 120223, 0, 27326),
(5062, 122066, 1, 27326), 
(5065, 121617, 0, 27326),
(5213, 59244, 3, 27326), 
(5213, 58620, 2, 27326), 
(5213, 58620, 1, 27326), 
(5213, 60352, 0, 27326), 
(5066, 58620, 1, 27326), 
(5066, 60352, 0, 27326); 


DELETE FROM `conversation_actor_template` WHERE `Id` IN (120223, 121617);
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES
(120223, 17822, 0, 27326),
(121617, 17822, 0, 27326);


DELETE FROM `conversation_actor_template` WHERE `Id`=122066;
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES 
(122066, 122066, 26770, 26972); 


DELETE FROM `conversation_actor_template` WHERE `Id`=121756;
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES 
(121756, 121756, 76352, 26972); 


DELETE FROM `conversation_actor_template` WHERE `Id`=122065;
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES 
(122065, 122065, 61971, 26972); 

-- Creature Entry: 128782 (Vindicator Boros)
DELETE FROM `conversation_actor_template` WHERE `Id`=128782;
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES 
(128782, 128782, 76352, 26972); 

-- Creature Entry: 121261 
DELETE FROM `conversation_actor_template` WHERE `Id`=121261;
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES 
(121261, 121261, 71801, 26972); 

-- Creature Entry: 126172
DELETE FROM `conversation_actor_template` WHERE `Id`=126172;
INSERT INTO `conversation_actor_template` (`Id`, `CreatureId`, `CreatureModelId`, `VerifiedBuild`) VALUES 
(126172, 126172, 70927, 26972); 

DELETE FROM `conversation_line_template` WHERE `Id` IN (11933, 11932, 12796, 11919, 11918, 11930);
INSERT INTO `conversation_line_template` (`Id`, `StartTime`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(11933, 6321, 982, 0, 0, 27326),
(11932, 0, 982, 0, 0, 27326),
(12796, 16994, 192, 2, 0, 27326),
(11919, 8312, 192, 1, 0, 27326),
(11918, 0, 192, 0, 0, 27326),
(11930, 0, 192, 1, 0, 27326);

UPDATE `conversation_line_template` SET `StartTime`=30737, `UiCameraID`=192, `VerifiedBuild`=27326 WHERE `Id`=12798;
UPDATE `conversation_line_template` SET `StartTime`=22721, `UiCameraID`=192, `VerifiedBuild`=27326 WHERE `Id`=12797;
UPDATE `conversation_line_template` SET `UiCameraID`=192, `VerifiedBuild`=27326 WHERE `Id`=12793;
UPDATE `conversation_line_template` SET `UiCameraID`=192, `VerifiedBuild`=27326 WHERE `Id`=11674;
UPDATE `conversation_line_template` SET `UiCameraID`=192, `VerifiedBuild`=27326 WHERE `Id`=11320;
UPDATE `conversation_line_template` SET `UiCameraID`=192, `VerifiedBuild`=27326 WHERE `Id`=12807;
UPDATE `conversation_line_template` SET `UiCameraID`=192, `VerifiedBuild`=27326 WHERE `Id`=12806;
UPDATE `conversation_line_template` SET `UiCameraID`=192, `VerifiedBuild`=27326 WHERE `Id`=12805;
UPDATE `conversation_line_template` SET `UiCameraID`=192, `VerifiedBuild`=27326 WHERE `Id`=11330;
UPDATE `conversation_line_template` SET `UiCameraID`=192, `VerifiedBuild`=27326 WHERE `Id`=12808;
UPDATE `conversation_line_template` SET `UiCameraID`=192, `VerifiedBuild`=27326 WHERE `Id`=11673;
UPDATE `conversation_line_template` SET `VerifiedBuild`=27326 WHERE `Id`=12802;
UPDATE `conversation_line_template` SET `VerifiedBuild`=27326 WHERE `Id`=11306;
UPDATE `conversation_line_template` SET `VerifiedBuild`=27326 WHERE `Id`=11309;
UPDATE `conversation_line_template` SET `UiCameraID`=192, `VerifiedBuild`=27326 WHERE `Id`=11663;
UPDATE `conversation_line_template` SET `UiCameraID`=192, `VerifiedBuild`=27326 WHERE `Id`=11666;
UPDATE `conversation_line_template` SET `UiCameraID`=192, `VerifiedBuild`=27326 WHERE `Id`=11675;
UPDATE `conversation_line_template` SET `UiCameraID`=192, `VerifiedBuild`=27326 WHERE `Id`=11662;
UPDATE `conversation_line_template` SET `UiCameraID`=192, `VerifiedBuild`=27326 WHERE `Id`=11661;
UPDATE `conversation_line_template` SET `UiCameraID`=192, `VerifiedBuild`=27326 WHERE `Id`=11672;
UPDATE `conversation_line_template` SET `UiCameraID`=192, `VerifiedBuild`=27326 WHERE `Id`=11310;

DELETE FROM `conversation_template` WHERE `Id` IN (5335, 5337);
INSERT INTO `conversation_template` (`Id`, `FirstLineID`, `LastLineEndTime`, `VerifiedBuild`) VALUES
(5335, 11918, 537212352, 27326),
(5337, 11932, 2147825216, 27326);

UPDATE `conversation_template` SET `LastLineEndTime`=2684688192, `VerifiedBuild`=27326 WHERE `Id`=5213;
UPDATE `conversation_template` SET `LastLineEndTime`=3221590976, `VerifiedBuild`=27326 WHERE `Id`=5711;
UPDATE `conversation_template` SET `LastLineEndTime`=3221590912, `VerifiedBuild`=27326 WHERE `Id`=5710;
UPDATE `conversation_template` SET `LastLineEndTime`=3221549952, `VerifiedBuild`=27326 WHERE `Id`=5070;
UPDATE `conversation_template` SET `LastLineEndTime`=3221559552, `VerifiedBuild`=27326 WHERE `Id`=5220;
UPDATE `conversation_template` SET `LastLineEndTime`=3221549696, `VerifiedBuild`=27326 WHERE `Id`=5066;
UPDATE `conversation_template` SET `LastLineEndTime`=3221549632, `VerifiedBuild`=27326 WHERE `Id`=5065;
UPDATE `conversation_template` SET `LastLineEndTime`=3221549504, `VerifiedBuild`=27326 WHERE `Id`=5063;
UPDATE `conversation_template` SET `LastLineEndTime`=3221550144, `VerifiedBuild`=27326 WHERE `Id`=5073;
UPDATE `conversation_template` SET `LastLineEndTime`=3221590784, `VerifiedBuild`=27326 WHERE `Id`=5708;
UPDATE `conversation_template` SET `FirstLineID`=11930, `LastLineEndTime`=3221549440, `VerifiedBuild`=27326 WHERE `Id`=5062;

DELETE FROM `gameobject_template_addon` WHERE `entry`=269837;
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`) VALUES
(269837, 0, 32);

SET NAMES 'latin1';
SET NAMES 'utf8';
DELETE FROM `quest_offer_reward` WHERE `ID` IN (47867 /*-Unknown-*/, 47835 /*-Unknown-*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(47867, 396, 0, 0, 0, 0, 0, 0, 0, 'Пусть ЭЛУНА благословит нас.', 27326), -- -Unknown-
(47835, 1, 0, 0, 0, 0, 0, 0, 0, 'Я знаю, что ты ответишь на призыв вступить в бой.Для меня большая честь сражаться с вами.', 27326); -- -Unknown-

UPDATE `quest_offer_reward` SET `VerifiedBuild`=27326 WHERE `ID`=48440; -- -Unknown-
UPDATE `quest_offer_reward` SET `VerifiedBuild`=27326 WHERE `ID`=47224; -- -Unknown-
UPDATE `quest_offer_reward` SET `VerifiedBuild`=27326 WHERE `ID`=47223; -- -Unknown-

DELETE FROM `quest_poi` WHERE (`QuestID`=47867 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=47867 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=47867 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=47867 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=47835 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=47835 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=47835 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=47835 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=47835 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=47118 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=39781 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=38346 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=38346 AND `BlobIndex`=0 AND `Idx1`=1);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `WoDUnk1`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(47867, 0, 3, 32, 0, 0, 1, 1, 0, 0, 2, 0, 0, 0, 0, 27326), -- -Unknown-
(47867, 1, 2, 0, 291024, 121787, 1, 85, 0, 0, 0, 0, 0, 1312280, 0, 27326), -- -Unknown-
(47867, 0, 1, 0, 291024, 121787, 1, 1, 0, 0, 2, 0, 0, 0, 0, 27326), -- -Unknown-
(47867, 0, 0, -1, 0, 0, 1750, 891, 0, 0, 2, 0, 0, 0, 0, 27326), -- -Unknown-
(47835, 1, 4, 1, 291000, 121751, 1, 85, 0, 0, 0, 0, 53137, 1312280, 0, 27326), -- -Unknown-
(47835, 0, 3, 1, 291000, 121751, 1, 1, 0, 0, 2, 0, 0, 0, 0, 27326), -- -Unknown-
(47835, 1, 2, 0, 290999, 124365, 1220, 627, 0, 0, 2, 0, 51726, 0, 0, 27326), -- -Unknown-
(47835, 0, 1, 0, 290999, 124365, 1220, 627, 0, 0, 2, 0, 51727, 0, 0, 27326), -- -Unknown-
(47835, 0, 0, -1, 0, 0, 1, 1, 0, 0, 2, 0, 0, 0, 0, 27326), -- -Unknown-
(47118, 0, 0, -1, 0, 0, 1220, 646, 0, 0, 0, 0, 0, 1289000, 0, 27326), -- -Unknown-
(39781, 0, 5, 32, 0, 0, 1220, 650, 0, 0, 0, 0, 0, 1057874, 0, 27326), -- -Unknown-
(38346, 1, 2, 32, 0, 0, 0, 90, 0, 0, 0, 0, 0, 78953, 0, 27326), -- -Unknown-
(38346, 0, 1, 32, 0, 0, 0, 18, 0, 0, 0, 0, 0, 78953, 0, 27326); -- -Unknown-

UPDATE `quest_poi` SET `WorldMapAreaId`=893, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=48440 AND `BlobIndex`=1 AND `Idx1`=4); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=891, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=48440 AND `BlobIndex`=0 AND `Idx1`=3); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=893, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=48440 AND `BlobIndex`=1 AND `Idx1`=2); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=891, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=48440 AND `BlobIndex`=0 AND `Idx1`=1); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=831, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=48440 AND `BlobIndex`=0 AND `Idx1`=0); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=891, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=47224 AND `BlobIndex`=0 AND `Idx1`=4); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=892, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=47224 AND `BlobIndex`=0 AND `Idx1`=3); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=892, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=47224 AND `BlobIndex`=0 AND `Idx1`=2); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=893, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=47224 AND `BlobIndex`=1 AND `Idx1`=1); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=891, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=47224 AND `BlobIndex`=0 AND `Idx1`=0); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=891, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=47223 AND `BlobIndex`=0 AND `Idx1`=5); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=891, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=47223 AND `BlobIndex`=1 AND `Idx1`=4); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=891, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=47223 AND `BlobIndex`=0 AND `Idx1`=3); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=892, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=47223 AND `BlobIndex`=2 AND `Idx1`=2); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=891, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=47223 AND `BlobIndex`=1 AND `Idx1`=1); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=891, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=47223 AND `BlobIndex`=0 AND `Idx1`=0); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=646, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=48641 AND `BlobIndex`=0 AND `Idx1`=0); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=680, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=42421 AND `BlobIndex`=0 AND `Idx1`=0); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=750, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=42233 AND `BlobIndex`=1 AND `Idx1`=1); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=650, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=42233 AND `BlobIndex`=0 AND `Idx1`=0); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=646, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=46248 AND `BlobIndex`=0 AND `Idx1`=3); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=646, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=46248 AND `BlobIndex`=1 AND `Idx1`=2); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=646, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=46248 AND `BlobIndex`=0 AND `Idx1`=1); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=646, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=46248 AND `BlobIndex`=0 AND `Idx1`=0); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=627, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=44009 AND `BlobIndex`=0 AND `Idx1`=7); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=680, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=44009 AND `BlobIndex`=0 AND `Idx1`=6); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=680, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=44009 AND `BlobIndex`=0 AND `Idx1`=5); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=680, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=44009 AND `BlobIndex`=0 AND `Idx1`=4); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=627, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=44009 AND `BlobIndex`=1 AND `Idx1`=3); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=680, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=44009 AND `BlobIndex`=0 AND `Idx1`=2); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=627, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=44009 AND `BlobIndex`=1 AND `Idx1`=1); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=629, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=44009 AND `BlobIndex`=0 AND `Idx1`=0); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=721, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=43496 AND `BlobIndex`=9 AND `Idx1`=10); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=647, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=43496 AND `BlobIndex`=8 AND `Idx1`=9); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=702, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=43496 AND `BlobIndex`=7 AND `Idx1`=8); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=726, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=43496 AND `BlobIndex`=6 AND `Idx1`=7); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=717, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=43496 AND `BlobIndex`=5 AND `Idx1`=6); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=747, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=43496 AND `BlobIndex`=4 AND `Idx1`=5); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=739, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=43496 AND `BlobIndex`=3 AND `Idx1`=4); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=709, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=43496 AND `BlobIndex`=2 AND `Idx1`=3); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=695, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=43496 AND `BlobIndex`=1 AND `Idx1`=2); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=24, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=43496 AND `BlobIndex`=0 AND `Idx1`=1); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=630, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=43496 AND `BlobIndex`=0 AND `Idx1`=0); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=650, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=39781 AND `BlobIndex`=1 AND `Idx1`=4); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=731, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=39781 AND `BlobIndex`=0 AND `Idx1`=3); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=650, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=39781 AND `BlobIndex`=0 AND `Idx1`=2); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=650, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=39781 AND `BlobIndex`=1 AND `Idx1`=1); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=731, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=39781 AND `BlobIndex`=0 AND `Idx1`=0); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=588, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `BlobIndex`=4 AND `Idx1`=5); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=588, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `BlobIndex`=3 AND `Idx1`=4); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=588, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `BlobIndex`=2 AND `Idx1`=3); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=588, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `BlobIndex`=1 AND `Idx1`=2); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=588, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `BlobIndex`=0 AND `Idx1`=1); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=588, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `BlobIndex`=0 AND `Idx1`=0); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=534, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=38415 AND `BlobIndex`=0 AND `Idx1`=1); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=535, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=38415 AND `BlobIndex`=0 AND `Idx1`=0); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=90, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=38346 AND `BlobIndex`=0 AND `Idx1`=0); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=595, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=37157 AND `BlobIndex`=0 AND `Idx1`=7); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=595, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=37157 AND `BlobIndex`=0 AND `Idx1`=6); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=582, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=37157 AND `BlobIndex`=5 AND `Idx1`=5); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=582, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=37157 AND `BlobIndex`=4 AND `Idx1`=4); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=582, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=37157 AND `BlobIndex`=3 AND `Idx1`=3); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=590, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=37157 AND `BlobIndex`=2 AND `Idx1`=2); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=590, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=37157 AND `BlobIndex`=1 AND `Idx1`=1); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=590, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=37157 AND `BlobIndex`=0 AND `Idx1`=0); -- -Unknown-
UPDATE `quest_poi` SET `WorldMapAreaId`=590, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27326 WHERE (`QuestID`=35066 AND `BlobIndex`=0 AND `Idx1`=0); -- -Unknown-
DELETE FROM `quest_poi_points` WHERE (`QuestID`=47867 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=47867 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=47867 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=47867 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=47835 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=47835 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=47835 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=47835 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=47835 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=47118 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=39781 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=38346 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=38346 AND `Idx1`=1 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES
(47867, 3, 0, 1394, -5033, 27326), -- -Unknown-
(47867, 2, 0, 1380, -5041, 27326), -- -Unknown-
(47867, 1, 0, 1385, -5037, 27326), -- -Unknown-
(47867, 0, 0, -4284, -11366, 27326), -- -Unknown-
(47835, 4, 0, 1380, -5041, 27326), -- -Unknown-
(47835, 3, 0, 1384, -5037, 27326), -- -Unknown-
(47835, 2, 0, -789, 4421, 27326), -- -Unknown-
(47835, 1, 0, -713, 4420, 27326), -- -Unknown-
(47835, 0, 0, 1388, -5033, 27326), -- -Unknown-
(47118, 0, 0, -1625, 3202, 27326), -- -Unknown-
(39781, 5, 0, 3662, 3928, 27326), -- -Unknown-
(38346, 2, 0, 1390, 124, 27326), -- -Unknown-
(38346, 1, 0, 1390, 124, 27326); -- -Unknown-

UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=48440 AND `Idx1`=4 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=48440 AND `Idx1`=3 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=48440 AND `Idx1`=2 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=48440 AND `Idx1`=1 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=48440 AND `Idx1`=0 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=47224 AND `Idx1`=4 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=47224 AND `Idx1`=3 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=47224 AND `Idx1`=2 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=47224 AND `Idx1`=1 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=47224 AND `Idx1`=0 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=47223 AND `Idx1`=5 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=47223 AND `Idx1`=4 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=47223 AND `Idx1`=3 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=47223 AND `Idx1`=2 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=47223 AND `Idx1`=1 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=47223 AND `Idx1`=0 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=48641 AND `Idx1`=0 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=42421 AND `Idx1`=0 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=42233 AND `Idx1`=1 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=42233 AND `Idx1`=0 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=46248 AND `Idx1`=3 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=46248 AND `Idx1`=2 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=46248 AND `Idx1`=1 AND `Idx2`=11); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=46248 AND `Idx1`=1 AND `Idx2`=10); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=46248 AND `Idx1`=1 AND `Idx2`=9); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=46248 AND `Idx1`=1 AND `Idx2`=8); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=46248 AND `Idx1`=1 AND `Idx2`=7); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=46248 AND `Idx1`=1 AND `Idx2`=6); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=46248 AND `Idx1`=1 AND `Idx2`=5); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=46248 AND `Idx1`=1 AND `Idx2`=4); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=46248 AND `Idx1`=1 AND `Idx2`=3); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=46248 AND `Idx1`=1 AND `Idx2`=2); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=46248 AND `Idx1`=1 AND `Idx2`=1); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=46248 AND `Idx1`=1 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=46248 AND `Idx1`=0 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=44009 AND `Idx1`=7 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=44009 AND `Idx1`=6 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=44009 AND `Idx1`=5 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=44009 AND `Idx1`=4 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=44009 AND `Idx1`=3 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=44009 AND `Idx1`=2 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=44009 AND `Idx1`=1 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=44009 AND `Idx1`=0 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=43496 AND `Idx1`=10 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=43496 AND `Idx1`=9 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=43496 AND `Idx1`=8 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=43496 AND `Idx1`=7 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=43496 AND `Idx1`=6 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=43496 AND `Idx1`=5 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=43496 AND `Idx1`=4 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=43496 AND `Idx1`=3 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=43496 AND `Idx1`=2 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=43496 AND `Idx1`=1 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=43496 AND `Idx1`=0 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=39781 AND `Idx1`=4 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=39781 AND `Idx1`=3 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=39781 AND `Idx1`=2 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=39781 AND `Idx1`=1 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=39781 AND `Idx1`=0 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=5 AND `Idx2`=11); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=5 AND `Idx2`=10); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=5 AND `Idx2`=9); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=5 AND `Idx2`=8); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=5 AND `Idx2`=7); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=5 AND `Idx2`=6); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=5 AND `Idx2`=5); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=5 AND `Idx2`=4); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=5 AND `Idx2`=3); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=5 AND `Idx2`=2); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=5 AND `Idx2`=1); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=5 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=4 AND `Idx2`=11); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=4 AND `Idx2`=10); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=4 AND `Idx2`=9); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=4 AND `Idx2`=8); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=4 AND `Idx2`=7); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=4 AND `Idx2`=6); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=4 AND `Idx2`=5); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=4 AND `Idx2`=4); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=4 AND `Idx2`=3); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=4 AND `Idx2`=2); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=4 AND `Idx2`=1); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=4 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=3 AND `Idx2`=11); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=3 AND `Idx2`=10); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=3 AND `Idx2`=9); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=3 AND `Idx2`=8); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=3 AND `Idx2`=7); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=3 AND `Idx2`=6); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=3 AND `Idx2`=5); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=3 AND `Idx2`=4); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=3 AND `Idx2`=3); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=3 AND `Idx2`=2); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=3 AND `Idx2`=1); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=3 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=2 AND `Idx2`=11); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=2 AND `Idx2`=10); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=2 AND `Idx2`=9); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=2 AND `Idx2`=8); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=2 AND `Idx2`=7); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=2 AND `Idx2`=6); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=2 AND `Idx2`=5); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=2 AND `Idx2`=4); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=2 AND `Idx2`=3); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=2 AND `Idx2`=2); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=2 AND `Idx2`=1); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=2 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=1 AND `Idx2`=11); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=1 AND `Idx2`=10); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=1 AND `Idx2`=9); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=1 AND `Idx2`=8); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=1 AND `Idx2`=7); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=1 AND `Idx2`=6); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=1 AND `Idx2`=5); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=1 AND `Idx2`=4); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=1 AND `Idx2`=3); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=1 AND `Idx2`=2); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=1 AND `Idx2`=1); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=1 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38923 AND `Idx1`=0 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38415 AND `Idx1`=1 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38415 AND `Idx1`=0 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=38346 AND `Idx1`=0 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=37157 AND `Idx1`=7 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=37157 AND `Idx1`=6 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=37157 AND `Idx1`=5 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=37157 AND `Idx1`=4 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=37157 AND `Idx1`=3 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=37157 AND `Idx1`=2 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=37157 AND `Idx1`=1 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=37157 AND `Idx1`=0 AND `Idx2`=0); -- -Unknown-
UPDATE `quest_poi_points` SET `VerifiedBuild`=27326 WHERE (`QuestID`=35066 AND `Idx1`=0 AND `Idx2`=0); -- -Unknown-

DELETE FROM `quest_details` WHERE `ID` IN (47867 /*-Unknown-*/, 47835 /*-Unknown-*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(47867, 396, 396, 0, 0, 0, 0, 0, 0, 27326), -- -Unknown-
(47835, 0, 0, 0, 0, 0, 0, 0, 0, 27326); -- -Unknown-

UPDATE `quest_details` SET `VerifiedBuild`=27326 WHERE `ID`=46938; -- -Unknown-
UPDATE `quest_details` SET `VerifiedBuild`=27326 WHERE `ID`=48440; -- -Unknown-
UPDATE `quest_details` SET `VerifiedBuild`=27326 WHERE `ID`=47224; -- -Unknown-
UPDATE `quest_details` SET `VerifiedBuild`=27326 WHERE `ID`=47223; -- -Unknown-

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+39;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+0, 122066, 1750, 8840, 8840, 1, '8654', 0, 0, 0, -4291.622, -11380.57, 11.48157, 5.83791, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- 艾萨斯·夺日者 (Area: -Unknown- - Difficulty: 0)
(@CGUID+1, 122065, 1750, 8840, 8840, 1, '8654', 0, 0, 0, -4289.878, -11378.42, 11.33987, 5.531501, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- 女伯爵莉亚德琳 (Area: -Unknown- - Difficulty: 0)
(@CGUID+2, 121756, 1750, 8840, 8840, 1, '8654', 0, 0, 0, -4289.003, -11370.29, 10.80776, 5.400383, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- 守备官波鲁斯 (Area: -Unknown- - Difficulty: 0)
-- PHASE 11695
(@CGUID+3, 3108, 1, 14, 374, 1, '11695', 0, 0, 0, 1399.007, -5033.706, -19.83568, 0.7992094, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- 硬壳海浪蟹 (Area: -Unknown- - Difficulty: 0)
(@CGUID+4, 121756, 1, 14, 374, 1, '11695', 0, 0, 0, 1379.312, -5049.897, 3.171859, 1.221668, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- 守备官波鲁斯 (Area: -Unknown- - Difficulty: 0)
(@CGUID+5, 3108, 1, 14, 374, 1, '11695', 0, 0, 0, 1530.843, -4999.164, -16.80114, 4.226911, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- 硬壳海浪蟹 (Area: -Unknown- - Difficulty: 0)
(@CGUID+6, 121423, 1, 14, 374, 1, '11695', 0, 0, 0, 1391.148, -5053.049, 4.803512, 2.047665, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- 卡尔 (Area: -Unknown- - Difficulty: 0)
(@CGUID+7, 122066, 1, 14, 374, 1, '11695', 0, 0, 0, 1380.413, -5044.805, 2.917637, 5.150071, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- 艾萨斯·夺日者 (Area: -Unknown- - Difficulty: 0)
(@CGUID+8, 122067, 1, 14, 374, 1, '11695', 0, 0, 0, 1383.672, -5049.833, 3.19231, 2.038125, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- 希尔格林 (Area: -Unknown- - Difficulty: 0)
(@CGUID+9, 124373, 1, 14, 374, 1, '11695', 0, 0, 0, 1386.073, -5064.543, 4.214517, 1.77097, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- 逐日号高阶卫士 (Area: -Unknown- - Difficulty: 0)
(@CGUID+10, 124373, 1, 14, 374, 1, '11695', 0, 0, 0, 1388.885, -5055.062, 3.498456, 4.689776, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- 逐日号高阶卫士 (Area: -Unknown- - Difficulty: 0)
(@CGUID+11, 124434, 1, 14, 374, 1, '11695', 0, 0, 0, 1379.216, -5065.282, 4.230975, 1.77097, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- 逐日号高阶卫士 (Area: -Unknown- - Difficulty: 0)
(@CGUID+12, 3108, 1, 14, 374, 1, '11695', 0, 0, 0, 1435.107, -5064.763, -25.48454, 2.438491, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- 硬壳海浪蟹 (Area: -Unknown- - Difficulty: 0)
(@CGUID+13, 141706, 1, 14, 374, 1, '11695', 0, 0, 0, 1450.023, -4920.18, 51.21004, 5.124193, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- -Unknown- (Area: -Unknown- - Difficulty: 0)
(@CGUID+14, 49837, 1, 14, 374, 1, '11695', 0, 0, 0, 1313.652, -4998.354, 1.155147, 2.558217, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- -Unknown- (Area: -Unknown- - Difficulty: 0)
(@CGUID+15, 3108, 1, 14, 374, 1, '11695', 0, 0, 0, 1301.417, -5036.109, -2.900393, 4.783697, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- 硬壳海浪蟹 (Area: -Unknown- - Difficulty: 0)
(@CGUID+16, 3108, 1, 14, 374, 1, '11695', 0, 0, 0, 1340.122, -5023.997, -4.322457, 1.769884, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- 硬壳海浪蟹 (Area: -Unknown- - Difficulty: 0)
(@CGUID+17, 49743, 1, 14, 374, 1, '11695', 0, 0, 0, 1334.325, -4979.225, 3.155396, 2.682312, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- -Unknown- (Area: -Unknown- - Difficulty: 0)
(@CGUID+18, 3108, 1, 14, 374, 1, '11695', 0, 0, 0, 1317.512, -5006.58, 0.7525883, 1.902409, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- 硬壳海浪蟹 (Area: -Unknown- - Difficulty: 0)
(@CGUID+19, 3108, 1, 14, 374, 1, '11695', 0, 0, 0, 1345.397, -5113.513, -14.732, 5.429382, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- 硬壳海浪蟹 (Area: -Unknown- - Difficulty: 0)
(@CGUID+20, 141706, 1, 14, 374, 1, '11695', 0, 0, 0, 1424.707, -4950.19, 65.19443, 4.806496, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- -Unknown- (Area: -Unknown- - Difficulty: 0)
(@CGUID+21, 141706, 1, 14, 374, 1, '11695', 0, 0, 0, 1448.265, -5012.301, 66.15008, 4.791163, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- -Unknown- (Area: -Unknown- - Difficulty: 0)
(@CGUID+22, 141706, 1, 14, 374, 1, '11695', 0, 0, 0, 1426.217, -4954.542, 65.70599, 4.79484, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- -Unknown- (Area: -Unknown- - Difficulty: 0)
(@CGUID+23, 141707, 1, 14, 374, 1, '11695', 0, 0, 0, 1327.889, -4858.794, 72.18111, 4.579893, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- -Unknown- (Area: -Unknown- - Difficulty: 0)
(@CGUID+24, 141707, 1, 14, 374, 1, '11695', 0, 0, 0, 1334.895, -4859.716, 72.18204, 4.580137, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- -Unknown- (Area: -Unknown- - Difficulty: 0)
(@CGUID+25, 141707, 1, 14, 374, 1, '11695', 0, 0, 0, 1331.263, -4862.143, 70.36685, 4.557352, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- -Unknown- (Area: -Unknown- - Difficulty: 0)
(@CGUID+26, 141707, 1, 14, 374, 1, '11695', 0, 0, 0, 1324.843, -4854.833, 72.18118, 4.580448, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- -Unknown- (Area: -Unknown- - Difficulty: 0)
(@CGUID+27, 141707, 1, 14, 374, 1, '11695', 0, 0, 0, 1338.855, -4856.669, 72.18212, 4.580959, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- -Unknown- (Area: -Unknown- - Difficulty: 0)
(@CGUID+28, 3108, 1, 14, 374, 1, '11695', 0, 0, 0, 1283.196, -5027.712, -0.9733069, 5.092896, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- 硬壳海浪蟹 (Area: -Unknown- - Difficulty: 0)
(@CGUID+29, 3108, 1, 14, 374, 1, '11695', 0, 0, 0, 1294.528, -5099.679, -6.457653, 4.512066, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- 硬壳海浪蟹 (Area: -Unknown- - Difficulty: 0)
(@CGUID+30, 141707, 1, 14, 374, 1, '11695', 0, 0, 0, 1336.089, -4851.172, 70.31235, 4.578722, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- -Unknown- (Area: -Unknown- - Difficulty: 0)
(@CGUID+31, 141707, 1, 14, 374, 1, '11695', 0, 0, 0, 1332.634, -4853.54, 68.12402, 4.551984, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- -Unknown- (Area: -Unknown- - Difficulty: 0)
(@CGUID+32, 141707, 1, 14, 374, 1, '11695', 0, 0, 0, 1320.153, -4902.225, 81.38142, 4.621094, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- -Unknown- (Area: -Unknown- - Difficulty: 0)
(@CGUID+33, 141707, 1, 14, 374, 1, '11695', 0, 0, 0, 1334.225, -4903.246, 81.40337, 4.62056, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- -Unknown- (Area: -Unknown- - Difficulty: 0)
(@CGUID+34, 141707, 1, 14, 374, 1, '11695', 0, 0, 0, 1323.435, -4906.116, 81.40843, 4.626279, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- -Unknown- (Area: -Unknown- - Difficulty: 0)
(@CGUID+35, 141706, 1, 14, 374, 1, '11695', 0, 0, 0, 1474.469, -5017.683, 57.57807, 4.649665, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- -Unknown- (Area: -Unknown- - Difficulty: 0)
(@CGUID+36, 141706, 1, 14, 374, 1, '11695', 0, 0, 0, 1440.908, -4967.027, 56.20998, 4.867029, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- -Unknown- (Area: -Unknown- - Difficulty: 0)
(@CGUID+37, 141706, 1, 14, 374, 1, '11695', 0, 0, 0, 1444.806, -4969.184, 56.16183, 4.861053, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- -Unknown- (Area: -Unknown- - Difficulty: 0)
(@CGUID+38, 141706, 1, 14, 374, 1, '11695', 0, 0, 0, 1456.902, -5026.283, 60.11619, 4.801163, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- -Unknown- (Area: -Unknown- - Difficulty: 0)
(@CGUID+39, 141706, 1, 14, 374, 1, '11695', 0, 0, 0, 1459.122, -5021.636, 60.02449, 4.811386, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326); -- -Unknown- (Area: -Unknown- - Difficulty: 0)



DELETE FROM `creature_addon` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+39;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+0, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 艾萨斯·夺日者
(@CGUID+1, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 女伯爵莉亚德琳
(@CGUID+2, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 守备官波鲁斯
(@CGUID+3, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 硬壳海浪蟹
(@CGUID+4, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 守备官波鲁斯
(@CGUID+5, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 硬壳海浪蟹
(@CGUID+6, 0, 0, 1, 1, 0, 0, 0, 0, ''), -- 卡尔
(@CGUID+7, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 艾萨斯·夺日者
(@CGUID+8, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 希尔格林
(@CGUID+9, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 逐日号高阶卫士
(@CGUID+10, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 逐日号高阶卫士
(@CGUID+11, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 逐日号高阶卫士
(@CGUID+12, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 硬壳海浪蟹
(@CGUID+13, 0, 19608, 50331648, 257, 0, 0, 0, 0, ''), -- -Unknown-
(@CGUID+14, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- -Unknown-
(@CGUID+15, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 硬壳海浪蟹
(@CGUID+16, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 硬壳海浪蟹
(@CGUID+17, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- -Unknown-
(@CGUID+18, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 硬壳海浪蟹
(@CGUID+19, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 硬壳海浪蟹
(@CGUID+20, 0, 19608, 50331648, 257, 0, 0, 0, 0, ''), -- -Unknown-
(@CGUID+21, 0, 19608, 50331648, 257, 0, 0, 0, 0, ''), -- -Unknown-
(@CGUID+22, 0, 19608, 50331648, 257, 0, 0, 0, 0, ''), -- -Unknown-
(@CGUID+23, 0, 1566, 50331648, 1, 0, 0, 0, 0, ''), -- -Unknown-
(@CGUID+24, 0, 1566, 50331648, 1, 0, 0, 0, 0, ''), -- -Unknown-
(@CGUID+25, 0, 1566, 50331648, 1, 0, 0, 0, 0, ''), -- -Unknown-
(@CGUID+26, 0, 1566, 50331648, 1, 0, 0, 0, 0, ''), -- -Unknown-
(@CGUID+27, 0, 1566, 50331648, 1, 0, 0, 0, 0, ''), -- -Unknown-
(@CGUID+28, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 硬壳海浪蟹
(@CGUID+29, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 硬壳海浪蟹
(@CGUID+30, 0, 1566, 50331648, 1, 0, 0, 0, 0, ''), -- -Unknown-
(@CGUID+31, 0, 1566, 50331648, 1, 0, 0, 0, 0, ''), -- -Unknown-
(@CGUID+32, 0, 1566, 50331648, 1, 0, 0, 0, 0, ''), -- -Unknown-
(@CGUID+33, 0, 1566, 50331648, 1, 0, 0, 0, 0, ''), -- -Unknown-
(@CGUID+34, 0, 1566, 50331648, 1, 0, 0, 0, 0, ''), -- -Unknown-
(@CGUID+35, 0, 19608, 50331648, 257, 0, 0, 0, 0, ''), -- -Unknown-
(@CGUID+36, 0, 19608, 50331648, 257, 0, 0, 0, 0, ''), -- -Unknown-
(@CGUID+37, 0, 19608, 50331648, 257, 0, 0, 0, 0, ''), -- -Unknown-
(@CGUID+38, 0, 19608, 50331648, 257, 0, 0, 0, 0, ''), -- -Unknown-
(@CGUID+39, 0, 19608, 50331648, 257, 0, 0, 0, 0, ''); -- -Unknown-


SET @CGUID = 443493;
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+11;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+0, 122065, 1, 14, 4982, 1, '11695', 0, 0, 0, 1382.197, -5044.78, 2.920438, 4.236743, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- 女伯爵莉亚德琳 (Area: -Unknown- - Difficulty: 0)
(@CGUID+1, 40891, 1, 14, 4982, 1, '11695', 0, 0, 0, 1390.208, -4919.457, 11.42539, 3.205439, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- -Unknown- (Area: -Unknown- - Difficulty: 0)
(@CGUID+2, 49837, 1, 14, 4982, 1, '11695', 0, 0, 0, 1370.925, -4961.067, 2.143142, 3.741962, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- -Unknown- (Area: -Unknown- - Difficulty: 0)
(@CGUID+3, 124370, 1, 14, 4982, 1, '11695', 0, 0, 0, 1383.394, -5002.798, 3.481735, 4.816267, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- 库卡隆猎头者 (Area: -Unknown- - Difficulty: 0)
(@CGUID+4, 3296, 1, 14, 4982, 1, '11695', 0, 0, 0, 1444.422, -5016.543, 12.16008, 1.692844, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- -Unknown- (Area: -Unknown- - Difficulty: 0) (Auras: )
(@CGUID+5, 86884, 1, 14, 4982, 1, '11695', 0, 0, 0, 1463.828, -5010.762, 11.91627, 6.038839, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- 暗矛拥护者 (Area: -Unknown- - Difficulty: 0)
(@CGUID+6, 124367, 1, 14, 4982, 1, '11695', 0, 0, 0, 1377.917, -5004.172, 3.40875, 4.810535, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- 舰队司令扎戈夫 (Area: -Unknown- - Difficulty: 0)
(@CGUID+7, 88750, 1, 14, 4982, 1, '11695', 0, 0, 0, 1464.589, -5014.644, 11.90094, 0.4363323, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- 迅猛龙 (Area: -Unknown- - Difficulty: 0)
(@CGUID+8, 124373, 1, 14, 4982, 1, '11695', 0, 0, 0, 1376.224, -5018.644, 2.709967, 4.740976, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- 逐日号高阶卫士 (Area: -Unknown- - Difficulty: 0)
(@CGUID+9, 124370, 1, 14, 4982, 1, '11695', 0, 0, 0, 1372.875, -5003.559, 3.481912, 4.816267, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- 库卡隆猎头者 (Area: -Unknown- - Difficulty: 0)
(@CGUID+10, 124434, 1, 14, 4982, 1, '11695', 0, 0, 0, 1381.789, -5018.289, 2.709998, 4.740976, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- 逐日号高阶卫士 (Area: -Unknown- - Difficulty: 0)
(@CGUID+11, 124373, 1, 14, 4982, 1, '11695', 0, 0, 0, 1370.864, -5030.2, 2.560543, 1.655265, 120, 0, 0, 0, 0, 0, 0, 0, 0, 27326); -- 逐日号高阶卫士 (Area: -Unknown- - Difficulty: 0)

DELETE FROM `creature_addon` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+11;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(@CGUID+0, 0, 0, 0, 0, 0, 0, 0, 0, ''), 
(@CGUID+1, 0, 0, 0, 257, 0, 0, 0, 0, ''), 
(@CGUID+2, 0, 0, 0, 1, 0, 0, 0, 0, ''), 
(@CGUID+3, 0, 0, 0, 2, 0, 0, 0, 0, ''), 
(@CGUID+4, 0, 0, 0, 257, 0, 0, 0, 0, ''),
(@CGUID+5, 0, 0, 0, 1, 0, 0, 0, 0, ''), 
(@CGUID+6, 0, 0, 0, 0, 0, 0, 0, 0, ''), 
(@CGUID+7, 0, 0, 0, 1, 0, 0, 0, 0, ''), 
(@CGUID+8, 0, 0, 0, 0, 0, 0, 0, 0, ''), 
(@CGUID+9, 0, 0, 0, 2, 0, 0, 0, 0, ''),
(@CGUID+10, 0, 0, 0, 0, 0, 0, 0, 0, ''), 
(@CGUID+11, 0, 0, 0, 1, 0, 0, 0, 0, ''); 

SET @OGUID = 101434;
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+7;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(@OGUID+0, 293961, 1, 14, 4982, 1, '0', 0, 1363.781, -4746.018, 28.09028, 3.360452, 0, 0, -0.9940186, 0.1092114, 120, 255, 1, 27326), -- 长椅 (Area: -Unknown- - Difficulty: 0)
(@OGUID+1, 293961, 1, 14, 4982, 1, '0', 0, 1355.446, -4737.952, 28.08782, 3.360452, 0, 0, -0.9940186, 0.1092114, 120, 255, 1, 27326), -- 长椅 (Area: -Unknown- - Difficulty: 0)
(@OGUID+2, 293961, 1, 14, 4982, 1, '0', 0, 1360.778, -4746.58, 28.08139, 3.360452, 0, 0, -0.9940186, 0.1092114, 120, 255, 1, 27326), -- 长椅 (Area: -Unknown- - Difficulty: 0)
(@OGUID+3, 293961, 1, 14, 4982, 1, '0', 0, 1361.653, -4736.653, 28.09441, 3.360452, 0, 0, -0.9940186, 0.1092114, 120, 255, 1, 27326), -- 长椅 (Area: -Unknown- - Difficulty: 0)
(@OGUID+4, 293961, 1, 14, 4982, 1, '0', 0, 1358.679, -4737.253, 28.08225, 3.360452, 0, 0, -0.9940186, 0.1092114, 120, 255, 1, 27326), -- 长椅 (Area: -Unknown- - Difficulty: 0)
(@OGUID+5, 269836, 1, 14, 4982, 1, '0', 0, 1380.22, -5041.241, -1.870417, 1.64869, 0, 0, 0.7341032, 0.6790379, 120, 255, 1, 27326), -- -Unknown- (Area: -Unknown- - Difficulty: 0)
(@OGUID+6, 293961, 1, 14, 4982, 1, '0', 0, 1357.545, -4747.278, 28.092, 3.360452, 0, 0, -0.9940186, 0.1092114, 120, 255, 1, 27326), -- 长椅 (Area: -Unknown- - Difficulty: 0)
(@OGUID+7, 269837, 1, 14, 4982, 1, '0', 0, 1401.288, -5019.217, 5.444355, 4.772673, 0.2616735, -0.2623053, -0.6333103, 0.6794417, 120, 255, 1, 27326); -- 斜坡 (Area: -Unknown- - Difficulty: 0)


DELETE FROM `creature_template_addon` WHERE `entry` IN (141963 /*141963, 141968 /*141968*/, 141707 /*141707*/, 141652 /*141652*/, 142154 /*142154*/, 141706 /*141706*/, 141804 /*141804*/, 141845 /*141845*/, 141826 /*141826*/, 143509 /*143509 - -Unknown-*/, 141767 /*141767*/, 114131 /*114131*/, 141920 /*141920 (旅行的儿子)*/, 141912 /*141912 (旅行的战士)*/, 141528 /*141528*/, 141691 /*141691*/, 141693 /*141693*/, 141702 /*141702*/, 140224 /*140224 - -Unknown-*/, 141705 /*141705*/, 141647 /*141647 - -Unknown-, -Unknown-*/, 135202 /*135202*/, 137762 /*137762*/, 141119 /*141119*/);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(141963, 0, 0, 0, 257, 0, 0, 0, 0, '227771'), -- 141963  - -Unknown-
(141968, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 141968 
(141707, 0, 1566, 50331648, 1, 0, 0, 0, 0, ''), -- 141707
(141652, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 141652
(142154, 0, 29260, 0, 257, 0, 0, 0, 0, ''), -- 142154 
(141706, 0, 19608, 0, 257, 0, 0, 0, 0, ''), -- 141706
(141804, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 141804
(141845, 0, 0, 1, 256, 0, 0, 0, 0, ''), -- 141845
(141826, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 141826
(143509, 0, 0, 0, 1, 0, 0, 0, 0, '98892'), -- 143509 - -Unknown-
(141767, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 141767
(114131, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 114131
(141920, 0, 0, 0, 2, 0, 0, 0, 0, ''), -- 141920 (旅行的儿子)
(141912, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 141912 
(141528, 0, 0, 0, 257, 0, 0, 0, 0, ''), -- 141528
(141691, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 141691
(141693, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 141693
(141702, 0, 0, 1, 1, 0, 0, 0, 0, ''), -- 141702
(140224, 0, 0, 8, 1, 0, 0, 0, 0, '248261'), -- 140224 - -Unknown-
(141705, 0, 0, 3, 1, 0, 0, 0, 0, ''), -- 141705
(141647, 0, 0, 0, 1, 0, 0, 0, 0, '244971 192746'), -- 141647 - -Unknown-, -Unknown-
(135202, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 135202
(137762, 0, 0, 0, 1, 0, 0, 0, 0, ''), -- 137762
(141119, 0, 0, 0, 1, 0, 0, 0, 0, ''); -- 141119

UPDATE `creature_template_addon` SET `bytes1`=1 WHERE `entry`=126043; -- 126043
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=122131; -- 122131 
UPDATE `creature_template_addon` SET `auras`='79968' WHERE `entry`=122130; -- 122130
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=121757; -- 121757 
UPDATE `creature_template_addon` SET `bytes2`=0 WHERE `entry`=124367; -- 124367 
UPDATE `creature_template_addon` SET `bytes2`=2 WHERE `entry`=124370; -- 124370 

UPDATE `creature_template_addon` SET `bytes2`=257, `emote`=0 WHERE `entry`=62194; -- 62194 
UPDATE `creature_template_addon` SET `bytes1`=0 WHERE `entry`=25081; -- 25081
UPDATE `creature_template_addon` SET `bytes1`=0 WHERE `entry`=25080; -- 25080 
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=133271; -- 133271
UPDATE `creature_template_addon` SET `auras`='82612' WHERE `entry`=44158; -- 44158
UPDATE `creature_template_addon` SET `bytes1`=0 WHERE `entry`=3329; -- 3329
UPDATE `creature_template_addon` SET `emote`=0 WHERE `entry`=96708; -- 96708
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=96803; -- 96803
UPDATE `creature_template_addon` SET `emote`=0 WHERE `entry`=96698; -- 96698
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=106655; -- 106655
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=93189; -- 93189
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=93188; -- 93188
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=92184; -- 92184
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=96841; -- 96841
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=96840; -- 96840
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=32453; -- 32453
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=92185; -- 92185
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=92438; -- 92438
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=92936; -- 92936
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=113775; -- 113775
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=112007; -- 112007
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=96809; -- 96809
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=96835; -- 96835
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=96834; -- 96834
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=97863; -- 97863
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=96781; -- 96781
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=112012; -- 112012
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=17213; -- 17213
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=97520; -- 97520
UPDATE `creature_template_addon` SET `bytes1`=1, `bytes2`=1, `auras`='' WHERE `entry`=108687; -- 108687
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=96805; -- 96805
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=32494; -- 32494
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=96785; -- 96785
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=112543; -- 112543
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=112545; -- 112545
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=96782; -- 96782
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=96784; -- 96784
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=96797; -- 96797
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=96813; -- 96813
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=93536; -- 93536
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=109554; -- 109554
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=96796; -- 96796
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=96798; -- 96798
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=112847; -- 112847
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=109387; -- 109387
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=109390; -- 109390
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=93537; -- 93537
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=114732; -- 114732
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=96799; -- 96799
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=106262; -- 106262
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=103630; -- 103630
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=96641; -- 96641
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=96636; -- 96636
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=106263; -- 106263
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=96639; -- 96639
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=96829; -- 96829
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=96830; -- 96830
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=7395; -- 7395
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=74228; -- 74228
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=121541; -- 121541

DELETE FROM `creature_template_scaling` WHERE `Entry` IN (122918, 125270, 123350, 122219, 126043, 127476, 127163, 123139, 126307, 126425, 126390, 120845, 126022, 125522, 123395, 125520, 125518, 125519, 125525, 125521, 125517, 126030, 125909, 125910, 125524, 126389, 122045, 122046, 120979, 120977, 122202, 122201, 122052, 122200, 121755, 122197, 122199, 122196, 122133, 120978, 125843, 125523, 121754, 121753, 121775, 121757, 121758, 122067, 122066, 121756, 124434, 124373, 124367, 124370, 122065, 3108, 141963, 3123, 141968, 141707, 141652, 142154, 141706, 3100, 141804, 141845, 141826, 143509, 141767, 3204, 3127, 3197, 3198, 5822, 141912, 92553, 107622, 113812, 112130, 96841, 96840, 112227, 115264, 96954, 96959, 96953, 120687, 32725, 112947, 96957, 96956, 110621, 96952, 113775, 110622, 96835, 96834, 106843, 97863, 125261, 112012, 107590, 109739, 118524, 99350, 106951, 116175, 119486, 110642, 96958, 96955, 119272, 119487, 105904, 96828, 96827, 96837, 96836, 109554, 112847, 109387, 109390, 114732, 103630, 103626, 96641, 96636, 96635, 96843, 96842, 96639, 96592, 96786, 96829, 96830, 113780, 113783, 121602, 96643, 141691, 141693, 141702, 140224, 141705, 135202, 137762, 121541, 141119);
INSERT INTO `creature_template_scaling` (`Entry`, `LevelScalingMin`, `LevelScalingMax`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `VerifiedBuild`) VALUES
(122918, 110, 110, 0, 0, 27326),
(125270, 110, 110, 0, 0, 27326),
(123350, 110, 110, 0, 0, 27326),
(122219, 110, 110, 0, 0, 27326),
(126043, 110, 110, 0, 0, 27326),
(127476, 110, 110, 0, 0, 27326),
(127163, 110, 110, 0, 0, 27326),
(123139, 110, 110, 0, 0, 27326),
(126307, 110, 110, 0, 0, 27326),
(126425, 110, 110, 0, 0, 27326),
(126390, 110, 110, 0, 0, 27326),
(120845, 110, 110, 0, 0, 27326),
(126022, 110, 110, 0, 0, 27326),
(125522, 110, 110, 0, 0, 27326),
(123395, 110, 110, 0, 0, 27326),
(125520, 110, 110, 0, 0, 27326),
(125518, 110, 110, 0, 0, 27326),
(125519, 110, 110, 0, 0, 27326),
(125525, 110, 110, 0, 0, 27326),
(125521, 110, 110, 0, 0, 27326),
(125517, 110, 110, 0, 0, 27326),
(126030, 110, 110, 0, 0, 27326),
(125909, 110, 110, 0, 0, 27326),
(125910, 110, 110, 0, 0, 27326),
(125524, 110, 110, 0, 0, 27326),
(126389, 110, 110, 0, 0, 27326),
(122045, 110, 110, 0, 0, 27326),
(122046, 110, 110, 0, 0, 27326),
(120979, 110, 110, 3, 3, 27326),
(120977, 110, 110, 0, 0, 27326),
(122202, 110, 110, 0, 0, 27326),
(122201, 110, 110, 0, 0, 27326),
(122052, 110, 110, 0, 0, 27326),
(122200, 110, 110, 0, 0, 27326),
(121755, 110, 110, 0, 0, 27326),
(122197, 110, 110, 0, 0, 27326),
(122199, 110, 110, 0, 0, 27326),
(122196, 110, 110, 0, 0, 27326),
(122133, 110, 110, 0, 0, 27326),
(120978, 110, 110, 2, 2, 27326),
(125843, 110, 110, 0, 0, 27326),
(125523, 110, 110, 0, 0, 27326),
(121754, 110, 110, 0, 0, 27326),
(121753, 110, 110, 0, 0, 27326),
(121775, 110, 110, 0, 0, 27326),
(121757, 110, 110, 0, 0, 27326),
(121758, 110, 110, 0, 0, 27326),
(122067, 110, 110, 0, 0, 27326),
(122066, 110, 110, 0, 0, 27326),
(121756, 110, 110, 0, 0, 27326),
(124434, 110, 110, 0, 0, 27326),
(124373, 110, 110, 0, 0, 27326),
(124367, 110, 110, 0, 0, 27326),
(124370, 110, 110, 0, 0, 27326),
(122065, 110, 110, 0, 0, 27326),
(3108, 5, 20, 0, 1, 27326),
(141963, 110, 120, 0, 0, 27326),
(3123, 5, 20, 1, 1, 27326),
(141968, 110, 120, 0, 0, 27326),
(141707, 110, 120, 0, 0, 27326),
(141652, 110, 110, 0, 0, 27326),
(142154, 110, 120, 0, 0, 27326),
(141706, 110, 120, 0, 0, 27326),
(3100, 5, 20, -1, 0, 27326),
(141804, 110, 120, 0, 0, 27326),
(141845, 110, 120, 0, 0, 27326),
(141826, 110, 120, 0, 0, 27326),
(143509, 110, 120, 0, 0, 27326),
(141767, 110, 120, 0, 0, 27326),
(3204, 5, 20, 0, 0, 27326),
(3127, 5, 20, 0, 0, 27326),
(3197, 5, 20, -1, 0, 27326),
(3198, 5, 20, -1, 0, 27326),
(5822, 5, 20, 2, 2, 27326),
(141912, 110, 120, 0, 0, 27326),
(92553, 110, 110, 0, 0, 27326),
(107622, 98, 110, 0, 0, 27326),
(113812, 110, 110, 0, 0, 27326),
(112130, 98, 110, 0, 0, 27326),
(96841, 110, 110, 0, 0, 27326),
(96840, 110, 110, 0, 0, 27326),
(112227, 98, 110, 0, 0, 27326),
(115264, 110, 110, 0, 0, 27326),
(96954, 110, 110, 0, 0, 27326),
(96959, 110, 110, 0, 0, 27326),
(96953, 110, 110, 0, 0, 27326),
(120687, 110, 110, 0, 0, 27326),
(32725, 110, 110, 0, 0, 27326),
(112947, 110, 110, 0, 0, 27326),
(96957, 110, 110, 0, 0, 27326),
(96956, 110, 110, 0, 0, 27326),
(110621, 110, 110, 0, 0, 27326),
(96952, 110, 110, 0, 0, 27326),
(113775, 110, 110, 0, 0, 27326),
(110622, 110, 110, 0, 0, 27326),
(96835, 110, 110, 0, 0, 27326),
(96834, 110, 110, 0, 0, 27326),
(106843, 110, 110, 0, 0, 27326),
(97863, 98, 110, 0, 0, 27326),
(125261, 110, 110, 0, 0, 27326),
(112012, 110, 110, 0, 0, 27326),
(107590, 110, 110, 0, 0, 27326),
(109739, 110, 110, 0, 0, 27326),
(118524, 110, 110, 0, 0, 27326),
(99350, 110, 110, 0, 0, 27326),
(106951, 110, 110, 0, 0, 27326),
(116175, 110, 110, 0, 0, 27326),
(119486, 110, 110, 0, 0, 27326),
(110642, 110, 110, 0, 0, 27326),
(96958, 110, 110, 0, 0, 27326),
(96955, 110, 110, 0, 0, 27326),
(119272, 110, 110, 0, 0, 27326),
(119487, 110, 110, 0, 0, 27326),
(105904, 98, 110, 0, 0, 27326),
(96828, 110, 110, 0, 0, 27326),
(96827, 110, 110, 0, 0, 27326),
(96837, 110, 110, 0, 0, 27326),
(96836, 110, 110, 0, 0, 27326),
(109554, 110, 110, 0, 0, 27326),
(112847, 110, 110, 0, 0, 27326),
(109387, 110, 110, 0, 0, 27326),
(109390, 110, 110, 0, 0, 27326),
(114732, 110, 110, 0, 0, 27326),
(103630, 110, 110, 0, 0, 27326),
(103626, 110, 110, 0, 0, 27326),
(96641, 98, 110, 0, 0, 27326),
(96636, 98, 110, 0, 0, 27326),
(96635, 98, 110, 0, 0, 27326),
(96843, 110, 110, 0, 0, 27326),
(96842, 110, 110, 0, 0, 27326),
(96639, 98, 110, 0, 0, 27326),
(96592, 98, 110, 0, 0, 27326),
(96786, 110, 110, 0, 0, 27326),
(96829, 110, 110, 0, 0, 27326),
(96830, 110, 110, 0, 0, 27326),
(113780, 110, 110, 0, 0, 27326),
(113783, 110, 110, 0, 0, 27326),
(121602, 110, 110, 0, 0, 27326),
(96643, 98, 110, 0, 0, 27326),
(141691, 110, 110, 0, 0, 27326),
(141693, 110, 110, 0, 0, 27326),
(141702, 110, 110, 0, 0, 27326),
(140224, 110, 110, 0, 0, 27326),
(141705, 110, 110, 0, 0, 27326),
(135202, 110, 120, 0, 0, 27326),
(137762, 110, 120, 0, 0, 27326),
(121541, 110, 110, 0, 0, 27326),
(141119, 110, 110, 0, 0, 27326);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=27326 WHERE `Entry`=127518;
UPDATE `creature_template_scaling` SET `VerifiedBuild`=27326 WHERE `Entry`=127151;
UPDATE `creature_template_scaling` SET `VerifiedBuild`=27326 WHERE `Entry`=127120;
UPDATE `creature_template_scaling` SET `VerifiedBuild`=27326 WHERE `Entry`=121421;
UPDATE `creature_template_scaling` SET `VerifiedBuild`=27326 WHERE `Entry`=121417;
UPDATE `creature_template_scaling` SET `VerifiedBuild`=27326 WHERE `Entry`=121410;
UPDATE `creature_template_scaling` SET `VerifiedBuild`=27326 WHERE `Entry`=121308;
UPDATE `creature_template_scaling` SET `VerifiedBuild`=27326 WHERE `Entry`=121264;
UPDATE `creature_template_scaling` SET `VerifiedBuild`=27326 WHERE `Entry`=121261;
UPDATE `creature_template_scaling` SET `VerifiedBuild`=27326 WHERE `Entry`=120885;
UPDATE `creature_template_scaling` SET `VerifiedBuild`=27326 WHERE `Entry`=121262;
UPDATE `creature_template_scaling` SET `VerifiedBuild`=27326 WHERE `Entry`=121263;
UPDATE `creature_template_scaling` SET `VerifiedBuild`=27326 WHERE `Entry`=126172;
UPDATE `creature_template_scaling` SET `VerifiedBuild`=27326 WHERE `Entry`=122131;
UPDATE `creature_template_scaling` SET `VerifiedBuild`=27326 WHERE `Entry`=122130;
UPDATE `creature_template_scaling` SET `VerifiedBuild`=27326 WHERE `Entry`=121423;
UPDATE `creature_template_scaling` SET `LevelScalingMin`=110, `LevelScalingMax`=110, `VerifiedBuild`=27326 WHERE `Entry`=133271;
UPDATE `creature_template_scaling` SET `VerifiedBuild`=27326 WHERE `Entry`=96708;
UPDATE `creature_template_scaling` SET `VerifiedBuild`=27326 WHERE `Entry`=96698;
UPDATE `creature_template_scaling` SET `VerifiedBuild`=27326 WHERE `Entry`=58237;
UPDATE `creature_template_scaling` SET `VerifiedBuild`=27326 WHERE `Entry`=108710;
UPDATE `creature_template_scaling` SET `VerifiedBuild`=27326 WHERE `Entry`=108401;
UPDATE `creature_template_scaling` SET `VerifiedBuild`=27326 WHERE `Entry`=107772;
UPDATE `creature_template_scaling` SET `VerifiedBuild`=27326 WHERE `Entry`=112543;
UPDATE `creature_template_scaling` SET `VerifiedBuild`=27326 WHERE `Entry`=112545;
UPDATE `creature_template_scaling` SET `VerifiedBuild`=27326 WHERE `Entry`=106262;
UPDATE `creature_template_scaling` SET `VerifiedBuild`=27326 WHERE `Entry`=111246;
UPDATE `creature_template_scaling` SET `VerifiedBuild`=27326 WHERE `Entry`=106263;

DELETE FROM `creature_model_info` WHERE `DisplayID` IN (87450, 78330, 78328, 87586, 87440, 87474, 87448, 87470, 87472, 87441, 87447, 87461, 87446, 87473, 87460, 87439, 87435, 87513, 88370, 78313, 88368, 88371, 78329);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES
(87450, 0.306, 1.5, 0, 27326),
(78330, 0.4596, 1.8, 0, 27326),
(78328, 0.4596, 1.8, 0, 27326),
(87586, 0.372, 1.5, 0, 27326),
(87440, 0.236, 1.5, 0, 27326),
(87474, 0.383, 1.5, 0, 27326),
(87448, 0.306, 1.5, 0, 27326),
(87470, 0.383, 1.5, 0, 27326),
(87472, 0.383, 1.5, 0, 27326),
(87441, 0.236, 1.5, 0, 27326),
(87447, 0.306, 1.5, 0, 27326),
(87461, 0.9747, 4.05, 0, 27326),
(87446, 0.306, 1.5, 0, 27326),
(87473, 0.383, 1.5, 0, 27326),
(87460, 0.9747, 4.05, 0, 27326),
(87439, 0.372, 1.5, 0, 27326),
(87435, 0.372, 1.5, 0, 27326),
(87513, 0.372, 1.5, 0, 27326),
(88370, 0.6357618, 1.5, 0, 27326),
(78313, 0.465, 1.875, 0, 27326),
(88368, 0.4031198, 1.5, 0, 27326),
(88371, 0.6357618, 1.5, 0, 27326),
(78329, 0.4596, 1.8, 0, 27326);

UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=79483;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=77147;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=74097;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=39810;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=77286;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=78663;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=78661;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=79278;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=79447;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=78395;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=79263;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=78097;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=74100;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=76422;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=80784;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=27824;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=78910;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=78659;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=17882;
UPDATE `creature_model_info` SET `BoundingRadius`=0.306, `CombatReach`=1.5, `VerifiedBuild`=27326 WHERE `DisplayID`=74101;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=78521;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=74096;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=74098;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=71155;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=78896;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=77656;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=71801;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=72975;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=71764;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=17822;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=71285;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=76255;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=71287;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=78757;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=71284;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=16624;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=71286;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=71289;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=71288;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=70928;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=76685;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=78610;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=78607;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=79815;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=74146;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=78609;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=79814;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=79812;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=78608;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=79813;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=28222;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=71154;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=70927;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=5565;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=48526;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=26998;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=55345;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=26997;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=53107;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=27331;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=21798;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=68890;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=26770;
UPDATE `creature_model_info` SET `BoundingRadius`=1.65039, `VerifiedBuild`=27326 WHERE `DisplayID`=64629;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=76352;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=78002;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=32178;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=4878;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=32177;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=77996;
UPDATE `creature_model_info` SET `BoundingRadius`=1.586356, `VerifiedBuild`=27326 WHERE `DisplayID`=6468;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=77970;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=60030;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=48528;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=61971;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=32529;
UPDATE `creature_model_info` SET `BoundingRadius`=0.8148559, `VerifiedBuild`=27326 WHERE `DisplayID`=999;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=704;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=73050;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=73049;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=32170;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=73052;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=46132;
UPDATE `creature_model_info` SET `BoundingRadius`=0.306, `CombatReach`=1.5, `VerifiedBuild`=27326 WHERE `DisplayID`=73051;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=3027;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=1959;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=29310;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=32173;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=34208;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=34207;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=32171;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=46130;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=193;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=46940;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=4515;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=32172;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=28047;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=240;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=2732;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=4193;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=1560;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=4190;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=4192;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=4191;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=4594;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=73128;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=4384;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=1321;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=1317;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=1386;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=1385;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=1315;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=38800;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=33303;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=38047;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=22769;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=14415;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=39809;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=47231;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=42386;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=38804;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=1391;
UPDATE `creature_model_info` SET `BoundingRadius`=0.1820889, `VerifiedBuild`=27326 WHERE `DisplayID`=20545;
UPDATE `creature_model_info` SET `BoundingRadius`=0.2557212, `VerifiedBuild`=27326 WHERE `DisplayID`=901;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=14499;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=32925;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=35237;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=35236;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=3850;
UPDATE `creature_model_info` SET `BoundingRadius`=0.3447, `CombatReach`=1.35, `VerifiedBuild`=27326 WHERE `DisplayID`=27599;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=1390;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=15781;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=1381;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=34932;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=1367;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=4386;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=7136;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=7135;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=38418;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=1366;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=14616;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=10472;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=1393;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=35242;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=35243;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=36584;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=1394;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=37722;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=35244;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=6839;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=35241;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=10589;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=22873;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=62532;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=64332;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=22743;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=22740;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=22739;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=22750;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=22746;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=22745;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=22744;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=64259;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=32937;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=12229;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=71669;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=35766;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=32938;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=32936;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=14589;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=34109;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=13341;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=4534;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=34113;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=34112;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=30501;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=34110;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=34111;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=34114;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=83227;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=15322;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=34046;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=1322;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=2141;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=34059;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=9391;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=8572;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=34058;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=34045;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=16009;
UPDATE `creature_model_info` SET `BoundingRadius`=0.383, `CombatReach`=1.5, `VerifiedBuild`=27326 WHERE `DisplayID`=27598;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=2811;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=2670;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=29569;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=4546;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=3883;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=2668;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=6228;
UPDATE `creature_model_info` SET `BoundingRadius`=0.40215, `CombatReach`=1.575, `VerifiedBuild`=27326 WHERE `DisplayID`=27597;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=64307;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=29396;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=81476;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=24164;
UPDATE `creature_model_info` SET `BoundingRadius`=0.425056, `VerifiedBuild`=27326 WHERE `DisplayID`=20923;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=15470;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=4368;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=72816;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=62531;
UPDATE `creature_model_info` SET `BoundingRadius`=0.425056, `CombatReach`=0.3, `VerifiedBuild`=27326 WHERE `DisplayID`=44816;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=5905;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=5705;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=37437;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=1311;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=31988;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=33699;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=17700;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=17701;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=17699;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=37020;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=31760;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=33700;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=34185;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=17719;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=17721;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=17720;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=9392;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=33701;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=34184;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=33698;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=34047;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=17722;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=30413;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=10186;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=34049;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=42389;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=61027;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=18678;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=61026;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=1334;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=61763;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=4492;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=1330;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=4449;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=55538;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=4073;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=35497;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=4354;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=1335;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=1328;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=1327;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=4545;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=4355;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=1331;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=1329;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=3758;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=4108;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=61028;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=56698;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=35504;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=35499;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=35500;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=35498;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=26103;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=25596;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=62155;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=27961;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=79000;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=62151;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=70201;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=39555;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=25598;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=70903;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=70532;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=72956;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=26413;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=60926;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=60927;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=65834;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=46694;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=48278;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=26442;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=26300;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=69682;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=60924;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=35280;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=64586;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=26339;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=28146;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=28163;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=73730;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=46697;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=36904;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=32991;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=35818;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=3714;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=28151;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=75912;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=65257;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=65227;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=23337;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=72465;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=36906;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=34635;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=71596;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=36907;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=63038;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=26330;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=72945;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=71597;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=26437;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=71942;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=25882;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=28144;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=28148;
UPDATE `creature_model_info` SET `BoundingRadius`=0.1386848, `VerifiedBuild`=27326 WHERE `DisplayID`=5556;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=18052;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=74200;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=74194;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=74199;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=72078;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=68483;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=68484;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=65477;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=65173;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=25955;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=26396;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=27952;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=78398;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=72074;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=71943;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=27954;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=25674;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=16910;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=65252;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=67001;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=65354;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=65370;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=65412;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=74782;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=70334;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=72095;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=65424;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=69790;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=74087;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=25041;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=75301;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=64759;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=25673;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=27955;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=71599;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=33542;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=36905;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=75130;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=26395;
UPDATE `creature_model_info` SET `BoundingRadius`=0.1335464, `VerifiedBuild`=27326 WHERE `DisplayID`=80;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=75302;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=42872;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=27287;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=25605;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=28160;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=28159;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=26440;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=72103;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=72104;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=27915;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=26441;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=28143;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=28161;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=67362;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=22003;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=25595;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=26394;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=71019;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=27616;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=27019;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=72344;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=47999;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=27960;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=71017;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=71088;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=27448;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=15180;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=65243;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=27959;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=47997;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=69154;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=27592;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=34172;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=44578;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=25983;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=25807;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=25806;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=69627;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=60156;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=65101;
UPDATE `creature_model_info` SET `BoundingRadius`=0.5, `CombatReach`=0.5, `VerifiedBuild`=27326 WHERE `DisplayID`=27682;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=69150;
UPDATE `creature_model_info` SET `BoundingRadius`=0.2557212, `VerifiedBuild`=27326 WHERE `DisplayID`=1924;
UPDATE `creature_model_info` SET `BoundingRadius`=0.1386848, `VerifiedBuild`=27326 WHERE `DisplayID`=5554;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=56704;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=27720;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=64331;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=28147;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=28156;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=27657;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=52659;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=15918;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=64049;
UPDATE `creature_model_info` SET `BoundingRadius`=0.2, `VerifiedBuild`=27326 WHERE `DisplayID`=27881;
UPDATE `creature_model_info` SET `BoundingRadius`=0.1386848, `VerifiedBuild`=27326 WHERE `DisplayID`=9990;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=25607;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=1206;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=26299;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=25875;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=20833;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=26307;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=25947;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=28162;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=28155;
UPDATE `creature_model_info` SET `BoundingRadius`=0.1069299, `VerifiedBuild`=27326 WHERE `DisplayID`=1072;
UPDATE `creature_model_info` SET `BoundingRadius`=0.2557212, `VerifiedBuild`=27326 WHERE `DisplayID`=6295;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=1669;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=5777;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=25791;
UPDATE `creature_model_info` SET `BoundingRadius`=0.1386848, `VerifiedBuild`=27326 WHERE `DisplayID`=5585;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=69926;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=65714;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=27822;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=2954;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=59537;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=17170;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=28157;
UPDATE `creature_model_info` SET `BoundingRadius`=1, `CombatReach`=1, `VerifiedBuild`=27326 WHERE `DisplayID`=67808;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=68480;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=58842;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=64048;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=21072;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=37328;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=37330;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=3130;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=2789;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=37331;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=37329;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=2652;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=3945;
UPDATE `creature_model_info` SET `BoundingRadius`=0.92314, `VerifiedBuild`=27326 WHERE `DisplayID`=10720;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=2613;
UPDATE `creature_model_info` SET `BoundingRadius`=0.462922, `VerifiedBuild`=27326 WHERE `DisplayID`=10670;
UPDATE `creature_model_info` SET `BoundingRadius`=0.462922, `VerifiedBuild`=27326 WHERE `DisplayID`=29130;
UPDATE `creature_model_info` SET `BoundingRadius`=0.92314, `VerifiedBuild`=27326 WHERE `DisplayID`=29754;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=4009;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=21342;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=7632;
UPDATE `creature_model_info` SET `BoundingRadius`=0.462922, `VerifiedBuild`=27326 WHERE `DisplayID`=10672;
UPDATE `creature_model_info` SET `BoundingRadius`=0.462922, `VerifiedBuild`=27326 WHERE `DisplayID`=10671;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=2177;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=31738;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=49781;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=36598;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=36615;
UPDATE `creature_model_info` SET `BoundingRadius`=0.1713126, `VerifiedBuild`=27326 WHERE `DisplayID`=8971;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=28118;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=28120;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=31841;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=31840;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=5205;
UPDATE `creature_model_info` SET `BoundingRadius`=2.395869, `VerifiedBuild`=27326 WHERE `DisplayID`=10699;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=42722;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=42720;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=61024;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=36583;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=3609;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=3608;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=3606;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=8848;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=2643;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=34143;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=34141;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=7995;
UPDATE `creature_model_info` SET `BoundingRadius`=0.383, `CombatReach`=1.5, `VerifiedBuild`=27326 WHERE `DisplayID`=4006;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=11686;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=31737;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=1320;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=61023;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=7137;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=3604;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=34136;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=5706;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=2627;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=2640;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=1318;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=4260;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=34139;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=3605;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=14413;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=34144;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=1310;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=36585;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=42385;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=4601;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=4259;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=27823;
UPDATE `creature_model_info` SET `BoundingRadius`=0.1713126, `VerifiedBuild`=27326 WHERE `DisplayID`=7511;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=4356;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=4602;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=51613;
UPDATE `creature_model_info` SET `BoundingRadius`=0.1713126, `VerifiedBuild`=27326 WHERE `DisplayID`=15468;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=2635;
UPDATE `creature_model_info` SET `BoundingRadius`=0.1713126, `VerifiedBuild`=27326 WHERE `DisplayID`=15467;
UPDATE `creature_model_info` SET `VerifiedBuild`=27326 WHERE `DisplayID`=1313;

DELETE FROM `creature_equip_template` WHERE (`CreatureID`=141963 AND `ID`=1) OR (`CreatureID`=141707 AND `ID`=1) OR (`CreatureID`=141652 AND `ID`=1) OR (`CreatureID`=142154 AND `ID`=1) OR (`CreatureID`=141706 AND `ID`=1) OR (`CreatureID`=141804 AND `ID`=2) OR (`CreatureID`=141826 AND `ID`=2) OR (`CreatureID`=141767 AND `ID`=2) OR (`CreatureID`=141804 AND `ID`=1) OR (`CreatureID`=141845 AND `ID`=1) OR (`CreatureID`=141826 AND `ID`=1) OR (`CreatureID`=141767 AND `ID`=1) OR (`CreatureID`=141920 AND `ID`=1) OR (`CreatureID`=141912 AND `ID`=1) OR (`CreatureID`=141691 AND `ID`=1) OR (`CreatureID`=141693 AND `ID`=1) OR (`CreatureID`=141702 AND `ID`=1) OR (`CreatureID`=141705 AND `ID`=1);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES
(141963, 1, 13631, 0, 0, 0, 0, 0, 0, 0, 0), 
(141707, 1, 13631, 0, 0, 0, 0, 0, 0, 0, 0), -- -Unknown-
(141652, 1, 34284, 0, 0, 0, 0, 0, 18680, 0, 0), -- -Unknown-
(142154, 1, 161486, 0, 0, 0, 0, 0, 0, 0, 0), 
(141706, 1, 5289, 0, 0, 0, 0, 0, 0, 0, 0), -- -Unknown-
(141804, 2, 9482, 0, 0, 0, 0, 0, 0, 0, 0), -- -Unknown-
(141826, 2, 13024, 0, 0, 119203, 0, 0, 0, 0, 0), -- -Unknown-
(141767, 2, 65494, 0, 0, 0, 0, 0, 0, 0, 0), -- -Unknown-
(141804, 1, 136591, 0, 0, 0, 0, 0, 0, 0, 0), -- -Unknown-
(141845, 1, 0, 0, 0, 0, 0, 0, 36619, 0, 0), -- -Unknown-
(141826, 1, 136591, 0, 0, 119203, 0, 0, 0, 0, 0), -- -Unknown-
(141767, 1, 136591, 0, 0, 0, 0, 0, 0, 0, 0), -- -Unknown-
(141920, 1, 0, 0, 0, 0, 0, 0, 54935, 0, 0), -- 旅行的儿子
(141912, 1, 31785, 0, 0, 0, 0, 0, 0, 0, 0), -- 旅行的战士
(141691, 1, 12329, 0, 0, 0, 0, 0, 0, 0, 0), -- -Unknown-
(141693, 1, 1908, 0, 0, 0, 0, 0, 0, 0, 0), -- -Unknown-
(141702, 1, 12332, 0, 0, 0, 0, 0, 0, 0, 0), -- -Unknown-
(141705, 1, 164001, 0, 0, 0, 0, 0, 0, 0, 0); -- -Unknown-

UPDATE `creature_equip_template` SET `ItemID1`=163831, `ItemID2`=163832 WHERE (`CreatureID`=121308 AND `ID`=1);
UPDATE `creature_equip_template` SET `ItemID1`=30802, `ItemID2`=0 WHERE (`CreatureID`=122130 AND `ID`=2); -- -Unknown-
UPDATE `creature_equip_template` SET `ItemID1`=163831, `ItemID2`=163832 WHERE (`CreatureID`=122065 AND `ID`=1); 
UPDATE `creature_equip_template` SET `ItemID1`=1902 WHERE (`CreatureID`=44158 AND `ID`=2); -- -Unknown-
UPDATE `creature_equip_template` SET `ItemID1`=1903 WHERE (`CreatureID`=44158 AND `ID`=1); -- -Unknown-

DELETE FROM `gossip_menu` WHERE (`MenuId`=21282 AND `TextId`=32295);
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES
(21282, 32295, 27326); -- 122065

UPDATE `gossip_menu` SET `VerifiedBuild`=27326 WHERE (`MenuId`=21013 AND `TextId`=31708);

UPDATE `gossip_menu_option` SET `VerifiedBuild`=27326 WHERE (`MenuId`=21013 AND `OptionIndex`=0);
UPDATE `gossip_menu_option` SET `OptionText`='Я готов.', `VerifiedBuild`=27326 WHERE (`MenuId`=21282 AND `OptionIndex`=0);

DELETE FROM `creature_template` WHERE `entry` IN (141963, 141968, 142154, 141920, 141912);
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `rank`, `family`, `type`, `type_flags`, `type_flags2`, `HealthModifier`, `ManaModifier`, `RacialLeader`, `movementId`, `VerifiedBuild`) VALUES
(141963, 0, 0, 73049, 73050, 73051, 73052, 'Охотник за головами из племени Черного Копья', '', NULL, NULL, NULL, 7, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 27326),
(141968, 0, 0, 29310, 0, 0, 0, 'Ветрокрыл', '', NULL, NULL, NULL, 7, 0, 0, 0, 0, 1, 0, 0, 1.2, 1, 0, 0, 27326), 
(142154, 0, 0, 87586, 0, 0, 0, 'Ордынский вестник войны', '', NULL, NULL, NULL, 7, 0, 0, 1, 0, 7, 0, 0, 5, 1, 0, 0, 27326), 
(141920, 0, 0, 14589, 0, 0, 0, 'Сын путешественника', '', NULL, NULL, NULL, 7, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 27326), 
(141912, 0, 0, 87513, 0, 0, 0, 'Странствующий воин', '', NULL, NULL, NULL, 7, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 27326); 

UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=120, `faction`=876, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_class`=1, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=141963; 
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=120, `faction`=1735, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_class`=1, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=141968;
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=120, `faction`=2958, `speed_run`=1.385714, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_class`=1, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=142154; 
UPDATE `creature_template` SET `faction`=29, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_class`=1, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=141920; 
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=120, `faction`=125, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_class`=1, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=141912;


DELETE FROM `creature_template` WHERE `entry` IN (141707 /*-Unknown-*/, 141652 /*-Unknown-*/, 141706 /*-Unknown-*/, 141804 /*-Unknown-*/, 141845 /*-Unknown-*/, 141826 /*-Unknown-*/, 143509 /*-Unknown-*/, 141767 /*-Unknown-*/, 141528 /*-Unknown-*/, 141691 /*-Unknown-*/, 141693 /*-Unknown-*/, 141702 /*-Unknown-*/, 140224 /*-Unknown-*/, 141705 /*-Unknown-*/, 141647 /*-Unknown-*/, 135202 /*-Unknown-*/, 137762 /*-Unknown-*/, 141119 /*-Unknown-*/);
INSERT INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `VehicleId`, `HoverHeight`) VALUES
(141707, 0, 110, 120, 1835, 0, 1, 4.285714, 2000, 2000, 1, 32768, 2099200, 0, 0, 0, 1), -- Darkspear Bat Rider
(141652, 0, 110, 110, 68, 0, 1, 1.142857, 2000, 2000, 1, 33536, 2048, 1, 0, 0, 1), -- -Unknown-
(141706, 0, 110, 120, 1835, 0, 1, 4.285714, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(141804, 0, 110, 120, 876, 0, 1, 1.142857, 2000, 2000, 2, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(141845, 0, 110, 120, 118, 0, 1, 1.142857, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(141826, 0, 110, 120, 995, 0, 1, 1.142857, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(143509, 0, 110, 120, 7, 0, 1, 1, 2000, 2000, 1, 131072, 2048, 1, 0, 0, 1), -- -Unknown-
(141767, 0, 110, 120, 125, 0, 1, 1.142857, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(141528, 0, 45, 45, 29, 0, 1, 1.142857, 2000, 2000, 1, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(141691, 0, 110, 110, 68, 129, 1, 1.142857, 2000, 2000, 1, 33536, 2048, 1, 0, 0, 1), -- -Unknown-
(141693, 0, 110, 110, 68, 82, 1, 1.142857, 2000, 2000, 1, 33536, 2048, 1, 0, 0, 1), -- -Unknown-
(141702, 0, 110, 110, 68, 131, 1, 1.142857, 2000, 2000, 1, 33536, 2048, 1, 0, 0, 1), -- -Unknown-
(140224, 0, 110, 110, 2201, 0, 1, 1.142857, 2000, 2000, 1, 33536, 2048, 1, 0, 0, 1), -- -Unknown-
(141705, 0, 110, 110, 1735, 0, 1, 1.142857, 2000, 2000, 1, 33536, 0, 1, 0, 0, 1), -- -Unknown-
(141647, 0, 110, 110, 68, 0, 1, 1.142857, 2000, 2000, 1, 33536, 2048, 1, 0, 0, 1), -- -Unknown-
(135202, 0, 110, 120, 35, 0, 1, 1.142857, 2000, 2000, 2, 33587968, 67110912, 0, 0, 0, 1), -- -Unknown-
(137762, 0, 110, 120, 35, 0, 1, 1.142857, 2000, 2000, 2, 33587968, 67110912, 0, 0, 0, 1), -- -Unknown-
(141119, 0, 110, 110, 68, 0, 1, 1.142857, 2000, 2000, 1, 33536, 2048, 1, 0, 0, 1); -- -Unknown-



UPDATE `creature_template` SET `dynamicflags`=128 WHERE `entry`=122918; 
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110 WHERE `entry`=127476; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110 WHERE `entry`=121589; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `speed_run`=1.571429, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=88750;
UPDATE `creature_template` SET `faction`=126, `npcflag`=3, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=86884;
UPDATE `creature_template` SET `gossip_menu_id`=21282, `npcflag`=3, `ScriptName`='npc_lady_liadrin_122065' WHERE `entry`=122065; 
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `dynamicflags`=4 WHERE `entry`=3108; 
UPDATE `creature_template` SET `minlevel`=9, `unit_flags`=0, `dynamicflags`=4 WHERE `entry`=42859; 
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `speed_run`=0.8571429, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `dynamicflags`=4 WHERE `entry`=3123; 
UPDATE `creature_template` SET `unit_flags2`=2048 WHERE `entry`=71100; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=3100; 
UPDATE `creature_template` SET `faction`=188, `npcflag`=1073741824, `speed_run`=0.8571429, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=62116; -- -Unknown-
UPDATE `creature_template` SET `npcflag`=3, `unit_flags2`=4196352, `dynamicflags`=4 WHERE `entry`=4311; -- -Unknown-
UPDATE `creature_template` SET `unit_flags`=32768, `dynamicflags`=4 WHERE `entry`=40891; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=3204; 
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `speed_run`=0.8571429, `unit_flags`=67108864, `dynamicflags`=4 WHERE `entry`=3127; 
UPDATE `creature_template` SET `faction`=31, `npcflag`=1073741824, `speed_run`=0.8571429, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=61751; 
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `dynamicflags`=4 WHERE `entry`=3197; 
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20, `dynamicflags`=4 WHERE `entry`=3198; 
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=20 WHERE `entry`=5822;
UPDATE `creature_template` SET `faction`=190, `speed_run`=1, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=768, `unit_flags2`=71305216, `unit_flags3`=1 WHERE `entry`=114131; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110 WHERE `entry`=54472; 
UPDATE `creature_template` SET `speed_walk`=0.4 WHERE `entry`=52812;
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110 WHERE `entry`=14377; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110 WHERE `entry`=57801;
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110 WHERE `entry`=68979; 
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110 WHERE `entry`=54473;
UPDATE `creature_template` SET `speed_run`=1.142857 WHERE `entry`=62200;
UPDATE `creature_template` SET `speed_run`=1.142857 WHERE `entry`=62199;
UPDATE `creature_template` SET `dynamicflags`=4 WHERE `entry`=1420; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110 WHERE `entry`=46181; 
UPDATE `creature_template` SET `unit_flags`=2181300992 WHERE `entry`=25075; 
UPDATE `creature_template` SET `unit_flags`=2147746560 WHERE `entry`=24935; 
UPDATE `creature_template` SET `unit_flags`=2147746560 WHERE `entry`=24934; 
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110 WHERE `entry`=47663; 
UPDATE `creature_template` SET `maxlevel`=5 WHERE `entry`=42548; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110 WHERE `entry`=44787; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `faction`=83, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=33024, `unit_flags2`=2048 WHERE `entry`=133271; -- -Unknown-
UPDATE `creature_template` SET `dynamicflags`=4 WHERE `entry`=35068; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `faction`=68, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=130911; -- -Unknown-
UPDATE `creature_template` SET `unit_flags`=33024 WHERE `entry`=14881; 

UPDATE `creature_template` SET `unit_flags`=256, `dynamicflags`=4 WHERE `entry`=15476; -- -Unknown-
UPDATE `creature_template` SET `faction`=29 WHERE `entry`=63626; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=9, `maxlevel`=9 WHERE `entry`=44160; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110 WHERE `entry`=3310; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110 WHERE `entry`=45230; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110 WHERE `entry`=89713; -- -Unknown-
UPDATE `creature_template` SET `dynamicflags`=4 WHERE `entry`=3329; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110 WHERE `entry`=88543; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=98, `maxlevel`=110 WHERE `entry`=107622; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=98 WHERE `entry`=112130; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=98 WHERE `entry`=112227; -- -Unknown-
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=113775; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=98, `maxlevel`=110 WHERE `entry`=97863; -- -Unknown-
UPDATE `creature_template` SET `unit_flags`=33587456 WHERE `entry`=17213; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110 WHERE `entry`=118524; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=98, `maxlevel`=110 WHERE `entry`=105904; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=111, `maxlevel`=111, `npcflag`=68719476867 WHERE `entry`=101846; -- -Unknown-
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.142857 WHERE `entry`=96797; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110 WHERE `entry`=96813; -- -Unknown-
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.142857 WHERE `entry`=96798; -- -Unknown-
UPDATE `creature_template` SET `speed_run`=1.142857 WHERE `entry`=112847; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=98, `maxlevel`=110 WHERE `entry`=96641; -- -Unknown-
UPDATE `creature_template` SET `speed_run`=1.142857 WHERE `entry`=106528; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=98, `maxlevel`=110 WHERE `entry`=96636; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=98, `maxlevel`=110 WHERE `entry`=96635; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=98, `maxlevel`=110 WHERE `entry`=96639; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=98, `maxlevel`=110 WHERE `entry`=96592; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=98, `maxlevel`=110 WHERE `entry`=96643; -- -Unknown-
UPDATE `creature_template` SET `speed_run`=1 WHERE `entry`=101436; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110 WHERE `entry`=104091; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `dynamicflags`=0 WHERE `entry`=51346; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=2, `maxlevel`=2 WHERE `entry`=11156; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=2, `maxlevel`=2 WHERE `entry`=12343; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=1, `maxlevel`=1 WHERE `entry`=34238; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=2, `maxlevel`=2 WHERE `entry`=35169; -- -Unknown-
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=7395; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110 WHERE `entry`=72559; -- -Unknown-
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.142857 WHERE `entry`=62822; -- -Unknown-
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.142857 WHERE `entry`=62821; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110 WHERE `entry`=88702; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110 WHERE `entry`=74228; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110 WHERE `entry`=44877; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110 WHERE `entry`=88701; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110 WHERE `entry`=44876; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110 WHERE `entry`=14375; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110 WHERE `entry`=44878; -- -Unknown-
UPDATE `creature_template` SET `minlevel`=110, `maxlevel`=110, `dynamicflags`=4 WHERE `entry`=3296; -- -Unknown-

INSERT IGNORE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(107772, 234590, 0, 0),
(113901, 234595, 0, 0),
(116419, 231849, 0, 0),
(116408, 231849, 0, 0),
(116420, 231849, 0, 0),
(92438, 103583, 0, 0),
(112947, 234593, 0, 0),
(68239, 75648, 0, 0),
(68232, 75648, 0, 0),
(42548, 79276, 0, 0),
(122052, 245757, 3, 0),
(122045, 250455, 3, 0);

DELETE FROM `gameobject_template` WHERE `entry` IN (269837, 293961);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `Name`, `IconName`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `RequiredLevel`, `VerifiedBuild`) VALUES
(269837, 5, 9289, 'Склоны.', '', '', 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27326), -- 斜坡
(293961, 7, 15292, 'Скамейки.', '', '', 1.5, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27326); -- 长椅
/* modeid crash ,may be it's update in bfa
DELETE FROM `gameobject_template` WHERE `entry` IN (269836);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `Name`, `IconName`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `RequiredLevel`, `VerifiedBuild`) VALUES
(269836, 5, 9008, 'Суда.', '', '', 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27326); -- 
*/
DELETE FROM `gameobject_template` WHERE (`entry`=269836);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `RequiredLevel`, `VerifiedBuild`) VALUES
(269836, 43, 9008, 'Суда.', '', '', 1, 1752, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26124); -- 269836

UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=244989;
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=272208; 
UPDATE `gameobject_template` SET `Data0`=5703, `VerifiedBuild`=27326 WHERE `entry`=273271; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=273005; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=273292; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=273844; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=273455; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=273317; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=273498; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=273497; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=269957; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=183890;
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=183889; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=183893;
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=270929; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=269991;
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=270026; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=183866; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=183891; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=269927;
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=273495; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=269926; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=269925; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=269965;
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=269937; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=273467; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=273468; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=273475; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=273478; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=269905; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=269906; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=273474;
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=273472; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=273473; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=273471; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=269907; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=273477; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=273476; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=273470; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=273469; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=269992; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=270935; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=269901; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=269902; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=270936; 
UPDATE `gameobject_template` SET `Data1`=30894, `VerifiedBuild`=27326 WHERE `entry`=204360; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=204169; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=204168; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=204170; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=204167; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=204173; 
UPDATE `gameobject_template` SET `Data0`=2850, `Data12`=683, `VerifiedBuild`=27326 WHERE `entry`=1619; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=204172; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=204171; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=196475; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=207889; -- Doodad_Goblin_elevator01
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=3879, `VerifiedBuild`=27326 WHERE `entry`=58595; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=202805; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=202804; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=202803; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=202802; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=204680;
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=204694; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=204681; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=204695; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=207633; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=210059; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=210058; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=207646; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=204693; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=204696;
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=204939; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=202800; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=204938; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=186722; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=202801; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=207630; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=208534; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=202798; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=204936; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=207632; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=204937; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=208270; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=208269; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=204203; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=204204; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=202799; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=202809; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=197261; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=204699; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=202810; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=207634; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=202808; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=197259; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=197260; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=237942;
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=204726; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=206740; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=3301; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=205090; 
UPDATE `gameobject_template` SET `VerifiedBuild`=27326 WHERE `entry`=204727; 


UPDATE `gameobject_questitem` SET `VerifiedBuild`=27326 WHERE (`GameObjectEntry`=204360 AND `Idx`=0);
UPDATE `gameobject_questitem` SET `VerifiedBuild`=27326 WHERE (`GameObjectEntry`=58595 AND `Idx`=0); 

DELETE FROM `npc_text` WHERE `ID`=32295;
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextId0`, `BroadcastTextId1`, `BroadcastTextId2`, `BroadcastTextId3`, `BroadcastTextId4`, `BroadcastTextId5`, `BroadcastTextId6`, `BroadcastTextId7`, `VerifiedBuild`) VALUES
(32295, 1, 0, 0, 0, 0, 0, 0, 0, 133220, 0, 0, 0, 0, 0, 0, 0, 27326); -- 32295

UPDATE `npc_text` SET `VerifiedBuild`=27326 WHERE `ID`=31708; -- 31708

SET @GROUP_ID=0;
SET @ID=0;
DELETE FROM `creature_text` WHERE (`CreatureID`=121756 AND `GroupID`=@GROUP_ID+1 AND `ID`=@ID+0) OR (`CreatureID`=122065 AND `GroupID`=@GROUP_ID+1 AND `ID`=@ID+0) OR (`CreatureID`=122065 AND `GroupID`=@GROUP_ID+0 AND `ID`=@ID+0) ;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(121756, @GROUP_ID+1, @ID+0, 'Пророк Вилен рад, что вы откликнулись на его призыв.ОН с нетерпением ждал этого дня.。', 12, 0, 100, 0, 0, 87999, 133222, ''),
(122065, @GROUP_ID+1, @ID+0, 'Вместе мы станем свидетелями того, как Легион движется к концу。', 12, 0, 100, 0, 0, 0, 133220, ''),
(122065, @GROUP_ID+0, @ID+0, 'Легион слишком долго бушует в Азероте.Пора положить этому конец.', 12, 0, 100, 0, 0, 87183, 133221, '');
