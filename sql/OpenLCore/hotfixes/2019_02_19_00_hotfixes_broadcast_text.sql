DELETE FROM `broadcast_text` WHERE `ID` = 147279;
INSERT INTO `broadcast_text` (`ID`, `Text`) VALUES
(147279, 'Right away, General!');
DELETE FROM `broadcast_text_locale` WHERE `ID` = 147279;
INSERT INTO `broadcast_text_locale` (`ID`, `locale`, `Text_lang`) VALUES
(147279, 'ruRU', 'Сейчас же, Генерал!');

DELETE FROM `broadcast_text` WHERE `ID` IN (147324, 147325, 147326, 147327);
INSERT INTO `broadcast_text` (`ID`, `Text`, `Text1`, `EmoteID1`, `EmoteID2`, `EmoteID3`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmotesID`, `LanguageID`, `Flags`, `ConditionID`, `SoundEntriesID1`, `SoundEntriesID2`, `VerifiedBuild`) VALUES
(147324, '<Saurfang looks you up and down with narrowed eyes.>\n\nWhen Khadgar claimed we would be seeing demon hunters today, I laughed in his face. When he said I should hear you out, I laught louder.\n\nAnd yet, here you are.\n\nI will permit you alone to enter the Hold. You will leave your weapons and companions at the door. You will not speak until spoken to.\n\nOne false move and my axe will end you.', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27404),
(147325, 'You are the demon hunters who escaped the Vault of the Wardens?\n\nYou draw your very power from those who seek to destroy our world. Tell me, why should I possibly trust you?', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27404),
(147326, 'We are indomitable. We are Illidari.', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27404),
(147327, 'Let nothing stand in your way.', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27404);
