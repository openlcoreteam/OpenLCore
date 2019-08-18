DELETE FROM `areatrigger_template` WHERE `Id` IN (18267, 18268);
INSERT INTO `areatrigger_template` (`Id`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `VerifiedBuild`) VALUES
(18267, 0, 0, 4, 4, 0, 0, 0, 0, 29139),
(18268, 0, 0, 4, 4, 0, 0, 0, 0, 29139);


DELETE FROM `quest_offer_reward` WHERE `ID` IN (48544 /*48544*/, 48542 /*48542*/, 47967 /*47967*/, 48455 /*48455*/, 49014 /*49014*/, 48200 /*48200*/, 48199 /*48199*/, 48559 /*48559*/, 47287 /*47287*/, 49143 /*49143*/, 47743 /*47743*/, 47653 /*47653*/, 47652 /*47652*/, 47754 /*47754*/, 47526 /*47526*/, 47771 /*47771*/, 47508 /*47508*/, 46213 /*46213*/, 47541 /*47541*/, 40238 /*40238*/, 47431 /*47431*/, 48500 /*48500*/, 46843 /*46843*/, 46842 /*46842*/, 46840 /*46840*/, 46841 /*46841*/, 46839 /*46839*/, 46816 /*46816*/, 46732 /*46732*/, 47641 /*47641*/, 47627 /*47627*/, 47589 /*47589*/, 48483 /*48483*/, 46297 /*46297*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(48544, 0, 0, 0, 0, 0, 0, 0, 0, 'The Wranglers are essential for our survival here. Any assistance you have given them must be repaid.', 29139), -- 48544
(48542, 0, 0, 0, 0, 0, 0, 0, 0, 'You\'ve been a great asset to my wranglers here. Please take this as a token of our gratitude.', 29139), -- 48542
(47967, 0, 0, 0, 0, 0, 0, 0, 0, 'With these new steeds our forces stand a chance.', 29139), -- 47967
(48455, 0, 0, 0, 0, 0, 0, 0, 0, 'Keeping balance within the forest ensures its longevity.', 29139), -- 48455
(49014, 1, 0, 0, 0, 0, 0, 0, 0, 'After so many years... so many sacrifices... victory is finally within our grasp.', 29139), -- 49014
(48200, 1, 0, 0, 0, 0, 0, 0, 0, 'Good. From here we can quickly access and reinforce each of the encampments.', 29139), -- 48200
(48199, 1, 0, 0, 0, 0, 0, 0, 0, 'I never imagined such destruction... such horror.', 29139), -- 48199
(48559, 1, 0, 0, 0, 0, 0, 0, 0, 'An important first step, $n.$b$bIf we can bring balance to the Netherlight Crucible, I believe it will make your weapon even more powerful.', 29139), -- 48559
(47287, 113, 0, 0, 0, 0, 0, 0, 0, 'Light\'s Judgment will now fire on your command when you use the Matrix Uplink. $b$bPerhaps you will find more objects that we can link into the Matrix on your travels. I have routed enough energy to that part of the Core to handle anything that you can link into it. $b$bGo well, my friend.', 29139), -- 47287
(49143, 1, 0, 0, 0, 0, 0, 0, 0, 'Ah yes, I sense the Light within these fragments. Do not lose hope, $n!', 29139), -- 49143
(47743, 1, 0, 0, 0, 0, 0, 0, 0, 'I did not expect this of Xe\'ra. Nor could I have foreseen Illidan\'s reaction.$b$bWe must ensure these events do not crush the spirits of our allies.', 29139), -- 47743
(47653, 1, 0, 0, 0, 0, 0, 0, 0, 'The Army endures. The Light Mother\'s prophecy will be fulfilled.$b$bAll is as it was meant to be.', 29139), -- 47653
(47652, 5, 0, 0, 0, 0, 0, 0, 0, 'Light be praised! This was a dark day, and many lives were lost. $b$bBut the Army endures. The Light Mother\'s prophecy will be fulfilled.$b$bAll is as it was meant to be.', 29139), -- 47652
(47754, 1, 0, 0, 0, 0, 0, 0, 0, 'Excellent. The path is clear.', 29139), -- 47754
(47526, 396, 0, 0, 0, 0, 0, 0, 0, '<The panel is now pulsing a soft golden glow. According to Romuul, activating it should teleport the cannon to the Vindicaar.>', 29139), -- 47526
(47771, 396, 0, 0, 0, 0, 0, 0, 0, 'We\'re under too much pressure here. And it\'s so close to us...', 29139), -- 47771
(47508, 396, 0, 0, 0, 0, 0, 0, 0, 'We may be grounded, but that does not mean they have to rule the skies!', 29139), -- 47508
(46213, 396, 0, 0, 0, 0, 0, 0, 0, 'You brought crystals with you? Thank the Light, that\'s just what we need!', 29139), -- 46213
(47541, 396, 0, 0, 0, 0, 0, 0, 0, 'You fought well. The Light shines brighter, thanks to your efforts.', 29139), -- 47541
(40238, 1, 0, 0, 0, 0, 0, 0, 0, 'Good work. They will return in time, but we can use this advantage.', 29139), -- 40238
(47431, 1, 0, 0, 0, 0, 0, 0, 0, 'We\'ve secured a foothold. Good.$b$bNow we take the fight to them!', 29139), -- 47431
(48500, 0, 0, 0, 0, 0, 0, 0, 0, 'Are you ready to continue on our journey?', 29139), -- 48500
(46843, 0, 0, 0, 0, 0, 0, 0, 0, 'Our absence has wounded Arator. We knew it would. But we had to know that he was safe while we fought the Legion.$b$bNow that we are reunited, I will not let us be separated again.', 29139), -- 46843
(46842, 1, 1, 0, 0, 0, 0, 0, 0, 'This victory is only the first link in a long chain, $ct.', 29139), -- 46842
(46840, 0, 0, 0, 0, 0, 0, 0, 0, 'Hatuun\'s people will greatly appreciate what you\'ve done for them.', 29139), -- 46840
(46841, 0, 0, 0, 0, 0, 0, 0, 0, 'Now that their lords have been reduced to ash, we may strike at the heart of their power.', 29139), -- 46841
(46839, 0, 0, 0, 0, 0, 0, 0, 0, 'So it begins.', 29139), -- 46839
(46816, 1, 0, 0, 0, 0, 0, 0, 0, 'Lothraxion is an old friend, and a noble warrior. We are fortunate to have him among us.', 29139), -- 46816
(46732, 1, 0, 0, 0, 0, 0, 0, 0, 'Turalyon yet lives! Perhaps there is still hope after all.', 29139), -- 46732
(47641, 1, 0, 0, 0, 0, 0, 0, 0, 'This must be it.', 29139), -- 47641
(47627, 396, 0, 0, 0, 0, 0, 0, 0, 'It seems we underestimated the Legion\'s cunning.', 29139), -- 47627
(47589, 0, 0, 0, 0, 0, 0, 0, 0, 'We may yet stand a chance.', 29139), -- 47589
(48483, 0, 0, 0, 0, 0, 0, 0, 0, 'A cowled figure... and it did not attack you?$B$BMost curious.', 29139), -- 48483
(46297, 396, 0, 0, 0, 0, 0, 0, 0, 'Now for the main weapon.', 29139); -- 46297

DELETE FROM `quest_request_items` WHERE `ID` IN (48441 /*48441*/, 48542 /*48542*/, 48513 /*48513*/, 49015 /*49015*/, 48559 /*48559*/, 49143 /*49143*/, 47287 /*47287*/, 47652 /*47652*/, 46213 /*46213*/, 48500 /*48500*/);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(48441, 0, 0, 0, 0, 'Have you found our supplies, $n?', 26365), -- 48441
(48542, 0, 0, 0, 0, '', 26365), -- 48542
(48513, 1, 0, 0, 0, 'The offensive continues.', 26365), -- 48513
(49015, 0, 0, 0, 0, 'Argus... what could have been...', 26365), -- 49015
(48559, 1, 0, 0, 0, 'May the Light guide our path.', 26365), -- 48559
(49143, 1, 0, 0, 0, 'Though Xe\'ra is gone, her essence can still aid us in our struggle.', 26365), -- 49143
(47287, 0, 0, 0, 0, 'Have you linked Light\'s Judgment into the Vindicaar Matrix Core?', 26365), -- 47287
(47652, 0, 0, 0, 0, 'Light Mother... you must have survived...', 26365), -- 47652
(46213, 669, 0, 0, 0, 'I hope you brought backup with you.', 26365), -- 46213
(48500, 0, 0, 0, 0, 'Light guide your path.', 26365); -- 48500


