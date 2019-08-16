UPDATE creature_template SET lootid = 97381 WHERE entry = 97381 AND lootid = 0;
DELETE FROM `creature_loot_template` WHERE `entry` = '97381';
INSERT INTO `creature_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('97381', '128921', '0', '17.501523', '1', '1', '0', '4', '12', ''),
('97381', '139375', '0', '15.453382', '0', '1', '0', '3', '4', ''),
('97381', '139570', '0', '9.1279708', '0', '1', '0', '1', '1', ''),
('97381', '139572', '0', '5.07312614', '0', '1', '0', '1', '1', ''),
('97381', '142546', '0', '2.2254723', '0', '1', '0', '1', '1', ''),
('97381', '142549', '0', '1.09140768', '0', '1', '0', '1', '1', ''),
('97381', '142551', '0', '6.1340646', '0', '1', '0', '1', '1', '');



UPDATE creature_template SET lootid = 97388 WHERE entry = 97388 AND lootid = 0;
DELETE FROM `creature_loot_template` WHERE `entry` = '97388';
INSERT INTO `creature_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('97388', '128921', '0', '17.172544', '1', '1', '0', '4', '6', ''),
('97388', '139375', '0', '16.721802', '0', '1', '0', '3', '4', ''),
('97388', '139570', '0', '8.18192', '0', '1', '0', '1', '1', ''),
('97388', '139572', '0', '11.1504338', '0', '1', '0', '1', '1', ''),
('97388', '142543', '0', '6.07696614', '0', '1', '0', '1', '1', ''),
('97388', '142546', '0', '1.2588861', '0', '1', '0', '1', '1', ''),
('97388', '142551', '0', '3.08046459', '0', '1', '0', '1', '1', '');



UPDATE creature_template SET minlevel = 110, maxlevel = 110, npcflag = 2, faction = 2799 WHERE entry = 131328;

