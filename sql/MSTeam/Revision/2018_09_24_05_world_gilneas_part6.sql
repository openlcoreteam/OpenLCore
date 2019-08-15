




UPDATE `quest_poi` SET `WorldMapAreaId`=179, `Flags`=0, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=26706 AND `BlobIndex`=0 AND `Idx1`=0); -- Endgame
UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `WorldMapAreaId`=179, `Flags`=0, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=24681 AND `BlobIndex`=0 AND `Idx1`=0); -- They Have Allies, But So Do We
UPDATE `quest_poi` SET `WorldMapAreaId`=179, `Flags`=0, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=24680 AND `BlobIndex`=0 AND `Idx1`=0); -- Keel Harbor
UPDATE `quest_poi` SET `WorldMapAreaId`=179, `Flags`=0, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=24679 AND `BlobIndex`=0 AND `Idx1`=0); -- Patriarch's Blessing
UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `WorldMapAreaId`=179, `Flags`=0, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=24602 AND `BlobIndex`=0 AND `Idx1`=0); -- Laid to Rest
UPDATE `quest_poi` SET `WorldMapAreaId`=179, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=24678 AND `BlobIndex`=0 AND `Idx1`=0); -- Knee-Deep
UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `MapID`=638, `WorldMapAreaId`=179, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=24920 AND `BlobIndex`=1 AND `Idx1`=1); -- Slowing the Inevitable
UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `WorldMapAreaId`=202, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=24920 AND `BlobIndex`=0 AND `Idx1`=0); -- Slowing the Inevitable
UPDATE `quest_poi` SET `WorldMapAreaId`=179, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=24903 AND `BlobIndex`=0 AND `Idx1`=0); -- Vengeance or Survival
UPDATE `quest_poi` SET `WorldMapAreaId`=179, `AlwaysAllowMergingBlobs`=0, `VerifiedBuild`=27843 WHERE (`QuestID`=24902 AND `BlobIndex`=0 AND `Idx1`=0); -- The Hunt For Sylvanas