DELETE FROM `npc_vendor` WHERE (`entry`=127151 AND `item`=152725 AND `ExtendedCost`=6069 AND `type`=1) OR (`entry`=127151 AND `item`=152658 AND `ExtendedCost`=6069 AND `type`=1) OR (`entry`=127151 AND `item`=151708 AND `ExtendedCost`=6066 AND `type`=1) OR (`entry`=127151 AND `item`=151707 AND `ExtendedCost`=6068 AND `type`=1) OR (`entry`=127151 AND `item`=152618 AND `ExtendedCost`=6066 AND `type`=1) OR (`entry`=127151 AND `item`=152797 AND `ExtendedCost`=6241 AND `type`=1) OR (`entry`=127151 AND `item`=152796 AND `ExtendedCost`=6241 AND `type`=1) OR (`entry`=127151 AND `item`=152795 AND `ExtendedCost`=6241 AND `type`=1) OR (`entry`=127151 AND `item`=152794 AND `ExtendedCost`=6241 AND `type`=1) OR (`entry`=127151 AND `item`=152793 AND `ExtendedCost`=6241 AND `type`=1) OR (`entry`=127151 AND `item`=152791 AND `ExtendedCost`=6241 AND `type`=1) OR (`entry`=127151 AND `item`=152669 AND `ExtendedCost`=6107 AND `type`=1) OR (`entry`=127151 AND `item`=153197 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=127151 AND `item`=152964 AND `ExtendedCost`=6244 AND `type`=1) OR (`entry`=127151 AND `item`=153290 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=127151 AND `item`=153027 AND `ExtendedCost`=6108 AND `type`=1) OR (`entry`=127151 AND `item`=153039 AND `ExtendedCost`=6298 AND `type`=1) OR (`entry`=119393 AND `item`=64670 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=119393 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=119393 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=119393 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=119393 AND `item`=6217 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=119393 AND `item`=6256 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=119393 AND `item`=85663 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=119393 AND `item`=7005 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=119393 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=119393 AND `item`=138293 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=119393 AND `item`=90146 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=119393 AND `item`=4470 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=119393 AND `item`=38682 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=119393 AND `item`=3371 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=119393 AND `item`=39354 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=125246 AND `item`=3857 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=125246 AND `item`=18567 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=125246 AND `item`=3466 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=125246 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=125246 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=125246 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=126160 AND `item`=37460 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=127751 AND `item`=3857 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=127751 AND `item`=18567 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=127751 AND `item`=3466 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=127751 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=127751 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=127751 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=123061 AND `item`=3857 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=123061 AND `item`=18567 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=123061 AND `item`=3466 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=123061 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=123061 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=123061 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=121589 AND `item`=153214 AND `ExtendedCost`=6240 AND `type`=1) OR (`entry`=121589 AND `item`=153213 AND `ExtendedCost`=6240 AND `type`=1) OR (`entry`=121589 AND `item`=153209 AND `ExtendedCost`=6240 AND `type`=1) OR (`entry`=121589 AND `item`=153206 AND `ExtendedCost`=6240 AND `type`=1) OR (`entry`=121589 AND `item`=153207 AND `ExtendedCost`=6240 AND `type`=1) OR (`entry`=121589 AND `item`=153205 AND `ExtendedCost`=6240 AND `type`=1) OR (`entry`=121589 AND `item`=153210 AND `ExtendedCost`=6240 AND `type`=1) OR (`entry`=121589 AND `item`=153215 AND `ExtendedCost`=6240 AND `type`=1) OR (`entry`=121589 AND `item`=153212 AND `ExtendedCost`=6240 AND `type`=1) OR (`entry`=121589 AND `item`=153208 AND `ExtendedCost`=6240 AND `type`=1) OR (`entry`=121589 AND `item`=153211 AND `ExtendedCost`=6240 AND `type`=1) OR (`entry`=121589 AND `item`=153068 AND `ExtendedCost`=6240 AND `type`=1) OR (`entry`=121589 AND `item`=153066 AND `ExtendedCost`=6240 AND `type`=1) OR (`entry`=121589 AND `item`=153065 AND `ExtendedCost`=6240 AND `type`=1) OR (`entry`=121589 AND `item`=153063 AND `ExtendedCost`=6240 AND `type`=1) OR (`entry`=121589 AND `item`=153062 AND `ExtendedCost`=6240 AND `type`=1) OR (`entry`=121589 AND `item`=153216 AND `ExtendedCost`=6240 AND `type`=1) OR (`entry`=127920 AND `item`=3857 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=127920 AND `item`=18567 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=127920 AND `item`=3466 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=127920 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=127920 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=127920 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(127151, 17, 152725, 0, 6069, 1, 0, 0, 26124), -- 152725
(127151, 16, 152658, 0, 6069, 1, 0, 0, 26124), -- 152658
(127151, 15, 151708, 0, 6066, 1, 0, 0, 26124), -- 151708
(127151, 14, 151707, 0, 6068, 1, 0, 0, 26124), -- 151707
(127151, 13, 152618, 0, 6066, 1, 0, 0, 26124), -- 152618
(127151, 12, 152797, 0, 6241, 1, 0, 0, 26124), -- 152797
(127151, 11, 152796, 0, 6241, 1, 0, 0, 26124), -- 152796
(127151, 10, 152795, 0, 6241, 1, 0, 0, 26124), -- 152795
(127151, 9, 152794, 0, 6241, 1, 0, 0, 26124), -- 152794
(127151, 8, 152793, 0, 6241, 1, 0, 0, 26124), -- 152793
(127151, 7, 152791, 0, 6241, 1, 0, 0, 26124), -- 152791
(127151, 6, 152669, 0, 6107, 1, 0, 0, 26124), -- 152669
(127151, 5, 153197, 0, 0, 1, 0, 0, 26124), -- 153197
(127151, 4, 152964, 0, 6244, 1, 0, 0, 26124), -- 152964
(127151, 3, 153290, 0, 0, 1, 0, 1, 26124), -- 153290
(127151, 2, 153027, 0, 6108, 1, 0, 0, 26124), -- 153027
(127151, 1, 153039, 0, 6298, 1, 0, 0, 26124), -- 153039
(119393, 15, 64670, 0, 0, 1, 0, 0, 26124), -- 64670
(119393, 14, 39505, 0, 0, 1, 0, 0, 26124), -- 39505
(119393, 13, 20815, 0, 0, 1, 0, 0, 26124), -- 20815
(119393, 12, 5956, 0, 0, 1, 0, 0, 26124), -- 5956
(119393, 11, 6217, 0, 0, 1, 0, 0, 26124), -- 6217
(119393, 10, 6256, 0, 0, 1, 0, 0, 26124), -- 6256
(119393, 9, 85663, 0, 0, 1, 0, 0, 26124), -- 85663
(119393, 8, 7005, 0, 0, 1, 0, 0, 26124), -- 7005
(119393, 7, 2901, 0, 0, 1, 0, 0, 26124), -- 2901
(119393, 6, 138293, 0, 0, 1, 0, 0, 26124), -- 138293
(119393, 5, 90146, 0, 0, 1, 0, 0, 26124), -- 90146
(119393, 4, 4470, 0, 0, 1, 0, 0, 26124), -- 4470
(119393, 3, 38682, 0, 0, 1, 0, 0, 26124), -- 38682
(119393, 2, 3371, 0, 0, 1, 0, 0, 26124), -- 3371
(119393, 1, 39354, 0, 0, 1, 0, 0, 26124), -- 39354
(125246, 6, 3857, 0, 0, 1, 0, 0, 26124), -- 3857
(125246, 5, 18567, 0, 0, 1, 0, 0, 26124), -- 18567
(125246, 4, 3466, 0, 0, 1, 0, 0, 26124), -- 3466
(125246, 3, 2880, 0, 0, 1, 0, 0, 26124), -- 2880
(125246, 2, 5956, 0, 0, 1, 0, 0, 26124), -- 5956
(125246, 1, 2901, 0, 0, 1, 0, 0, 26124), -- 2901
(126160, 1, 37460, 0, 0, 1, 0, 0, 26124), -- 37460
(127751, 6, 3857, 0, 0, 1, 0, 0, 26124), -- 3857
(127751, 5, 18567, 0, 0, 1, 0, 0, 26124), -- 18567
(127751, 4, 3466, 0, 0, 1, 0, 0, 26124), -- 3466
(127751, 3, 2880, 0, 0, 1, 0, 0, 26124), -- 2880
(127751, 2, 5956, 0, 0, 1, 0, 0, 26124), -- 5956
(127751, 1, 2901, 0, 0, 1, 0, 0, 26124), -- 2901
(123061, 6, 3857, 0, 0, 1, 0, 0, 26124), -- 3857
(123061, 5, 18567, 0, 0, 1, 0, 0, 26124), -- 18567
(123061, 4, 3466, 0, 0, 1, 0, 0, 26124), -- 3466
(123061, 3, 2880, 0, 0, 1, 0, 0, 26124), -- 2880
(123061, 2, 5956, 0, 0, 1, 0, 0, 26124), -- 5956
(123061, 1, 2901, 0, 0, 1, 0, 0, 26124), -- 2901
(121589, 22, 153214, 0, 6240, 1, 0, 0, 26124), -- 153214
(121589, 21, 153213, 0, 6240, 1, 0, 0, 26124), -- 153213
(121589, 20, 153209, 0, 6240, 1, 0, 0, 26124), -- 153209
(121589, 19, 153206, 0, 6240, 1, 0, 0, 26124), -- 153206
(121589, 18, 153207, 0, 6240, 1, 0, 0, 26124), -- 153207
(121589, 17, 153205, 0, 6240, 1, 0, 0, 26124), -- 153205
(121589, 16, 153210, 0, 6240, 1, 0, 0, 26124), -- 153210
(121589, 15, 153215, 0, 6240, 1, 0, 0, 26124), -- 153215
(121589, 14, 153212, 0, 6240, 1, 0, 0, 26124), -- 153212
(121589, 13, 153208, 0, 6240, 1, 0, 0, 26124), -- 153208
(121589, 12, 153211, 0, 6240, 1, 0, 0, 26124), -- 153211
(121589, 11, 153068, 0, 6240, 1, 0, 0, 26124), -- 153068
(121589, 9, 153066, 0, 6240, 1, 0, 0, 26124), -- 153066
(121589, 8, 153065, 0, 6240, 1, 0, 0, 26124), -- 153065
(121589, 6, 153063, 0, 6240, 1, 0, 0, 26124), -- 153063
(121589, 5, 153062, 0, 6240, 1, 0, 0, 26124), -- 153062
(121589, 1, 153216, 0, 6240, 1, 0, 0, 26124), -- 153216
(127920, 6, 3857, 0, 0, 1, 0, 0, 26124), -- 3857
(127920, 5, 18567, 0, 0, 1, 0, 0, 26124), -- 18567
(127920, 4, 3466, 0, 0, 1, 0, 0, 26124), -- 3466
(127920, 3, 2880, 0, 0, 1, 0, 0, 26124), -- 2880
(127920, 2, 5956, 0, 0, 1, 0, 0, 26124), -- 5956
(127920, 1, 2901, 0, 0, 1, 0, 0, 26124); -- 2901


DELETE FROM `gossip_menu` WHERE (`MenuId`=18747 AND `TextId`=27251) OR (`MenuId`=21686 AND `TextId`=33042) OR (`MenuId`=21689 AND `TextId`=33040) OR (`MenuId`=21513 AND `TextId`=32787) OR (`MenuId`=21580 AND `TextId`=32926) OR (`MenuId`=21451 AND `TextId`=32658) OR (`MenuId`=21208 AND `TextId`=32179) OR (`MenuId`=21730 AND `TextId`=32238) OR (`MenuId`=21208 AND `TextId`=32946) OR (`MenuId`=21697 AND `TextId`=33066) OR (`MenuId`=21702 AND `TextId`=33063) OR (`MenuId`=21245 AND `TextId`=32239) OR (`MenuId`=21326 AND `TextId`=32748) OR (`MenuId`=21198 AND `TextId`=32158) OR (`MenuId`=21326 AND `TextId`=32405) OR (`MenuId`=21245 AND `TextId`=32238) OR (`MenuId`=21463 AND `TextId`=32691) OR (`MenuId`=21462 AND `TextId`=9849) OR (`MenuId`=21464 AND `TextId`=32692) OR (`MenuId`=21457 AND `TextId`=32673) OR (`MenuId`=21456 AND `TextId`=32672) OR (`MenuId`=21454 AND `TextId`=32670) OR (`MenuId`=21059 AND `TextId`=31834) OR (`MenuId`=21668 AND `TextId`=32944) OR (`MenuId`=21455 AND `TextId`=32671) OR (`MenuId`=21004 AND `TextId`=31695) OR (`MenuId`=21049 AND `TextId`=31811) OR (`MenuId`=21184 AND `TextId`=32136) OR (`MenuId`=21336 AND `TextId`=32436) OR (`MenuId`=21350 AND `TextId`=32451);
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES
(18747, 27251, 26124), -- 127476
(21686, 33042, 26124), -- 128244
(21689, 33040, 26124), -- 128241
(21513, 32787, 26124), -- 127151
(21580, 32926, 26124), -- 126160
(21451, 32658, 26124), -- 126389
(21208, 32179, 26124), -- 121263
(21730, 32238, 26124), -- 126954
(21208, 32946, 26124), -- 121263
(21697, 33066, 26124), -- 122378
(21702, 33063, 26124), -- 120844
(21245, 32239, 26124), -- 122378
(21326, 32748, 26124), -- 122621
(21198, 32158, 26124), -- 121578
(21326, 32405, 26124), -- 122621
(21245, 32238, 26124), -- 122378
(21463, 32691, 26124), -- 123395
(21462, 9849, 26124), -- 123395
(21464, 32692, 26124), -- 126390
(21457, 32673, 26124), -- 126390
(21456, 32672, 26124), -- 126390
(21454, 32670, 26124), -- 126390
(21059, 31834, 26124), -- 121589
(21668, 32944, 26124), -- 121589
(21455, 32671, 26124), -- 126389
(21004, 31695, 26124), -- 120738
(21049, 31811, 26124), -- 120529
(21184, 32136, 26124), -- 123148
(21336, 32436, 26124), -- 125247
(21350, 32451, 26124); -- 125346

REPLACE INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `VerifiedBuild`) VALUES
(21208, 2, 0, 'Fire!', 0, 26124),
(21208, 0, 0, 'Take me to the surface.', 0, 26124),
(21245, 0, 0, 'Let us begin, Turalyon.', 0, 26124),
(21462, 2, 1, 'Let me browse your goods.', 0, 26124),
(21462, 1, 0, 'It is good to see you, Ishanah. How are you?', 0, 26124),
(21462, 0, 5, 'Make this inn your home.', 0, 26124),
(21457, 0, 0, 'But you\'re sitting down.', 0, 26124),
(21456, 0, 0, 'Interesting... And why aren\'t you wearing any shoes?', 0, 26124),
(21454, 0, 0, 'What is that portal doing here?', 0, 26124),
(21059, 1, 0, 'Why is an ethereal traveling on a ship full of draenei?', 0, 26124),
(21059, 0, 1, 'I would like to buy from you.', 0, 26124),
(21451, 0, 0, 'What is that behind you?', 0, 26124),
(21004, 0, 0, 'I am ready to fight by your side.', 0, 26124),
(21049, 0, 0, 'I am ready, High Exarch.', 0, 26124);

