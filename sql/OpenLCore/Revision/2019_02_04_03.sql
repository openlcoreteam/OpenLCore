DELETE FROM spell_script_names WHERE spell_id IN (219493);
INSERT INTO spell_script_names VALUES
(219493, 'spell_gen_snow_crash');

UPDATE creature_template SET scriptname='boss_drugon_frostblood' WHERE entry=110378;