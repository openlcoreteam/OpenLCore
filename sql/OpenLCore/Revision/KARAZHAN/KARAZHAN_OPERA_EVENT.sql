SET @ELFYRA         := 114284;
SET @GALINDRE       := 114251;
SET @COGGLESTON     := 114328;
SET @LUMINORE       := 114329;
SET @BABLET         := 114330;
SET @MRS_CAULDRON   := 114522;
SET @TOE_KNEE       := 114261;
SET @MRRGRIA        := 114260;
SET @BARNES         := 114339;

UPDATE `creature_template` SET
`ScriptName` = 'npc_kara_barnes',
`minLevel` = 112,
`maxLevel` = 112,
`faction` = 35,
`npcflag` = 1
WHERE `entry` IN (@BARNES, 11433901, 11433902);

UPDATE `creature_template` SET 
`ScriptName` = 'boss_opera_toe_knee', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@TOE_KNEE, 11426101, 11426102);

UPDATE `creature_template` SET 
`ScriptName` = 'boss_opera_mrrgria', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@MRRGRIA, 11426001, 11426002);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_kara_gang_ruffian', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16
WHERE `entry` IN (114265, 11426501, 11426502);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_kara_shoreline_speaker', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16
WHERE `entry` IN (114266, 11426601, 11426602);

UPDATE `creature_template` SET 
`ScriptName` = 'boss_opera_elfyra', 
`minLevel` = 112, 
`maxLevel` = 112, 
`faction` = 16,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@ELFYRA, 11428401, 11428402);

UPDATE `creature_template` SET
`ScriptName` = 'boss_opera_galyndre',
`minLevel` = 112,
`maxLevel` = 112,
`faction` = 16,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@GALINDRE, 11432801, 11432802);

UPDATE `creature_template` SET
`ScriptName` = 'npc_kara_winged_assistant',
`minLevel` = 112,
`maxLevel` = 112,
`faction` = 16
WHERE `entry` IN (114324, 11432401, 11432402);

UPDATE `creature_template` SET
`ScriptName` = 'boss_opera_coggleston',
`minLevel` = 112,
`maxLevel` = 112,
`faction` = 16,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@COGGLESTON, 11432801, 11432802);

UPDATE `creature_template` SET
`ScriptName` = 'boss_opera_luminore',
`minLevel` = 112,
`maxLevel` = 112,
`faction` = 16,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@LUMINORE, 11432901, 11432902);

UPDATE `creature_template` SET
`ScriptName` = 'boss_opera_bablet',
`minLevel` = 112,
`maxLevel` = 112,
`faction` = 16,
`speed_walk` = 0.25,
`speed_run` = 0.5,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@BABLET, 11433001, 11433002);

UPDATE `creature_template` SET
`ScriptName` = 'boss_opera_mrs_cauldrons',
`minLevel` = 112,
`maxLevel` = 112,
`faction` = 16,
`mechanic_immune_mask` = `mechanic_immune_mask` |617299967
WHERE `entry` IN (@MRS_CAULDRON, 11452201, 11452202);

UPDATE `creature_template` SET 
`ScriptName` = 'npc_kara_flashing_forks',
`minLevel` = 112,
`maxLevel` = 112,
`faction` = 16
WHERE `entry` IN (116574, 11657401, 11657402);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (231869, 227776, 227447, 227477, 228221, 227449, 227453, 227777, 227783);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(231869, 'spell_opera_wikket_bond'),
(227776, 'spell_opera_magic_magnificient'),
(227447, 'spell_opera_defy_gravity'),
(227477, 'spell_opera_summon_assistants'),
(228221, 'spell_opera_severe_dusting'),
(227449, 'spell_opera_dashing_gale'),
(227453, 'spell_opera_dashing_gale_area'),
(227777, 'spell_opera_thunder_ritual'),
(227783, 'spell_opera_wash_away');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (228011, 227568, 227319, 227453);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(228011, 228013, 1, 'Soup Spray - Mrs Cauldrons'),
(227568, 227567, 1, 'Burning Leg Sweep - Toe Knee'),
(227319, 227325, 0, 'Poisonous Shank - Gang Ruffian');

