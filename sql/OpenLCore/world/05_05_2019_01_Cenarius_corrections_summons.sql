UPDATE `creature_template` SET `ScriptName`='boss_cenarius' WHERE (`entry`='104636');
UPDATE `creature_template` SET `faction`='16' WHERE (`entry`='104636');
UPDATE `creature_template` SET `minlevel`='112', `maxlevel`='112' WHERE (`entry`='104636');

-- Summons

UPDATE `creature_template` SET `ScriptName`='twisted_sister' WHERE (`entry`='105495');
UPDATE `creature_template` SET `ScriptName`='nightmare_ancient' WHERE (`entry`='105468');
UPDATE `creature_template` SET `ScriptName`='rotten_drake' WHERE (`entry`='105494');
UPDATE `creature_template` SET `minlevel`='110', `maxlevel`='110', `faction`='16', `ScriptName`='tormented_souls' WHERE (`entry`='106895');
UPDATE `creature_template` SET `unit_flags`='256' WHERE (`entry`='106895');
UPDATE `creature_template` SET `ScriptName`='brambles' WHERE (`entry`='106167');
UPDATE `creature_template` SET `minlevel`='110', `maxlevel`='110', `ScriptName`='beast_of_nightmare' WHERE (`entry`='108208');
UPDATE `creature_template` SET `faction`='16' WHERE (`entry`='108208');
UPDATE `creature_template` SET `ScriptName`='corrupted_wisp' WHERE (`entry`='106304');