DELETE FROM `quest_template` WHERE `ID` IN (28493 /*28493*/, 50303 /*50303*/, 8468 /*8468*/, 24974 /*24974*/, 14438 /*14438*/, 25170 /*25170*/, 25945 /*25945*/, 13618 /*13618*/, 871 /*871*/, 14129 /*14129*/, 9329 /*9329*/, 26965 /*26965*/, 28096 /*28096*/, 25236 /*25236*/, 31813 /*31813*/, 49933 /*49933*/, 46748 /*46748*/, 46736 /*46736*/, 46735 /*46735*/, 46277 /*46277*/);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MaxScalingLevel`, `QuestPackageID`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardXPMultiplier`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardMoneyMultiplier`, `RewardBonusMoney`, `RewardDisplaySpell1`, `RewardDisplaySpell2`, `RewardDisplaySpell3`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `RewardArtifactXPDifficulty`, `RewardArtifactXPMultiplier`, `RewardArtifactCategoryID`, `Flags`, `FlagsEx`, `RewardSkillLineID`, `RewardNumSkillUps`, `PortraitGiver`, `PortraitTurnIn`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `ItemDrop1`, `ItemDrop2`, `ItemDrop3`, `ItemDrop4`, `ItemDropQuantity1`, `ItemDropQuantity2`, `ItemDropQuantity3`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardChoiceItemDisplayID1`, `RewardChoiceItemDisplayID2`, `RewardChoiceItemDisplayID3`, `RewardChoiceItemDisplayID4`, `RewardChoiceItemDisplayID5`, `RewardChoiceItemDisplayID6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionCapIn1`, `RewardFactionCapIn2`, `RewardFactionCapIn3`, `RewardFactionCapIn4`, `RewardFactionCapIn5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `RewardFactionFlags`, `AreaGroupID`, `TimeAllowed`, `AllowableRaces`, `QuestRewardID`, `Expansion`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RewardCurrencyID1`, `RewardCurrencyID2`, `RewardCurrencyID3`, `RewardCurrencyID4`, `RewardCurrencyQty1`, `RewardCurrencyQty2`, `RewardCurrencyQty3`, `RewardCurrencyQty4`, `PortraitGiverText`, `PortraitGiverName`, `PortraitTurnInText`, `PortraitTurnInName`, `AcceptedSoundKitID`, `CompleteSoundKitID`, `VerifiedBuild`) VALUES
(28493, 2, -1, 60, 0, 15, 331, 0, 0, 13612, 1, 1, 125, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 1, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 234881970, 0, 0, 'Warchief''s Command: Ashenvale!', 'Report to Kadrak at the Mor''shan Rampart on the border between the Northern Barrens and Ashenvale.', 'All able bodied members of the Horde are hereby ordered to report to Kadrak at the Mor''shan Rampart on the border between the Northern Barrens and Ashenvale. Aid in driving the night elves from the forest, so that we may claim its resources for our people!$B$BTo reach the Mor''shan Rampart, you must take the Gold Road north from Crossroads in the Northern Barrens.$B$BDestiny calls!', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 26972), -- 28493
(50303, 2, 20, 255, 0, 20, -440, 0, 0, 0, 0, 1, 125, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 37748744, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 67108864, 0, 6, 'Stranger in a Strange Land', 'Find the Warchief''s Command board in Orgrimmar.', 'Hi. I''m Ambassador Blackguard.\n\n<Blackguard looks down at a piece of paper in his hand.>\n\nOn behalf of the warchief, I am honored to welcome you to Orgrimmar, $r.\n\n<Glances at you, smiles unconvincingly, then looks back at the paper.>\n\nAs a lifetime of adventure unfolds... ugh!\n\nThat''s it! I''m tired of reading this same greeting day in and day out.\n\nGo figure out where you can fight things, then talk to your emissary.\n\nPlease just leave me alone.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 26972), -- 50303
(8468, 2, -1, 20, 0, 5, 3430, 0, 0, 0, 5, 1, 2500, 6, 1, 90, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 911, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 1, 0, 0, 234881970, 0, 1, 'Wanted: Thaelis the Hungerer', 'Bring Thaelis''s Head to Sergeant Kan''ren at Falconwing Square in Eversong Woods.', 'The city of Silvermoon hereby issues a reward for the head of Thaelis the Hungerer, notorious Wretched ringleader.  He is wanted for repeated crimes against the general populace of Silvermoon City, including the murder of two city guards.$B$BReport to Sergeant Kan''ren to collect the reward.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 26972), -- 8468
(24974, 2, -1, 20, 0, 4, 85, 0, 0, 0, 4, 1, 900, 4, 1, 60, 0, 0, 0, 73435, 0, 0, 52059, 0, 1, 0, 2097160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52059, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 234881970, 0, 0, 'Ever So Lonely', 'Use the Murloc Leash on a Vile Fin murloc at the Whispering Shore, then return it to Sedrick Calston at Calston Estate.', 'You work hard your whole life, and what do you get?  Killed by a plague.  Then you work even harder in undeath, and what do you get?  Money, yes, and a small estate with a few pesky hangers-on, but happiness?  Not so much.$b$bI''m lonely in my old age, $n.  I need a companion.  Use this leash on one of the murlocs at the Whispering Shore to the northwest.  You''ll have to weaken it first before it can be leashed.  Then bring it back to me.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 26972), -- 24974
(14438, 2, -1, 20, 18631, 4, 215, 0, 0, 14491, 5, 1, 1200, 5, 1, 90, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 1, 0, 0, 234881970, 0, 0, 'Sharing the Land', 'Kill 15 Palemane Gnolls then return to Ahmo Thunderhorn in Bloodhoof Village.', '$n, there are many conflicts that wound this land. It is my hope that you will not bear witness to as many of them as our elders have. Yet there is one that I would ask you to seek. It will give you some sense of how terrible, if left unchecked, even a small threat can be to the land.$B$BPalemane gnolls have settled to the south of Bloodhoof and in a cave to the west. They disrespect our attempts to communicate with them, and they slay the wildlife of Mulgore unbridled.$B$BWords are no longer the answer.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 26972), -- 14438
(25170, 2, -1, 20, 0, 5, 14, 0, 0, 25165, 4, 1, 1200, 5, 1, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 530, 0, 0, 0, 5, 5, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 234881970, 0, 0, 'Cleaning Up the Coastline', 'Obtain 5 handfuls of Crawler Mucus.', 'Heya mon!  Bom''bay be workin'' on some new mojo.  You wanna try a piece of it?  Well, before ya do, Bom''bay''s gonna need ya to pick up some jujus.$b$bFirst, Bom''bay needs ya to get some o'' the goop from the crabs down by the water.  Let me see your hands!$b$b<Bom''bay examines your hands closely.>$b$bBom''bay gonna need 5 handfuls.  Go on now!', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 26972), -- 25170
(25945, 2, -1, 60, 0, 20, 406, 0, 0, 25999, 2, 1, 0, 0, 1, 30, 77851, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 1, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 234881970, 0, 0, 'We''re Here to Do One Thing, Maybe Two...', 'Take the Krom''gar Wagon to the Fold in Stonetalon Mountains.', 'You''re in Hellscream''s army now, $n, and in Hellscream''s army we kick butt and take names. Gone are the days of our people starving in the streets of Orgrimmar as we sign treaties with elves. We take what we need now. Kalimdor belongs to the Horde!$B$BThe Alliance attempts to stop our expansion every chance they get. Unsatisfied with owning most of the Eastern Kingdoms, those pig-lickers want it all!$B$BOverlord Krom''gar has called for more troops in Stonetalon. Get on the caravan west of here and go!', 'Krom''gar Wagon taken to the Fold', 'Report to Saurboz at the Fold in Stonetalon Mountains to join the Krom''gar army.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 26972), -- 25945
(13618, 2, -1, 60, 0, 15, 331, 0, 0, 13619, 5, 1, 1200, 5, 1, 90, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 234881970, 0, 0, 'Find Gorat!', 'Kadrak at Mor''shan Ramparts wants you to search the Fallen Sky Lake region for Gorat.', 'Gorat is one of the Horde''s most adept assassins.$b$bThe mere mention of his name strikes fear into the hearts of our Alliance foes.$b$bHe is reliable, fiercely loyal, and - until now - punctual.$b$bSomething''s not right, $c.$b$bGorat''s mission was to find and eliminate the elf in charge of this assault on the ramparts.$b$bHe should be somewhere in the region of Fallen Sky Lake.$b$bFind him!', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 26972), -- 13618
(871, 2, -1, 60, 0, 10, 17, 0, 0, 872, 5, 1, 0, 0, 1, 90, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 234881970, 0, 0, 'In Defense of Far Watch', 'Kill 8 Razormane Plunderers and 3 Razormane Hunters.', 'All the quilboars are our enemies, $n. Some just prove to be more of a nuisance than others.$B$BThe Razormane tribe has been attacking our supply caravans that roll through here from Orgrimmar. I have scouts seeking the leader of these raids, but until then, any losses you can inflict on the filthy pig men would aid us.$B$BStart just south of here, where they''ve been raiding our camps near the river. Seek them out, and slay them.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 26972), -- 871
(14129, 2, -1, 60, 0, 10, 16, 0, 0, 14134, 5, 1, 0, 0, 1, 90, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 65544, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1133, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 234881970, 0, 0, 'Runaway Shredder!', 'Attack one of the Runaway Shredders near the rear gates of Orgrimmar and hop inside once it''s been significantly damaged.', 'I''ve been trying to impress our new Horde allies with our legendary goblin efficiency, but in hindsight automating the shredders was a bad idea. Now they''re mindless killing machines, rampaging over the countryside. Don''t get me wrong - that kind of thing has its place - but for the time being I need a brave $c to help me get these things under control.$B$BIt''s easy. Automated shredders, like all machines, must first be beaten into submission. Afterwards, seize the controls and I''ll radio you instructions.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 26972), -- 14129
(9329, 2, -1, 60, 0, 10, 3433, 0, 0, 9758, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 922, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 234881458, 0, 1, 'The Forsaken', 'Speak with High Executor Mavren at Tranquillien in the Ghostlands.', 'I know it seems strange, but the Forsaken are here to help. You should speak with their leader, High Executor Mavren.  He''s in the tower on the west side of town.$B$BAnd, $c, when you''re done talking with him return to me; I have something dire that needs to be dealt with immediately!', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 26972), -- 9329
(26965, 2, -1, 60, 0, 10, 130, 0, 0, 0, 4, 1, 0, 0, 1, 60, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4194312, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, 0, 0, 0, 0, 4, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 234881970, 0, 0, 'The Warchief Cometh', 'Stand by for Warchief Garrosh Hellscream''s arrival.', 'You''re just in time, $nnub. It is $nnub, right?$B$B<Grand Executor Mortuus looks at a sheet of paper.>$B$BYes, that''s what the paperwork says: "$nnub."$B$B<Grand Executor Mortuus points to your name on the sheet of paper.>$B$BWhere was I? Oh yes, you''re just in time! The Warchief should be arriving at any moment to meet with our leader and savior, the Dark Lady herself. Just stand by and be at your best behavior. I expect that when this demonstration is over we will all receive commendations!', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 26972), -- 26965
(28096, 2, -1, 60, 3525, 15, 267, 0, 0, 28111, 5, 1, 0, 0, 1, 90, 0, 0, 0, 0, 0, 0, 62932, 0, 1, 0, 3145736, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62932, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 234881970, 0, 0, 'Welcome to the Machine', 'Hand out 3 Quests.', 'Come in here dear $g boy:girl;, have a cigar. You''re gonna go far and fly high as a ranking officer of the Forsaken. Yes, indeed, this is the good life and you are going to live it!$B$BI want you to take these orders and dispense them to the lowly scrubs that come along looking for work. Who you give what to is wholly at your discretion.$B$BWhen you''re ready, mount up on my trusty skeletal steed - so they don''t miss you - and start living the life! Which means just stand there and wait.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 26972), -- 28096
(25236, 2, -1, 20, 0, 5, 14, 0, 0, 0, 5, 1, 1200, 5, 1, 90, 0, 0, 0, 0, 0, 0, 52574, 0, 1, 0, 1048584, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52574, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 234881970, 0, 0, 'Thunder Down Under', 'Attach a Mageweave Tether to 8 Drowned Thunder Lizards in Thunder Ridge.', 'Our army needs water, and luckily the elements gave us plenty of that when the cataclysm hit.  The water that filled up the canyon to the southwest should do the trick.$b$bUnfortunately, the corpses of thunder lizards still sit at the bottom of the canyon, and their electrical discharges are a bit too dangerous.  I''ve got grunts that can lift them out of the water, but we need someone agile enough to attach the other end of the rope.  Are you my $g man: woman;, $n?', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 26972), -- 25236
(31813, 2, -1, 255, 0, 1, -394, 102, 0, 31814, 5, 1, 1200, 5, 1, 90, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 524288, 2176, 0, 0, 0, 0, 89125, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 234881970, 0, 0, 'Dagra the Fierce', 'Defeat Dagra the Fierce in a pet battle.', 'Der be another trainer not far from here that you ought to fight to test your worth.$b$bDagra the Fierce waits on the northern slope of Thorn Hill, east of The Crossroads. If you be beatin'' her, you just might have what it takes.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 26972), -- 31813
(49933, 2, 20, 255, 0, 20, -440, 0, 0, 50303, 1, 1, 125, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 37748744, 8192, 0, 0, 0, 0, 157028, 157759, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 67108864, 0, 6, 'For the Horde', 'Meet Ambassador Blackguard at the Orgrimmar Embassy.', 'After ages standing alone, we are once again poised to become part of something greater. Our alliance with the Horde affords us a fresh start, a unique chance that must not be squandered.\n\nThe warchief''s ambassador awaits you in Orgrimmar, $n. From there, you will set out on a journey across Azeroth. Fight to defend this land, and claim a place for the shal''dorei within it.\n\nShow the world who we are, $c. Bring honor to the Horde, for in so doing, you will bring honor to Suramar.', '', 'Meet Ambassador Blackguard at the Orgrimmar Embassy.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 26972), -- 49933
(46748, 2, 110, 255, 0, 110, 7637, 128, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 34078720, 536870912, 0, 0, 0, 0, 152105, 142005, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 6, 'Supplies From the Nightfallen', 'Speak with First Arcanist Thalyssra in Suramar for your reward.', 'Outlander, I have some supplies for you. These goods are yours, earned by your continued efforts to our forces here in Suramar.\n\nI shall set aside similar treasures should you choose to aid our people more.\n\nYou have my deepest thanks.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 26972), -- 46748
(46736, 0, -1, 255, 0, 110, 0, 143, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 100728840, 33554432, 0, 0, 0, 0, 152654, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2045, 0, 0, 0, 0, 4, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 0, 'Contribute to Nether Disruptor', '', '', '', '', 1226, 0, 0, 0, 75, 0, 0, 0, '', '', '', '', 0, 0, 26972), -- 46736
(46735, 0, -1, 255, 0, 110, 0, 143, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 100728840, 33554432, 0, 0, 0, 0, 152654, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2045, 0, 0, 0, 0, 4, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 0, 'Contribute to Command Center', '', '', '', '', 1226, 0, 0, 0, 75, 0, 0, 0, '', '', '', '', 0, 0, 26972), -- 46735
(46277, 0, -1, 255, 0, 110, 0, 143, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 100729096, 33554432, 0, 0, 0, 0, 152654, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2045, 0, 0, 0, 0, 4, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 6, 'Contribute to Mage Tower', '', '', '', '', 1226, 0, 0, 0, 75, 0, 0, 0, '', '', '', '', 0, 0, 26972); -- 46277

DELETE FROM creature_queststarter WHERE (id = 131326 AND quest = 49933) OR (id = 133407 AND quest = 50303);
 INSERT INTO creature_queststarter (`id`, `quest`)VALUES
(131326,49933), -- for the horde
(133407,50303); --  Stranger in a Strange Land

DELETE FROM creature_questender WHERE (id = 133407 AND quest = 49933) OR (id = 131328 AND quest = 50303);
INSERT INTO creature_questender (`id`, `quest`)VALUES
(133407, 49933), -- for the horde
(131328, 50303); -- stranger in a strange land
 
 DELETE FROM `creature_questitem` WHERE (`CreatureEntry`=42859 AND `Idx`=0) OR (`CreatureEntry`=39049 AND `Idx`=0) OR (`CreatureEntry`=8524 AND `Idx`=0) OR (`CreatureEntry`=112336 AND `Idx`=0) OR (`CreatureEntry`=112910 AND `Idx`=4) OR (`CreatureEntry`=112910 AND `Idx`=3) OR (`CreatureEntry`=112910 AND `Idx`=2) OR (`CreatureEntry`=112910 AND `Idx`=1) OR (`CreatureEntry`=112910 AND `Idx`=0);
INSERT INTO `creature_questitem` (`CreatureEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES
(42859, 0, 57758, 26972), -- 42859
(39049, 0, 52270, 26972), -- 39049
(8524, 0, 61372, 26972), -- 8524
(112336, 0, 129888, 26972), -- 112336
(112910, 4, 134808, 26972), -- 112910
(112910, 3, 129903, 26972), -- 112910
(112910, 2, 129888, 26972), -- 112910
(112910, 1, 135515, 26972), -- 112910
(112910, 0, 127262, 26972); -- 112910

DELETE FROM `quest_visual_effect` WHERE (`ID`=312111 AND `Index`=0) OR (`ID`=259624 AND `Index`=0) OR (`ID`=269049 AND `Index`=0);
INSERT INTO `quest_visual_effect` (`ID`, `Index`, `VisualEffect`, `VerifiedBuild`) VALUES
(312111, 0, 8517, 26972),
(259624, 0, 6043, 26972),
(269049, 0, 1026, 26972);

DELETE FROM `quest_objectives` WHERE `ID` IN (312111 /*312111*/, 259624 /*259624*/, 267187 /*267187*/, 267186 /*267186*/, 264756 /*264756*/, 265539 /*265539*/, 254390 /*254390*/, 254389 /*254389*/, 266900 /*266900*/, 266110 /*266110*/, 253201 /*253201*/, 253200 /*253200*/, 253199 /*253199*/, 265482 /*265482*/, 269049 /*269049*/, 289536 /*289536*/, 289535 /*289535*/, 289167 /*289167*/);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES
(312111, 50303, 14, 0, 1, 65213, 1, 0, 0, 0, 'Warchief''s Command Board found', 26972), -- 312111
(259624, 8468, 1, 0, 0, 21781, 1, 0, 1, 0, '', 26972), -- 259624
(267187, 24974, 0, 1, 1, 38887, 1, 0, 0, 0, 'Vile Fin returned', 26972), -- 267187
(267186, 24974, 0, 0, 0, 38923, 1, 0, 0, 0, 'Vile Fin captured', 26972), -- 267186
(264756, 14438, 0, 0, 0, 42354, 15, 0, 0, 0, 'Palemane Gnolls', 26972), -- 264756
(265539, 25170, 1, 0, 0, 4888, 5, 0, 1, 0, '', 26972), -- 265539
(254390, 871, 0, 1, 1, 3265, 3, 0, 0, 0, '', 26972), -- 254390
(254389, 871, 0, 0, 0, 3267, 8, 0, 0, 0, '', 26972), -- 254389
(266900, 14129, 0, 0, 0, 35111, 1, 0, 0, 0, 'Runaway Shredder Captured', 26972), -- 266900
(266110, 26965, 0, 0, 0, 44629, 1, 0, 0, 0, 'Stand by for Warchief Garrosh Hellscream''s arrival', 26972), -- 266110
(253201, 28096, 0, 2, 2, 47442, 1, 0, 0, 0, 'Third Quest Dispensed', 26972), -- 253201
(253200, 28096, 0, 1, 1, 47443, 1, 0, 0, 0, 'Second Quest Dispensed', 26972), -- 253200
(253199, 28096, 0, 0, 0, 47444, 1, 0, 0, 0, 'First Quest Dispensed', 26972), -- 253199
(265482, 25236, 0, 0, 0, 39464, 8, 0, 0, 0, 'Drowned Thunder Lizard removed', 26972), -- 265482
(269049, 31813, 11, 0, 0, 66135, 1, 1, 0, 0, 'Defeat Dagra the Fierce', 26972), -- 269049
(289536, 46736, 4, 0, -1, 1342, 100, 0, 0, 0, '', 26972), -- 289536
(289535, 46735, 4, 0, -1, 1342, 100, 0, 0, 0, '', 26972), -- 289535
(289167, 46277, 4, 0, -1, 1342, 100, 0, 0, 0, '', 26972); -- 289167
 
 UPDATE `lfg_dungeon_template` SET `name`='Maraudon - Foulspore Cavern' WHERE  `dungeonId`=26;
 
DELETE FROM `lfg_dungeon_template` WHERE `dungeonId` IN (2, 4, 6, 8, 10, 12, 14, 16, 22, 24, 28, 30, 32, 46, 48, 50, 136, 137, 138, 140, 146, 147, 148, 276, 161);
INSERT INTO `lfg_dungeon_template` (`dungeonId`, `name`, `position_x`, `position_y`, `position_z`, `orientation`, `VerifiedBuild`) VALUES
(30,  'Blackrock Depths - Prison',     456.929, 34.0923, -68.0896, 4.712389, 11159),
(276, 'Blackrock Depths - Upper City', 456.929, 34.0923, -68.0896, 4.712389, 11159),
(161, 'Ahn Qiraj - Temple',     -8221.35, 2014.34, 129.071, 0.872665, 11159),
(2, 'Scholomance',     190.819, 126.329, 137.227, 0, 11159),
(4, 'Ragefire Chasm',     0.797643, -8.23429, -15.5288, 4.71239, 11159),
(6, 'Deadmines',    -14.5732, -385.475, 62.4561, 1.5708, 11159),
(8, 'Shadowfang Keep',    -228.191, 2111.41, 76.8904, 1.22173, 11159),
(10, 'Blackfathom Deeps',    -150.234, 106.594, -39.779, 4.45059, 11159),
(12, 'Stormwind Stockade',    48.9849, 0.483882, -16.3942, 0, 11159),
(14, 'Gnomeregan',    -329.098, -3.20722, -152.851, 2.96706, 11159),
(16, 'Razorfen Kraul',    1942.27, 1544.23, 81.805061, 1.309, 11159),
(22, 'Uldaman',    -228.859, 46.1018, -46.0186, 1.5708, 11159),
(24, 'Zul\'Farrak',    1212.67, 842.04, 8.93346, 0, 11159),
(28, 'Sunken Temple',    -315.903, 100.197, -131.849, 3.14159, 11159),
(32, 'Lower Blackrock Spire',    78.3534, -226.841, 49.7662, 4.71239, 11159),
(46, 'Onyxia\'s Lair',    30.8916, -54.079, -5.02784, 4.71239, 11159),
(48, 'Molten Core',    1080,  -483, -108, 1, 11159),
(50, 'Blackwing Lair',    -7672.32,  -1107.05, 396.651, 0.785398, 11159),
(136, 'Hellfire Ramparts',    -1355.24,  1641.12, 68.2491, 0.6687, 11159),
(137, 'Blood Furnace',    -3.9967,  14.6363, -44.8009, 4.88748, 11159),
(138, 'Shattered Halls',    -40.8716,  -19.7538, -13.8065, 1.11133, 11159),
(140, 'Slave Pens',    120.101,  -131.957, -0.801547, 1.47574, 11159),
(146, 'Underbog',    9.71391,  -16.2008, -2.75334, 5.57082, 11159),
(147, 'The Steamvault',    -13.8425,  6.7542, -4.2586, 0, 11159),
(148, 'Mana-Tombs',    0.0191,  0.9478, -0.9543, 3.03164, 11159);


DELETE FROM `lfg_dungeon_template` WHERE `dungeonId` IN (779, 780, 820, 821, 846, 847, 848, 714, 898, 1008);
INSERT INTO `lfg_dungeon_template` (`dungeonId`,`name`,`position_x`,`position_y`,`position_z`,`orientation`) values 
(779,'Skyreach - normal',1232.46,1743.71,177.169,0.58),
(780,'Skyreach - heroic',1232.46,1743.71,177.169,0.58),
(820,'Auchindoun - Entrance',1487.36,2953.42,35.3079,359.582),
(821,'Iron Docks - Entrance target (Inside)',6746.76,-546.786,4.92545,308.381),
(846,'Blackrock Foundry - Black Forge',131.172,3429.48,319.829,0.00135),
(847,'Blackrock Foundry - Slagworks',131.172,3429.48,319.829,0.00135),
(848,'Blackrock Foundry - Iron Assembly',131.172,3429.48,319.829,0.00135),
(1008,'Auchindoun Heroic - Entrance',1487.36,2953.42,35.3079,359.582),
(714,'Siege of Orgrimmar - Entrance Target',1440.89,263.047,283.558,1.5706),
(898,'Blackrock Foundry ',131.172,3429.48,319.829,0.00135);