-- Severe Dusting
DELETE FROM spell_dbc_override WHERE spell = 228221;
INSERT INTO spell_dbc_override VALUES (228221, 1, 0, 226, 0, 'Aura Fix', 698272);
INSERT INTO spell_dbc_override VALUES (228221, 3, 0, 6, 0, 'TARGET_UNIT_TARGET_ENEMY', 698272);
INSERT INTO spell_dbc_override VALUES (228221, 10, 0, 1, 1, 'Aura Fix', 698272);
INSERT INTO spell_dbc_override VALUES (228221, 41, 0, 500, 0, 'Aura Fix', 698272);

-- Wash Away
DELETE FROM spell_dbc_override WHERE spell = 227790;
INSERT INTO spell_dbc_override VALUES (227790, 3, 0, 87, 0, 'TARGET_DEST_DEST', 698272);
INSERT INTO spell_dbc_override VALUES (227790, 14, 0, 13, 0, '', 698272);

-- Burning Blaze
DELETE FROM spell_dbc_override WHERE spell = 228193;
INSERT INTO spell_dbc_override VALUES (228193, 33, 0, 8, 1, 'Interrupt Flag', 698272);

DELETE FROM `areatrigger_template` WHERE `id` IN (8843, 8763, 8847, 8781, 8811, 8764);
INSERT INTO `areatrigger_template` (`id`, `type`, `flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `ScriptName`, `VerifiedBuild`) VALUES
(8843, 4, 2, 2, 2, 20, 20, 1.5, 1.5, 'at_kara_burning_blaze', 23420),
(8763, 0, 4, 3, 3, 0, 0, 0, 0, 'at_kara_defy_gravity', 23420),
(8847, 4, 4, 1, 1, 20, 20, 3, 3, '', 23420),
(8781, 0, 0, 3, 3, 0, 0, 0, 0, 'at_kara_dashing_gale', 23420),
(8811, 1, 0, 3, 5, 3, 3, 5, 3, 'at_kara_wash_away', 23420),
(8764, 0, 0, 3, 3, 0, 0, 0, 0, 'at_kara_bubble_blast', 23420);

DELETE FROM `spell_areatrigger` WHERE `SpellMiscId` IN (8843, 8763, 8847, 8781, 8811, 8764);
INSERT INTO `spell_areatrigger` (`SpellMiscId`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `VerifiedBuild`) VALUES
(8843, 8843, 0, 2564, 0, 0, 0, 0, 60000, 23420), -- SpellId : 228197
(8763, 8763, 0, 0, 0, 0, 0, 0, 180000, 23420), -- SpellId: 227472
(8847, 8847, 0, 0, 0, 0, 0, 0, 0, 23420), -- SpellId : 228213
(8781, 8781, 0, 0, 0, 0, 0, 0, 60000, 23420), -- SpellId: 227471
(8811, 8811, 0, 0, 0, 0, 0, 0, 18000, 23420), -- SpellId: 227790
(8764, 8764, 0, 0, 0, 0, 0, 0, 20000, 23420); -- SpellId: 227420

DELETE FROM `gossip_menu` WHERE (`entry`=20468 AND `text_id`=8971) OR (`entry`=20467 AND `text_id`=8970);
INSERT IGNORE INTO `gossip_menu` (`entry`, `text_id`) VALUES
(20468, 8971), -- 114339
(20467, 8970); -- 114339


DELETE FROM `gossip_menu_option` WHERE (`menu_id`=20468 AND `id`=0) OR (`menu_id`=20467 AND `id`=0);
INSERT IGNORE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES
(20468, 0, 0, 'Ok, I''ll give it a try, then.', 0, 0, 0, 0, '', 0),
(20467, 0, 0, 'I''m not an actor.', 0, 0, 0, 0, '', 0);

DELETE FROM `creature_text` WHERE `entry` IN (@ELFYRA, @GALINDRE, @BARNES, @TOE_KNEE, @MRRGRIA, @COGGLESTON, @LUMINORE, @BABLET, @MRS_CAULDRON);
INSERT INTO `creature_text`(`entry`, `groupid`, `id`, `text`, `type`, `probability`, `sound`, `comment`) VALUES
-- Elfyra --
(@ELFYRA, '0', '0', 'We all deserve a chance to fly! Hey, do you really think the Wizard will de-greenify me?', '14', '100', '77153', 'ELFYRA - INTRO'),
(@ELFYRA, '1', '0', 'I don\'t have any friends... well, apart from you, Galindre.', '14', '100', '77154', 'ELFYRA - INTRO'),
(@ELFYRA, '2', '1', 'Together, we\'re unlimited!', '14', '100', '77146', 'ELFYRA - AGGRO'),
(@ELFYRA, '3', '0', 'Sorry to bring you down!', '14', '100', '77147', 'ELFYRA - DEFY_GRAVITY'),
(@ELFYRA, '3', '1', 'You deserve a chance to fly!', '14', '100', '77148', 'ELFYRA - DEFY_GRAVITY'),
(@ELFYRA, '4', '0', 'Come see my minions, and let them be heard!', '14', '100', '77149', 'ELFYRA - SUMMON_ASSISTANTS'),
(@ELFYRA, '4', '1', 'Elekkamomen otunbuntu rotu kerlaramen!', '14', '100', '77150', 'ELFYRA - SUMMON_ASSISTANTS'),
(@ELFYRA, '5', '0', 'For the first time, I feel... wikket.', '14', '100', '77151', 'ELFYRA - KILL'),
(@ELFYRA, '5', '1', 'That was quite the commotion!', '14', '100', '77152', 'ELFYRA - KILL'),
(@ELFYRA, '6', '0', 'How beautifully... tragic.', '14', '100', '77145', 'ELFYRA - DEATH'),
-- Galindre --
(@GALINDRE, '0', '0', 'Elfyra, come down from there! You\'re fluttering about like one of those horrible monkey creatures!', '14', '100', '77161', 'GALINDRE - INTRO'),
(@GALINDRE, '1', '0', 'Of course, dear! Though that old frock of yours... Oh, look! Some new friends have come to pay us a visit.', '14', '100', '77162', 'GALINDRE - INTRO'),
(@GALINDRE, '2', '0', 'If you\'re my friend, you\'ll make the hozen get rid of these interlopers... then we\'re off to see the Wizard!', '14', '100', '77163', 'GALINDRE - INTRO'),
(@GALINDRE, '3', '0', 'Follow my lead and you\'ll be popular!', '14', '100', '77158', 'GALINDRE - AGGRO'),
(@GALINDRE, '4', '0', 'This place could stand to be Galindre-fied!', '14', '100', '77157', 'GALINDRE - MAGIC_MAGNIFICIENT'),
(@GALINDRE, '4', '1', 'Now for something most magnificent!', '14', '100', '77156', 'GALINDRE - MAGIC_MAGNIFICIENT'),
(@GALINDRE, '5', '0', 'That one needed a makeover.', '14', '100', '77159', 'GALINDRE - KILL'),
(@GALINDRE, '5', '1', 'Have you misplaced your wikket mind?', '14', '100', '77160', 'GALINDRE - KILL'),
-- Toe Knee --
(@TOE_KNEE, '0', '0', 'So ya wanna rumble, do ya?', '14', '100', '77136', 'TOE_KNEE - AGGRO'),
(@TOE_KNEE, '0', '1', 'Let\'s dance!', '14', '100', '77137', 'TOE_KNEE - AGGRO'),
(@TOE_KNEE, '1', '0', 'It\'s you and me against the world, baby!', '14', '100', '77135', 'TOE_KNEE - INTRO'),
(@TOE_KNEE, '2', '0', 'Wanna go for a spin?', '14', '100', '77132', 'TOE_KNEE - DASHING_GALE'),
(@TOE_KNEE, '3', '0', 'Now that\'s what I call a hot foot!', '14', '100', '77133', 'TOE_KNEE - BURNING_LEG_SWEEP'),
(@TOE_KNEE, '4', '0', 'Beat it!', '14', '100', '77138', 'TOE_KNEE - KILL'),
(@TOE_KNEE, '4', '1', 'Go on! Scram!', '14', '100', '77139', 'TOE_KNEE - KILL'),
(@TOE_KNEE, '5', '0', 'A gang that don\'t own the fields, is nothing!', '14', '100', '77140', 'TOE_KNEE - WIPE'),
(@TOE_KNEE, '5', '1', 'I dug you punks a early grave!', '14', '100', '77141', 'TOE_KNEE - WIPE'),
(@TOE_KNEE, '6', '0', 'I\'ll never... stop saying... Mrrgria...?', '14', '100', '77142', 'TOE_KNEE - DEATH'),
(@TOE_KNEE, '6', '1', 'There\'s a... place for us... somewhere...', '14', '100', '77143', 'TOE_KNEE - DEATH'),
-- Coggleston --
(@COGGLESTON, '0', '0', 'Luminore! Mrs. Cauldrons! Babblet! Let us dispose with these interlopers!', '14', '100', '77088', 'COGGLESTON - AGGRO'),
(@COGGLESTON, '1', '0', 'Quickly now! Get rid of them!', '14', '100', '77094', 'COGGLESTON - KARA_KAZHAM'),
(@COGGLESTON, '2', '0', 'Delightful! One less guest for dinner!', '14', '100', '77089', 'COGGLESTON - KILL'),
(@COGGLESTON, '3', '0', 'Never stand in the way of true love!', '14', '100', '77090', 'COGGLESTON - WIPE'),
(@COGGLESTON, '4', '0', 'It seems... my rose... has... wilted...', '14', '100', '77091', 'COGGLESTON - DEATH'),
(@COGGLESTON, '5', '0', 'Oh no, no, no... this won\'t do! You outsiders will ruin our final chance to break the curse!', '14', '100', '77105', 'COGGLESTON - CONVERSATION'),
(@COGGLESTON, '6', '0', 'It\'s working! It\'s working!', '14', '100', '77106', 'COGGLESTON - CONVERSATION'),
-- Luminore --
(@LUMINORE, '0', '0', 'Zee true love, eet burnses!', '14', '100', '77095', 'LUMINORE - HEAT_WAVE'),
(@LUMINORE, '1', '0', 'The candle! Mine!', '14', '100', '77092', 'LUMINORE - KILL'),
(@LUMINORE, '2', '0', 'No... take... zee... candle...', '14', '100', '77093', 'LUMINORE - DEATH'),
-- Bablet --
(@BABLET, '0', '0', 'That will teach you to flirt with my boyfriend!', '14', '100', '77099', 'BABLET - KILL'),
(@BABLET, '1', '0', 'Only beauty... can kill... a brute...', '14', '100', '77100', 'BABLET - DEATH'),
-- Mrs Cauldrons --
(@MRS_CAULDRON, '0', '0', 'Hope I don\'t spoil your appetite, dearies!', '14', '100', '77096', 'MRS_CAULDRON - SOUP_SPRAY'),
(@MRS_CAULDRON, '1', '0', 'That didn\'t go very well at all, did it?', '14', '100', '77098', 'MRS_CAULDRON - KILL'),
(@MRS_CAULDRON, '2', '0', 'Guess I\'m... sleeping in... the cupboard.', '14', '100', '77097', 'MRS_CAULDRON - DEATH');


