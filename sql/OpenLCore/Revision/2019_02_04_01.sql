UPDATE creature_template SET scriptname='npc_hunter_talua', `gossip_menu_id`='19868' WHERE entry=108868;
UPDATE `creature_template` SET npcflag=0, vehicleid='4839', scriptname='npc_great_eagle', inhabittype=4 WHERE `entry`='108853';
DELETE FROM `gossip_menu_option` WHERE menuid=19868;
INSERT INTO `gossip_menu_option` (`menuid`, `OptionIndex`, `optionicon`, `optiontext`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`) VALUES
(19868, 0, 0, 'I need to fly to the Trueshat Lodge.', 0, 1, 1);


DELETE FROM item_script_names WHERE id IN (147326,147327,147325);
INSERT INTO item_script_names VALUES
(147326, 'loot_item_leggings_of_the_foregone'),
(147327, 'loot_item_leggings_of_the_foregone'),
(147325, 'loot_item_leggings_of_the_foregone');

DELETE FROM item_script_names WHERE id IN (147319,147320,147321);
INSERT INTO item_script_names VALUES
(147319, 'loot_item_gloves_of_the_foregone'),
(147320, 'loot_item_gloves_of_the_foregone'),
(147321, 'loot_item_gloves_of_the_foregone');

UPDATE `trinity_string` SET `content_default`='%u - |cffffffff|Hquest:%u:%d:%d:%d:%d|h[%s]|h|r %s' WHERE `entry`=513;