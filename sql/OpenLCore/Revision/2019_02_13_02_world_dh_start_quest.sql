UPDATE quest_objectives SET ObjectID = 98486 WHERE QuestID = 40077 AND ID = 280276;
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE id = 94655;
DELETE FROM creature_sparring_template WHERE AttackerEntry IN (98458, 98486, 94704, 93112, 93115, 94654, 101597, 96931, 96278, 102724, 98158, 96277, 108408, 98160, 97034, 96504, 96564, 96402, 98165);
INSERT INTO creature_sparring_template (AttackerEntry, VictimEntry, HealthLimitPct) VALUES
(98458, 98486, 85),
(98486, 98458, 99),
(94704, 93112, 85),
(94704, 93115, 85),
(94704, 94654, 85),
(93112, 94704, 75),
(93115, 94704, 75),
(94654, 94704, 75),
(101597, 96278, 85),
(101597, 102724, 85),
(96931, 96278, 85),
(96931, 102724, 85),
(96278, 101597, 75),
(102724, 101597, 75),
(96278, 96931, 75),
(102724, 96931, 75),
(98158, 96277, 85),
(96277, 98158, 75),
(108408, 96277, 85),
(108408, 97034, 85),
(98160, 96277, 85),
(98160, 97034, 85),
(96277, 108408, 75),
(96277, 98160, 75),
(97034, 108408, 75),
(97034, 98160, 75),
(96504, 96402, 85),
(96564, 96402, 85),
(96402, 96504, 75),
(96402, 96564, 75),
(98165, 96277, 85),
(96277, 98165, 75),
(96504, 96277, 85),
(96504, 97034, 85),
(96277, 96504, 75),
(97034, 96504, 75);

UPDATE creature_template SET AIName = "SmartAI" WHERE entry IN (98158, 98165);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (98158, 98165) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(98158, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 19, 96277, 15, 0, 0, 0, 0, 0, "Asha Ravensong - On Reset - Start Attack (Creature ID: 96277, 15 Yards)"),
(98158, 0, 1, 0, 1, 0, 100, 0, 10000, 10000, 10000, 10000, 49, 0, 0, 0, 0, 0, 0, 19, 96277, 15, 0, 0, 0, 0, 0, "Asha Ravensong - OOC (10000 - 10000) - Start Attack (Creature ID: 96277, 15 Yards)"),
(98165, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 19, 96277, 15, 0, 0, 0, 0, 0, "Cassiel Nightthorn - On Reset - Start Attack (Creature ID: 96277, 15 Yards)"),
(98165, 0, 1, 0, 1, 0, 100, 0, 10000, 10000, 10000, 10000, 49, 0, 0, 0, 0, 0, 0, 19, 96277, 15, 0, 0, 0, 0, 0, "Cassiel Nightthorn - OOC (10000 - 10000) - Start Attack (Creature ID: 96277, 15 Yards)");
