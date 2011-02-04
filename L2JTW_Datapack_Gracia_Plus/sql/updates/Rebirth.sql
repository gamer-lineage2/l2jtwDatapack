Set Names utf8;

CREATE TABLE IF NOT EXISTS `custom_npc` (
  `id` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `idTemplate` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `serverSideName` tinyint(1) NOT NULL DEFAULT '1',
  `title` varchar(45) CHARACTER SET utf8 NOT NULL,
  `serverSideTitle` tinyint(1) NOT NULL DEFAULT '1',
  `class` varchar(200) DEFAULT NULL,
  `collision_radius` decimal(6,2) DEFAULT NULL,
  `collision_height` decimal(6,2) DEFAULT NULL,
  `level` tinyint(2) DEFAULT NULL,
  `sex` enum('etc','female','male') NOT NULL DEFAULT 'etc',
  `type` varchar(22) DEFAULT NULL,
  `attackrange` smallint(4) DEFAULT NULL,
  `hp` decimal(8,0) DEFAULT NULL,
  `mp` decimal(6,0) DEFAULT NULL,
  `hpreg` decimal(10,4) DEFAULT NULL,
  `mpreg` decimal(10,4) DEFAULT NULL,
  `str` tinyint(2) NOT NULL DEFAULT '40',
  `con` tinyint(2) NOT NULL DEFAULT '43',
  `dex` tinyint(2) NOT NULL DEFAULT '30',
  `int` tinyint(2) NOT NULL DEFAULT '21',
  `wit` tinyint(2) NOT NULL DEFAULT '20',
  `men` tinyint(2) NOT NULL DEFAULT '20',
  `exp` int(9) NOT NULL DEFAULT '0',
  `sp` int(9) NOT NULL DEFAULT '0',
  `patk` mediumint(6) DEFAULT NULL,
  `pdef` mediumint(6) DEFAULT NULL,
  `matk` mediumint(6) DEFAULT NULL,
  `mdef` mediumint(6) DEFAULT NULL,
  `atkspd` smallint(4) NOT NULL DEFAULT '230',
  `critical` tinyint(1) NOT NULL DEFAULT '1',
  `aggro` smallint(4) NOT NULL DEFAULT '0',
  `matkspd` smallint(4) NOT NULL DEFAULT '333',
  `rhand` decimal(5,0) DEFAULT NULL,
  `lhand` decimal(5,0) DEFAULT NULL,
  `enchant` tinyint(1) NOT NULL DEFAULT '0',
  `walkspd` smallint(3) NOT NULL DEFAULT '60',
  `runspd` smallint(3) NOT NULL DEFAULT '120',
  `targetable` tinyint(1) NOT NULL DEFAULT '1',
  `show_name` tinyint(1) NOT NULL DEFAULT '1',
  `dropHerbGroup` tinyint(1) NOT NULL DEFAULT '0',
  `basestats` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `custom_npc` (`id`, `idTemplate`, `name`, `serverSideName`, `title`, `serverSideTitle`, `class`, `collision_radius`, `collision_height`, `level`, `sex`, `type`, `attackrange`, `hp`, `mp`, `hpreg`, `mpreg`, `str`, `con`, `dex`, `int`, `wit`, `men`, `exp`, `sp`, `patk`, `pdef`, `matk`, `mdef`, `atkspd`, `critical`, `aggro`, `matkspd`, `rhand`, `lhand`, `enchant`, `walkspd`, `runspd`, `targetable`, `show_name`, `dropHerbGroup`, `basestats`) VALUES
(65535, 22329, '轉生服務員', 1, '下地獄去', 1, 'LineageMonster3.Death_Blader_Raid', '15.00', '32.50', 81, 'male', 'L2Npc', 40, '65569', '1617', '113.2654', '3.0000', 40, 43, 30, 21, 20, 20, 331002, 35747, 9526, 974, 6645, 971, 230, 4, 500, 333, '0', '0', 0, 60, 170, 1, 1, 0, 1);
