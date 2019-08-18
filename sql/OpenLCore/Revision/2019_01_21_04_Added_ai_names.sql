-- Added AI name for few npcs (Kezan, Gilneas)
UPDATE creature_template SET AIName = 'SmartAI' WHERE entry IN(37114,37680,38210,44427,48721);