-- Quest Poi Points
DELETE FROM `quest_poi_points` WHERE (`QuestID`=26706 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=24681 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=24681 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=24681 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=24681 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=24681 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=24681 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=24681 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=24681 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=24681 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=24681 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=24681 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=24681 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=24680 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=24679 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=24602 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=24602 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=24602 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=24602 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=24602 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=24602 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=24678 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=24920 AND `Idx1`=8 AND `Idx2`=0) OR (`QuestID`=24920 AND `Idx1`=7 AND `Idx2`=11) OR (`QuestID`=24920 AND `Idx1`=7 AND `Idx2`=10) OR (`QuestID`=24920 AND `Idx1`=7 AND `Idx2`=9) OR (`QuestID`=24920 AND `Idx1`=7 AND `Idx2`=8) OR (`QuestID`=24920 AND `Idx1`=7 AND `Idx2`=7) OR (`QuestID`=24920 AND `Idx1`=7 AND `Idx2`=6) OR (`QuestID`=24920 AND `Idx1`=7 AND `Idx2`=5) OR (`QuestID`=24920 AND `Idx1`=7 AND `Idx2`=4) OR (`QuestID`=24920 AND `Idx1`=7 AND `Idx2`=3) OR (`QuestID`=24920 AND `Idx1`=7 AND `Idx2`=2) OR (`QuestID`=24920 AND `Idx1`=7 AND `Idx2`=1) OR (`QuestID`=24920 AND `Idx1`=4 AND `Idx2`=7) OR (`QuestID`=24920 AND `Idx1`=4 AND `Idx2`=6) OR (`QuestID`=24920 AND `Idx1`=4 AND `Idx2`=5) OR (`QuestID`=24920 AND `Idx1`=4 AND `Idx2`=4) OR (`QuestID`=24920 AND `Idx1`=4 AND `Idx2`=3) OR (`QuestID`=24920 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=24920 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=24920 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=24920 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=24920 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=24903 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=24902 AND `Idx1`=1 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES
(26706, 2, 0, -1299, 2129, 27843), -- Endgame
(24681, 3, 0, -1322, 2120, 27843), -- They Have Allies, But So Do We
(24681, 2, 2, -1222, 2610, 27843), -- They Have Allies, But So Do We
(24681, 2, 1, -1193, 2604, 27843), -- They Have Allies, But So Do We
(24681, 1, 11, -1418, 2315, 27843), -- They Have Allies, But So Do We
(24681, 1, 10, -1422, 2408, 27843), -- They Have Allies, But So Do We
(24681, 1, 9, -1399, 2515, 27843), -- They Have Allies, But So Do We
(24681, 1, 8, -1369, 2565, 27843), -- They Have Allies, But So Do We
(24681, 1, 7, -1294, 2629, 27843), -- They Have Allies, But So Do We
(24681, 1, 6, -1146, 2615, 27843), -- They Have Allies, But So Do We
(24681, 1, 5, -1065, 2596, 27843), -- They Have Allies, But So Do We
(24681, 1, 4, -983, 2534, 27843), -- They Have Allies, But So Do We
(24681, 1, 3, -944, 2461, 27843), -- They Have Allies, But So Do We
(24680, 1, 0, -1728, 1872, 27843), -- Keel Harbor
(24679, 2, 0, -1728, 1872, 27843), -- Patriarch's Blessing
(24602, 3, 0, -1728, 1872, 27843), -- Laid to Rest
(24602, 2, 5, -1583, 1977, 27843), -- Laid to Rest
(24602, 2, 4, -1542, 1963, 27843), -- Laid to Rest
(24602, 2, 3, -1552, 1902, 27843), -- Laid to Rest
(24602, 2, 2, -1568, 1858, 27843), -- Laid to Rest
(24602, 2, 1, -1616, 1832, 27843), -- Laid to Rest
(24678, 1, 0, -1645, 1645, 27843), -- Knee-Deep
(24920, 8, 0, -1645, 1645, 27843), -- Slowing the Inevitable
(24920, 7, 11, -1225, 1453, 27843), -- Slowing the Inevitable
(24920, 7, 10, -1278, 1506, 27843), -- Slowing the Inevitable
(24920, 7, 9, -1299, 1531, 27843), -- Slowing the Inevitable
(24920, 7, 8, -1349, 1773, 27843), -- Slowing the Inevitable
(24920, 7, 7, -1291, 1777, 27843), -- Slowing the Inevitable
(24920, 7, 6, -1060, 1722, 27843), -- Slowing the Inevitable
(24920, 7, 5, -908, 1653, 27843), -- Slowing the Inevitable
(24920, 7, 4, -835, 1561, 27843), -- Slowing the Inevitable
(24920, 7, 3, -835, 1544, 27843), -- Slowing the Inevitable
(24920, 7, 2, -886, 1465, 27843), -- Slowing the Inevitable
(24920, 7, 1, -1051, 1402, 27843), -- Slowing the Inevitable
(24920, 4, 7, -1303, 1748, 27843), -- Slowing the Inevitable
(24920, 4, 6, -1194, 1728, 27843), -- Slowing the Inevitable
(24920, 4, 5, -1181, 1719, 27843), -- Slowing the Inevitable
(24920, 4, 4, -1166, 1707, 27843), -- Slowing the Inevitable
(24920, 4, 3, -1142, 1686, 27843), -- Slowing the Inevitable
(24920, 2, 5, -1111, 1472, 27843), -- Slowing the Inevitable
(24920, 2, 4, -1115, 1479, 27843), -- Slowing the Inevitable
(24920, 2, 3, -1078, 1486, 27843), -- Slowing the Inevitable
(24920, 2, 2, -1003, 1489, 27843), -- Slowing the Inevitable
(24920, 2, 1, -939, 1449, 27843), -- Slowing the Inevitable
(24903, 1, 0, -1664, 1590, 27843), -- Vengeance or Survival
(24902, 1, 0, -1664, 1590, 27843); -- The Hunt For Sylvanas

UPDATE `quest_poi_points` SET `X`=-1270, `Y`=2588, `VerifiedBuild`=27843 WHERE (`QuestID`=24681 AND `Idx1`=2 AND `Idx2`=0); -- They Have Allies, But So Do We
UPDATE `quest_poi_points` SET `X`=-963, `Y`=2440, `VerifiedBuild`=27843 WHERE (`QuestID`=24681 AND `Idx1`=1 AND `Idx2`=2); -- They Have Allies, But So Do We
UPDATE `quest_poi_points` SET `X`=-1070, `Y`=2382, `VerifiedBuild`=27843 WHERE (`QuestID`=24681 AND `Idx1`=1 AND `Idx2`=1); -- They Have Allies, But So Do We
UPDATE `quest_poi_points` SET `X`=-1259, `Y`=2308, `VerifiedBuild`=27843 WHERE (`QuestID`=24681 AND `Idx1`=1 AND `Idx2`=0); -- They Have Allies, But So Do We
UPDATE `quest_poi_points` SET `X`=-1322, `Y`=2120, `VerifiedBuild`=27843 WHERE (`QuestID`=24681 AND `Idx1`=0 AND `Idx2`=0); -- They Have Allies, But So Do We
UPDATE `quest_poi_points` SET `X`=-1671, `Y`=1830, `VerifiedBuild`=27843 WHERE (`QuestID`=24602 AND `Idx1`=2 AND `Idx2`=0); -- Laid to Rest
UPDATE `quest_poi_points` SET `X`=-1715, `Y`=1928, `VerifiedBuild`=27843 WHERE (`QuestID`=24602 AND `Idx1`=1 AND `Idx2`=5); -- Laid to Rest
UPDATE `quest_poi_points` SET `X`=-1709, `Y`=1970, `VerifiedBuild`=27843 WHERE (`QuestID`=24602 AND `Idx1`=1 AND `Idx2`=4); -- Laid to Rest
UPDATE `quest_poi_points` SET `X`=-1656, `Y`=1999, `VerifiedBuild`=27843 WHERE (`QuestID`=24602 AND `Idx1`=1 AND `Idx2`=3); -- Laid to Rest
UPDATE `quest_poi_points` SET `X`=-1651, `Y`=1966, `VerifiedBuild`=27843 WHERE (`QuestID`=24602 AND `Idx1`=1 AND `Idx2`=2); -- Laid to Rest
UPDATE `quest_poi_points` SET `X`=-1657, `Y`=1941, `VerifiedBuild`=27843 WHERE (`QuestID`=24602 AND `Idx1`=1 AND `Idx2`=1); -- Laid to Rest
UPDATE `quest_poi_points` SET `X`=-1672, `Y`=1910, `VerifiedBuild`=27843 WHERE (`QuestID`=24602 AND `Idx1`=1 AND `Idx2`=0); -- Laid to Rest
UPDATE `quest_poi_points` SET `X`=-1728, `Y`=1872, `VerifiedBuild`=27843 WHERE (`QuestID`=24602 AND `Idx1`=0 AND `Idx2`=0); -- Laid to Rest
UPDATE `quest_poi_points` SET `X`=-1053, `Y`=1402, `VerifiedBuild`=27843 WHERE (`QuestID`=24920 AND `Idx1`=7 AND `Idx2`=0); -- Slowing the Inevitable
UPDATE `quest_poi_points` SET `X`=-1320, `Y`=1734, `VerifiedBuild`=27843 WHERE (`QuestID`=24920 AND `Idx1`=6 AND `Idx2`=4); -- Slowing the Inevitable
UPDATE `quest_poi_points` SET `X`=-1326, `Y`=1749, `VerifiedBuild`=27843 WHERE (`QuestID`=24920 AND `Idx1`=6 AND `Idx2`=3); -- Slowing the Inevitable
UPDATE `quest_poi_points` SET `X`=-1316, `Y`=1743, `VerifiedBuild`=27843 WHERE (`QuestID`=24920 AND `Idx1`=6 AND `Idx2`=2); -- Slowing the Inevitable
UPDATE `quest_poi_points` SET `X`=-1311, `Y`=1729, `VerifiedBuild`=27843 WHERE (`QuestID`=24920 AND `Idx1`=6 AND `Idx2`=1); -- Slowing the Inevitable
UPDATE `quest_poi_points` SET `X`=-1313, `Y`=1718, `VerifiedBuild`=27843 WHERE (`QuestID`=24920 AND `Idx1`=6 AND `Idx2`=0); -- Slowing the Inevitable
UPDATE `quest_poi_points` SET `X`=-1349, `Y`=1773, `VerifiedBuild`=27843 WHERE (`QuestID`=24920 AND `Idx1`=5 AND `Idx2`=2); -- Slowing the Inevitable
UPDATE `quest_poi_points` SET `X`=-1339, `Y`=1773, `VerifiedBuild`=27843 WHERE (`QuestID`=24920 AND `Idx1`=5 AND `Idx2`=1); -- Slowing the Inevitable
UPDATE `quest_poi_points` SET `X`=-1341, `Y`=1764, `VerifiedBuild`=27843 WHERE (`QuestID`=24920 AND `Idx1`=5 AND `Idx2`=0); -- Slowing the Inevitable
UPDATE `quest_poi_points` SET `X`=-1112, `Y`=1624, `VerifiedBuild`=27843 WHERE (`QuestID`=24920 AND `Idx1`=4 AND `Idx2`=2); -- Slowing the Inevitable
UPDATE `quest_poi_points` SET `X`=-1120, `Y`=1550, `VerifiedBuild`=27843 WHERE (`QuestID`=24920 AND `Idx1`=4 AND `Idx2`=1); -- Slowing the Inevitable
UPDATE `quest_poi_points` SET `X`=-1273, `Y`=1482, `VerifiedBuild`=27843 WHERE (`QuestID`=24920 AND `Idx1`=4 AND `Idx2`=0); -- Slowing the Inevitable
UPDATE `quest_poi_points` SET `X`=-824, `Y`=1562, `VerifiedBuild`=27843 WHERE (`QuestID`=24920 AND `Idx1`=3 AND `Idx2`=2); -- Slowing the Inevitable
UPDATE `quest_poi_points` SET `X`=-816, `Y`=1552, `VerifiedBuild`=27843 WHERE (`QuestID`=24920 AND `Idx1`=3 AND `Idx2`=1); -- Slowing the Inevitable
UPDATE `quest_poi_points` SET `X`=-818, `Y`=1540, `VerifiedBuild`=27843 WHERE (`QuestID`=24920 AND `Idx1`=3 AND `Idx2`=0); -- Slowing the Inevitable
UPDATE `quest_poi_points` SET `X`=-1060, `Y`=1443, `VerifiedBuild`=27843 WHERE (`QuestID`=24920 AND `Idx1`=2 AND `Idx2`=0); -- Slowing the Inevitable
UPDATE `quest_poi_points` SET `X`=-1645, `Y`=1645, `VerifiedBuild`=27843 WHERE (`QuestID`=24920 AND `Idx1`=1 AND `Idx2`=0); -- Slowing the Inevitable
UPDATE `quest_poi_points` SET `X`=-1645, `Y`=1645, `VerifiedBuild`=27843 WHERE (`QuestID`=24920 AND `Idx1`=0 AND `Idx2`=0); -- Slowing the Inevitable


-- Quest Request Items
UPDATE `quest_request_items` SET `VerifiedBuild`=27843 WHERE `ID`=24602; -- Laid to Rest


-- Quest Request Items Locale
DELETE FROM `quest_request_items_locale` WHERE `ID`=24602 AND `locale`='esES';
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES 
(24602, 'esES', 'Has vuelto, $n.', 27843);

DELETE FROM `quest_request_items_locale` WHERE `ID`=24602 AND `locale`='esMX';
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES 
(24602, 'esMX', 'Has vuelto, $n.', 27843);


-- Creature Template Addon
UPDATE `creature_template_addon` SET `bytes1`=0, `auras`='' WHERE `entry`=40350; -- 40350 (Generic Trigger LAB)
UPDATE `creature_template_addon` SET `auras`='81790' WHERE `entry`=43566; -- 43566 (Lorna Crowley)
UPDATE `creature_template_addon` SET `auras`='52455' WHERE `entry`=38150; -- 38150 (Glaive Thrower)


-- Creature Model Info
UPDATE `creature_model_info` SET `BoundingRadius`=2.74651, `VerifiedBuild`=27843 WHERE `DisplayID`=33417;
UPDATE `creature_model_info` SET `BoundingRadius`=5.492237, `CombatReach`=4, `VerifiedBuild`=27843 WHERE `DisplayID`=28823;
UPDATE `creature_model_info` SET `BoundingRadius`=0.7082875, `VerifiedBuild`=27843 WHERE `DisplayID`=14574;
UPDATE `creature_model_info` SET `BoundingRadius`=0.1335464, `VerifiedBuild`=27843 WHERE `DisplayID`=257;
UPDATE `creature_model_info` SET `BoundingRadius`=0.1658666, `VerifiedBuild`=27843 WHERE `DisplayID`=338;
UPDATE `creature_model_info` SET `BoundingRadius`=0.1335464, `VerifiedBuild`=27843 WHERE `DisplayID`=80;
UPDATE `creature_model_info` SET `BoundingRadius`=0.5395503, `VerifiedBuild`=27843 WHERE `DisplayID`=23960;
UPDATE `creature_model_info` SET `BoundingRadius`=0.4905002, `VerifiedBuild`=27843 WHERE `DisplayID`=229;
UPDATE `creature_model_info` SET `BoundingRadius`=1.654032, `VerifiedBuild`=27843 WHERE `DisplayID`=3942;
UPDATE `creature_model_info` SET `BoundingRadius`=4.810745, `VerifiedBuild`=27843 WHERE `DisplayID`=29642;
UPDATE `creature_model_info` SET `BoundingRadius`=0.425056, `VerifiedBuild`=27843 WHERE `DisplayID`=20923;
UPDATE `creature_model_info` SET `BoundingRadius`=0.6890756, `VerifiedBuild`=27843 WHERE `DisplayID`=30814;
UPDATE `creature_model_info` SET `BoundingRadius`=0.425056, `CombatReach`=0.3, `VerifiedBuild`=27843 WHERE `DisplayID`=15136;


-- Gossip Menu Option
UPDATE `gossip_menu_option` SET `VerifiedBuild`=27843 WHERE (`MenuId`=12609 AND `OptionIndex`=0);


-- Gossip Menu Option Locale
DELETE FROM `gossip_menu_option_locale` WHERE `MenuId`=12609 AND `Locale`='esES';
INSERT INTO `gossip_menu_option_locale` (`MenuId`, `OptionIndex`, `Locale`, `OptionText`, `BoxText`) VALUES 
(12609, 0, 'esES', 'Estoy preparado.', NULL);


-- Creature Text Locale
DELETE FROM `creature_text_locale` WHERE `CreatureID` IN (38507,38530,38533,38537,38617,38781,43566,43727,43749,50881,50893,50902) AND `Locale`='esES';
INSERT INTO `creature_text_locale` (`CreatureID`, `GroupID`, `ID`, `Locale`, `Text`) VALUES 
(38507, 0, 0, 'esES', 'Vayamos inmediatamente. Localizaremos a Sylvanas. ¡Por Gilneas!'),
(38507, 1, 0, 'esES', 'Sigue a Tobias Mantoniebla al Distrito de la Catedral.'),
(38507, 2, 0, 'esES', 'Hagamos todo lo posible para que no nos vean, $n.'),
(38507, 3, 0, 'esES', '¿Has oído eso, $n? Sylvanas se dirige hacia la catedral. ¡Démonos prisa!'),
(38507, 4, 0, 'esES', '¡Deprisa! ¡Escóndete en el agua!'),
(38530, 0, 0, 'esES', 'Puedes asegurar a Garrosh que esto es solo un contratiempo. Nuestra victoria sobre Gilneas será absoluta.'),
(38530, 1, 0, 'esES', 'Será mejor que vigiles tu tono, general. Ni tú ni Garrosh tenéis por qué preocuparos. Hemos detenido toda la producción de Peste, como él ordenó. Nunca la extenderíamos sin su permiso.'),
(38530, 2, 0, 'esES', 'Parte con honor, general.'),
(38530, 3, 0, 'esES', '¿Qué clase de pregunta es esa? ¡Por supuesto que seguimos extendiendo la Peste según el plan! Que los gilneanos disfruten de su pequeña victoria. Mañana no quedarán ni los huesos.'),
(38533, 0, 0, 'esES', 'Estás perdiendo el control de Gilneas, Sylvanas. Garrosh teme que va a tener que ocuparse de esta invasión él mismo.'),
(38533, 1, 0, 'esES', 'Suenas muy segura, su majestad. De verdad espero que no planees utilizar la Peste. Garrosh lo ha prohibido expresamente.'),
(38533, 2, 0, 'esES', 'Entonces informaré a nuestro líder. Con tu permiso, mi señora.'),
(38537, 0, 0, 'esES', 'Mi señora, ¿ordeno a mis hombres que dejen de extender la Peste? ¿O seguimos con el plan?'),
(38537, 1, 0, 'esES', '¡Como desees!'),
(38617, 0, 0, 'esES', 'Asegúrate de que todo está preparado. El emisario de los orcos está listo para reunirse con Sylvanas dentro de la catedral.'),
(38781, 0, 0, 'esES', '¡Lo has conseguido! ¡Estamos salvados!'),
(43566, 0, 0, 'esES', '¡Al ataque!'),
(43566, 1, 0, 'esES', '¡Asegurad las vigas!'),
(43566, 2, 0, 'esES', 'Quiero que dos tiradores certeros se queden detrás y cubran la cubierta. El resto, usad las cuerdas para descender. ¡Que sufran el infierno!'),
(43566, 3, 0, 'esES', '¡Manos arriba, insectos verdes! Mis hombres os darán vuestra nueva ruta. Si intentáis algo, os llenaremos de plomo.'),
(43566, 4, 0, 'esES', '¡Los demás, seguidme abajo!'),
(43566, 5, 0, 'esES', 'Los explosivos están en el cuarto de calderas. ¡Mantenedlos a distancia!'),
(43566, 6, 0, 'esES', 'Ese es... un orco bien grande.'),
(43566, 7, 0, 'esES', '¡Está a punto de explotar, subid a los dracoleones!'),
(43727, 0, 0, 'esES', '¡Todo el mundo a bordo ahora mismo!'),
(43749, 0, 0, 'esES', 'Debemos esperar el mejor momento. Les cogeremos por sorpresa.'),
(43749, 1, 0, 'esES', '¡Debemos esperar el momento oportuno para atacar!'),
(43749, 2, 0, 'esES', 'Paciencia, amigo. Pronto atacaremos.'),
(43749, 3, 0, 'esES', '¡Hora de partir!'),
(50881, 0, 0, 'esES', 'Eras un verdadero hombre del pueblo, Liam. Al contrario que cualquier otro miembro de la realeza que haya conocido. Pagarán por esto.'),
(50893, 0, 0, 'esES', 'Que la Luz bendiga los espíritus de nuestros ancestros por haber permitido que mi hijo descanse en esta tierra sagrada.'),
(50893, 1, 0, 'esES', 'Está ahí, donde corresponde, rodeado por los héroes y los patriotas de Gilneas.'),
(50893, 2, 0, 'esES', 'Volveremos, Liam... Te doy mi palabra.'),
(50902, 0, 0, 'esES', 'Gilneas recordará siempre tu valor, Liam.');

