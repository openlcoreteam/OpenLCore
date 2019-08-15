DELETE FROM smart_scripts WHERE entryorguid = 42645;
INSERT INTO `smart_scripts`(`entryorguid`, `event_type`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES (42645, 64, 33, 42645, 7, 'On Gossip Hello - give credit');
UPDATE creature_template SET npcflag = 1 WHERE entry = 42645;