-- DBE

-- Invalid gob types
UPDATE gameobject_template set type = 6 WHERE entry IN(241696,241691,241510,241515,241694,241694,241514,241420,241437,241438,241695,241516);

-- Invalid npc classes & factions
UPDATE creature_template SET unit_class = 1 WHERE entry IN(909941,909946,909945,909940,909942,909943);
UPDATE creature_template SET faction = 35 WHERE entry IN(909941,909946,909945,909940,909942,909943);

-- Missing ai names
UPDATE creature_template SET AIName = 'SmartAI' WHERE entry IN(102263,102431,104288,104415);

-- Missing scriptnames
UPDATE `creature_template` SET `ScriptName`='npc_vereesa_windrunner_121754' WHERE (`entry`='121754');
UPDATE `creature_template` SET `ScriptName`='npc_prophet_velen_126307' WHERE (`entry`='126307');
UPDATE `creature_template` SET `ScriptName`='npc_korvas_bloodthorn_99343' WHERE (`entry`='99343');
UPDATE `creature_template` SET `ScriptName`='npc_malfurion_stormrage_103875' WHERE (`entry`='103875');
UPDATE `creature_template` SET `ScriptName`='npc_keeper_remulos_103489' WHERE (`entry`='103489');
UPDATE `creature_template` SET `ScriptName`='npc_nightmare_blight_103246' WHERE (`entry`='103246');
UPDATE `creature_template` SET `ScriptName`='npc_keeper_remulos_103488' WHERE (`entry`='103488');
UPDATE `creature_template` SET `ScriptName`='npc_generic_bunny_quest_to_the_dreamgrove_59115' WHERE (`entry`='59115');
UPDATE `creature_template` SET `ScriptName`='npc_snowfeather_100786' WHERE (`entry`='100786');
UPDATE `creature_template` SET `ScriptName`='npc_npc_lord_maxwell_tyrosus_92909' WHERE (`entry`='92909');
UPDATE `creature_template` SET `ScriptName`='npc_ritssyn_flamescowl_103506' WHERE (`entry`='103506');
