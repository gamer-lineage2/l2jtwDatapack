/*
MySQL Data Transfer
Source Host: localhost
Source Database: l2jtw-dev
Target Host: localhost
Target Database: l2jtw-dev
Date: 2008/11/6 ¤U¤È 11:36:44
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for messagetable
-- ----------------------------
CREATE TABLE `messagetable` (
  `mid` int(3) NOT NULL DEFAULT '0',
  `language` varchar(2) NOT NULL DEFAULT 'en',
  `message` text,
  `extraMessage` text,
  PRIMARY KEY (`mid`,`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `messagetable` VALUES ('0', 'en', '[RequestDestroyItem] count > 1 but item is not stackable! oid: ', ' owner: ');
INSERT INTO `messagetable` VALUES ('0', 'tw', '[è¦ç ´å£çç©å] æ¸é > 1 ä½ç©åä¸æ¯å ççï¼', 'ç©ä¸»ï¼');
INSERT INTO `messagetable` VALUES ('1', 'en', '    Kills : $1', null);
INSERT INTO `messagetable` VALUES ('1', 'tw', 'æ®ºäººæ¸éï¼$1', null);
INSERT INTO `messagetable` VALUES ('2', 'en', '    Player karma: $1', null);
INSERT INTO `messagetable` VALUES ('2', 'tw', 'æ§åææ¸ï¼$1', null);
INSERT INTO `messagetable` VALUES ('3', 'en', '    Time Remaining: $1 min.', null);
INSERT INTO `messagetable` VALUES ('3', 'tw', 'æéå©ä¸ï¼$1 åéã', null);
INSERT INTO `messagetable` VALUES ('4', 'en', '  Don\'t exist in the world.', null);
INSERT INTO `messagetable` VALUES ('4', 'tw', 'å°æªåºç¾ã', null);
INSERT INTO `messagetable` VALUES ('5', 'en', '  Lying on the ground.', null);
INSERT INTO `messagetable` VALUES ('5', 'tw', 'æè½å°é¢', null);
INSERT INTO `messagetable` VALUES ('6', 'en', '  Player holding: $E1', 'null;$1');
INSERT INTO `messagetable` VALUES ('6', 'tw', 'ææäººç©ï¼$E1', 'null;$1');
INSERT INTO `messagetable` VALUES ('7', 'en', '-----------', null);
INSERT INTO `messagetable` VALUES ('7', 'tw', '-----------', null);
INSERT INTO `messagetable` VALUES ('8', 'en', '.... geo position: $1', null);
INSERT INTO `messagetable` VALUES ('8', 'tw', '.... Geo ä½ç½®ï¼$1', null);
INSERT INTO `messagetable` VALUES ('9', 'en', '.... world coords: x: $1 y: $2 z: $3', null);
INSERT INTO `messagetable` VALUES ('9', 'tw', '.... ä¸çåº§æ¨ï¼x: $1 y: $2 z: $3', null);
INSERT INTO `messagetable` VALUES ('10', 'en', '.deposit ($1 Adena = $2 Goldbar) / .withdraw ($3 Goldbar = $4 Adena)', null);
INSERT INTO `messagetable` VALUES ('10', 'tw', '.deposit ($1 éå¹£ = $2 éå¡) / .withdraw ($3 éå¡ = $4 éå¹£)', null);
INSERT INTO `messagetable` VALUES ('11', 'en', '====== Cursed Weapons: ======', null);
INSERT INTO `messagetable` VALUES ('11', 'tw', '====== åè©åçæ­¦å¨è³è¨ =====', null);
INSERT INTO `messagetable` VALUES ('12', 'en', '======= <Mob Groups> =======', null);
INSERT INTO `messagetable` VALUES ('12', 'tw', '======= <æªç©ç¾¤çµ> =======', null);
INSERT INTO `messagetable` VALUES ('13', 'en', '> $1 ($2)', null);
INSERT INTO `messagetable` VALUES ('13', 'tw', '> $1 ($2)', null);
INSERT INTO `messagetable` VALUES ('14', 'en', 'A GM changed your class to $1', null);
INSERT INTO `messagetable` VALUES ('14', 'tw', 'è·æ¥­è®æ´çºã$1ãã', null);
INSERT INTO `messagetable` VALUES ('15', 'en', 'A GM gave you $1 skills.', null);
INSERT INTO `messagetable` VALUES ('15', 'tw', 'ç®¡çèçµ¦ä½ å¢å  $1 åæè½ã', null);
INSERT INTO `messagetable` VALUES ('16', 'en', 'A Trap has been detected!', null);
INSERT INTO `messagetable` VALUES ('16', 'tw', 'å¯è¦ºé·é±ï¼', null);
INSERT INTO `messagetable` VALUES ('17', 'en', 'A clock will now be displayed next to the server name', null);
INSERT INTO `messagetable` VALUES ('17', 'tw', 'ç»å¥ä¼ºæå¨æå°æçå°æéã', null);
INSERT INTO `messagetable` VALUES ('18', 'en', 'A dark force beyond your mortal understanding makes your knees to shake when you try to stand up ...', null);
INSERT INTO `messagetable` VALUES ('18', 'tw', 'ä¸è¡æªç¥çé»æåéè®è³ç¼æèµ·ä¾ï¼å°è´ç¡æ³ç«èµ·ã', null);
INSERT INTO `messagetable` VALUES ('19', 'en', 'A superior power doesn\'t allow you to leave the event', null);
INSERT INTO `messagetable` VALUES ('19', 'tw', 'ç¡æ³å¨æ´»åä¸­ç»åºã', null);
INSERT INTO `messagetable` VALUES ('20', 'en', 'Access Rights have been reloaded', null);
INSERT INTO `messagetable` VALUES ('20', 'tw', 'æ¬ééæ°è¼å¥ã', null);
INSERT INTO `messagetable` VALUES ('21', 'en', 'Account $1 banned.', null);
INSERT INTO `messagetable` VALUES ('21', 'tw', 'å°éã$1ãå¸³èã', null);
INSERT INTO `messagetable` VALUES ('22', 'en', 'Action failed. Heroes are only able to speak in the global channel once every 10 seconds.', null);
INSERT INTO `messagetable` VALUES ('22', 'tw', 'åä½å¤±æãå¨è±éé »éèªªè©±åªè½æ¯ 10 ç§ä¸æ¬¡ã', null);
INSERT INTO `messagetable` VALUES ('23', 'en', 'Added $1 to Trade List $2', null);
INSERT INTO `messagetable` VALUES ('23', 'tw', 'å¢å ã$1ãè³è²©è³£æ¸å®ã$2ã', null);
INSERT INTO `messagetable` VALUES ('24', 'en', 'Added $1 xp and $2 sp to $3.', null);
INSERT INTO `messagetable` VALUES ('24', 'tw', 'å¢å ã$3ãç $1 EXP å $2 SPã', null);
INSERT INTO `messagetable` VALUES ('25', 'en', 'Added NPC: $1', null);
INSERT INTO `messagetable` VALUES ('25', 'tw', 'å¢å  NPCï¼$1', null);
INSERT INTO `messagetable` VALUES ('26', 'en', 'Added recipe \\\"$1\\\" to Common RecipeBook', null);
INSERT INTO `messagetable` VALUES ('26', 'tw', 'ç»è¨ \\\"$1\\\" çºè£½ä½å·è»¸ã', null);
INSERT INTO `messagetable` VALUES ('27', 'en', 'Added recipe \\\"$1\\\" to Dwarven RecipeBook', null);
INSERT INTO `messagetable` VALUES ('27', 'tw', 'ç»è¨ \\\"$1\\\" çºè£½ä½å·è»¸ã', null);
INSERT INTO `messagetable` VALUES ('28', 'en', 'Admin gave you the skill $1.', null);
INSERT INTO `messagetable` VALUES ('28', 'tw', 'ç®¡çèçµ¦ä½ å¢å ã$1ãçæè½ã', null);
INSERT INTO `messagetable` VALUES ('29', 'en', 'Admin has changed the enchantment of your $1 from $2 to $3.', null);
INSERT INTO `messagetable` VALUES ('29', 'tw', 'ç®¡çå¡å¼·åä½ çã$1ãï¼å¾ $2 è® $3ã', null);
INSERT INTO `messagetable` VALUES ('30', 'en', 'Admin has changed your stats.  HP: $1  MP: $2  CP: $3  PvP Flag: $4 PvP/PK $5/$6', null);
INSERT INTO `messagetable` VALUES ('30', 'tw', 'ç®¡çå¡ä¿®æ¹çæçºï¼HPï¼$1  MPï¼$2  CPï¼$3  PvP çæï¼$4 PvP/PK ææ¸ï¼$5/$6', null);
INSERT INTO `messagetable` VALUES ('31', 'en', 'Admin is adding you $1 xp and $2 sp.', null);
INSERT INTO `messagetable` VALUES ('31', 'tw', 'ç®¡çå¡å¢å ä½ ç $1 EXP å $2 SPã', null);
INSERT INTO `messagetable` VALUES ('32', 'en', 'Admin is removing you $1 xp and $2 sp.', null);
INSERT INTO `messagetable` VALUES ('32', 'tw', 'ç®¡çå¡æ¸å°ä½ ç $1 EXP å $2 SPã', null);
INSERT INTO `messagetable` VALUES ('33', 'en', 'Admin is teleporting you.', null);
INSERT INTO `messagetable` VALUES ('33', 'tw', 'ç®¡çå¡å°ä½ é²è¡å³éã', null);
INSERT INTO `messagetable` VALUES ('34', 'en', 'Admin removed all skills from you.', null);
INSERT INTO `messagetable` VALUES ('34', 'tw', 'ç®¡çèç§»é¤ä½ çå¨é¨æè½ã', null);
INSERT INTO `messagetable` VALUES ('35', 'en', 'Admin removed the skill $1 from your skills list.', null);
INSERT INTO `messagetable` VALUES ('35', 'tw', 'ç®¡çèç§»é¤ä½ çã$1ãæè½ã', null);
INSERT INTO `messagetable` VALUES ('36', 'en', 'After $1 min. you will be teleported to your fiance.', null);
INSERT INTO `messagetable` VALUES ('36', 'tw', '$1 åéä¹å¾ï¼å°å³éå°ä½ çä¼´ä¾¶èº«éã', null);
INSERT INTO `messagetable` VALUES ('37', 'en', 'All NPC walker routes have been reloaded', null);
INSERT INTO `messagetable` VALUES ('37', 'tw', 'ææ NPC walker éæ°è¼å¥ã', null);
INSERT INTO `messagetable` VALUES ('38', 'en', 'All instance manager has been reloaded', null);
INSERT INTO `messagetable` VALUES ('38', 'tw', 'ææ Instance éæ°è¼å¥ã', null);
INSERT INTO `messagetable` VALUES ('39', 'en', 'Alliance $1 has been created.', null);
INSERT INTO `messagetable` VALUES ('39', 'tw', 'åµç«ã$1ãåçã', null);
INSERT INTO `messagetable` VALUES ('40', 'en', 'Ban request sent for account $1. If you need a playername based commmand, see //ban_menu', null);
INSERT INTO `messagetable` VALUES ('40', 'tw', 'ã$1ãè³æé¯èª¤ãè«æ¥è©¢ //ban_menu', null);
INSERT INTO `messagetable` VALUES ('41', 'en', 'Blacksmith of Mammon isn\'t registered for spawn.', null);
INSERT INTO `messagetable` VALUES ('41', 'tw', 'è²¡å¯çéµå æªç»è¨å¨ Spawn è³æå§ã', null);
INSERT INTO `messagetable` VALUES ('42', 'en', 'Blacksmith of Mammon: $1 $2 $3', null);
INSERT INTO `messagetable` VALUES ('42', 'tw', 'è²¡å¯çéµå ï¸°$1 $2 $3', null);
INSERT INTO `messagetable` VALUES ('43', 'en', 'Bonuses cannot be paid during the competition period.', null);
INSERT INTO `messagetable` VALUES ('43', 'tw', 'ä¸åå°å°ç«¶ç­æéï¼ç¡æ³çµç®å ±é¬ã', null);
INSERT INTO `messagetable` VALUES ('44', 'en', 'Busy because of siege.', null);
INSERT INTO `messagetable` VALUES ('44', 'tw', 'æ»åæ°ä¸­ç¡æ³åå æè³£ã', null);
INSERT INTO `messagetable` VALUES ('45', 'en', 'Cache[Crest]: $1 megabytes on $2 files loaded', null);
INSERT INTO `messagetable` VALUES ('45', 'tw', 'å¿«å[Crest]ï¼$1 MB $2 åæªæ¡è®åã', null);
INSERT INTO `messagetable` VALUES ('46', 'en', 'Cache[Crest]: crests fixed', null);
INSERT INTO `messagetable` VALUES ('46', 'tw', 'å¿«å[Crest]ï¼çå¾½ä¿®æ­£ã', null);
INSERT INTO `messagetable` VALUES ('47', 'en', 'Cache[HTML]: $1 MB in $2 file(s) loaded.', null);
INSERT INTO `messagetable` VALUES ('47', 'tw', 'å¿«å[HTML]ï¼$1 MB $2 åæªæ¡è®åã', null);
INSERT INTO `messagetable` VALUES ('48', 'en', 'Cache[HTML]: $1 MB on $2 file(s) loaded.', null);
INSERT INTO `messagetable` VALUES ('48', 'tw', 'å¿«å[HTML]ï¼$1 MB $2 åæªæ¡è®åã', null);
INSERT INTO `messagetable` VALUES ('49', 'en', 'Cache[HTML]: $1 megabytes on $2 files loaded', null);
INSERT INTO `messagetable` VALUES ('49', 'tw', 'å¿«å[HTML]ï¼$1 MB $2 åæªæ¡è®åã', null);
INSERT INTO `messagetable` VALUES ('50', 'en', 'Cache[HTML]: file can\'t be loaded', null);
INSERT INTO `messagetable` VALUES ('50', 'tw', 'å¿«å[HTML]ï¼æªæ¡è¼å¥å¤±æã', null);
INSERT INTO `messagetable` VALUES ('51', 'en', 'Cache[HTML]: file was loaded', null);
INSERT INTO `messagetable` VALUES ('51', 'tw', 'å¿«å[HTML]ï¼æªæ¡è¼å¥å®æã', null);
INSERT INTO `messagetable` VALUES ('52', 'en', 'Can\'t attack a cursed player when under level 21', null);
INSERT INTO `messagetable` VALUES ('52', 'tw', 'ç¡æ³æ»æç­ç´ 21 ä»¥ä¸çç©å®¶ã', null);
INSERT INTO `messagetable` VALUES ('53', 'en', 'Can\'t attack a newbie player using a cursed weapon', null);
INSERT INTO `messagetable` VALUES ('53', 'tw', 'ç¡æ³æ»ææ°æç©å®¶ã', null);
INSERT INTO `messagetable` VALUES ('54', 'en', 'Can\'t withdraw requested item\"+(count>1?\"s\":\"\"));', null);
INSERT INTO `messagetable` VALUES ('54', 'tw', 'ç¡æ³ååè¦æ±çç©å\"+(count>1?\"s\":\"\")', null);
INSERT INTO `messagetable` VALUES ('55', 'en', 'Cannot exchange items while trading', null);
INSERT INTO `messagetable` VALUES ('55', 'tw', 'äº¤ææç¡æ³äº¤æç©åã', null);
INSERT INTO `messagetable` VALUES ('56', 'en', 'Cannot make items while trading', null);
INSERT INTO `messagetable` VALUES ('56', 'tw', 'äº¤ææç¡æ³è£½ä½ã', null);
INSERT INTO `messagetable` VALUES ('57', 'en', 'Cannot restart while trading', null);
INSERT INTO `messagetable` VALUES ('57', 'tw', 'äº¤ææç¡æ³éæ°éå§ã', null);
INSERT INTO `messagetable` VALUES ('58', 'en', 'Cannot sit while casting', null);
INSERT INTO `messagetable` VALUES ('58', 'tw', 'åä¸æç¡æ³ä½¿ç¨æè½ï¼', null);
INSERT INTO `messagetable` VALUES ('59', 'en', 'Cannot use recipe book while trading', null);
INSERT INTO `messagetable` VALUES ('59', 'tw', 'äº¤ææç¡æ³è£½ä½ã', null);
INSERT INTO `messagetable` VALUES ('60', 'en', 'Cannot use skills while trading', null);
INSERT INTO `messagetable` VALUES ('60', 'tw', 'äº¤ææç¡æ³ä½¿ç¨æè½ã', null);
INSERT INTO `messagetable` VALUES ('61', 'en', 'Cant Register whilst competition is under way', null);
INSERT INTO `messagetable` VALUES ('61', 'tw', 'ç¡æ³å¨ç«¶è³½æéç»è¨ã', null);
INSERT INTO `messagetable` VALUES ('62', 'en', 'Cant Unregister whilst competition is under way', null);
INSERT INTO `messagetable` VALUES ('62', 'tw', 'ç¶ç«¶è³½å·²éå§æï¼å°±ç¡æ³åæ¶ç»è¨ã', null);
INSERT INTO `messagetable` VALUES ('63', 'en', 'Cant Unregister whilst you are already selected for a game', null);
INSERT INTO `messagetable` VALUES ('63', 'tw', 'ç¶ç«¶è³½å·²éå§æï¼å°±ç¡æ³åæ¶ç»è¨ã', null);
INSERT INTO `messagetable` VALUES ('64', 'en', 'Cant register when you have less than 3 points', null);
INSERT INTO `messagetable` VALUES ('64', 'tw', 'ç¶ç©åå¨ 3 é»ä»¥ä¸æç¡æ³åå ç«¶è³½ã', null);
INSERT INTO `messagetable` VALUES ('65', 'en', 'Cant register when you have less than 5 points', null);
INSERT INTO `messagetable` VALUES ('65', 'tw', 'ç¶ç©åå¨ 5 é»ä»¥ä¸æç¡æ³åå ç«¶è³½ã', null);
INSERT INTO `messagetable` VALUES ('66', 'en', 'Cant summon target inside boss zone.', null);
INSERT INTO `messagetable` VALUES ('66', 'tw', 'ç¡æ³å¨ Boss Zone å¬åç®æ¨ã', null);
INSERT INTO `messagetable` VALUES ('67', 'en', 'Changed enchantment of $1\'s $2 from $3 to $4.', null);
INSERT INTO `messagetable` VALUES ('67', 'tw', 'å¼·åã$1ãçã$2ãï¼å¾ $3 è® $4ã', null);
INSERT INTO `messagetable` VALUES ('68', 'en', 'Changed enchantment of $1\'s $2 from $3 to $4.', null);
INSERT INTO `messagetable` VALUES ('68', 'tw', 'å¼·åã$1ãçã$2ãï¼å¾ $3 è® $4ã', null);
INSERT INTO `messagetable` VALUES ('69', 'en', 'Changed name from $1 to $2.', null);
INSERT INTO `messagetable` VALUES ('69', 'tw', 'æ´æ¹ã$1ãçåå­çºã$2ãã', null);
INSERT INTO `messagetable` VALUES ('70', 'en', 'Changed stats of $1.  HP: $2  MP: $3  CP: $4  PvP: $5 / $6', null);
INSERT INTO `messagetable` VALUES ('70', 'tw', 'æ´æ¹ã$1ãççæï¼HPï¼$1  MPï¼$2  CPï¼$3  PvPï¼$4/$5', null);
INSERT INTO `messagetable` VALUES ('71', 'en', 'Chaotic players can\'t use Trade.', null);
INSERT INTO `messagetable` VALUES ('71', 'tw', 'éªæ¡çç©å®¶ç¡æ³ä½¿ç¨äº¤æã', null);
INSERT INTO `messagetable` VALUES ('72', 'en', 'Character $1 jailed for $E1', ' minutes.;ever!');
INSERT INTO `messagetable` VALUES ('72', 'tw', 'ç©å®¶ã$1ãè¢«éå® $E1 ', ' åéã;æ°¸é ï¼');
INSERT INTO `messagetable` VALUES ('73', 'en', 'Character $1 removed from jail', null);
INSERT INTO `messagetable` VALUES ('73', 'tw', 'ç©å®¶ã$1ãè§£é¤éå®ã', null);
INSERT INTO `messagetable` VALUES ('74', 'en', 'Character \" + player + \" jailed for \" + (delay > 0 ? delay + \" minutes.\" : \"ever!\"));', null);
INSERT INTO `messagetable` VALUES ('74', 'tw', 'ç©å®¶ã\"+player+\"ãè¢«éå® \"+ (delay>0 ? delay+\" åéã\" : \"æ°¸é ï¼\")', null);
INSERT INTO `messagetable` VALUES ('75', 'en', 'Character $1 removed from jail', null);
INSERT INTO `messagetable` VALUES ('75', 'tw', 'ç©å®¶ã$1ãè§£é¤éå®ã', null);
INSERT INTO `messagetable` VALUES ('76', 'en', 'Character $1 disconnected from server.', null);
INSERT INTO `messagetable` VALUES ('76', 'tw', 'ç©å®¶ã$1ãå¾ä¼ºæå¨é¢ç·ã', null);
INSERT INTO `messagetable` VALUES ('77', 'en', 'Character not found or access level unaltered.', null);
INSERT INTO `messagetable` VALUES ('77', 'tw', 'æ²æç¼ç¾è©²ç©å®¶ææ¬éç­ç´æ²ææ¹è®ã', null);
INSERT INTO `messagetable` VALUES ('78', 'en', 'Character not found!', null);
INSERT INTO `messagetable` VALUES ('78', 'tw', 'æ¥è©¢ä¸å°è©²ç©å®¶ï¼', null);
INSERT INTO `messagetable` VALUES ('79', 'en', 'Character\'s access level is now set to $1. Effects won\'t be noticeable until next session.', null);
INSERT INTO `messagetable` VALUES ('79', 'tw', 'è§è²çæ¬éç­ç´æ´æ¹çºã$1ããéæ°ç»å¥å¾æææææã', null);
INSERT INTO `messagetable` VALUES ('80', 'en', 'Character\'s access level is now set to $1', null);
INSERT INTO `messagetable` VALUES ('80', 'tw', 'ç©å®¶çæ¬éç­ç´æ´æ¹çºã$1ãã', null);
INSERT INTO `messagetable` VALUES ('81', 'en', 'Clan $1 created. Leader: $2', null);
INSERT INTO `messagetable` VALUES ('81', 'tw', 'ã$1ãè¡çåµç«ãçä¸»ï¸°$2', null);
INSERT INTO `messagetable` VALUES ('82', 'en', 'Clan disbanded.', null);
INSERT INTO `messagetable` VALUES ('82', 'tw', 'è¡çè§£æ£ã', null);
INSERT INTO `messagetable` VALUES ('83', 'en', 'Clan leader isn\'t online.', null);
INSERT INTO `messagetable` VALUES ('83', 'tw', 'è¡ççä¸»ä¸å¨ç·ä¸ã', null);
INSERT INTO `messagetable` VALUES ('84', 'en', 'Closest Town: $1', null);
INSERT INTO `messagetable` VALUES ('84', 'tw', 'æè¿çåé®ï¼$1', null);
INSERT INTO `messagetable` VALUES ('85', 'en', 'Command \'$1\' not recognized', null);
INSERT INTO `messagetable` VALUES ('85', 'tw', 'æä»¤ã$1ãä¸å­å¨ã', null);
INSERT INTO `messagetable` VALUES ('86', 'en', 'Command format is //list_spawns <npcId|npc_name> [tele_index]', null);
INSERT INTO `messagetable` VALUES ('86', 'tw', 'ä½¿ç¨æ¹æ³ï¼//list_spawns <npcId|npc_name> [tele_index]', null);
INSERT INTO `messagetable` VALUES ('87', 'en', 'Command format is //skill_test <ID>', null);
INSERT INTO `messagetable` VALUES ('87', 'tw', 'ä½¿ç¨æ¹æ³ï¼//skill_test <ID>', null);
INSERT INTO `messagetable` VALUES ('88', 'en', 'Command format: //msg <SYSTEM_MSG_ID>', null);
INSERT INTO `messagetable` VALUES ('88', 'tw', 'ä½¿ç¨æ¹æ³ï¼//msg <SYSTEM_MSG_ID>', null);
INSERT INTO `messagetable` VALUES ('89', 'en', 'Congratulation you have won ClanHall!', null);
INSERT INTO `messagetable` VALUES ('89', 'tw', 'æ­åæ¨å¾å°æ ¹æå°ï¼', null);
INSERT INTO `messagetable` VALUES ('90', 'en', 'Congratulations you are married!', null);
INSERT INTO `messagetable` VALUES ('90', 'tw', 'æ­åä½ åçµå©äºï¼', null);
INSERT INTO `messagetable` VALUES ('91', 'en', 'Couldn\'t find your fiance in the Database - Inform a Gamemaster.', null);
INSERT INTO `messagetable` VALUES ('91', 'tw', 'è³æåº«ä¸­æ¾ä¸å°ä½ ä¼´ä¾¶çè³æã', null);
INSERT INTO `messagetable` VALUES ('92', 'en', 'Created $1 at x: $2 y: $3 z: $4', null);
INSERT INTO `messagetable` VALUES ('92', 'tw', 'åµé ã$1ãå¨ x: $1 y: $2 z: $3', null);
INSERT INTO `messagetable` VALUES ('93', 'en', 'Created $1 at x: $2 y: $3 z: $4', null);
INSERT INTO `messagetable` VALUES ('93', 'tw', 'åµé ã$1ãå¨ Xï¼$2 Yï¼$3 Zï¼$4', null);
INSERT INTO `messagetable` VALUES ('94', 'en', 'Created $1 on $2.', null);
INSERT INTO `messagetable` VALUES ('94', 'tw', 'åµé ã$1ãã', null);
INSERT INTO `messagetable` VALUES ('95', 'en', 'Created $1 on $2', null);
INSERT INTO `messagetable` VALUES ('95', 'tw', 'åµé ã$1ãã', null);
INSERT INTO `messagetable` VALUES ('96', 'en', 'Currently in Craft Mode', null);
INSERT INTO `messagetable` VALUES ('96', 'tw', 'ç®åçºå·¥èæ¨¡å¼ã', null);
INSERT INTO `messagetable` VALUES ('97', 'en', 'Dead customers can\'t use manufacture.', null);
INSERT INTO `messagetable` VALUES ('97', 'tw', 'æ­»äº¡çæä¸ç¡æ³è£½ä½ã', null);
INSERT INTO `messagetable` VALUES ('98', 'en', 'Dead people don\'t craft.', null);
INSERT INTO `messagetable` VALUES ('98', 'tw', 'æ­»äº¡çæä¸ç¡æ³å³éã', null);
INSERT INTO `messagetable` VALUES ('99', 'en', 'Deleted $1 from Trade List $2', null);
INSERT INTO `messagetable` VALUES ('99', 'tw', 'åªé¤è²©è³£æ¸å®ã$2ãçã$1ãã', null);
INSERT INTO `messagetable` VALUES ('100', 'en', 'Deleted $1 from $2.', null);
INSERT INTO `messagetable` VALUES ('100', 'tw', 'åªé¤ã$1ãã', null);
INSERT INTO `messagetable` VALUES ('101', 'en', 'Diet mode off', null);
INSERT INTO `messagetable` VALUES ('101', 'tw', 'ç¡ééæ¨¡å¼ééã', null);
INSERT INTO `messagetable` VALUES ('102', 'en', 'Diet mode on', null);
INSERT INTO `messagetable` VALUES ('102', 'tw', 'ç¡ééæ¨¡å¼åç¨ã', null);
INSERT INTO `messagetable` VALUES ('103', 'en', 'Dmg w/o penalty = $1', null);
INSERT INTO `messagetable` VALUES ('103', 'tw', 'æªæ²ç½°çå·å®³ = $1', null);
INSERT INTO `messagetable` VALUES ('104', 'en', 'Duo To Hero Weapons Protection u Canot Use Pet\'s Inventory', null);
INSERT INTO `messagetable` VALUES ('104', 'tw', 'ä¸è½å°è±éæ­¦å¨æ¾å¨å¯µç©éå·æ¬ã', null);
INSERT INTO `messagetable` VALUES ('105', 'en', 'Enter a valid player name or radius.', null);
INSERT INTO `messagetable` VALUES ('105', 'tw', 'æ ¼å¼é¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('106', 'en', 'Enter a valid radius.', null);
INSERT INTO `messagetable` VALUES ('106', 'tw', 'æ ¼å¼é¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('107', 'en', 'Entering world in Invisible mode.', null);
INSERT INTO `messagetable` VALUES ('107', 'tw', 'ç®åçºé±å½¢çæã', null);
INSERT INTO `messagetable` VALUES ('108', 'en', 'Entering world in Invulnerable mode.', null);
INSERT INTO `messagetable` VALUES ('108', 'tw', 'ç®åçºç¡æµçæã', null);
INSERT INTO `messagetable` VALUES ('109', 'en', 'Entering world in Message Refusal mode.', null);
INSERT INTO `messagetable` VALUES ('109', 'tw', 'ç®åçºè¨æ¯ç¦æ­¢çæã', null);
INSERT INTO `messagetable` VALUES ('110', 'en', 'Error - Fishes are not definied', null);
INSERT INTO `messagetable` VALUES ('110', 'tw', 'é£é­é¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('111', 'en', 'Error placing flag:$1', null);
INSERT INTO `messagetable` VALUES ('111', 'tw', 'æ¾ç½®é¯èª¤ï¼$1', null);
INSERT INTO `messagetable` VALUES ('112', 'en', 'Error using siege assault:$1', null);
INSERT INTO `messagetable` VALUES ('112', 'tw', 'æ»åæ°é¯èª¤ï¼$1', null);
INSERT INTO `messagetable` VALUES ('113', 'en', 'Error while modifying character.', null);
INSERT INTO `messagetable` VALUES ('113', 'tw', 'ä¿®æ¹é¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('114', 'en', 'Error with your coords, Please ask a GM for help!', null);
INSERT INTO `messagetable` VALUES ('114', 'tw', 'æ¨ç®åçåº§æ¨ä½ç½®é¯èª¤ï¼è«ç¡å¿«éç¥ GM ä¿®å¾©ï¼', null);
INSERT INTO `messagetable` VALUES ('115', 'en', 'Error: there is no such skill.', null);
INSERT INTO `messagetable` VALUES ('115', 'tw', 'ç¡æ­¤æè½ã', null);
INSERT INTO `messagetable` VALUES ('116', 'en', 'Example: //script_load <questFolder>/<questSubFolders...>/<filename>.<ext>', null);
INSERT INTO `messagetable` VALUES ('116', 'tw', 'èä¾ï¼//script_load <questFolder>/<questSubFolders...>/<filename>.<ext>', null);
INSERT INTO `messagetable` VALUES ('117', 'en', 'Example: //script_load quests/SagasSuperclass/__init__.py', null);
INSERT INTO `messagetable` VALUES ('117', 'tw', 'èä¾ï¼//script_load quests/SagasSuperclass/__init__.py', null);
INSERT INTO `messagetable` VALUES ('118', 'en', 'Failed loading: $1', null);
INSERT INTO `messagetable` VALUES ('118', 'tw', 'è®åå¤±æï¼$1', null);
INSERT INTO `messagetable` VALUES ('119', 'en', 'File Not Found: $1', null);
INSERT INTO `messagetable` VALUES ('119', 'tw', 'æ²æç¼ç¾æªæ¡ï¼$1', null);
INSERT INTO `messagetable` VALUES ('120', 'en', 'File transfer error.', null);
INSERT INTO `messagetable` VALUES ('120', 'tw', 'æªæ¡è½æé¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('121', 'en', 'Fishing server is currently offline', null);
INSERT INTO `messagetable` VALUES ('121', 'tw', 'é£é­ä¼ºæå¨ç®åééã', null);
INSERT INTO `messagetable` VALUES ('122', 'en', 'Format is server_list_clock <on/off>', null);
INSERT INTO `messagetable` VALUES ('122', 'tw', 'ä½¿ç¨æ¹æ³ï¼//server_list_clock <on/off>', null);
INSERT INTO `messagetable` VALUES ('123', 'en', 'Format is server_max_player <max>', null);
INSERT INTO `messagetable` VALUES ('123', 'tw', 'ä½¿ç¨æ¹æ³ï¼//server_max_player <max>', null);
INSERT INTO `messagetable` VALUES ('124', 'en', 'Fully rested. Effect of $1 has been removed.', null);
INSERT INTO `messagetable` VALUES ('124', 'tw', 'å¾å°ååçä¼æ¯ï¼HPå®å¨æ¢å¾©ã', null);
INSERT INTO `messagetable` VALUES ('125', 'en', 'Gay marriage is not allowed on this server!', null);
INSERT INTO `messagetable` VALUES ('125', 'tw', 'éåä¼ºæå¨ä¸åè¨±åæ§çµå©ï¼', null);
INSERT INTO `messagetable` VALUES ('126', 'en', 'Geo Engine is Turned Off!', null);
INSERT INTO `messagetable` VALUES ('126', 'tw', 'Geo Engine æªéåï¼', null);
INSERT INTO `messagetable` VALUES ('127', 'en', 'GeoData bug save Failed!', null);
INSERT INTO `messagetable` VALUES ('127', 'tw', 'GeoData Bug å²å­å¤±æï¼', null);
INSERT INTO `messagetable` VALUES ('128', 'en', 'GeoData bug saved!', null);
INSERT INTO `messagetable` VALUES ('128', 'tw', 'GeoData Bug å²å­ï¼', null);
INSERT INTO `messagetable` VALUES ('129', 'en', 'GeoEngine: Can See Target', null);
INSERT INTO `messagetable` VALUES ('129', 'tw', 'GeoEngine: å¯ä»¥çè¦ç®æ¨ã', null);
INSERT INTO `messagetable` VALUES ('130', 'en', 'GeoEngine: Can\'t See Target', null);
INSERT INTO `messagetable` VALUES ('130', 'tw', 'GeoEngine: ä¸è½çè¦ç®æ¨ã', null);
INSERT INTO `messagetable` VALUES ('131', 'en', 'GeoEngine: File for region [$1,$2] couldn\'t be loaded', null);
INSERT INTO `messagetable` VALUES ('131', 'tw', 'GeoEngine: ååæªæ¡ [$1,$2] è¼å¥å¤±æã', null);
INSERT INTO `messagetable` VALUES ('132', 'en', 'GeoEngine: File for region [$1,$2] loaded succesfuly', null);
INSERT INTO `messagetable` VALUES ('132', 'tw', 'GeoEngine: ååæªæ¡ [$1,$2] è¼å¥å®æã', null);
INSERT INTO `messagetable` VALUES ('133', 'en', 'GeoEngine: File for region [$1,$2] unloaded.', null);
INSERT INTO `messagetable` VALUES ('133', 'tw', 'GeoEngine: ååæªæ¡ [$1,$2] åæ­¢ä½¿ç¨ã', null);
INSERT INTO `messagetable` VALUES ('134', 'en', 'GeoEngine: Geo_NSWE -> $1->$2', null);
INSERT INTO `messagetable` VALUES ('134', 'tw', 'GeoEngine: Geo_NSWE -> $1->$2', null);
INSERT INTO `messagetable` VALUES ('135', 'en', 'GeoEngine: Geo_Type = $1', null);
INSERT INTO `messagetable` VALUES ('135', 'tw', 'GeoEngine: Geo_Type = $1', null);
INSERT INTO `messagetable` VALUES ('136', 'en', 'GeoEngine: Geo_Z = $1 Loc_Z = $2', null);
INSERT INTO `messagetable` VALUES ('136', 'tw', 'GeoEngine: Geo_Z = $1 Loc_Z = $2', null);
INSERT INTO `messagetable` VALUES ('137', 'en', 'GeoEngine: Your current position:', null);
INSERT INTO `messagetable` VALUES ('137', 'tw', 'GeoEngineï¼ç®åä½ çä½ç½®ï¼', null);
INSERT INTO `messagetable` VALUES ('138', 'en', 'GeoEngine: height = $1', null);
INSERT INTO `messagetable` VALUES ('138', 'tw', 'GeoEngine: height = $1', null);
INSERT INTO `messagetable` VALUES ('139', 'en', 'Geoeditor connection mode set to $1.', null);
INSERT INTO `messagetable` VALUES ('139', 'tw', 'GeoEditor é£ç·æ¨¡å¼è®æ´çº $1ã', null);
INSERT INTO `messagetable` VALUES ('140', 'en', 'Geoeditor not connected.', null);
INSERT INTO `messagetable` VALUES ('140', 'tw', 'GeoEditor æ²æé£ç·ã', null);
INSERT INTO `messagetable` VALUES ('141', 'en', 'Go away, you\'re not welcome here.', null);
INSERT INTO `messagetable` VALUES ('141', 'tw', 'å¿«é¢éï¼éè£¡ä¸æ­¡è¿ä½ ã', null);
INSERT INTO `messagetable` VALUES ('142', 'en', 'HP of the party has been balanced.', null);
INSERT INTO `messagetable` VALUES ('142', 'tw', 'å¹³åéä¼æå¡çHPã', null);
INSERT INTO `messagetable` VALUES ('143', 'en', 'Healed within $1 unit radius.', null);
INSERT INTO `messagetable` VALUES ('143', 'tw', 'æ¢å¾© $1 åå¾å§çææç©ä»¶ã', null);
INSERT INTO `messagetable` VALUES ('144', 'en', 'Heroes formed', null);
INSERT INTO `messagetable` VALUES ('144', 'tw', 'è¨­ç½®è±éã', null);
INSERT INTO `messagetable` VALUES ('145', 'en', 'Hired mercenary ($1,$2) at coords:$3,$4,$5 heading:$6', null);
INSERT INTO `messagetable` VALUES ('145', 'tw', 'èè«å­åµ ($1ï¼$2) ä½ç½®ï¼$3ï¼$4ï¼$5 é¢åï¼$6', null);
INSERT INTO `messagetable` VALUES ('146', 'en', 'Hook x,y: $1,$2 - Water Z, Player Z:$3, $4', null);
INSERT INTO `messagetable` VALUES ('146', 'tw', 'Hook x,y: $1,$2 - Water Z, Player Z:$3, $4', null);
INSERT INTO `messagetable` VALUES ('147', 'en', 'Illegal action performed!', null);
INSERT INTO `messagetable` VALUES ('147', 'tw', 'ååºéæ³åä½ï¼', null);
INSERT INTO `messagetable` VALUES ('148', 'en', 'Incorrect Door.', null);
INSERT INTO `messagetable` VALUES ('148', 'tw', 'é¯èª¤çéã', null);
INSERT INTO `messagetable` VALUES ('149', 'en', 'Incorrect Target', null);
INSERT INTO `messagetable` VALUES ('149', 'tw', 'ç®æ¨é¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('150', 'en', 'Incorrect command arguments.', null);
INSERT INTO `messagetable` VALUES ('150', 'tw', 'æä»¤é¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('151', 'en', 'Incorrect monster spawn.', null);
INSERT INTO `messagetable` VALUES ('151', 'tw', 'åµé é¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('152', 'en', 'Incorrect monster template.', null);
INSERT INTO `messagetable` VALUES ('152', 'tw', 'NPC ID é¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('153', 'en', 'Incorrect parameter or target.', null);
INSERT INTO `messagetable` VALUES ('153', 'tw', 'åæ¸æç®æ¨é¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('154', 'en', 'Incorrect parameter', null);
INSERT INTO `messagetable` VALUES ('154', 'tw', 'åæ¸é¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('155', 'en', 'Incorrect target group.', null);
INSERT INTO `messagetable` VALUES ('155', 'tw', 'ç¾¤çµé¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('156', 'en', 'Incorrect target.', null);
INSERT INTO `messagetable` VALUES ('156', 'tw', 'ç®æ¨é¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('157', 'en', 'Incorrect target/radius specified.', null);
INSERT INTO `messagetable` VALUES ('157', 'tw', 'ç®æ¨é¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('158', 'en', 'Invalid NPC ID specified.', null);
INSERT INTO `messagetable` VALUES ('158', 'tw', 'é¯èª¤ç NPC IDã', null);
INSERT INTO `messagetable` VALUES ('159', 'en', 'Invalid Target: Seller must be targetted', null);
INSERT INTO `messagetable` VALUES ('159', 'tw', 'ç®æ¨é¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('160', 'en', 'Invalid auction duration!', null);
INSERT INTO `messagetable` VALUES ('160', 'tw', 'ææ¨é¯èª¤ï¼', null);
INSERT INTO `messagetable` VALUES ('161', 'en', 'Invalid auction!', null);
INSERT INTO `messagetable` VALUES ('161', 'tw', 'ææ¨é¯èª¤ï¼', null);
INSERT INTO `messagetable` VALUES ('162', 'en', 'Invalid auction', null);
INSERT INTO `messagetable` VALUES ('162', 'tw', 'ææ¨é¯èª¤ï¼', null);
INSERT INTO `messagetable` VALUES ('163', 'en', 'Invalid bid!', null);
INSERT INTO `messagetable` VALUES ('163', 'tw', 'ææ¨é¯èª¤ï¼', null);
INSERT INTO `messagetable` VALUES ('164', 'en', 'Invalid group specified.', null);
INSERT INTO `messagetable` VALUES ('164', 'tw', 'ç¾¤çµé¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('165', 'en', 'Invalid parameter!', null);
INSERT INTO `messagetable` VALUES ('165', 'tw', 'åæ¸é¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('166', 'en', 'Invalid radius.', null);
INSERT INTO `messagetable` VALUES ('166', 'tw', 'åå¾é¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('167', 'en', 'Invalid skill level, contact your admin!', null);
INSERT INTO `messagetable` VALUES ('167', 'tw', 'æè½ç­ç´é¯èª¤ï¼è«åå ±çµ¦ç®¡çèï¼', null);
INSERT INTO `messagetable` VALUES ('168', 'en', 'Is there something wrong with you, are you trying to go out with youself?', null);
INSERT INTO `messagetable` VALUES ('168', 'tw', 'ç®æ¨é¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('169', 'en', 'Item creation aborted', null);
INSERT INTO `messagetable` VALUES ('169', 'tw', 'ç©åè£½ä½åæ¶ï¼', null);
INSERT INTO `messagetable` VALUES ('170', 'en', 'Item creation is currently disabled.', null);
INSERT INTO `messagetable` VALUES ('170', 'tw', 'è£½ä½ç©åçåè½ç®åééã', null);
INSERT INTO `messagetable` VALUES ('171', 'en', 'Item failed to open', null);
INSERT INTO `messagetable` VALUES ('171', 'tw', 'éåç©åå¤±æã', null);
INSERT INTO `messagetable` VALUES ('172', 'en', 'Item templates reloaded', null);
INSERT INTO `messagetable` VALUES ('172', 'tw', 'Item éæ°è¼å¥ã', null);
INSERT INTO `messagetable` VALUES ('173', 'en', 'Item(s) failed to create', null);
INSERT INTO `messagetable` VALUES ('173', 'tw', 'ç©åè£½ä½å¤±æï¼', null);
INSERT INTO `messagetable` VALUES ('174', 'en', 'Kicked $1 players', null);
INSERT INTO `messagetable` VALUES ('174', 'tw', 'è¸¢é¤ $1 ä½ç©å®¶ã', null);
INSERT INTO `messagetable` VALUES ('175', 'en', 'Killed all characters within a $1 unit radius.', null);
INSERT INTO `messagetable` VALUES ('175', 'tw', 'æ¶æ»å¨ $1 åå¾å§çææç©ä»¶ã', null);
INSERT INTO `messagetable` VALUES ('176', 'en', 'Leader is not correct', null);
INSERT INTO `messagetable` VALUES ('176', 'tw', 'çä¸»é¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('177', 'en', 'Level incorrect.', null);
INSERT INTO `messagetable` VALUES ('177', 'tw', 'ç­ç´é¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('178', 'en', 'Los: from X: $1 Y: $2--->> X: $3 Y: $4', null);
INSERT INTO `messagetable` VALUES ('178', 'tw', 'åº§æ¨ï¼å¾ Xï¼$1 Yï¼$2 --->> Xï¼$3 Yï¼$4', null);
INSERT INTO `messagetable` VALUES ('179', 'en', 'Manor System: all data saved', null);
INSERT INTO `messagetable` VALUES ('179', 'tw', 'èåç³»çµ±ï¼ææè³æå·²å²å­å®ç¢ã', null);
INSERT INTO `messagetable` VALUES ('180', 'en', 'Manor System: disabled', null);
INSERT INTO `messagetable` VALUES ('180', 'tw', 'èåç³»çµ±ï¼ééã', null);
INSERT INTO `messagetable` VALUES ('181', 'en', 'Manor System: enabled', null);
INSERT INTO `messagetable` VALUES ('181', 'tw', 'èåç³»çµ±ï¼ååã', null);
INSERT INTO `messagetable` VALUES ('182', 'en', 'Manor System: next period approved', null);
INSERT INTO `messagetable` VALUES ('182', 'tw', 'èåç³»çµ±ï¼ä¸ä¸åé±æååã', null);
INSERT INTO `messagetable` VALUES ('183', 'en', 'Manor System: not under maintenance', null);
INSERT INTO `messagetable` VALUES ('183', 'tw', 'èåç³»çµ±ï¼ä¸å¨ç¶­ä¿®ä¸­ã', null);
INSERT INTO `messagetable` VALUES ('184', 'en', 'Manor System: set to next period', null);
INSERT INTO `messagetable` VALUES ('184', 'tw', 'èåç³»çµ±ï¼è¨­å®å¨ä¸ä¸åé±æã', null);
INSERT INTO `messagetable` VALUES ('185', 'en', 'Manor System: under maintenance', null);
INSERT INTO `messagetable` VALUES ('185', 'tw', 'èåç³»çµ±ï¼ç¶­ä¿®ä¸­ã', null);
INSERT INTO `messagetable` VALUES ('186', 'en', 'Manor data for $1 was nulled', null);
INSERT INTO `messagetable` VALUES ('186', 'tw', 'ã$1ãçèåè³ææ¯ç©ºçã', null);
INSERT INTO `messagetable` VALUES ('187', 'en', 'Manor data was nulled', null);
INSERT INTO `messagetable` VALUES ('187', 'tw', 'èåè³ææ¯ç©ºçã', null);
INSERT INTO `messagetable` VALUES ('188', 'en', 'Manufacture aborted', null);
INSERT INTO `messagetable` VALUES ('188', 'tw', 'è£½ä½åæ¶ï¼', null);
INSERT INTO `messagetable` VALUES ('189', 'en', 'Manufacturer $1 used $2 $3', null);
INSERT INTO `messagetable` VALUES ('189', 'tw', 'ã$1ãä½¿ç¨ $2 åã$3ãä¾è£½ä½ã', null);
INSERT INTO `messagetable` VALUES ('190', 'en', 'Manufacturer $1 is busy.', null);
INSERT INTO `messagetable` VALUES ('190', 'tw', 'ã$1ãæ­£å¨é²è¡å¶ä»åä½ï¼è«ç¨å¾åè©¦ã', null);
INSERT INTO `messagetable` VALUES ('191', 'en', 'Manufacturer is busy, please try later.', null);
INSERT INTO `messagetable` VALUES ('191', 'tw', 'è£½ä½èæ¼å¿ç¢çæï¼è«ç¨å¾åè©¦ã', null);
INSERT INTO `messagetable` VALUES ('192', 'en', 'MapRegion: x:$1 y:$2', null);
INSERT INTO `messagetable` VALUES ('192', 'tw', 'å°åååï¼x:$1 y:$2', null);
INSERT INTO `messagetable` VALUES ('193', 'en', 'Max players must be a number.', null);
INSERT INTO `messagetable` VALUES ('193', 'tw', 'æ ¼å¼é¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('194', 'en', 'Members: $1/9', null);
INSERT INTO `messagetable` VALUES ('194', 'tw', 'éå¡ï¼$1/9ã', null);
INSERT INTO `messagetable` VALUES ('195', 'en', 'Mercenary Tickets can only be used in a castle.', null);
INSERT INTO `messagetable` VALUES ('195', 'tw', 'å­åµéç½®è¡¨åªè½å¨åå ¡ä½¿ç¨ã', null);
INSERT INTO `messagetable` VALUES ('196', 'en', 'Merchant of Mammon isn\'t registered for spawn.', null);
INSERT INTO `messagetable` VALUES ('196', 'tw', 'è²¡å¯çåäººæªç»è¨å¨ Spawn è³æå§ã', null);
INSERT INTO `messagetable` VALUES ('197', 'en', 'Merchant of Mammon: $1 $2 $3', null);
INSERT INTO `messagetable` VALUES ('197', 'tw', 'è²¡å¯çåäººï¸°$1 $2 $3', null);
INSERT INTO `messagetable` VALUES ('198', 'en', 'Mob group $1 already exists.', null);
INSERT INTO `messagetable` VALUES ('198', 'tw', 'ç¾¤çµç·¨è $1 å·²å­å¨ã', null);
INSERT INTO `messagetable` VALUES ('199', 'en', 'Mob group $1 created.', null);
INSERT INTO `messagetable` VALUES ('199', 'tw', 'ç¾¤çµ $1 å»ºç«ã', null);
INSERT INTO `messagetable` VALUES ('200', 'en', 'Mob group $1 spawned.', null);
INSERT INTO `messagetable` VALUES ('200', 'tw', 'ç¾¤çµ $1 å·²å¬åã', null);
INSERT INTO `messagetable` VALUES ('201', 'en', 'Mob group $1 unspawned and removed.', null);
INSERT INTO `messagetable` VALUES ('201', 'tw', 'ç¾¤çµ $1 ç§»é¤ã', null);
INSERT INTO `messagetable` VALUES ('202', 'en', 'Mob group $1 unspawned.', null);
INSERT INTO `messagetable` VALUES ('202', 'tw', 'ç¾¤çµ $1 ç§»é¤ã', null);
INSERT INTO `messagetable` VALUES ('203', 'en', 'Mode 0: Don\'t send coordinates to geoeditor.', null);
INSERT INTO `messagetable` VALUES ('203', 'tw', 'æ¨¡å¼ 0ï¼ä¸éåºåº§æ¨çµ¦ GeoEditorã', null);
INSERT INTO `messagetable` VALUES ('204', 'en', 'Mode 1: Send coordinates at ValidatePosition from clients.', null);
INSERT INTO `messagetable` VALUES ('204', 'tw', 'æ¨¡å¼ 1ï¼å¾å®¢æ¶ç«¯éåºææçåº§æ¨ã', null);
INSERT INTO `messagetable` VALUES ('205', 'en', 'Mode 2: Send coordinates each second.', null);
INSERT INTO `messagetable` VALUES ('205', 'tw', 'æ¨¡å¼ 2ï¼æ¯ç§é½éåºåº§æ¨ã', null);
INSERT INTO `messagetable` VALUES ('206', 'en', 'MoveCheck: from X: $1 Y: $2--->> X: $3 Y: $4', null);
INSERT INTO `messagetable` VALUES ('206', 'tw', 'ç§»åæª¢æ¥ï¼å¾ Xï¼$1 Yï¼$2 --->> Xï¼$3 Yï¼$4', null);
INSERT INTO `messagetable` VALUES ('207', 'en', 'Need skill level $1', null);
INSERT INTO `messagetable` VALUES ('207', 'tw', 'çµåéå·ä¹æè½ç­ç´å¤ªä½æç¡ç­ç´ã', null);
INSERT INTO `messagetable` VALUES ('208', 'en', 'No Route!', null);
INSERT INTO `messagetable` VALUES ('208', 'tw', 'æ²æè·¯ç·ï¼', null);
INSERT INTO `messagetable` VALUES ('209', 'en', 'No Target!', null);
INSERT INTO `messagetable` VALUES ('209', 'tw', 'æ²æç®æ¨ï¼', null);
INSERT INTO `messagetable` VALUES ('210', 'en', 'No current spawns found.', null);
INSERT INTO `messagetable` VALUES ('210', 'tw', 'æå®ç NPC ä¸å­å¨ã', null);
INSERT INTO `messagetable` VALUES ('211', 'en', 'No recipe for: $1', null);
INSERT INTO `messagetable` VALUES ('211', 'tw', 'æ²æç»éï¼$1', null);
INSERT INTO `messagetable` VALUES ('212', 'en', 'No such clan.', null);
INSERT INTO `messagetable` VALUES ('212', 'tw', 'ç¡æ­¤è¡çã', null);
INSERT INTO `messagetable` VALUES ('213', 'en', 'No such recipe', null);
INSERT INTO `messagetable` VALUES ('213', 'tw', 'æ²æè¢«ç»è¨çè£½ä½å·è»¸ã', null);
INSERT INTO `messagetable` VALUES ('214', 'en', 'No valid target to resurrect', null);
INSERT INTO `messagetable` VALUES ('214', 'tw', 'ç®æ¨é¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('215', 'en', 'None Target!', null);
INSERT INTO `messagetable` VALUES ('215', 'tw', 'æ²æç®æ¨ï¼', null);
INSERT INTO `messagetable` VALUES ('216', 'en', 'Not all the members of your party are ready for a duel.', null);
INSERT INTO `messagetable` VALUES ('216', 'tw', 'ä»æéå¡æ²ææºåå¥½æ±ºé¬¥ã', null);
INSERT INTO `messagetable` VALUES ('217', 'en', 'Not enough points, or not currently in Valdation Period', null);
INSERT INTO `messagetable` VALUES ('217', 'tw', 'æ²æè¶³å¤ çåæ¸æèä¸¦éæææéã', null);
INSERT INTO `messagetable` VALUES ('218', 'en', 'Not implemented yet.', null);
INSERT INTO `messagetable` VALUES ('218', 'tw', 'åè½å°æªå¯¦è£ã', null);
INSERT INTO `messagetable` VALUES ('219', 'en', 'Nothing happened.', null);
INSERT INTO `messagetable` VALUES ('219', 'tw', 'ä»éº¼äºæé½æ²ç¼çã', null);
INSERT INTO `messagetable` VALUES ('220', 'en', 'Ohh Cheat dont work? You have a problem now!', null);
INSERT INTO `messagetable` VALUES ('220', 'tw', 'ç¼çé¯èª¤ï¼', null);
INSERT INTO `messagetable` VALUES ('221', 'en', 'Only a clan that owns a clan hall or a castle can get their emblem displayed on clan related items', null);
INSERT INTO `messagetable` VALUES ('221', 'tw', 'åªææææ ¹æå°ææ¯ææåå ¡çè¡çï¼æè½å¨èè¡çç¸éçéå·ä¸æ¨ç¤ºå¾½ç« ã', null);
INSERT INTO `messagetable` VALUES ('222', 'en', 'Only clan leaders are allowed.', null);
INSERT INTO `messagetable` VALUES ('222', 'tw', 'åªæçä¸»æè½é¨ä¹é£é¾ã', null);
INSERT INTO `messagetable` VALUES ('223', 'en', 'Only clans of level 5 or above may receive reputation points.', null);
INSERT INTO `messagetable` VALUES ('223', 'tw', 'è¡çç­ç´å¿é éå°ç­ç´ 5 ä»¥ä¸ã', null);
INSERT INTO `messagetable` VALUES ('224', 'en', 'Only clans with Level $1 and higher may register for a fort siege.', null);
INSERT INTO `messagetable` VALUES ('224', 'tw', 'åªæè¡çç­ç´ $1 ä»¥ä¸æè½ç»è¨è¦å¡æ°ã', null);
INSERT INTO `messagetable` VALUES ('225', 'en', 'Only clans with Level $1 and higher may register for a castle siege.', null);
INSERT INTO `messagetable` VALUES ('225', 'tw', 'åªæè¡çç­ç´ $1 ä»¥ä¸æè½ç»è¨åå ¡æ»åæ°ã', null);
INSERT INTO `messagetable` VALUES ('226', 'en', 'Only partyleader can leave festival, if minmum party member is reached.', null);
INSERT INTO `messagetable` VALUES ('226', 'tw', 'å¦æéå¡å·²æµéï¼å°±åªæéé·å¯ä»¥é¢éé»æçç¥­å¸ã', null);
INSERT INTO `messagetable` VALUES ('227', 'en', 'Only the castle lord can pickup mercenaries.', null);
INSERT INTO `messagetable` VALUES ('227', 'tw', 'åªæåä¸»å¯ä»¥æ¿èµ·å­åµç©ä»¶ã', null);
INSERT INTO `messagetable` VALUES ('228', 'en', 'PathFinding has not been enabled.', null);
INSERT INTO `messagetable` VALUES ('228', 'tw', 'å°æ¾è·¯å¾çåè½æ²æéåã', null);
INSERT INTO `messagetable` VALUES ('229', 'en', 'Player $1 not found', null);
INSERT INTO `messagetable` VALUES ('229', 'tw', 'æ¥è©¢ä¸å°ç©å®¶ã$1ãã', null);
INSERT INTO `messagetable` VALUES ('230', 'en', 'Player already asked by someone else.', null);
INSERT INTO `messagetable` VALUES ('230', 'tw', 'ç©å®¶å·²ç¶éè«å¶ä»äººã', null);
INSERT INTO `messagetable` VALUES ('231', 'en', 'Player already engaged with someone else.', null);
INSERT INTO `messagetable` VALUES ('231', 'tw', 'ç©å®¶å·²ç¶èå¶ä»äººè¨å©ã', null);
INSERT INTO `messagetable` VALUES ('232', 'en', 'Player already married.', null);
INSERT INTO `messagetable` VALUES ('232', 'tw', 'ç©å®¶å·²ç¶çµå©äºã', null);
INSERT INTO `messagetable` VALUES ('233', 'en', 'Player already participated in the event!', null);
INSERT INTO `messagetable` VALUES ('233', 'tw', 'ç©å®¶å·²ç¶åå æ´»åï¼', null);
INSERT INTO `messagetable` VALUES ('234', 'en', 'Player instance could not be added, it seems to be null!', null);
INSERT INTO `messagetable` VALUES ('234', 'tw', 'ç©å®¶ç¡æ³å å¥ï¼', null);
INSERT INTO `messagetable` VALUES ('235', 'en', 'Player is chat banned.', null);
INSERT INTO `messagetable` VALUES ('235', 'tw', 'ç©å®¶ç¦è¨ä¸­ã', null);
INSERT INTO `messagetable` VALUES ('236', 'en', 'Player is in Jail', null);
INSERT INTO `messagetable` VALUES ('236', 'tw', 'ç©å®¶èæ¼ GM è«®è©¢èã', null);
INSERT INTO `messagetable` VALUES ('237', 'en', 'Player is in jail.', null);
INSERT INTO `messagetable` VALUES ('237', 'tw', 'ç©å®¶èæ¼ GM è«®è©¢èã', null);
INSERT INTO `messagetable` VALUES ('238', 'en', 'Player is not in a clan.', null);
INSERT INTO `messagetable` VALUES ('238', 'tw', 'ç©å®¶ä¸å¨è¡çä¸­ã', null);
INSERT INTO `messagetable` VALUES ('239', 'en', 'Player is not in party.', null);
INSERT INTO `messagetable` VALUES ('239', 'tw', 'ç©å®¶ä¸å¨éä¼ä¸­ã', null);
INSERT INTO `messagetable` VALUES ('240', 'en', 'Player is not part of the event!', null);
INSERT INTO `messagetable` VALUES ('240', 'tw', 'ç©å®¶å¨æ´»åä¸­ä¸æ¯çµéçæï¼', null);
INSERT INTO `messagetable` VALUES ('241', 'en', 'Playing $1.', null);
INSERT INTO `messagetable` VALUES ('241', 'tw', 'æ­æ¾ã$1ãã', null);
INSERT INTO `messagetable` VALUES ('242', 'en', 'Please specify a new enchant value.', null);
INSERT INTO `messagetable` VALUES ('242', 'tw', 'è«éæ°æå®å¼·åæ¸å¼ã', null);
INSERT INTO `messagetable` VALUES ('243', 'en', 'Please specify a valid new enchant value.', null);
INSERT INTO `messagetable` VALUES ('243', 'tw', 'è«éæ°æå®å¼·åæ¸å¼ã', null);
INSERT INTO `messagetable` VALUES ('244', 'en', 'Please specify buylist.', null);
INSERT INTO `messagetable` VALUES ('244', 'tw', 'è«è¼¸å¥è³¼è²·æ¸å®ã', null);
INSERT INTO `messagetable` VALUES ('245', 'en', 'Please specify correct name.', null);
INSERT INTO `messagetable` VALUES ('245', 'tw', 'è«è¼¸å¥æ­£ç¢ºçåç¨±ã', null);
INSERT INTO `messagetable` VALUES ('246', 'en', 'Polymorph succeed', null);
INSERT INTO `messagetable` VALUES ('246', 'tw', 'è®èº«æåã', null);
INSERT INTO `messagetable` VALUES ('247', 'en', 'Quest Reloaded Failed', null);
INSERT INTO `messagetable` VALUES ('247', 'tw', 'ä»»åè³æéæ°è¼å¥å¤±æã', null);
INSERT INTO `messagetable` VALUES ('248', 'en', 'Quest Reloaded Successfully.', null);
INSERT INTO `messagetable` VALUES ('248', 'tw', 'ä»»åè³æéæ°è¼å¥å®æã', null);
INSERT INTO `messagetable` VALUES ('249', 'en', 'Quest aborted.', null);
INSERT INTO `messagetable` VALUES ('249', 'tw', 'ä»»åè§£é¤ï¼', null);
INSERT INTO `messagetable` VALUES ('250', 'en', 'Registered into gm list', null);
INSERT INTO `messagetable` VALUES ('250', 'tw', 'å å¥ GM åè¡¨ã', null);
INSERT INTO `messagetable` VALUES ('251', 'en', 'Reloading zones...', null);
INSERT INTO `messagetable` VALUES ('251', 'tw', 'éæ°è¼å¥åå...', null);
INSERT INTO `messagetable` VALUES ('252', 'en', 'Remove previous connections first.', null);
INSERT INTO `messagetable` VALUES ('252', 'tw', 'è«åç§»é¤ä¹åçéè¯ã', null);
INSERT INTO `messagetable` VALUES ('253', 'en', 'Removed $1 xp and $2 sp from $3.', null);
INSERT INTO `messagetable` VALUES ('253', 'tw', 'æ¸å°ã$3ãç $1 EXP å $2 SPã', null);
INSERT INTO `messagetable` VALUES ('254', 'en', 'Removed IP $1 from blocklist!', null);
INSERT INTO `messagetable` VALUES ('254', 'tw', 'å¾å°éåå®å§ç§»é¤ IP $1', null);
INSERT INTO `messagetable` VALUES ('255', 'en', 'Removed NPC: $1', null);
INSERT INTO `messagetable` VALUES ('255', 'tw', 'ç§»é¤ NPCï¼$1ã', null);
INSERT INTO `messagetable` VALUES ('256', 'en', 'Removed from gm list', null);
INSERT INTO `messagetable` VALUES ('256', 'tw', 'é¢é GM åè¡¨ã', null);
INSERT INTO `messagetable` VALUES ('257', 'en', 'Request to Engage has been >ACCEPTED<', null);
INSERT INTO `messagetable` VALUES ('257', 'tw', 'è«æ±çµå©è¢«ãæ¥åãäºï¼', null);
INSERT INTO `messagetable` VALUES ('258', 'en', 'Request to Engage has been >DENIED<!', null);
INSERT INTO `messagetable` VALUES ('258', 'tw', 'è«æ±çµå©è¢«ãæçµãäºï¼', null);
INSERT INTO `messagetable` VALUES ('259', 'en', 'RequestChangeNicknameColor: $1 - $2', null);
INSERT INTO `messagetable` VALUES ('259', 'tw', 'æ´æ¹ç¨±èé¡è²ï¼$1 - $2', null);
INSERT INTO `messagetable` VALUES ('260', 'en', 'RequestExCancelEnchantItem', null);
INSERT INTO `messagetable` VALUES ('260', 'tw', 'åæ¶ç²¾çã', null);
INSERT INTO `messagetable` VALUES ('261', 'en', 'RequestExTryToPutEnchantSupportItem: $1 - $2', null);
INSERT INTO `messagetable` VALUES ('261', 'tw', 'å°ç²¾çåæ¾ä¸å»ï¼$1 - $2', null);
INSERT INTO `messagetable` VALUES ('262', 'en', 'RequestExTryToPutEnchantTargetItem: $1', null);
INSERT INTO `messagetable` VALUES ('262', 'tw', 'å°è¦ç²¾ççéå·æ¾ä¸å»ï¼$1', null);
INSERT INTO `messagetable` VALUES ('263', 'en', 'RequestResetNickname', null);
INSERT INTO `messagetable` VALUES ('263', 'tw', 'æ¢å¾©ç¨±èã', null);
INSERT INTO `messagetable` VALUES ('264', 'en', 'Resurrected all non-players within a $1 unit radius.', null);
INSERT INTO `messagetable` VALUES ('264', 'tw', 'å¨ $1 åå¾å§çææéç©å®¶å¾©æ´»ã', null);
INSERT INTO `messagetable` VALUES ('265', 'en', 'Resurrected all players within a $1 unit radius.', null);
INSERT INTO `messagetable` VALUES ('265', 'tw', 'å¨ $1 åå¾å§çææç©å®¶å¾©æ´»ã', null);
INSERT INTO `messagetable` VALUES ('266', 'en', 'SQLException while changing character\'s access level', null);
INSERT INTO `messagetable` VALUES ('266', 'tw', 'è³æåº«åºé¯ï¼', null);
INSERT INTO `messagetable` VALUES ('267', 'en', 'SQLException while jailing player', null);
INSERT INTO `messagetable` VALUES ('267', 'tw', 'è³æåº«åºé¯ï¼', null);
INSERT INTO `messagetable` VALUES ('268', 'en', 'Server do not accepts geoeditor connections now.', null);
INSERT INTO `messagetable` VALUES ('268', 'tw', 'ä¼ºæå¨ç¾å¨ä¸æ¥å GeoEditor é£ç·ã', null);
INSERT INTO `messagetable` VALUES ('269', 'en', 'Server is not GM only anymore', null);
INSERT INTO `messagetable` VALUES ('269', 'tw', 'ä¼ºæå¨ç®åçºå¨é¨éæ¾ã', null);
INSERT INTO `messagetable` VALUES ('270', 'en', 'Server is now GM only', null);
INSERT INTO `messagetable` VALUES ('270', 'tw', 'ä¼ºæå¨ç®åçº GM å°å±¬ã', null);
INSERT INTO `messagetable` VALUES ('271', 'en', 'Skill not implemented. Skill ID: $1 $2', null);
INSERT INTO `messagetable` VALUES ('271', 'tw', 'æ­¤æè½å°æªå¯¦è£ãæè½ IDï¸°$1 $2', null);
INSERT INTO `messagetable` VALUES ('272', 'en', 'Specified player name didn\'t lead to a valid account.', null);
INSERT INTO `messagetable` VALUES ('272', 'tw', 'å¸³èä¸å­å¨ã', null);
INSERT INTO `messagetable` VALUES ('273', 'en', 'Specify a character name.', null);
INSERT INTO `messagetable` VALUES ('273', 'tw', 'è«è¼¸å¥ç©å®¶åç¨±ã', null);
INSERT INTO `messagetable` VALUES ('274', 'en', 'Specify a valid number.', null);
INSERT INTO `messagetable` VALUES ('274', 'tw', 'è«è¼¸å¥æ­£ç¢ºæ¸å¼ã', null);
INSERT INTO `messagetable` VALUES ('275', 'en', 'Successfully Changed karma for $1 from ($2) to ($3).', null);
INSERT INTO `messagetable` VALUES ('275', 'tw', 'æ´æ¹ã$1ãçæ§åï¼å¾ ($2) è® ($3)ã', null);
INSERT INTO `messagetable` VALUES ('276', 'en', 'Summon absorbed $1 damage.', null);
INSERT INTO `messagetable` VALUES ('276', 'tw', 'å¬åå¸æ¶ã$1ãçå·å®³ã', null);
INSERT INTO `messagetable` VALUES ('277', 'en', 'Summon reflected $1 damage.', null);
INSERT INTO `messagetable` VALUES ('277', 'tw', 'å¬åé æã$1ãçå·å®³ã', null);
INSERT INTO `messagetable` VALUES ('278', 'en', 'Summon skill $1 not described yet', null);
INSERT INTO `messagetable` VALUES ('278', 'tw', 'å¬åæè½ã$1ãå°æªå¯¦è£ã', null);
INSERT INTO `messagetable` VALUES ('279', 'en', 'Summon was unsummoned because it exited siege zone', null);
INSERT INTO `messagetable` VALUES ('279', 'tw', 'å çºé¢éäºæ»åæ°ååï¼å æ­¤åæ¶å¬åã', null);
INSERT INTO `messagetable` VALUES ('280', 'en', 'Summon your Strider first.', null);
INSERT INTO `messagetable` VALUES ('280', 'tw', 'è«åå¬ååº§é¾ã', null);
INSERT INTO `messagetable` VALUES ('281', 'en', 'Syntax: //quest_reload <questFolder>.<questSubFolders...>.questName> or //quest_reload <id>', null);
INSERT INTO `messagetable` VALUES ('281', 'tw', 'ä½¿ç¨æ¹æ³ï¸°//quest_reload <è³æå¤¾> æ //quest_reload <ID>', null);
INSERT INTO `messagetable` VALUES ('282', 'en', 'Target affected by weapon special ability!', null);
INSERT INTO `messagetable` VALUES ('282', 'tw', 'ç®æ¨åå°æ­¦å¨ç¹æ®å±¬æ§å½±é¿ï¼', null);
INSERT INTO `messagetable` VALUES ('283', 'en', 'Target does not belong to your clan', null);
INSERT INTO `messagetable` VALUES ('283', 'tw', 'å°è±¡å¿é æ¯è¡çæå¡ã', null);
INSERT INTO `messagetable` VALUES ('284', 'en', 'Target is in trade refusal mode', null);
INSERT INTO `messagetable` VALUES ('284', 'tw', 'äº¤æé²è¡ä¸­ã', null);
INSERT INTO `messagetable` VALUES ('285', 'en', 'Target is not charged by elements.', null);
INSERT INTO `messagetable` VALUES ('285', 'tw', 'ç®æ¨æ²ææ³¨å¥åç´ ä¹åã', null);
INSERT INTO `messagetable` VALUES ('286', 'en', 'Target is not in game.', null);
INSERT INTO `messagetable` VALUES ('286', 'tw', 'ç®æ¨é¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('287', 'en', 'Target is not ingame.', null);
INSERT INTO `messagetable` VALUES ('287', 'tw', 'ç®æ¨é¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('288', 'en', 'Target needs to be online to get a title', null);
INSERT INTO `messagetable` VALUES ('288', 'tw', 'å°æ¹ä¸å¨éæ²ä¸­ã', null);
INSERT INTO `messagetable` VALUES ('289', 'en', 'Target reflected to you $1 damage.', null);
INSERT INTO `messagetable` VALUES ('289', 'tw', 'ç®æ¨å°æ¨é æã$1ãçå·å®³ã', null);
INSERT INTO `messagetable` VALUES ('290', 'en', 'Target reflected to your summon $1 damage.', null);
INSERT INTO `messagetable` VALUES ('290', 'tw', 'ç®æ¨å°æ¨çå¬åé æã$1ãçå·å®³ã', null);
INSERT INTO `messagetable` VALUES ('291', 'en', 'Target type of skill is not currently handled', null);
INSERT INTO `messagetable` VALUES ('291', 'tw', 'æ­¤é¡åæè½éç¡æ³æ­£å¸¸ä½¿ç¨ã', null);
INSERT INTO `messagetable` VALUES ('292', 'en', 'Tax value must be between 0 and $1.', null);
INSERT INTO `messagetable` VALUES ('292', 'tw', 'ç¨çåªè½å¨ 0 è³ $1 ä¹éã', null);
INSERT INTO `messagetable` VALUES ('293', 'en', 'TeleToLocation (Castle): x:$1 y:$2 z:$3', null);
INSERT INTO `messagetable` VALUES ('293', 'tw', 'å³éä½ç½® (åå ¡)ï¼x:$1 y:$2 z:$3', null);
INSERT INTO `messagetable` VALUES ('294', 'en', 'TeleToLocation (ClanHall): x:$1 y:$2 z:$3', null);
INSERT INTO `messagetable` VALUES ('294', 'tw', 'å³éä½ç½® (æ ¹æå°)ï¼x:$1 y:$2 z:$3', null);
INSERT INTO `messagetable` VALUES ('295', 'en', 'TeleToLocation (SiegeFlag): x:$1 y:$2 z:$3', null);
INSERT INTO `messagetable` VALUES ('295', 'tw', 'å³éä½ç½® (æ»åæ°æå¹)ï¼x:$1 y:$2 z:$3', null);
INSERT INTO `messagetable` VALUES ('296', 'en', 'TeleToLocation (Town): x:$1 y:$2 z:$3', null);
INSERT INTO `messagetable` VALUES ('296', 'tw', 'å³éä½ç½® (åé®)ï¼x:$1 y:$2 z:$3', null);
INSERT INTO `messagetable` VALUES ('297', 'en', 'Thank you, you now have $1 Adena, and $2 less Goldbar(s).', null);
INSERT INTO `messagetable` VALUES ('297', 'tw', 'è¬è¬ï¼æ¨ç¾å¨ææ $1 éå¹£ï¼å $2 åéå¡ã', null);
INSERT INTO `messagetable` VALUES ('298', 'en', 'Thank you, you now have $1 Goldbar(s), and $2 less adena.', null);
INSERT INTO `messagetable` VALUES ('298', 'tw', 'è¬è¬ï¼æ¨ç¾å¨ææ $1 åéå¡ï¼å $2 éå¹£ã', null);
INSERT INTO `messagetable` VALUES ('299', 'en', 'The Blacksmith of Mammon will respawn in $1 minute(s).', null);
INSERT INTO `messagetable` VALUES ('299', 'tw', 'è²¡å¯çéµå å°å¨ $1 åéå¾éæ°å®ä½ã', null);
INSERT INTO `messagetable` VALUES ('300', 'en', 'The Merchant of Mammon will respawn in $1 minute(s).', null);
INSERT INTO `messagetable` VALUES ('300', 'tw', 'è²¡å¯çåäººå°å¨ $1 åéå¾éæ°å®ä½ã', null);
INSERT INTO `messagetable` VALUES ('301', 'en', 'The Wyvern has been summoned successfully!', null);
INSERT INTO `messagetable` VALUES ('301', 'tw', 'é£é¾å¬åæåï¼', null);
INSERT INTO `messagetable` VALUES ('302', 'en', 'The chest Is empty.', null);
INSERT INTO `messagetable` VALUES ('302', 'tw', 'å¯¶ç®±æ¯ç©ºçã', null);
INSERT INTO `messagetable` VALUES ('303', 'en', 'The clan crest file size was too big (max 256 bytes).', null);
INSERT INTO `messagetable` VALUES ('303', 'tw', 'è¡ççå¾½æªæ¡å¤ªå¤§ (æå¤§ 256 bytes)ã', null);
INSERT INTO `messagetable` VALUES ('304', 'en', 'The clock will not be displayed', null);
INSERT INTO `messagetable` VALUES ('304', 'tw', 'ééæéé¡¯ç¤ºã', null);
INSERT INTO `messagetable` VALUES ('305', 'en', 'The command $1 does not exists!', null);
INSERT INTO `messagetable` VALUES ('305', 'tw', 'æä»¤ \" + command.split(\"_\")[0] + \" ä¸å­å¨ï¼', null);
INSERT INTO `messagetable` VALUES ('306', 'en', 'The competition period is currently in effect.', null);
INSERT INTO `messagetable` VALUES ('306', 'tw', 'ç¾å¨æ¯ç«¶ç­æéã', null);
INSERT INTO `messagetable` VALUES ('307', 'en', 'The crest file size was too big (max 192 bytes).', null);
INSERT INTO `messagetable` VALUES ('307', 'tw', 'çå¾½æªæ¡å¤ªå¤§ (æå¤§ 192 bytes)ã', null);
INSERT INTO `messagetable` VALUES ('308', 'en', 'The deadline to register for the siege of $1 has passed.', null);
INSERT INTO `messagetable` VALUES ('308', 'tw', 'ã$1ãæ»åæ°ç»è¨æéå·²çµæã', null);
INSERT INTO `messagetable` VALUES ('309', 'en', 'The deadline to register for the siege of $1 has passed.', null);
INSERT INTO `messagetable` VALUES ('309', 'tw', 'ã$1ãè¦å¡æ°ç»è¨æéå·²çµæã', null);
INSERT INTO `messagetable` VALUES ('310', 'en', 'The festival has ended. Your party leader must now register your score before the next festival takes place.', null);
INSERT INTO `messagetable` VALUES ('310', 'tw', 'é»æçç¥­å¸å·²çµæãéé·å¿é å¨ä¸ä¸å ´éå§åå®æåæ¸ç»è¨ã', null);
INSERT INTO `messagetable` VALUES ('311', 'en', 'The insignia file size is greater than 2176 bytes.', null);
INSERT INTO `messagetable` VALUES ('311', 'tw', 'çå¾½å¤§å°è¶é 2176 bytesã', null);
INSERT INTO `messagetable` VALUES ('312', 'en', 'The insignia has been removed.', null);
INSERT INTO `messagetable` VALUES ('312', 'tw', 'è¡çå¾½ç« å·²åªé¤ã', null);
INSERT INTO `messagetable` VALUES ('313', 'en', 'The player declined to join your Command Channel.', null);
INSERT INTO `messagetable` VALUES ('313', 'tw', 'ç©å®¶æçµå å¥ä½ çææ®é »éã', null);
INSERT INTO `messagetable` VALUES ('314', 'en', 'The player you want to ask is not on your friends list, you must first be on each others friends list before you choose to engage.', null);
INSERT INTO `messagetable` VALUES ('314', 'tw', 'è«æ±çå°è±¡å¿é å¨å¥½ååå®å§ã', null);
INSERT INTO `messagetable` VALUES ('315', 'en', 'The sub class could not be added, you have been reverted to your base class.', null);
INSERT INTO `messagetable` VALUES ('315', 'tw', 'çºè¿½å å¯è·æ¥­ï¼å¿é åæ¢å¾©åæ¬çä¸»è·æ¥­ã', null);
INSERT INTO `messagetable` VALUES ('316', 'en', 'The sub class could not be added.', null);
INSERT INTO `messagetable` VALUES ('316', 'tw', 'ç¡æ³è¿½å å¯è·æ¥­ã', null);
INSERT INTO `messagetable` VALUES ('317', 'en', 'There are no sub classes available at this time.', null);
INSERT INTO `messagetable` VALUES ('317', 'tw', 'ç¡æ³è¿½å å¯è·æ¥­ã', null);
INSERT INTO `messagetable` VALUES ('318', 'en', 'There has been an error handling your soul crystal. Please notify your server admin.', null);
INSERT INTO `messagetable` VALUES ('318', 'tw', 'æé­ç³ç¼çé¯èª¤ï¼è«åå ±çµ¦ç®¡çèã', null);
INSERT INTO `messagetable` VALUES ('319', 'en', 'There was a problem while creating the clan.', null);
INSERT INTO `messagetable` VALUES ('319', 'tw', 'è¡çåµç«é¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('320', 'en', 'There was a problem while destroying the clan.', null);
INSERT INTO `messagetable` VALUES ('320', 'tw', 'è¡çè§£æ£é¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('321', 'en', 'There was a trap!', null);
INSERT INTO `messagetable` VALUES ('321', 'tw', 'éæ¯é·é±ï¼', null);
INSERT INTO `messagetable` VALUES ('322', 'en', 'This Boss isn\'t in game - notify L2J Datapack Dev Team', null);
INSERT INTO `messagetable` VALUES ('322', 'tw', 'ç®æ¨é¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('323', 'en', 'This ClanHall is already Free!', null);
INSERT INTO `messagetable` VALUES ('323', 'tw', 'æ­¤æ ¹æå°å·²æ¯åè²»ï¼', null);
INSERT INTO `messagetable` VALUES ('324', 'en', 'This ClanHall isn\'t free!', null);
INSERT INTO `messagetable` VALUES ('324', 'tw', 'æ­¤æ ¹æå°ä¸¦éåè²»ï¼', null);
INSERT INTO `messagetable` VALUES ('325', 'en', 'This Mercenary Ticket can only be used in Aden.', null);
INSERT INTO `messagetable` VALUES ('325', 'tw', 'éåå­åµéç½®è¡¨åªè½å¨äºä¸åä½¿ç¨ã', null);
INSERT INTO `messagetable` VALUES ('326', 'en', 'This Mercenary Ticket can only be used in Dion.', null);
INSERT INTO `messagetable` VALUES ('326', 'tw', 'éåå­åµéç½®è¡¨åªè½å¨çæ©åä½¿ç¨ã', null);
INSERT INTO `messagetable` VALUES ('327', 'en', 'This Mercenary Ticket can only be used in Giran.', null);
INSERT INTO `messagetable` VALUES ('327', 'tw', 'éåå­åµéç½®è¡¨åªè½å¨å¥å²©åä½¿ç¨ã', null);
INSERT INTO `messagetable` VALUES ('328', 'en', 'This Mercenary Ticket can only be used in Gludio.', null);
INSERT INTO `messagetable` VALUES ('328', 'tw', 'éåå­åµéç½®è¡¨åªè½å¨å¤é­¯ä¸åä½¿ç¨ã', null);
INSERT INTO `messagetable` VALUES ('329', 'en', 'This Mercenary Ticket can only be used in Goddard.', null);
INSERT INTO `messagetable` VALUES ('329', 'tw', 'éåå­åµéç½®è¡¨åªè½å¨é«éç¹åä½¿ç¨ã', null);
INSERT INTO `messagetable` VALUES ('330', 'en', 'This Mercenary Ticket can only be used in Heine.', null);
INSERT INTO `messagetable` VALUES ('330', 'tw', 'éåå­åµéç½®è¡¨åªè½å¨å ç´å¾ç«åä½¿ç¨ã', null);
INSERT INTO `messagetable` VALUES ('331', 'en', 'This Mercenary Ticket can only be used in Oren.', null);
INSERT INTO `messagetable` VALUES ('331', 'tw', 'éåå­åµéç½®è¡¨åªè½å¨æ­çåä½¿ç¨ã', null);
INSERT INTO `messagetable` VALUES ('332', 'en', 'This Mercenary Ticket can only be used in Rune.', null);
INSERT INTO `messagetable` VALUES ('332', 'tw', 'éåå­åµéç½®è¡¨åªè½å¨é­¯å åä½¿ç¨ã', null);
INSERT INTO `messagetable` VALUES ('333', 'en', 'This Mercenary Ticket can only be used in Schuttgart.', null);
INSERT INTO `messagetable` VALUES ('333', 'tw', 'éåå­åµéç½®è¡¨åªè½å¨ä¿®å ç¹åä½¿ç¨ã', null);
INSERT INTO `messagetable` VALUES ('334', 'en', 'This castle have no owner, you cannot change configuration', null);
INSERT INTO `messagetable` VALUES ('334', 'tw', 'ç¡æ³æ¹è®éç½®ï¼å çºéæ²æäººææéååå ¡ã', null);
INSERT INTO `messagetable` VALUES ('335', 'en', 'This clan Hall have no owner, you cannot change configuration', null);
INSERT INTO `messagetable` VALUES ('335', 'tw', 'æ­¤æ ¹æå°ä¸¦ç¡ä¸»äººï¼å æ­¤ç¡æ³æ´æ¹ã', null);
INSERT INTO `messagetable` VALUES ('336', 'en', 'This cursed weapon is already active.', null);
INSERT INTO `messagetable` VALUES ('336', 'tw', 'åè©åçæ­¦å¨å·²ç¶å¨ä½¿ç¨ã', null);
INSERT INTO `messagetable` VALUES ('337', 'en', 'This feature is available only for the clan leader', null);
INSERT INTO `messagetable` VALUES ('337', 'tw', 'æ­¤åè½åªæè¡ççä¸»å¯ä»¥ä½¿ç¨ã', null);
INSERT INTO `messagetable` VALUES ('338', 'en', 'This is NOT a PvP zone.', null);
INSERT INTO `messagetable` VALUES ('338', 'tw', 'éè£¡ä¸æ¯ PvP ååã', null);
INSERT INTO `messagetable` VALUES ('339', 'en', 'This is NOT a no landing zone.', null);
INSERT INTO `messagetable` VALUES ('339', 'tw', 'éè£¡æ¯èé¸ååã', null);
INSERT INTO `messagetable` VALUES ('340', 'en', 'This is NOT a peaceful zone.', null);
INSERT INTO `messagetable` VALUES ('340', 'tw', 'éè£¡æ¯å±éªååã', null);
INSERT INTO `messagetable` VALUES ('341', 'en', 'This is a PvP zone.', null);
INSERT INTO `messagetable` VALUES ('341', 'tw', 'éè£¡æ¯ PvP ååã', null);
INSERT INTO `messagetable` VALUES ('342', 'en', 'This is a no landing zone.', null);
INSERT INTO `messagetable` VALUES ('342', 'tw', 'éè£¡ä¸æ¯èé¸ååã', null);
INSERT INTO `messagetable` VALUES ('343', 'en', 'This is a peaceful zone.', null);
INSERT INTO `messagetable` VALUES ('343', 'tw', 'éè£¡æ¯å®å¨ååã', null);
INSERT INTO `messagetable` VALUES ('344', 'en', 'This is not the time for siege registration and so registration and cancellation cannot be done.', null);
INSERT INTO `messagetable` VALUES ('344', 'tw', 'ç¾å¨ä¸æ¯æ»åæ°ç»è¨æéã', null);
INSERT INTO `messagetable` VALUES ('345', 'en', 'This item does not stack - Creation aborted.', null);
INSERT INTO `messagetable` VALUES ('345', 'tw', 'éåç©åä¸æ¯å çç - åµé åæ¶ã', null);
INSERT INTO `messagetable` VALUES ('346', 'en', 'This item doesn\'t exist.', null);
INSERT INTO `messagetable` VALUES ('346', 'tw', 'éåç©åä¸å­å¨ã', null);
INSERT INTO `messagetable` VALUES ('347', 'en', 'This player is a member of your own party.', null);
INSERT INTO `messagetable` VALUES ('347', 'tw', 'ç©å®¶æ¯ä½ çéå¡ã', null);
INSERT INTO `messagetable` VALUES ('348', 'en', 'This skill doesn\'t yet have enchant info in Datapack', null);
INSERT INTO `messagetable` VALUES ('348', 'tw', 'éåæè½éç¡æ³æè¯ã', null);
INSERT INTO `messagetable` VALUES ('349', 'en', 'Too far.', null);
INSERT INTO `messagetable` VALUES ('349', 'tw', 'å¤ªé äºã', null);
INSERT INTO `messagetable` VALUES ('350', 'en', 'Trade refusal disabled', null);
INSERT INTO `messagetable` VALUES ('350', 'tw', 'äº¤æééã', null);
INSERT INTO `messagetable` VALUES ('351', 'en', 'Trade refusal enabled', null);
INSERT INTO `messagetable` VALUES ('351', 'tw', 'äº¤æéåã', null);
INSERT INTO `messagetable` VALUES ('352', 'en', 'TradeList not found!', null);
INSERT INTO `messagetable` VALUES ('352', 'tw', 'æ¥è©¢ä¸å°è©²è²©è³£æ¸å®ï¼', null);
INSERT INTO `messagetable` VALUES ('353', 'en', 'Transactions are disable for your Access Level', null);
INSERT INTO `messagetable` VALUES ('353', 'tw', 'æ¬éä¸è¶³ï¼', null);
INSERT INTO `messagetable` VALUES ('354', 'en', 'Trying-on mode has ended.', null);
INSERT INTO `messagetable` VALUES ('354', 'tw', 'è©¦ç©¿çæè§£é¤ã', null);
INSERT INTO `messagetable` VALUES ('355', 'en', 'Unable to remove castle', null);
INSERT INTO `messagetable` VALUES ('355', 'tw', 'åå ¡ç¡æ³ç§»é¤ã', null);
INSERT INTO `messagetable` VALUES ('356', 'en', 'Unable to remove fort', null);
INSERT INTO `messagetable` VALUES ('356', 'tw', 'è¦å¡ç¡æ³ç§»é¤ã', null);
INSERT INTO `messagetable` VALUES ('357', 'en', 'Unban request sent for account $1. If you need a playername based commmand, see //unban_menu', null);
INSERT INTO `messagetable` VALUES ('357', 'tw', 'ã$1ãè³æé¯èª¤ãè«æ¥è©¢ //unban_menu', null);
INSERT INTO `messagetable` VALUES ('358', 'en', 'Universe Map Saved.', null);
INSERT INTO `messagetable` VALUES ('358', 'tw', 'ä¸çå°åå·²å²å­ã', null);
INSERT INTO `messagetable` VALUES ('359', 'en', 'Universe Map Size is: $1', null);
INSERT INTO `messagetable` VALUES ('359', 'tw', 'ä¸çå°åçå°ºå¯¸ï¼$1', null);
INSERT INTO `messagetable` VALUES ('360', 'en', 'Unknow transformation id: $1', null);
INSERT INTO `messagetable` VALUES ('360', 'tw', 'æªç¥çè½æIDï¼$1', null);
INSERT INTO `messagetable` VALUES ('361', 'en', 'Unknown command.', null);
INSERT INTO `messagetable` VALUES ('361', 'tw', 'æªç¥çæä»¤ã', null);
INSERT INTO `messagetable` VALUES ('362', 'en', 'Unknown cursed weapon ID.', null);
INSERT INTO `messagetable` VALUES ('362', 'tw', 'æªç¥çåè©åçæ­¦å¨IDã', null);
INSERT INTO `messagetable` VALUES ('363', 'en', 'Unknown npc template Id: $1', null);
INSERT INTO `messagetable` VALUES ('363', 'tw', 'æªç¥ç NPC IDï¼$1', null);
INSERT INTO `messagetable` VALUES ('364', 'en', 'Unlock the door!', null);
INSERT INTO `messagetable` VALUES ('364', 'tw', 'éå·²éåï¼', null);
INSERT INTO `messagetable` VALUES ('365', 'en', 'Unpolymorph succeed', null);
INSERT INTO `messagetable` VALUES ('365', 'tw', 'åæ¶è®èº«ã', null);
INSERT INTO `messagetable` VALUES ('366', 'en', 'Unsummon your pet.', null);
INSERT INTO `messagetable` VALUES ('366', 'tw', 'ç¡æ³å¬åå¯µç©ã', null);
INSERT INTO `messagetable` VALUES ('367', 'en', 'Updated price for $1 in Trade List $2', null);
INSERT INTO `messagetable` VALUES ('367', 'tw', 'æ´æ°è²©è³£æ¸å®ã$2ãçã$1ãå¹æ ¼ã', null);
INSERT INTO `messagetable` VALUES ('368', 'en', 'Usage mode: //unblockip <ip>', null);
INSERT INTO `messagetable` VALUES ('368', 'tw', 'ä½¿ç¨æ¹æ³ï¼//unblockip <ip>', null);
INSERT INTO `messagetable` VALUES ('369', 'en', 'Usage:  //reload <multisell|skill|npc|htm|item|instancemanager>', null);
INSERT INTO `messagetable` VALUES ('369', 'tw', 'ä½¿ç¨æ¹æ³ï¼//reload <multisell|skill|npc|htm|item|instancemanager>', null);
INSERT INTO `messagetable` VALUES ('370', 'en', 'Usage: //abnormal <abnormal_mask> [player_name|radius]', null);
INSERT INTO `messagetable` VALUES ('370', 'tw', 'ä½¿ç¨æ¹æ³ï¼//abnormal <abnormal_mask> [player_name|radius]', null);
INSERT INTO `messagetable` VALUES ('371', 'en', 'Usage: //abnormal <hex_abnormal_mask> [player|radius]', null);
INSERT INTO `messagetable` VALUES ('371', 'tw', 'ä½¿ç¨æ¹æ³ï¼//abnormal <hex_abnormal_mask> [player|radius]', null);
INSERT INTO `messagetable` VALUES ('372', 'en', 'Usage: //add_clan_skill <skill_id> <level>', null);
INSERT INTO `messagetable` VALUES ('372', 'tw', 'ä½¿ç¨æ¹æ³ï¼//add_clan_skill <skill_id> <level>', null);
INSERT INTO `messagetable` VALUES ('373', 'en', 'Usage: //add_drop <npc_id> [<item_id> <category> <min> <max> <chance>]', null);
INSERT INTO `messagetable` VALUES ('373', 'tw', 'ä½¿ç¨æ¹æ³ï¼//add_drop <npc_id> [<item_id> <category> <min> <max> <chance>]', null);
INSERT INTO `messagetable` VALUES ('374', 'en', 'Usage: //add_exp_sp exp sp', null);
INSERT INTO `messagetable` VALUES ('374', 'tw', 'è«è¼¸å¥è¦å¢å ç 2 ç¨®æ¸å¼ã', null);
INSERT INTO `messagetable` VALUES ('375', 'en', 'Usage: //add_guard npcId', null);
INSERT INTO `messagetable` VALUES ('375', 'tw', 'ä½¿ç¨æ¹æ³ï¼//add_guard npcId', null);
INSERT INTO `messagetable` VALUES ('376', 'en', 'Usage: //add_skill <skill_id> <level>', null);
INSERT INTO `messagetable` VALUES ('376', 'tw', 'ä½¿ç¨æ¹æ³ï¼//add_skill <skill_id> <level>', null);
INSERT INTO `messagetable` VALUES ('377', 'en', 'Usage: //admin_geo_bug you coments here', null);
INSERT INTO `messagetable` VALUES ('377', 'tw', 'ä½¿ç¨æ¹æ³ï¼//admin_geo_bug', null);
INSERT INTO `messagetable` VALUES ('378', 'en', 'Usage: //admin_geo_load <regionX> <regionY>', null);
INSERT INTO `messagetable` VALUES ('378', 'tw', 'ä½¿ç¨æ¹æ³ï¼//admin_geo_load <regionX> <regionY>', null);
INSERT INTO `messagetable` VALUES ('379', 'en', 'Usage: //admin_geo_unload <regionX> <regionY>', null);
INSERT INTO `messagetable` VALUES ('379', 'tw', 'ä½¿ç¨æ¹æ³ï¼//admin_geo_unload <regionX> <regionY>', null);
INSERT INTO `messagetable` VALUES ('380', 'en', 'Usage: //atmosphere <signsky dawn|dusk>|<sky day|night|red>', null);
INSERT INTO `messagetable` VALUES ('380', 'tw', 'ä½¿ç¨æ¹æ³ï¼//atmosphere <signsky dawn|dusk>|<sky day|night|red>', null);
INSERT INTO `messagetable` VALUES ('381', 'en', 'Usage: //ban [account_name] (if none, target char\'s account gets banned)', null);
INSERT INTO `messagetable` VALUES ('381', 'tw', 'ä½¿ç¨æ¹æ³ï¸°//ban [å¸³èåç¨±] (å¦ææ¯ç©ºçå°æéå®ç®æ¨ç©å®¶)ã', null);
INSERT INTO `messagetable` VALUES ('382', 'en', 'Usage: //cache_reload_file <relative_path/file>', null);
INSERT INTO `messagetable` VALUES ('382', 'tw', 'ä½¿ç¨æ¹æ³ï¸°//cache_reload_file <relative_path/file>', null);
INSERT INTO `messagetable` VALUES ('383', 'en', 'Usage: //cache_reload_path <path>', null);
INSERT INTO `messagetable` VALUES ('383', 'tw', 'ä½¿ç¨æ¹æ³ï¸°//cache_reload_path <path>', null);
INSERT INTO `messagetable` VALUES ('384', 'en', 'Usage: //changelvl <target_new_level> | <player_name> <new_level>', null);
INSERT INTO `messagetable` VALUES ('384', 'tw', 'ä½¿ç¨æ¹æ³ï¼//changelvl <target_new_level> | <player_name> <new_level>', null);
INSERT INTO `messagetable` VALUES ('385', 'en', 'Usage: //character_info <player_name>', null);
INSERT INTO `messagetable` VALUES ('385', 'tw', 'ä½¿ç¨æ¹æ³ï¼//character_info <player_name>', null);
INSERT INTO `messagetable` VALUES ('386', 'en', 'Usage: //cw_add <itemid|name>', null);
INSERT INTO `messagetable` VALUES ('386', 'tw', 'ä½¿ç¨æ¹æ³ï¼//cw_add <itemid|name>', null);
INSERT INTO `messagetable` VALUES ('387', 'en', 'Usage: //cw_remove|//cw_goto|//cw_add <itemid|name>', null);
INSERT INTO `messagetable` VALUES ('387', 'tw', 'ä½¿ç¨æ¹æ³ï¼//cw_remove|//cw_goto|//cw_add <itemid|name>', null);
INSERT INTO `messagetable` VALUES ('388', 'en', 'Usage: //del_drop <npc_id> <item_id> <category>', null);
INSERT INTO `messagetable` VALUES ('388', 'tw', 'ä½¿ç¨æ¹æ³ï¼//del_drop <npc_id> <item_id> <category>', null);
INSERT INTO `messagetable` VALUES ('389', 'en', 'Usage: //edit_drop <npc_id> <item_id> <category> [<min> <max> <chance>]', null);
INSERT INTO `messagetable` VALUES ('389', 'tw', 'ä½¿ç¨æ¹æ³ï¼//edit_drop <npc_id> <item_id> <category> [<min> <max> <chance>]', null);
INSERT INTO `messagetable` VALUES ('390', 'en', 'Usage: //effect skill [level | level hittime]', null);
INSERT INTO `messagetable` VALUES ('390', 'tw', 'ä½¿ç¨æ¹æ³ï¼//effect skill [level | level hittime]', null);
INSERT INTO `messagetable` VALUES ('391', 'en', 'Usage: //find_account <player_name>', null);
INSERT INTO `messagetable` VALUES ('391', 'tw', 'ä½¿ç¨æ¹æ³ï¼//find_account <player_name>', null);
INSERT INTO `messagetable` VALUES ('392', 'en', 'Usage: //find_character <character_name>', null);
INSERT INTO `messagetable` VALUES ('392', 'tw', 'ä½¿ç¨æ¹æ³ï¼//find_character <character_name>', null);
INSERT INTO `messagetable` VALUES ('393', 'en', 'Usage: //find_ip <www.xxx.yyy.zzz>', null);
INSERT INTO `messagetable` VALUES ('393', 'tw', 'ä½¿ç¨æ¹æ³ï¼//find_ip <www.xxx.yyy.zzz>', null);
INSERT INTO `messagetable` VALUES ('394', 'en', 'Usage: //forge2 format', null);
INSERT INTO `messagetable` VALUES ('394', 'tw', 'ä½¿ç¨æ¹æ³ï¼//forge2 format', null);
INSERT INTO `messagetable` VALUES ('395', 'en', 'Usage: //ge_mode X', null);
INSERT INTO `messagetable` VALUES ('395', 'tw', 'ä½¿ç¨æ¹æ³ï¼//ge_mode X', null);
INSERT INTO `messagetable` VALUES ('396', 'en', 'Usage: //go<north|south|east|west|up|down> [offset] (default 150)', null);
INSERT INTO `messagetable` VALUES ('396', 'tw', 'ä½¿ç¨æ¹æ³ï¼//go<north|south|east|west|up|down> [offset] (default 150)', null);
INSERT INTO `messagetable` VALUES ('397', 'en', 'Usage: //itemcreate <itemId> [amount]', null);
INSERT INTO `messagetable` VALUES ('397', 'tw', 'ä½¿ç¨æ¹æ³ï¸°//itemcreate <itemId> [amount]', null);
INSERT INTO `messagetable` VALUES ('398', 'en', 'Usage: //jail <charname> [penalty_minutes]', null);
INSERT INTO `messagetable` VALUES ('398', 'tw', 'ä½¿ç¨æ¹æ³ï¸°//jail <ç©å®¶åç¨±> [æ²ç½°æé]', null);
INSERT INTO `messagetable` VALUES ('399', 'en', 'Usage: //kill <player_name | radius>', null);
INSERT INTO `messagetable` VALUES ('399', 'tw', 'ä½¿ç¨æ¹æ³ï¼//kill <player_name | radius>', null);
INSERT INTO `messagetable` VALUES ('400', 'en', 'Usage: //mammon_find [teleportIndex] (where 1 = Blacksmith, 2 = Merchant)', null);
INSERT INTO `messagetable` VALUES ('400', 'tw', 'ä½¿ç¨æ¹æ³ï¼//mammon_find [teleportIndex] (1 = è²¡å¯çéµå , 2 = è²¡å¯çåäºº)', null);
INSERT INTO `messagetable` VALUES ('401', 'en', 'Usage: //mobgroup_attackgrp <groupId> <TargetGroupId>', null);
INSERT INTO `messagetable` VALUES ('401', 'tw', 'ä½¿ç¨æ¹æ³ï¼//mobgroup_attackgrp <groupId> <TargetGroupId>', null);
INSERT INTO `messagetable` VALUES ('402', 'en', 'Usage: //mobgroup_casting <groupId>', null);
INSERT INTO `messagetable` VALUES ('402', 'tw', 'ä½¿ç¨æ¹æ³ï¼//mobgroup_casting <groupId>', null);
INSERT INTO `messagetable` VALUES ('403', 'en', 'Usage: //mobgroup_create <group> <npcid> <count>', null);
INSERT INTO `messagetable` VALUES ('403', 'tw', 'ä½¿ç¨æ¹æ³ï¼//mobgroup_create <group> <npcid> <count>', null);
INSERT INTO `messagetable` VALUES ('404', 'en', 'Usage: //mobgroup_invul <groupId> <on|off>', null);
INSERT INTO `messagetable` VALUES ('404', 'tw', 'ä½¿ç¨æ¹æ³ï¼//mobgroup_invul <groupId> <on|off>', null);
INSERT INTO `messagetable` VALUES ('405', 'en', 'Usage: //mobgroup_kill <groupId>', null);
INSERT INTO `messagetable` VALUES ('405', 'tw', 'ä½¿ç¨æ¹æ³ï¼//mobgroup_kill <groupId>', null);
INSERT INTO `messagetable` VALUES ('406', 'en', 'Usage: //mobgroup_nomove <groupId> <on|off>', null);
INSERT INTO `messagetable` VALUES ('406', 'tw', 'ä½¿ç¨æ¹æ³ï¼//mobgroup_nomove <groupId> <on|off>', null);
INSERT INTO `messagetable` VALUES ('407', 'en', 'Usage: //mobgroup_remove <groupId>', null);
INSERT INTO `messagetable` VALUES ('407', 'tw', 'ä½¿ç¨æ¹æ³ï¼//mobgroup_remove <groupId>', null);
INSERT INTO `messagetable` VALUES ('408', 'en', 'Usage: //mobgroup_spawn <group> [ x y z ]', null);
INSERT INTO `messagetable` VALUES ('408', 'tw', 'ä½¿ç¨æ¹æ³ï¼//mobgroup_spawn <group> [ x y z ]', null);
INSERT INTO `messagetable` VALUES ('409', 'en', 'Usage: //mobgroup_teleport <groupId> [playerName]', null);
INSERT INTO `messagetable` VALUES ('409', 'tw', 'ä½¿ç¨æ¹æ³ï¼//mobgroup_teleport <groupId> [playerName]', null);
INSERT INTO `messagetable` VALUES ('410', 'en', 'Usage: //mobgroup_unspawn <groupId>', null);
INSERT INTO `messagetable` VALUES ('410', 'tw', 'ä½¿ç¨æ¹æ³ï¼//mobgroup_unspawn <groupId>', null);
INSERT INTO `messagetable` VALUES ('411', 'en', 'Usage: //pledge <rep> <number>', null);
INSERT INTO `messagetable` VALUES ('411', 'tw', 'ä½¿ç¨æ¹æ³ï¸°//pledge <rep> <number>', null);
INSERT INTO `messagetable` VALUES ('412', 'en', 'Usage: //pledge <setlevel|rep> <number>', null);
INSERT INTO `messagetable` VALUES ('412', 'tw', 'ä½¿ç¨æ¹æ³ï¼//pledge <setlevel|rep> <number>', null);
INSERT INTO `messagetable` VALUES ('413', 'en', 'Usage: //polymorph [type] <id>', null);
INSERT INTO `messagetable` VALUES ('413', 'tw', 'ä½¿ç¨æ¹æ³ï¼//polymorph [type] <id>', null);
INSERT INTO `messagetable` VALUES ('414', 'en', 'Usage: //rec number', null);
INSERT INTO `messagetable` VALUES ('414', 'tw', 'ä½¿ç¨æ¹æ³ï¼//rec number', null);
INSERT INTO `messagetable` VALUES ('415', 'en', 'Usage: //remove_exp_sp exp sp', null);
INSERT INTO `messagetable` VALUES ('415', 'tw', 'è«è¼¸å¥è¦æ¸å°ç 2 ç¨®æ¸å¼ã', null);
INSERT INTO `messagetable` VALUES ('416', 'en', 'Usage: //remove_skill <skill_id>', null);
INSERT INTO `messagetable` VALUES ('416', 'tw', 'ä½¿ç¨æ¹æ³ï¼//remove_skill <skill_id>', null);
INSERT INTO `messagetable` VALUES ('417', 'en', 'Usage: //set parameter=value', null);
INSERT INTO `messagetable` VALUES ('417', 'tw', 'ä½¿ç¨æ¹æ³ï¼//set åæ¸=æ¸å¼ã', null);
INSERT INTO `messagetable` VALUES ('418', 'en', 'Usage: //setclass <valid_new_classid>', null);
INSERT INTO `messagetable` VALUES ('418', 'tw', 'ä½¿ç¨æ¹æ³ï¼//setclass <valid_new_classid>', null);
INSERT INTO `messagetable` VALUES ('419', 'en', 'Usage: //setkarma <new_karma_value>', null);
INSERT INTO `messagetable` VALUES ('419', 'tw', 'ä½¿ç¨æ¹æ³ï¼//setkarma <new_karma_value>', null);
INSERT INTO `messagetable` VALUES ('420', 'en', 'Usage: //setname new_name_for_target', null);
INSERT INTO `messagetable` VALUES ('420', 'tw', 'ä½¿ç¨æ¹æ³ï¼//setname new_name_for_target', null);
INSERT INTO `messagetable` VALUES ('421', 'en', 'Usage: //show_characters <page_number>', null);
INSERT INTO `messagetable` VALUES ('421', 'tw', 'ä½¿ç¨æ¹æ³ï¼//show_characters <page_number>', null);
INSERT INTO `messagetable` VALUES ('422', 'en', 'Usage: //show_droplist <npc_id>', null);
INSERT INTO `messagetable` VALUES ('422', 'tw', 'ä½¿ç¨æ¹æ³ï¼//show_droplist <npc_id>', null);
INSERT INTO `messagetable` VALUES ('423', 'en', 'Usage: //social <social_id> [player_name|radius]', null);
INSERT INTO `messagetable` VALUES ('423', 'tw', 'ä½¿ç¨æ¹æ³ï¼//social <social_id> [player_name|radius]', null);
INSERT INTO `messagetable` VALUES ('424', 'en', 'Usage: //transform <id> [duration (secs)]', null);
INSERT INTO `messagetable` VALUES ('424', 'tw', 'ä½¿ç¨æ¹æ³ï¼//transform <id> [duration (secs)]', null);
INSERT INTO `messagetable` VALUES ('425', 'en', 'Usage: //transform <id>', null);
INSERT INTO `messagetable` VALUES ('425', 'tw', 'ä½¿ç¨æ¹æ³ï¼//transform <id>', null);
INSERT INTO `messagetable` VALUES ('426', 'en', 'Usage: //unban <account_name>', null);
INSERT INTO `messagetable` VALUES ('426', 'tw', 'ä½¿ç¨æ¹æ³ï¸°//unban <å¸³èåç¨±>', null);
INSERT INTO `messagetable` VALUES ('427', 'en', 'Use //gmspeed value (0=off...4=max).', null);
INSERT INTO `messagetable` VALUES ('427', 'tw', 'ä½¿ç¨æ¹æ³ï¼//gmspeed æ¸å¼ (0=éé...4=æå¤§)', null);
INSERT INTO `messagetable` VALUES ('428', 'en', 'Use: //earthquake <intensity> <duration>', null);
INSERT INTO `messagetable` VALUES ('428', 'tw', 'ä½¿ç¨æ¹æ³ï¼//earthquake <intensity> <duration>', null);
INSERT INTO `messagetable` VALUES ('429', 'en', 'User commandID $1 not implemented yet.', null);
INSERT INTO `messagetable` VALUES ('429', 'tw', 'æä»¤ã$1ãå°æªå¯¦è£ã', null);
INSERT INTO `messagetable` VALUES ('430', 'en', 'Wrong Number Format', null);
INSERT INTO `messagetable` VALUES ('430', 'tw', 'æ ¼å¼é¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('431', 'en', 'Wrong command parameters', null);
INSERT INTO `messagetable` VALUES ('431', 'tw', 'æä»¤é¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('432', 'en', 'Wrong conditions.', null);
INSERT INTO `messagetable` VALUES ('432', 'tw', 'ä¸è½åå æè³£ã', null);
INSERT INTO `messagetable` VALUES ('433', 'en', 'Wrong or no Coordinates given.', null);
INSERT INTO `messagetable` VALUES ('433', 'tw', 'åº§æ¨é¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('434', 'en', 'Wrong usage: //edit_npc <npcId>', null);
INSERT INTO `messagetable` VALUES ('434', 'tw', 'ä½¿ç¨æ¹æ³ï¼//edit_npc <npcId>', null);
INSERT INTO `messagetable` VALUES ('435', 'en', 'You \" + (points > 0 ? \"add \" : \"remove \") + Math.abs(points) + \" points \" + (points > 0 ? \"to \" : \"from \") + clan.getName() + \"\'s reputation. Their current score is \" + clan.getReputationScore());', null);
INSERT INTO `messagetable` VALUES ('435', 'tw', '$E1 $1 é»çè²æ$E2ã$2ããä»åç®åçè²ææ¯ï¼$3', 'å¢å ;ç§»é¤;çµ¦;å¾');
INSERT INTO `messagetable` VALUES ('436', 'en', 'You absorbed $1 damage.', null);
INSERT INTO `messagetable` VALUES ('436', 'tw', 'å¸æ¶ã$1ãçå·å®³ã', null);
INSERT INTO `messagetable` VALUES ('437', 'en', 'You added to list for geoeditor.', null);
INSERT INTO `messagetable` VALUES ('437', 'tw', 'å å¥ GeoEditor çåè¡¨ã', null);
INSERT INTO `messagetable` VALUES ('438', 'en', 'You already have $1 cubic(s).', null);
INSERT INTO `messagetable` VALUES ('438', 'tw', 'å·²å¬å $1 åæ¶é«ã', null);
INSERT INTO `messagetable` VALUES ('439', 'en', 'You already have a pet.', null);
INSERT INTO `messagetable` VALUES ('439', 'tw', 'å·²ç¶å¬åå¯µç©æä½¿é­äºã', null);
INSERT INTO `messagetable` VALUES ('440', 'en', 'You already have such cubic', null);
INSERT INTO `messagetable` VALUES ('440', 'tw', 'å·²å¬åæ­¤æ¶é«ã', null);
INSERT INTO `messagetable` VALUES ('441', 'en', 'You already have the combat flag', null);
INSERT INTO `messagetable` VALUES ('441', 'tw', 'å·²ç¶æé£æäºã', null);
INSERT INTO `messagetable` VALUES ('442', 'en', 'You are already a member of the $1.', null);
INSERT INTO `messagetable` VALUES ('442', 'tw', 'ä½ å·²ç¶æ¯$1ä¹æå¡ï¼', null);
INSERT INTO `messagetable` VALUES ('443', 'en', 'You are already engaged.', null);
INSERT INTO `messagetable` VALUES ('443', 'tw', 'ä½ å·²ç¶è¨å©äºã', null);
INSERT INTO `messagetable` VALUES ('444', 'en', 'You are already registered for a competition', null);
INSERT INTO `messagetable` VALUES ('444', 'tw', 'ä½ å·²ç¶ç»è¨ç«¶è³½ã', null);
INSERT INTO `messagetable` VALUES ('445', 'en', 'You are banned for illegal action, GM informed.', null);
INSERT INTO `messagetable` VALUES ('445', 'tw', 'ä½ è¢«å°éï¼å çºåäºéæ³åä½ã', null);
INSERT INTO `messagetable` VALUES ('446', 'en', 'You are busy.', null);
INSERT INTO `messagetable` VALUES ('446', 'tw', 'èæ¼å¿ç¢ä¸­ã', null);
INSERT INTO `messagetable` VALUES ('447', 'en', 'You are in Jail!', null);
INSERT INTO `messagetable` VALUES ('447', 'tw', 'ä½ å¨ GM è«®è©¢èï¼', null);
INSERT INTO `messagetable` VALUES ('448', 'en', 'You are in a duel!', null);
INSERT INTO `messagetable` VALUES ('448', 'tw', 'ä½ å¨æ±ºé¬¥ä¸­ï¼', null);
INSERT INTO `messagetable` VALUES ('449', 'en', 'You are in a festival.', null);
INSERT INTO `messagetable` VALUES ('449', 'tw', 'ä½ å¨é»æçç¥­å¸ã', null);
INSERT INTO `messagetable` VALUES ('450', 'en', 'You are in an event.', null);
INSERT INTO `messagetable` VALUES ('450', 'tw', 'ä½ å¨åèæ´»åä¸­ã', null);
INSERT INTO `messagetable` VALUES ('451', 'en', 'You are in jail for $1 minutes.', null);
INSERT INTO `messagetable` VALUES ('451', 'tw', 'ä½ è¢«éå¨ GM è«®è©¢èçæéçº $1 åéã', null);
INSERT INTO `messagetable` VALUES ('452', 'en', 'You are in siege, you can\'t go to your partner.', null);
INSERT INTO `messagetable` VALUES ('452', 'tw', 'ä½ å¨æ»åæ°ä¸­ï¼æä»¥ç¡æ³åå¾ä½ çä¼´ä¾¶ã', null);
INSERT INTO `messagetable` VALUES ('453', 'en', 'You are in the Olympiad now.', null);
INSERT INTO `messagetable` VALUES ('453', 'tw', 'ä½ å¨å¥§æå¹äºç«¶è³½ä¸­ã', null);
INSERT INTO `messagetable` VALUES ('454', 'en', 'You are in the dimensional rift.', null);
INSERT INTO `messagetable` VALUES ('454', 'tw', 'ä½ å¨æ¬¡åçè£ç¸«ã', null);
INSERT INTO `messagetable` VALUES ('455', 'en', 'You are in the observation.', null);
INSERT INTO `messagetable` VALUES ('455', 'tw', 'ä½ å¨è§å¯åå®ä¸­ã', null);
INSERT INTO `messagetable` VALUES ('456', 'en', 'You are inside a Boss Zone.', null);
INSERT INTO `messagetable` VALUES ('456', 'tw', 'ä½ å¨ Boss Zone è£¡é¢ã', null);
INSERT INTO `messagetable` VALUES ('457', 'en', 'You are kicked by gm', null);
INSERT INTO `messagetable` VALUES ('457', 'tw', 'è¢«ç®¡çèè¸¢é¤ã', null);
INSERT INTO `messagetable` VALUES ('458', 'en', 'You are not in a clan.', null);
INSERT INTO `messagetable` VALUES ('458', 'tw', 'ä¸¦æªå å¥è¡çã', null);
INSERT INTO `messagetable` VALUES ('459', 'en', 'You are not in a party.', null);
INSERT INTO `messagetable` VALUES ('459', 'tw', 'ä¸æ¯çµéçæã', null);
INSERT INTO `messagetable` VALUES ('460', 'en', 'You are not the owner of this pet', null);
INSERT INTO `messagetable` VALUES ('460', 'tw', 'ä½ ä¸æ¯å¯µç©çä¸»äººã', null);
INSERT INTO `messagetable` VALUES ('461', 'en', 'You are now divorced.', null);
INSERT INTO `messagetable` VALUES ('461', 'tw', 'ä½ åç¾å¨é¢å©äºã', null);
INSERT INTO `messagetable` VALUES ('462', 'en', 'You are still in jail for $1 minutes.', null);
INSERT INTO `messagetable` VALUES ('462', 'tw', 'ä½ ééçå¨ GM è«®è©¢è $1 åéã', null);
INSERT INTO `messagetable` VALUES ('463', 'en', 'You are summoned to a party member.', null);
INSERT INTO `messagetable` VALUES ('463', 'tw', 'éä¼æå¡æåå¬åã', null);
INSERT INTO `messagetable` VALUES ('464', 'en', 'You are trying to learn skill that u can\'t..', null);
INSERT INTO `messagetable` VALUES ('464', 'tw', 'ä¼åå­¸ç¿ä¸è©²å­¸ç¿çæè½...', null);
INSERT INTO `messagetable` VALUES ('465', 'en', 'You aren\'t at war with this clan.', null);
INSERT INTO `messagetable` VALUES ('465', 'tw', 'ä¸¦ç¡èæ­¤è¡çç¼çæ°ç­ã', null);
INSERT INTO `messagetable` VALUES ('466', 'en', 'You can feel Bluff\'s effect', null);
INSERT INTO `messagetable` VALUES ('466', 'tw', 'æåå°å¹»è±¡çææã', null);
INSERT INTO `messagetable` VALUES ('467', 'en', 'You can not chat while in jail.', null);
INSERT INTO `messagetable` VALUES ('467', 'tw', 'å¨ GM è©¢åèç¦æ­¢äº¤è«ã', null);
INSERT INTO `messagetable` VALUES ('468', 'en', 'You can not chat with players outside of the jail.', null);
INSERT INTO `messagetable` VALUES ('468', 'tw', 'ç¡æ³å¨ GM è«®è©¢èèå¤çéè¨ã', null);
INSERT INTO `messagetable` VALUES ('469', 'en', 'You can not escape from jail.', null);
INSERT INTO `messagetable` VALUES ('469', 'tw', 'ç¡æ³å¨ GM è©¢åèä½¿ç¨ã', null);
INSERT INTO `messagetable` VALUES ('470', 'en', 'You can now only change one of your current sub classes.', null);
INSERT INTO `messagetable` VALUES ('470', 'tw', 'ç¾å¨åªè½è®æ´ä¸åå¯è·æ¥­ã', null);
INSERT INTO `messagetable` VALUES ('471', 'en', 'You can only ask another player to engage you.', null);
INSERT INTO `messagetable` VALUES ('471', 'tw', 'ä½ åªè½è«æ±ç©å®¶èä½ è¨å©ã', null);
INSERT INTO `messagetable` VALUES ('472', 'en', 'You can only pickup Combat Flag during a siege.', null);
INSERT INTO `messagetable` VALUES ('472', 'tw', 'å¿é å¨æ»åæ°æéæå¯æ¿èµ·é£æã', null);
INSERT INTO `messagetable` VALUES ('473', 'en', 'You can\'t bid at more than one auction', null);
INSERT INTO `messagetable` VALUES ('473', 'tw', 'ç®åæ­£å¨ææ¨ä¸­ï¼å æ­¤ç¡æ³åå å¶ä»æè³£ã', null);
INSERT INTO `messagetable` VALUES ('474', 'en', 'You can\'t create any more sub-units of this type', null);
INSERT INTO `messagetable` VALUES ('474', 'tw', 'ä¸è½ååµç«å­¸é¢äºã', null);
INSERT INTO `messagetable` VALUES ('475', 'en', 'You can\'t declare war. You are not clan leader.', null);
INSERT INTO `messagetable` VALUES ('475', 'tw', 'åªæè¡ççä¸»å¯ä»¥ç¼åæ°ç­ã', null);
INSERT INTO `messagetable` VALUES ('476', 'en', 'You can\'t dismiss party member when you are in Dimensional Rift.', null);
INSERT INTO `messagetable` VALUES ('476', 'tw', 'ç¡æ³å¨æ¬¡åçè£ç¸«é©ééå¡ã', null);
INSERT INTO `messagetable` VALUES ('477', 'en', 'You can\'t exit party when you are in Dimensional Rift.', null);
INSERT INTO `messagetable` VALUES ('477', 'tw', 'ç¡æ³å¨æ¬¡åçè£ç¸«é¢ééä¼ã', null);
INSERT INTO `messagetable` VALUES ('478', 'en', 'You can\'t invite a player when in Dimensional Rift.', null);
INSERT INTO `messagetable` VALUES ('478', 'tw', 'ç¡æ³å¨æ¬¡åè£ç¸«å§éè«ç©å®¶ã', null);
INSERT INTO `messagetable` VALUES ('479', 'en', 'You can\'t participate to Olympiad while holding a cursed weapon.', null);
INSERT INTO `messagetable` VALUES ('479', 'tw', 'ææè©åçæ­¦å¨æï¼ç¡æ³åå å¥§æå¹äºç«¶è³½ã', null);
INSERT INTO `messagetable` VALUES ('480', 'en', 'You can\'t transform while mounted, please dismount and try again.', null);
INSERT INTO `messagetable` VALUES ('480', 'tw', 'é¨ä¹çæä¸ç¡æ³è½æå¤è§ï¼è«è§£é¤å¾åè©¦ä¸æ¬¡ã', null);
INSERT INTO `messagetable` VALUES ('481', 'en', 'You cannot be summoned while you haven\'t got enough Summoning Crystal', null);
INSERT INTO `messagetable` VALUES ('481', 'tw', 'ç¡æ³ä½¿ç¨å¬åï¼å çºå¬åæ°´æ¶ä¸è¶³ã', null);
INSERT INTO `messagetable` VALUES ('482', 'en', 'You cannot change academy member grade', null);
INSERT INTO `messagetable` VALUES ('482', 'tw', 'ç¡æ³æ¹è®å­¸é¢æå¡çç­ç´ã', null);
INSERT INTO `messagetable` VALUES ('483', 'en', 'You cannot do this while duelling.', null);
INSERT INTO `messagetable` VALUES ('483', 'tw', 'æ±ºé¬¥é¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('484', 'en', 'You cannot hire any more mercenaries of this type.  You may still hire other types of mercenaries', null);
INSERT INTO `messagetable` VALUES ('484', 'tw', 'æ­¤å­åµé¡åå·²ç¶å°æ¥µéï¼è«é¸æå¶ä»é¡åã', null);
INSERT INTO `messagetable` VALUES ('485', 'en', 'You cannot hire any more mercenaries', null);
INSERT INTO `messagetable` VALUES ('485', 'tw', 'å­åµæ¸éå·²ç¶å°æ¥µéäºï¼', null);
INSERT INTO `messagetable` VALUES ('486', 'en', 'You cannot hire mercenary while siege is in progress!', null);
INSERT INTO `messagetable` VALUES ('486', 'tw', 'ç¾å¨ç¡æ³èè«å­åµï¼', null);
INSERT INTO `messagetable` VALUES ('487', 'en', 'You cannot log out while you are a participant in a festival.', null);
INSERT INTO `messagetable` VALUES ('487', 'tw', 'ç¡æ³å¨é»æçç¥­å¸ä¸­ç»åºã', null);
INSERT INTO `messagetable` VALUES ('488', 'en', 'You cannot logout your own character.', null);
INSERT INTO `messagetable` VALUES ('488', 'tw', 'ç¡æ³ç»åºã', null);
INSERT INTO `messagetable` VALUES ('489', 'en', 'You cannot pickup mercenaries while in a party.', null);
INSERT INTO `messagetable` VALUES ('489', 'tw', 'çµéæç¡æ³æ¿èµ·å­åµç©ä»¶ã', null);
INSERT INTO `messagetable` VALUES ('490', 'en', 'You cannot register a score while a festival is in progress.', null);
INSERT INTO `messagetable` VALUES ('490', 'tw', 'é»æçç¥­å¸é²è¡ä¸­ï¼ç¡æ³ç»è¨åæ¸ã', null);
INSERT INTO `messagetable` VALUES ('491', 'en', 'You cannot register as a defender because $1 is owned by NPC.', null);
INSERT INTO `messagetable` VALUES ('491', 'tw', 'ç¡æ³ç»è¨çºå®åæ¹ï¼å çºã$1ãæ¯å±¬æ¼ NPC çã', null);
INSERT INTO `messagetable` VALUES ('492', 'en', 'You cannot register as a defender because $1 is owned by NPC.', null);
INSERT INTO `messagetable` VALUES ('492', 'tw', 'ç¡æ³ç»è¨çºå®åæ¹ï¼å çºã$1ãæ¯å±¬æ¼ NPC çã', null);
INSERT INTO `messagetable` VALUES ('493', 'en', 'You cannot register as an attacker because your alliance owns the castle', null);
INSERT INTO `messagetable` VALUES ('493', 'tw', 'ç¡æ³ç»è¨çºæ»åæ¹ï¼å çºä½ çåçå·²ææåå ¡ã', null);
INSERT INTO `messagetable` VALUES ('494', 'en', 'You cannot register as an attacker because your alliance owns the fort', null);
INSERT INTO `messagetable` VALUES ('494', 'tw', 'ç¡æ³ç»è¨çºæ»åæ¹ï¼å çºä½ çåçå·²ææè¦å¡ã', null);
INSERT INTO `messagetable` VALUES ('495', 'en', 'You cannot register because your clan already owns a castle.', null);
INSERT INTO `messagetable` VALUES ('495', 'tw', 'ä½ çè¡çå·²ææåå ¡ï¼å æ­¤ç¡æ³ç»è¨ã', null);
INSERT INTO `messagetable` VALUES ('496', 'en', 'You cannot restart while you are a participant in a festival.', null);
INSERT INTO `messagetable` VALUES ('496', 'tw', 'é»æç¥­å¸é²è¡æç¡æ³éæ°éå§ã', null);
INSERT INTO `messagetable` VALUES ('497', 'en', 'You cannot sign up while a festival is in progress.', null);
INSERT INTO `messagetable` VALUES ('497', 'tw', 'é»æçç¥­å¸é²è¡ä¸­ï¼ç¡æ³å ±ååå ã', null);
INSERT INTO `messagetable` VALUES ('498', 'en', 'You cannot spawn another instance of $1.', null);
INSERT INTO `messagetable` VALUES ('498', 'tw', 'ç¡æ³åµé ã$1ãã', null);
INSERT INTO `messagetable` VALUES ('499', 'en', 'You cannot use escape skills during a duel.', null);
INSERT INTO `messagetable` VALUES ('499', 'tw', 'ç¡æ³å¨æ±ºé¬¥ä¸­ä½¿ç¨ã', null);
INSERT INTO `messagetable` VALUES ('500', 'en', 'You cannot use the key now.', null);
INSERT INTO `messagetable` VALUES ('500', 'tw', 'ç¾å¨ç¡æ³ä½¿ç¨é°åã', null);
INSERT INTO `messagetable` VALUES ('501', 'en', 'You cant logout in olympiad mode', null);
INSERT INTO `messagetable` VALUES ('501', 'tw', 'ç¡æ³å¨å¥§æå¹äºç«¶è³½ä¸­ç»åºã', null);
INSERT INTO `messagetable` VALUES ('502', 'en', 'You declined', null);
INSERT INTO `messagetable` VALUES ('502', 'tw', 'ä½ æçµï¼', null);
INSERT INTO `messagetable` VALUES ('503', 'en', 'You do not have any Goldbars to turn into $1 Adena.', null);
INSERT INTO `messagetable` VALUES ('503', 'tw', 'æ¨æ²æä»»ä½éå¡å¯ä»¥ç¨ä¾äº¤æ $1 éå¹£ã', null);
INSERT INTO `messagetable` VALUES ('504', 'en', 'You do not have any blood offerings to contribute.', null);
INSERT INTO `messagetable` VALUES ('504', 'tw', 'ä¸¦ç¡ä»»ä½è²¢ç»ã', null);
INSERT INTO `messagetable` VALUES ('505', 'en', 'You do not have any seal stones of that type.', null);
INSERT INTO `messagetable` VALUES ('505', 'tw', 'ä½ æ²æä»»ä½å°å°ç³ã', null);
INSERT INTO `messagetable` VALUES ('506', 'en', 'You do not have enough Adena to convert to Goldbar(s), you need $1 Adena.', null);
INSERT INTO `messagetable` VALUES ('506', 'tw', 'æ¨æ²æè¶³å¤ çéå¹£ä¾äº¤æéå¡ï¼æ¨éè¦ $1 éå¹£ã', null);
INSERT INTO `messagetable` VALUES ('507', 'en', 'You do not have enough adena', null);
INSERT INTO `messagetable` VALUES ('507', 'tw', 'éé¢ä¸è¶³ã', null);
INSERT INTO `messagetable` VALUES ('508', 'en', 'You do not have that many seal stones.', null);
INSERT INTO `messagetable` VALUES ('508', 'tw', 'ææçæ¸éä½æ¼è¼¸å¥çæ¸éãè«éæ°è¼¸å¥æ¸éã', null);
INSERT INTO `messagetable` VALUES ('509', 'en', 'You do not have the correct scroll', null);
INSERT INTO `messagetable` VALUES ('509', 'tw', 'å·è»¸é¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('510', 'en', 'You don\'t have the access right to use this command!', null);
INSERT INTO `messagetable` VALUES ('510', 'tw', 'æ¬éä¸è¶³ï¼', null);
INSERT INTO `messagetable` VALUES ('511', 'en', 'You don\'t have the right privileges to do this', null);
INSERT INTO `messagetable` VALUES ('511', 'tw', 'æ¬éä¸è¶³ï¼', null);
INSERT INTO `messagetable` VALUES ('512', 'en', 'You don\'t have the right privilleges to do this', null);
INSERT INTO `messagetable` VALUES ('512', 'tw', 'æ¬éä¸è¶³ï¼', null);
INSERT INTO `messagetable` VALUES ('513', 'en', 'You don\'t have the sufficient access level to teleport there.', null);
INSERT INTO `messagetable` VALUES ('513', 'tw', 'æ¬éä¸è¶³ï¼', null);
INSERT INTO `messagetable` VALUES ('514', 'en', 'You dont have the right elements for making this item', '.\\nDue to server rates you need $1x more material than listed in recipe;.');
INSERT INTO `messagetable` VALUES ('514', 'tw', 'ææä¸è¶³', '\\nç±æ¼ä¼ºæå¨èª¿æ´åçï¼å æ­¤éè¦ $1 åçææä¾è£½ä½ã;ã');
INSERT INTO `messagetable` VALUES ('515', 'en', 'You entered $1', null);
INSERT INTO `messagetable` VALUES ('515', 'tw', 'é²å¥äº $1', null);
INSERT INTO `messagetable` VALUES ('516', 'en', 'You entered $1', null);
INSERT INTO `messagetable` VALUES ('516', 'tw', 'é²å¥äº $1', null);
INSERT INTO `messagetable` VALUES ('517', 'en', 'You entered water!', null);
INSERT INTO `messagetable` VALUES ('517', 'tw', 'é²å¥æ°´è£¡ï¼', null);
INSERT INTO `messagetable` VALUES ('518', 'en', 'You exited water!', null);
INSERT INTO `messagetable` VALUES ('518', 'tw', 'é¢éæ°´è£¡ï¼', null);
INSERT INTO `messagetable` VALUES ('519', 'en', 'You failed to open Altar Entrance.', null);
INSERT INTO `messagetable` VALUES ('519', 'tw', 'éåç¥­å£å¥å£å¤±æã', null);
INSERT INTO `messagetable` VALUES ('520', 'en', 'You failed to open Anterooms Door.', null);
INSERT INTO `messagetable` VALUES ('520', 'tw', 'éååå»³çéå¤±æã', null);
INSERT INTO `messagetable` VALUES ('521', 'en', 'You failed to open Door of Darkness.', null);
INSERT INTO `messagetable` VALUES ('521', 'tw', 'éåé»æçéå¤±æã', null);
INSERT INTO `messagetable` VALUES ('522', 'en', 'You gave $1 skills to $2', null);
INSERT INTO `messagetable` VALUES ('522', 'tw', 'çµ¦ã$2ãå¢å  $1 åæè½ã', null);
INSERT INTO `messagetable` VALUES ('523', 'en', 'You gave the Clan Skill: $1 to the clan $2.', null);
INSERT INTO `messagetable` VALUES ('523', 'tw', 'çµ¦ã$2ãè¡çå¢å ã$1ãçè¡çæè½ã', null);
INSERT INTO `messagetable` VALUES ('524', 'en', 'You gave the skill $1 to $2.', null);
INSERT INTO `messagetable` VALUES ('524', 'tw', 'çµ¦ã$2ãå¢å ã$1ãçæè½ã', null);
INSERT INTO `messagetable` VALUES ('525', 'en', 'You have already a ClanHall!', null);
INSERT INTO `messagetable` VALUES ('525', 'tw', 'å·²ææ ¹æå°ï¼', null);
INSERT INTO `messagetable` VALUES ('526', 'en', 'You have been chat banned by a server admin.', null);
INSERT INTO `messagetable` VALUES ('526', 'tw', 'è¢«ç®¡çå¡ç¦è¨ã', null);
INSERT INTO `messagetable` VALUES ('527', 'en', 'You have been out bidded', null);
INSERT INTO `messagetable` VALUES ('527', 'tw', 'æ¨å·²ç¶é¢éææ¨ã', null);
INSERT INTO `messagetable` VALUES ('528', 'en', 'You have been recommended by a GM', null);
INSERT INTO `messagetable` VALUES ('528', 'tw', 'è¢«ç®¡çèæ¨è¦ã', null);
INSERT INTO `messagetable` VALUES ('529', 'en', 'You have been removed from the festival arena.', null);
INSERT INTO `messagetable` VALUES ('529', 'tw', 'å·²é¢éé»æçç¥­å¸ã', null);
INSERT INTO `messagetable` VALUES ('530', 'en', 'You have been sent to the waiting room.', null);
INSERT INTO `messagetable` VALUES ('530', 'tw', 'å³éè³ç­åå®¤ã', null);
INSERT INTO `messagetable` VALUES ('531', 'en', 'You have been teleported to $1', null);
INSERT INTO `messagetable` VALUES ('531', 'tw', 'å³éè³ $1', null);
INSERT INTO `messagetable` VALUES ('532', 'en', 'You have been teleported to the nearest town because you have not signed for any cabal.', null);
INSERT INTO `messagetable` VALUES ('532', 'tw', 'å çºæ²æåèä»»ä½å°å°ï¼å°å¼·å¶å³éè³æè¿çæèã', null);
INSERT INTO `messagetable` VALUES ('533', 'en', 'You have been teleported to the nearest town due to the beginning of the Seal Validation period.', null);
INSERT INTO `messagetable` VALUES ('533', 'tw', 'ç®åçºå°å°ææææï¼å°å¼·å¶å³éè³æè¿çæèã', null);
INSERT INTO `messagetable` VALUES ('534', 'en', 'You have been teleported to the nearest town due to you being in an Olympiad Stadium', null);
INSERT INTO `messagetable` VALUES ('534', 'tw', 'å çºé²å¥äºå¥§æå¹äºç«¶æå ´ï¼å°å¼·å¶å³éè³æè¿çæèã', null);
INSERT INTO `messagetable` VALUES ('535', 'en', 'You have been teleported to the nearest town due to you being in siege zone', null);
INSERT INTO `messagetable` VALUES ('535', 'tw', 'å çºé²å¥äºæ»åæ°ååï¼å°å¼·å¶å³éå°æè¿çæèã', null);
INSERT INTO `messagetable` VALUES ('536', 'en', 'You have bidded successfully', null);
INSERT INTO `messagetable` VALUES ('536', 'tw', 'ææ¨æåã', null);
INSERT INTO `messagetable` VALUES ('537', 'en', 'You have broken up as a couple.', null);
INSERT INTO `messagetable` VALUES ('537', 'tw', 'ä½ åä¸æ¯å¤«å¦»äºã', null);
INSERT INTO `messagetable` VALUES ('538', 'en', 'You have entered a temporary zone!', null);
INSERT INTO `messagetable` VALUES ('538', 'tw', 'é²å¥äºè¨æååï¼', null);
INSERT INTO `messagetable` VALUES ('539', 'en', 'You have joined team $1', null);
INSERT INTO `messagetable` VALUES ('539', 'tw', 'å å¥ã$1ãçéä¼ã', null);
INSERT INTO `messagetable` VALUES ('540', 'en', 'You have learned $1 new skills.', null);
INSERT INTO `messagetable` VALUES ('540', 'tw', 'ç¿å¾ $1 ç¨®æ°æè½ï¼', null);
INSERT INTO `messagetable` VALUES ('541', 'en', 'You have left a temporary zone!', null);
INSERT INTO `messagetable` VALUES ('541', 'tw', 'é¢éäºè¨æååï¼', null);
INSERT INTO `messagetable` VALUES ('542', 'en', 'You have no one targeted.', null);
INSERT INTO `messagetable` VALUES ('542', 'tw', 'æ²æç®æ¨ï¼', null);
INSERT INTO `messagetable` VALUES ('543', 'en', 'You have not enough adena, canceling PrivateBuy.', null);
INSERT INTO `messagetable` VALUES ('543', 'tw', 'éé¢ä¸è¶³ã', null);
INSERT INTO `messagetable` VALUES ('544', 'en', 'You have spawned $1 item(s) number $2 in your inventory.', null);
INSERT INTO `messagetable` VALUES ('544', 'tw', 'åµé  $1 å ID-$2 çç©åã', null);
INSERT INTO `messagetable` VALUES ('545', 'en', 'You have succesfully canceled your bidding at the auction', null);
INSERT INTO `messagetable` VALUES ('545', 'tw', 'åæ¶ææ¨ã', null);
INSERT INTO `messagetable` VALUES ('546', 'en', 'You have teleported to character $1.', null);
INSERT INTO `messagetable` VALUES ('546', 'tw', 'å³éè³ç©å®¶ã$1ãã', null);
INSERT INTO `messagetable` VALUES ('547', 'en', 'You have to be level 46 in order to augment an item', null);
INSERT INTO `messagetable` VALUES ('547', 'tw', 'ç­ç´éå° 46 æè½æ´åç©åã', null);
INSERT INTO `messagetable` VALUES ('548', 'en', 'You have to be the leader of a party in order to request a party duel.', null);
INSERT INTO `messagetable` VALUES ('548', 'tw', 'åªæéé·æè½æåºéä¼æ±ºé¬¥ã', null);
INSERT INTO `messagetable` VALUES ('549', 'en', 'You have to write numbers of regions <regionX> <regionY>', null);
INSERT INTO `messagetable` VALUES ('549', 'tw', 'å¨åå <regionX> <regionY> å¯«å¥æ¸å¼ã', null);
INSERT INTO `messagetable` VALUES ('550', 'en', 'You invited $1 to your Command Channel.', null);
INSERT INTO `messagetable` VALUES ('550', 'tw', 'éè«ã$1ãå å¥ä½ çææ®é »éã', null);
INSERT INTO `messagetable` VALUES ('551', 'en', 'You kicked $1 from the game.', null);
INSERT INTO `messagetable` VALUES ('551', 'tw', 'è¸¢é¤ã$1ãã', null);
INSERT INTO `messagetable` VALUES ('552', 'en', 'You killed $1', null);
INSERT INTO `messagetable` VALUES ('552', 'tw', 'æ®ºæ­»ã$1ãã', null);
INSERT INTO `messagetable` VALUES ('553', 'en', 'You left $1', null);
INSERT INTO `messagetable` VALUES ('553', 'tw', 'é¢éäº $1', null);
INSERT INTO `messagetable` VALUES ('554', 'en', 'You left $1', null);
INSERT INTO `messagetable` VALUES ('554', 'tw', 'é¢éäº $1', null);
INSERT INTO `messagetable` VALUES ('555', 'en', 'You may not add a new sub class before you are level 75 on your previous class.', null);
INSERT INTO `messagetable` VALUES ('555', 'tw', 'ç­ç´æªéå° 75 ä¹åç¡æ³è¿½å å¯è·æ¥­ã', null);
INSERT INTO `messagetable` VALUES ('556', 'en', 'You may not add a new sub class before you are level 75 on your previous sub class.', null);
INSERT INTO `messagetable` VALUES ('556', 'tw', 'å¯è·æ¥­ç­ç´æªéå° 75 ä¹åç¡æ³åè¿½å å¯è·æ¥­ã', null);
INSERT INTO `messagetable` VALUES ('557', 'en', 'You may not chat while a chat ban is in effect.', null);
INSERT INTO `messagetable` VALUES ('557', 'tw', 'ç¦æ­¢èå¤©ä¸­ã', null);
INSERT INTO `messagetable` VALUES ('558', 'en', 'You may not have more than three equipped symbols at a time.', null);
INSERT INTO `messagetable` VALUES ('558', 'tw', 'æ²æè½å»ç´ç« çæ¬ä½ã', null);
INSERT INTO `messagetable` VALUES ('559', 'en', 'You may not pick up this item while riding in this territory', null);
INSERT INTO `messagetable` VALUES ('559', 'tw', 'ç¡æ³å¨é¨ä¹çææ¿åæ±è¥¿ã', null);
INSERT INTO `messagetable` VALUES ('560', 'en', 'You may not resurrect participants in a festival.', null);
INSERT INTO `messagetable` VALUES ('560', 'tw', 'ç®æ¨é¯èª¤ã', null);
INSERT INTO `messagetable` VALUES ('561', 'en', 'You may not use Summon Friend Skill inside a Boss Zone.', null);
INSERT INTO `messagetable` VALUES ('561', 'tw', 'ç¡æ³å¨ Boss Zone å¬åæ°åã', null);
INSERT INTO `messagetable` VALUES ('562', 'en', 'You may not use an escape command in a Boss Zone.', null);
INSERT INTO `messagetable` VALUES ('562', 'tw', 'ç¡æ³å¨æ­¤å°ä½¿ç¨ã/è«éãæä»¤ã', null);
INSERT INTO `messagetable` VALUES ('563', 'en', 'You may not use an escape command in a festival.', null);
INSERT INTO `messagetable` VALUES ('563', 'tw', 'ç¡æ³å¨æ­¤å°ä½¿ç¨ã/è«éãæä»¤ã', null);
INSERT INTO `messagetable` VALUES ('564', 'en', 'You may not use an escape skill in a festival.', null);
INSERT INTO `messagetable` VALUES ('564', 'tw', 'ç¡æ³å¨é»æçç¥­å¸ä¸­ä½¿ç¨', null);
INSERT INTO `messagetable` VALUES ('565', 'en', 'You must be a member of a castle-owning clan to join the Lords Of Dawn.', null);
INSERT INTO `messagetable` VALUES ('565', 'tw', 'åªæææåå ¡çè¡çï¼æè½å å¥é»æçåä¸»åã', null);
INSERT INTO `messagetable` VALUES ('566', 'en', 'You must be a member of a castle-owning clan, have a Certificate of Lord\'s Approval, or pay 50000 adena to join the Lords of Dawn.', null);
INSERT INTO `messagetable` VALUES ('566', 'tw', 'è¥ä¸å±¬æ¼çµ±æ²»åå ¡çè¡çæåçï¼éæ¯ä»åå è²» 5 è¬éå¹£ææ¯æå¸¶é ä¸»çèªå¯æè½åå é»æçåä¸»åã', null);
INSERT INTO `messagetable` VALUES ('567', 'en', 'You must be an attacker to pickup Combat Flag', null);
INSERT INTO `messagetable` VALUES ('567', 'tw', 'å¿é æ¯æ»åæ¹æå¯æ¿èµ·é£æã', null);
INSERT INTO `messagetable` VALUES ('568', 'en', 'You must be on fort ground to pickup Combat Flag', null);
INSERT INTO `messagetable` VALUES ('568', 'tw', 'å¿é å¨è¦å¡å°é¢ä¸æå¯æ¿èµ·é£æã', null);
INSERT INTO `messagetable` VALUES ('569', 'en', 'You must enter a value for karma greater than or equal to 0.', null);
INSERT INTO `messagetable` VALUES ('569', 'tw', 'è«è¼¸å¥æ­£ç¢ºçæ¸å¼ã', null);
INSERT INTO `messagetable` VALUES ('570', 'en', 'You must enter an amount.', null);
INSERT INTO `messagetable` VALUES ('570', 'tw', 'è«è¼¸å¥æ­£ç¢ºçæ¸å¼ã', null);
INSERT INTO `messagetable` VALUES ('571', 'en', 'You must enter an integer amount.', null);
INSERT INTO `messagetable` VALUES ('571', 'tw', 'è«è¼¸å¥æ­£ç¢ºçæ¸å¼ã', null);
INSERT INTO `messagetable` VALUES ('572', 'en', 'You must equip a weapon before casting a spell.', null);
INSERT INTO `messagetable` VALUES ('572', 'tw', 'å¿é å¨æ½æ³åè£åæ­¦å¨ã', null);
INSERT INTO `messagetable` VALUES ('573', 'en', 'You must equip your weapon before casting a spell.', null);
INSERT INTO `messagetable` VALUES ('573', 'tw', 'å¿é å¨æ½æ³åè£åæ­¦å¨ã', null);
INSERT INTO `messagetable` VALUES ('574', 'en', 'You must get the skills of someone in order to do this.', null);
INSERT INTO `messagetable` VALUES ('574', 'tw', 'å¿é åå¾æè½æéçæ±è¥¿æè½å·è¡ã', null);
INSERT INTO `messagetable` VALUES ('575', 'en', 'You must have already completed your first class transfer.', null);
INSERT INTO `messagetable` VALUES ('575', 'tw', 'å®æä¸æ¬¡è½è·å¾æå¯ç³è«åå ã', null);
INSERT INTO `messagetable` VALUES ('576', 'en', 'You must have completed the Fate\'s Whisper quest to continue adding your sub class.', null);
INSERT INTO `messagetable` VALUES ('576', 'tw', 'çºè¿½å å¯è·æ¥­ï¼å¿é åå®æãå½éçç§èªãä»»åã', null);
INSERT INTO `messagetable` VALUES ('577', 'en', 'You must have completed the Mimir\'s Elixir quest to continue adding your sub class.', null);
INSERT INTO `messagetable` VALUES ('577', 'tw', 'çºè¿½å å¯è·æ¥­ï¼å¿é åå®æãç±³å¯ç¾çæ³æ°´ãä»»åã', null);
INSERT INTO `messagetable` VALUES ('578', 'en', 'You must have completed the Seeds of Chaos quest to continue adding your sub class.', null);
INSERT INTO `messagetable` VALUES ('578', 'tw', 'çºè¿½å å¯è·æ¥­ï¼å¿é åå®æãæ¸¾æ²çç¨®å­ãä»»åã', null);
INSERT INTO `messagetable` VALUES ('579', 'en', 'You must not be a member of a castle-owning clan to join the Revolutionaries of Dusk.', null);
INSERT INTO `messagetable` VALUES ('579', 'tw', 'å å¥æçµ±æ²»åå ¡çè¡çæåçï¼å°±ä¸å¾å å¥é»æçé©å½è»ã', null);
INSERT INTO `messagetable` VALUES ('580', 'en', 'You must set the enchant level to be between 0-65535.', null);
INSERT INTO `messagetable` VALUES ('580', 'tw', 'å¼·åç­ç´ç¯ååªéæ¼ 0-65535 ä¹éã', null);
INSERT INTO `messagetable` VALUES ('581', 'en', 'You must specify level between 1 and $1.', null);
INSERT INTO `messagetable` VALUES ('581', 'tw', 'ç­ç´å¿é æ¯ 1 è³ $1 ä¹éã', null);
INSERT INTO `messagetable` VALUES ('582', 'en', 'You need 25 Crystals: B Grade.', null);
INSERT INTO `messagetable` VALUES ('582', 'tw', 'éè¦ 25 åçµæ¶-Bç´ã', null);
INSERT INTO `messagetable` VALUES ('583', 'en', 'You need to specify a valid new color.', null);
INSERT INTO `messagetable` VALUES ('583', 'tw', 'è«è¼¸å¥æ­£ç¢ºçé¡è²ã', null);
INSERT INTO `messagetable` VALUES ('584', 'en', 'You need to specify the new title.', null);
INSERT INTO `messagetable` VALUES ('584', 'tw', 'è«è¼¸å¥æ­£ç¢ºçç¨±èã', null);
INSERT INTO `messagetable` VALUES ('585', 'en', 'You no longer have GM status.', null);
INSERT INTO `messagetable` VALUES ('585', 'tw', 'GM çæééã', null);
INSERT INTO `messagetable` VALUES ('586', 'en', 'You now have all the skills of $1.', null);
INSERT INTO `messagetable` VALUES ('586', 'tw', 'ç¾å¨å·²ç¶åå¾ã$1ãçæææè½ã', null);
INSERT INTO `messagetable` VALUES ('587', 'en', 'You now have all your skills back.', null);
INSERT INTO `messagetable` VALUES ('587', 'tw', 'ç¾å¨å·²ç¶æ¢å¾©ææçæè½ã', null);
INSERT INTO `messagetable` VALUES ('588', 'en', 'You opened Altar Entrance.', null);
INSERT INTO `messagetable` VALUES ('588', 'tw', 'ç¥­å£å¥å£å·²éåã', null);
INSERT INTO `messagetable` VALUES ('589', 'en', 'You opened Anterooms Door.', null);
INSERT INTO `messagetable` VALUES ('589', 'tw', 'åå»³çéå·²éåã', null);
INSERT INTO `messagetable` VALUES ('590', 'en', 'You opened Door of Darkness.', null);
INSERT INTO `messagetable` VALUES ('590', 'tw', 'é»æçéå·²éåã', null);
INSERT INTO `messagetable` VALUES ('591', 'en', 'You or your target cant request trade in Olympiad mode', null);
INSERT INTO `messagetable` VALUES ('591', 'tw', 'ç¡æ³å¨å¥§æå¹äºç«¶è³½ä¸­äº¤æã', null);
INSERT INTO `messagetable` VALUES ('592', 'en', 'You reflected $1 damage.', null);
INSERT INTO `messagetable` VALUES ('592', 'tw', 'é æã$1ãçå·å®³ã', null);
INSERT INTO `messagetable` VALUES ('593', 'en', 'You removed all skills from $1', null);
INSERT INTO `messagetable` VALUES ('593', 'tw', 'ç§»é¤ã$1ãçæææè½ã', null);
INSERT INTO `messagetable` VALUES ('594', 'en', 'You removed from list for geoeditor.', null);
INSERT INTO `messagetable` VALUES ('594', 'tw', 'é¢é GeoEditor çåè¡¨ã', null);
INSERT INTO `messagetable` VALUES ('595', 'en', 'You removed the skill $1 from $2.', null);
INSERT INTO `messagetable` VALUES ('595', 'tw', 'ç§»é¤ã$2ãçã$1ãæè½ã', null);
INSERT INTO `messagetable` VALUES ('596', 'en', 'You set level $1 for clan $2', null);
INSERT INTO `messagetable` VALUES ('596', 'tw', 'æ´æ¹ã$2ãè¡ççç­ç´çºã$1ãã', null);
INSERT INTO `messagetable` VALUES ('597', 'en', 'You should select a player!', null);
INSERT INTO `messagetable` VALUES ('597', 'tw', 'ä½ å¿é é¸æä¸åç©å®¶ï¼', null);
INSERT INTO `messagetable` VALUES ('598', 'en', 'You use Escape: $1 seconds.', null);
INSERT INTO `messagetable` VALUES ('598', 'tw', 'ä½¿ç¨è«éï¼ä¼°è¨ $1 ç§ã', null);
INSERT INTO `messagetable` VALUES ('599', 'en', 'You use Escape: $1 minutes.', null);
INSERT INTO `messagetable` VALUES ('599', 'tw', 'ä½¿ç¨è«éï¼ä¼°è¨ $1 åéã', null);
INSERT INTO `messagetable` VALUES ('600', 'en', 'You use Fast Escape: 5 seconds.', null);
INSERT INTO `messagetable` VALUES ('600', 'tw', 'ä½¿ç¨å¿«éè«éï¼ä¼°è¨ 5 ç§ã', null);
INSERT INTO `messagetable` VALUES ('601', 'en', 'You will be kicked for illegal action, GM informed.', null);
INSERT INTO `messagetable` VALUES ('601', 'tw', 'ä½ è¢«è¸¢é¤ï¼å çºåäºéæ³åä½ã', null);
INSERT INTO `messagetable` VALUES ('602', 'en', 'You will be re-spawned in $1 seconds', null);
INSERT INTO `messagetable` VALUES ('602', 'tw', 'å°å¨ $1 ç§å¾å¾©æ´»ã', null);
INSERT INTO `messagetable` VALUES ('603', 'en', 'You will be teleported to GM Consultation Service area and jailed.', null);
INSERT INTO `messagetable` VALUES ('603', 'tw', 'å¼·å¶å³éè³ GM è«®è©¢èã', null);
INSERT INTO `messagetable` VALUES ('604', 'en', 'You\'re not married.', null);
INSERT INTO `messagetable` VALUES ('604', 'tw', 'ä½ æ²æçµå©ã', null);
INSERT INTO `messagetable` VALUES ('605', 'en', 'You\'re teleporting yourself to character $1', null);
INSERT INTO `messagetable` VALUES ('605', 'tw', 'å³éè³ç©å®¶ã$1ãã', null);
INSERT INTO `messagetable` VALUES ('606', 'en', 'Your Partner has logged in', null);
INSERT INTO `messagetable` VALUES ('606', 'tw', 'ä½ çå¥½åå·²ç»å¥ã', null);
INSERT INTO `messagetable` VALUES ('607', 'en', 'Your Partner is in a Seven Signs Dungeon and you are not in the winner Cabal!', null);
INSERT INTO `messagetable` VALUES ('607', 'tw', 'ä½ çä¼´ä¾¶å¨ä¸å°å°çå°ç£ï¼èä½ ä¸æ¯åå©é£ççä¸æ¹ï¼', null);
INSERT INTO `messagetable` VALUES ('608', 'en', 'Your Partner is in a Seven Signs Dungeon and you are not registered!', null);
INSERT INTO `messagetable` VALUES ('608', 'tw', 'ä½ çä¼´ä¾¶å¨ä¸å°å°çå°ç£ï¼èä½ æ²æå å¥ä»»ä½ä¸æ¹ï¼', null);
INSERT INTO `messagetable` VALUES ('609', 'en', 'Your Strider Has not reached the required level.', null);
INSERT INTO `messagetable` VALUES ('609', 'tw', 'åº§é¾å°æªéå°éæ±çç­ç´ã', null);
INSERT INTO `messagetable` VALUES ('610', 'en', 'Your access level has been changed to $1', null);
INSERT INTO `messagetable` VALUES ('610', 'tw', 'ä½ çæ¬éç­ç´æ´æ¹çºã$1ãã', null);
INSERT INTO `messagetable` VALUES ('611', 'en', 'Your auction has been canceled', null);
INSERT INTO `messagetable` VALUES ('611', 'tw', 'åæ¶ææ¨ã', null);
INSERT INTO `messagetable` VALUES ('612', 'en', 'Your character has been banned. Bye.', null);
INSERT INTO `messagetable` VALUES ('612', 'tw', 'ä½ çè§è²è¢«å°éäºã', null);
INSERT INTO `messagetable` VALUES ('613', 'en', 'Your chat ban has been lifted.', null);
INSERT INTO `messagetable` VALUES ('613', 'tw', 'ç¦è¨è§£é¤ã', null);
INSERT INTO `messagetable` VALUES ('614', 'en', 'Your clan does not own a castle.', null);
INSERT INTO `messagetable` VALUES ('614', 'tw', 'ä½ çè¡çæ²æææåå ¡ã', null);
INSERT INTO `messagetable` VALUES ('615', 'en', 'Your clan does not own a clanhall.', null);
INSERT INTO `messagetable` VALUES ('615', 'tw', 'ä½ çè¡çæ²ææææ ¹æå°ã', null);
INSERT INTO `messagetable` VALUES ('616', 'en', 'Your clan does not own a fortress.', null);
INSERT INTO `messagetable` VALUES ('616', 'tw', 'ä½ çè¡çæ²æææè¦å¡ã', null);
INSERT INTO `messagetable` VALUES ('617', 'en', 'Your clan privileges have been set to $1 by $2', null);
INSERT INTO `messagetable` VALUES ('617', 'tw', 'ã$2ãå°ä½ çè¡çç­ç´æ´æ¹çºã$1ãã', null);
INSERT INTO `messagetable` VALUES ('618', 'en', 'Your clan\'s level needs to be at least 2, before you can bid in an auction', null);
INSERT INTO `messagetable` VALUES ('618', 'tw', 'æ ¹æå°æè³£åéè¡çç­ç´ 2 ä»¥ä¸çè¡ççä¸»åå ã', null);
INSERT INTO `messagetable` VALUES ('619', 'en', 'Your current record for this Grand Olympiad is $1 match(s) played. You have earned $2 Olympiad Point(s)', null);
INSERT INTO `messagetable` VALUES ('619', 'tw', 'ä½ ç®åå¨åå¤§çå¥§æå¹äºç´éæ¯ $1 åç«¶è³½å°æãä½ è´å¾ $2 å¥§æå¹äºåæ¸ã', null);
INSERT INTO `messagetable` VALUES ('620', 'en', 'Your fiance has decided to break the engagement with you.', null);
INSERT INTO `messagetable` VALUES ('620', 'tw', 'ä½ çä¼´ä¾¶æ±ºå®èä½ åæ¶å©ç´ã', null);
INSERT INTO `messagetable` VALUES ('621', 'en', 'Your gender has been changed by a GM', null);
INSERT INTO `messagetable` VALUES ('621', 'tw', 'è¢«ç®¡çèæ´æ¹æ§å¥ã', null);
INSERT INTO `messagetable` VALUES ('622', 'en', 'Your name color has been changed by a GM', null);
INSERT INTO `messagetable` VALUES ('622', 'tw', 'è¢«ç®¡çèæ´æ¹åç¨±çé¡è²ã', null);
INSERT INTO `messagetable` VALUES ('623', 'en', 'Your name has been changed by a GM.', null);
INSERT INTO `messagetable` VALUES ('623', 'tw', 'è¢«ç®¡çèæ´æ¹åç¨±ã', null);
INSERT INTO `messagetable` VALUES ('624', 'en', 'Your olympiad registration was canceled due to an error', null);
INSERT INTO `messagetable` VALUES ('624', 'tw', 'ç¼çé¯èª¤ï¼å æ­¤å¥§æå¹äºç«¶è³½ç»è¨åæ¶ã', null);
INSERT INTO `messagetable` VALUES ('625', 'en', 'Your partner declined', null);
INSERT INTO `messagetable` VALUES ('625', 'tw', 'ä½ çä¼´ä¾¶æçµï¼', null);
INSERT INTO `messagetable` VALUES ('626', 'en', 'Your partner is in Jail.', null);
INSERT INTO `messagetable` VALUES ('626', 'tw', 'ä½ çä¼´ä¾¶å¨ GM è«®è©¢èã', null);
INSERT INTO `messagetable` VALUES ('627', 'en', 'Your partner is in a duel.', null);
INSERT INTO `messagetable` VALUES ('627', 'tw', 'ä½ çä¼´ä¾¶å¨æ±ºé¬¥ä¸­ã', null);
INSERT INTO `messagetable` VALUES ('628', 'en', 'Your partner is in a festival.', null);
INSERT INTO `messagetable` VALUES ('628', 'tw', 'ä½ çä¼´ä¾¶å¨é»æçç¥­å¸ã', null);
INSERT INTO `messagetable` VALUES ('629', 'en', 'Your partner is in an event.', null);
INSERT INTO `messagetable` VALUES ('629', 'tw', 'ä½ çä¼´ä¾¶å¨åèæ´»åä¸­ã', null);
INSERT INTO `messagetable` VALUES ('630', 'en', 'Your partner is in dimensional rift.', null);
INSERT INTO `messagetable` VALUES ('630', 'tw', 'ä½ çä¼´ä¾¶å¨æ¬¡åçè£ç¸«ã', null);
INSERT INTO `messagetable` VALUES ('631', 'en', 'Your partner is in siege, you can\'t go to your partner.', null);
INSERT INTO `messagetable` VALUES ('631', 'tw', 'ä½ çä¼´ä¾¶å¨æ»åæ°ä¸­ï¼æä»¥ç¡æ³åå¾ä½ çä¼´ä¾¶ã', null);
INSERT INTO `messagetable` VALUES ('632', 'en', 'Your partner is in the Olympiad now.', null);
INSERT INTO `messagetable` VALUES ('632', 'tw', 'ä½ çä¼´ä¾¶å¨å¥§æå¹äºç«¶è³½ä¸­ã', null);
INSERT INTO `messagetable` VALUES ('633', 'en', 'Your partner is in the observation.', null);
INSERT INTO `messagetable` VALUES ('633', 'tw', 'ä½ çä¼´ä¾¶å¨è§å¯åå®ä¸­ã', null);
INSERT INTO `messagetable` VALUES ('634', 'en', 'Your partner is inside a Boss Zone.', null);
INSERT INTO `messagetable` VALUES ('634', 'tw', 'ä½ çä¼´ä¾¶å¨ Boss Zone è£¡é¢ã', null);
INSERT INTO `messagetable` VALUES ('635', 'en', 'Your partner is not online.', null);
INSERT INTO `messagetable` VALUES ('635', 'tw', 'ä½ çä¼´ä¾¶ä¸å¨ç·ä¸ã', null);
INSERT INTO `messagetable` VALUES ('636', 'en', 'Your pet has increased it\'s level.', null);
INSERT INTO `messagetable` VALUES ('636', 'tw', 'ä½¿é­ç­ç´ä¸åã', null);
INSERT INTO `messagetable` VALUES ('637', 'en', 'Your pet is too hungry to stay summoned.', null);
INSERT INTO `messagetable` VALUES ('637', 'tw', 'å¯µç©éå¸¸çé£¢é¤ã', null);
INSERT INTO `messagetable` VALUES ('638', 'en', 'Your pet\'s name can be up to 16 characters.', null);
INSERT INTO `messagetable` VALUES ('638', 'tw', 'è«è¼¸å¥ä¸­æ1ï½8å­æè±æ1ï½16å­ã', null);
INSERT INTO `messagetable` VALUES ('639', 'en', 'Your petition was rejected. Please try again later.', null);
INSERT INTO `messagetable` VALUES ('639', 'tw', 'æ¨çè¨´æ±è¢«éåï¼è«ç¨å¾ååè©¦ã', null);
INSERT INTO `messagetable` VALUES ('640', 'en', 'Your spouse has decided to divorce you.', null);
INSERT INTO `messagetable` VALUES ('640', 'tw', 'ä½ çéå¶æ±ºå®èä½ é¢å©ã', null);
INSERT INTO `messagetable` VALUES ('641', 'en', 'Your status does not allow you to do that.', null);
INSERT INTO `messagetable` VALUES ('641', 'tw', 'ä½ çèº«åä¸åè¨±å·è¡éååä½ã', null);
INSERT INTO `messagetable` VALUES ('642', 'en', 'Your target cannot be summoned while he hasn\'t got enough Summoning Crystal', null);
INSERT INTO `messagetable` VALUES ('642', 'tw', 'ç®æ¨ç¡æ³å¬åï¼å çºå°æ¹çå¬åæ°´æ¶ä¸è¶³ã', null);
INSERT INTO `messagetable` VALUES ('643', 'en', 'Your target has no Party.', null);
INSERT INTO `messagetable` VALUES ('643', 'tw', 'ç®æ¨ä¸å¨éä¼ä¸­ã', null);
INSERT INTO `messagetable` VALUES ('644', 'en', 'Your title has been changed by a GM', null);
INSERT INTO `messagetable` VALUES ('644', 'tw', 'è¢«ç®¡çèæ´æ¹ç¨±èã', null);
INSERT INTO `messagetable` VALUES ('645', 'en', '[GM]$1 updated your skills.', null);
INSERT INTO `messagetable` VALUES ('645', 'tw', '[GM]$1éæ°æ´çä½ çæè½ã', null);
INSERT INTO `messagetable` VALUES ('646', 'en', '_boat : x $1 y $2 z $3', null);
INSERT INTO `messagetable` VALUES ('646', 'tw', 'è¹ï¼x $1 y $2 z $3', null);
INSERT INTO `messagetable` VALUES ('647', 'en', '_destination : x $1 y $2 z $3', null);
INSERT INTO `messagetable` VALUES ('647', 'tw', 'ç®çå°ï¼x $1 y $2 z $3', null);
INSERT INTO `messagetable` VALUES ('648', 'en', 'command not working', null);
INSERT INTO `messagetable` VALUES ('648', 'tw', 'åè½å°æªå¯¦è£ã', null);
INSERT INTO `messagetable` VALUES ('649', 'en', 'dist > 300', null);
INSERT INTO `messagetable` VALUES ('649', 'tw', 'è·é¢ > 300', null);
INSERT INTO `messagetable` VALUES ('650', 'en', 'door always true', null);
INSERT INTO `messagetable` VALUES ('650', 'tw', 'éå·²ç¶å­å¨ã', null);
INSERT INTO `messagetable` VALUES ('651', 'en', 'maxPlayer set to $1', null);
INSERT INTO `messagetable` VALUES ('651', 'tw', 'æå¤§ç©å®¶æ¸éè¨­ç½®çºã$1ãã', null);
INSERT INTO `messagetable` VALUES ('652', 'en', 'multisell reloaded', null);
INSERT INTO `messagetable` VALUES ('652', 'tw', 'multisell éæ°è¼å¥ã', null);
INSERT INTO `messagetable` VALUES ('653', 'en', 'npcs reloaded', null);
INSERT INTO `messagetable` VALUES ('653', 'tw', 'npcs éæ°è¼å¥ã', null);
INSERT INTO `messagetable` VALUES ('654', 'en', 'olympiad stuff saved!!', null);
INSERT INTO `messagetable` VALUES ('654', 'tw', 'å¥§æå¹äºè³æå²å­ï¼', null);
INSERT INTO `messagetable` VALUES ('655', 'en', 'parameter $1 succesfully set to $2', null);
INSERT INTO `messagetable` VALUES ('655', 'tw', 'åæ¸ $1 æåè¨­å®çº $2ã', null);
INSERT INTO `messagetable` VALUES ('656', 'en', 'skills reloaded', null);
INSERT INTO `messagetable` VALUES ('656', 'tw', 'skills éæ°è¼å¥ã', null);
INSERT INTO `messagetable` VALUES ('657', 'en', 'teleport location table reloaded', null);
INSERT INTO `messagetable` VALUES ('657', 'tw', 'teleport éæ°è¼å¥ã', null);
INSERT INTO `messagetable` VALUES ('658', 'en', 'unknown error!', null);
INSERT INTO `messagetable` VALUES ('658', 'tw', 'æªç¥çé¯èª¤ï¼', null);
INSERT INTO `messagetable` VALUES ('659', 'en', 'unknown npc template id$1', null);
INSERT INTO `messagetable` VALUES ('659', 'tw', 'æªç¥ç NPC IDï¼$1', null);
INSERT INTO `messagetable` VALUES ('660', 'en', 'x:$1 y:$2 z:$3', null);
INSERT INTO `messagetable` VALUES ('660', 'tw', 'x:$1 y:$2 z:$3', null);
INSERT INTO `messagetable` VALUES ('661', 'en', '$1 isn\'t in the World.', null);
INSERT INTO `messagetable` VALUES ('661', 'tw', 'ã$1ãä¸å¨éæ²ä¸­ã', null);
INSERT INTO `messagetable` VALUES ('662', 'en', '$1 cannot be used with this weapon.', null);
INSERT INTO `messagetable` VALUES ('662', 'tw', 'ç¡æ³å¨æ­¤ç¨®é¡æ­¦å¨ä¸ä½¿ç¨ã$1ãã', null);
INSERT INTO `messagetable` VALUES ('663', 'en', '$1 castle tax changed to $2%.', null);
INSERT INTO `messagetable` VALUES ('663', 'tw', 'ã$1ãå°åå ¡ç¨çæ´æ¹çº$2%ã', null);
INSERT INTO `messagetable` VALUES ('664', 'en', '$1 fort tax changed to $2%.', null);
INSERT INTO `messagetable` VALUES ('664', 'tw', 'ã$1ãå°è¦å¡ç¨çæ´æ¹çº$2%ã', null);
INSERT INTO `messagetable` VALUES ('665', 'en', '$1 - $2 ($3): $4 $5 $6', null);
INSERT INTO `messagetable` VALUES ('665', 'tw', '$1 - $2 ($3): $4 $5 $6', null);
INSERT INTO `messagetable` VALUES ('666', 'en', '$1: $2 alive out of $3 of NPC ID $4 ($5)', null);
INSERT INTO `messagetable` VALUES ('666', 'tw', '$1ï¼$2 çå­ï¼æå¤§å¼çº $3ãç·¨èçº $4 ($5)ã', null);
INSERT INTO `messagetable` VALUES ('667', 'en', '$1 performs MSU $2/$3 by your request.', null);
INSERT INTO `messagetable` VALUES ('667', 'tw', 'ã$1ãä½¿ç¨æè½ææï¼$2/ç­ç´$3ã', null);
INSERT INTO `messagetable` VALUES ('668', 'en', '$1 was affected by your request.', null);
INSERT INTO `messagetable` VALUES ('668', 'tw', 'ã$1ãåºç¾æè¦æ±çåä½ã', null);
INSERT INTO `messagetable` VALUES ('669', 'en', '$1\'s abnormal status was affected by your request.', null);
INSERT INTO `messagetable` VALUES ('669', 'tw', 'ã$1ãåºç¾/æ¶å¤±æè¦æ±çç°å¸¸ææã', null);
INSERT INTO `messagetable` VALUES ('670', 'en', '$1 is a $2', null);
INSERT INTO `messagetable` VALUES ('670', 'tw', 'ã$1ãçè·æ¥­è®æ´çºã$2ãã', null);
INSERT INTO `messagetable` VALUES ('671', 'en', '$1 was affected by your request.', null);
INSERT INTO `messagetable` VALUES ('671', 'tw', 'ã$1ãåºç¾æè¦æ±çåä½ã', null);
INSERT INTO `messagetable` VALUES ('672', 'en', '$1\'s abnormal status was affected by your request.', null);
INSERT INTO `messagetable` VALUES ('672', 'tw', 'ã$1ãåºç¾/æ¶å¤±æè¦æ±çç°å¸¸ææã', null);
INSERT INTO `messagetable` VALUES ('673', 'en', '$1 units radius affected by your request.', null);
INSERT INTO `messagetable` VALUES ('673', 'tw', '$1 ç¯åå§åºç¾/æ¶å¤±æè¦æ±çææã', null);
INSERT INTO `messagetable` VALUES ('674', 'en', '$1 failed.', null);
INSERT INTO `messagetable` VALUES ('674', 'tw', 'ã$1ãæ»æå¤±æã', null);
INSERT INTO `messagetable` VALUES ('675', 'en', '$1 is now chat banned $E1.', 'for $2 seconds.;.');
INSERT INTO `messagetable` VALUES ('675', 'tw', 'ã$1ãç¦æ­¢èå¤© $E1 ', ' $2 ç§ã;ã');
INSERT INTO `messagetable` VALUES ('676', 'en', '$1\'s chat ban has now been lifted.', null);
INSERT INTO `messagetable` VALUES ('676', 'tw', 'ã$1ãå·²è§£é¤ç¦æ­¢èå¤©ã', null);
INSERT INTO `messagetable` VALUES ('677', 'en', 'Page ', null);
INSERT INTO `messagetable` VALUES ('677', 'tw', 'é ', null);
INSERT INTO `messagetable` VALUES ('678', 'en', 's. Please try again.', null);
INSERT INTO `messagetable` VALUES ('678', 'tw', 'ãè«éæ°åè©¦ã', null);
INSERT INTO `messagetable` VALUES ('679', 'en', ' more than 20', null);
INSERT INTO `messagetable` VALUES ('679', 'tw', 'å¤§æ¼ 20', null);
INSERT INTO `messagetable` VALUES ('680', 'en', 's.<br>Please refine your search to see all of the results.', null);
INSERT INTO `messagetable` VALUES ('680', 'tw', 'ã<br>è«ç¿»é±è³ææ¹ä¾¿æ¥è©¢æéçè³è¨ã', null);
INSERT INTO `messagetable` VALUES ('681', 'en', 's. Maybe they got d/c? :)', null);
INSERT INTO `messagetable` VALUES ('681', 'tw', 'ãæ²ææ¾å°ï¼', null);
INSERT INTO `messagetable` VALUES ('682', 'en', 's.<br>In order to avoid you a client crash I won\'t <br1>display results beyond the 20th character.', null);
INSERT INTO `messagetable` VALUES ('682', 'tw', 'ã<br>çºäºé²æ­¢å®¢æ¶ç«¯åºé¯ï¼<br1>é¡¯ç¤ºçè³æéå¶çº 20ã', null);
INSERT INTO `messagetable` VALUES ('683', 'en', ' wants to make an event !!! (you\'ll find a npc with the details around)', null);
INSERT INTO `messagetable` VALUES ('683', 'tw', 'è¦èè¾¦ä¸åæ´»åï¼ï¼(ä½ å¿é å°æ¾ææç¸éè¨æ¯ç NPC)', null);
INSERT INTO `messagetable` VALUES ('684', 'en', '.... world coords: x: $1 y: $2 z: $3', null);
INSERT INTO `messagetable` VALUES ('684', 'tw', '.... ä¸çåº§æ¨ï¼x: $1 y: $2 z: $3', null);
INSERT INTO `messagetable` VALUES ('685', 'en', '.... geo position: $1', null);
INSERT INTO `messagetable` VALUES ('685', 'tw', '.... Geo ä½ç½®ï¼$1', null);
INSERT INTO `messagetable` VALUES ('686', 'en', ' is now mortal', null);
INSERT INTO `messagetable` VALUES ('686', 'tw', 'åæ¶ç¡æµã', null);
INSERT INTO `messagetable` VALUES ('687', 'en', ' is now invulnerable', null);
INSERT INTO `messagetable` VALUES ('687', 'tw', 'ååç¡æµã', null);
INSERT INTO `messagetable` VALUES ('688', 'en', 'Your party is being teleported by an Admin.', null);
INSERT INTO `messagetable` VALUES ('688', 'tw', 'ç®¡çå¡åéä¼é²è¡å³éã', null);
INSERT INTO `messagetable` VALUES ('689', 'en', 'Your clan is being teleported by an Admin.', null);
INSERT INTO `messagetable` VALUES ('689', 'tw', 'ç®¡çå¡åè¡çé²è¡å³éã', null);
INSERT INTO `messagetable` VALUES ('690', 'en', 'Player $1 was not found in the game.', null);
INSERT INTO `messagetable` VALUES ('690', 'tw', 'ç©å®¶ã$1ãä¸å¨éæ²ä¸­ã', null);
INSERT INTO `messagetable` VALUES ('691', 'en', 'Account Access Level for $1 set to $2.', null);
INSERT INTO `messagetable` VALUES ('691', 'tw', 'æ´æ¹æ¬éç­ç´å¾ $1 è® $2ã', null);
INSERT INTO `messagetable` VALUES ('692', 'en', 'Couldn\'t find player: $1.', null);
INSERT INTO `messagetable` VALUES ('692', 'tw', 'ç©å®¶ã$1ãä¸å¨éæ²ä¸­ã', null);
INSERT INTO `messagetable` VALUES ('693', 'en', 'You $E1 $1 points $E2 $2\'s reputation. Their current score is $3', 'add;remove;to;from');
INSERT INTO `messagetable` VALUES ('693', 'tw', '$E1 $1 é»çè²æ$E2ã$2ããä»åç®åçè²ææ¯ï¼$3', 'å¢å ;ç§»é¤;çµ¦;å¾');
INSERT INTO `messagetable` VALUES ('694', 'en', 'NPC Respawn completed!', null);
INSERT INTO `messagetable` VALUES ('694', 'tw', 'NPC éæ°æ¾ç½®å®æï¼', null);
INSERT INTO `messagetable` VALUES ('695', 'en', ' has been removed from the upcoming festival.', null);
INSERT INTO `messagetable` VALUES ('695', 'tw', 'å¨ä¸ä¸å ´çé»æç¥­å¸è¢«ç§»é¤ã', null);
INSERT INTO `messagetable` VALUES ('696', 'en', 'Player ', ' tried to learn skill that he can\'t!!!');
INSERT INTO `messagetable` VALUES ('696', 'tw', 'ç©å®¶', 'ä¼åå­¸ç¿ä¸è©²å­¸ç¿çæè½ï¼ï¼ï¼');
INSERT INTO `messagetable` VALUES ('697', 'en', 'Warning!! Character ', ' of account ; sent a false BuyList list_id.');
INSERT INTO `messagetable` VALUES ('697', 'tw', 'Warning!! Character ', ' of account ; sent a false BuyList list_id.');
INSERT INTO `messagetable` VALUES ('698', 'en', 'Warning!! Character ', ' of account ; tried to purchase over  items at the same time.');
INSERT INTO `messagetable` VALUES ('698', 'tw', 'Warning!! Character ', ' of account ; tried to purchase over  items at the same time.');
INSERT INTO `messagetable` VALUES ('699', 'en', 'Warning!! Character ', ' of account ; tried to purchase over ; adena worth of goods.');
INSERT INTO `messagetable` VALUES ('699', 'tw', 'Warning!! Character ', ' of account ; tried to purchase over ; adena worth of goods.');
INSERT INTO `messagetable` VALUES ('700', 'en', 'EXTRA ONLY', 'Gemstone D;Gemstone C;Gemstone B;Gemstone A;Gemstone S');
INSERT INTO `messagetable` VALUES ('700', 'tw', 'EXTRA ONLY', 'å¯¶ç³-Dç´;å¯¶ç³-Cç´;å¯¶ç³-Bç´;å¯¶ç³-Aç´;å¯¶ç³-Sç´');
INSERT INTO `messagetable` VALUES ('701', 'en', '[RequestCrystallizeItem] count <= 0! ban! oid: ', ' owner: ');
INSERT INTO `messagetable` VALUES ('701', 'tw', '[è¦çµæ¶åçç©å] æ¸é <= 0! å°éï¼', 'ç©ä¸»ï¼');
INSERT INTO `messagetable` VALUES ('702', 'en', '[RequestDestroyItem] count < 0! ban! oid:', ' owner: ');
INSERT INTO `messagetable` VALUES ('702', 'tw', '[è¦ç ´å£çç©å] æ¸é < 0! å°éï¼', 'ç©ä¸»ï¼');
INSERT INTO `messagetable` VALUES ('703', 'en', '[RequestDropItem] count <= 0! ban! oid: ', ' owner: ');
INSERT INTO `messagetable` VALUES ('703', 'tw', '[è¦ä¸æçç©å] æ¸é <= 0! å°éï¼', 'ç©ä¸»ï¼');
INSERT INTO `messagetable` VALUES ('704', 'en', '[RequestDropItem] count > 1 but item is not stackable! ban! oid: ', ' owner: ');
INSERT INTO `messagetable` VALUES ('704', 'tw', '[è¦ä¸æçç©å] æ¸é > 1 ä½ç©åä¸æ¯å ççï¼', 'ç©ä¸»ï¼');
INSERT INTO `messagetable` VALUES ('705', 'en', 'Character (', ') has dropped (;)adena at (;,;)');
INSERT INTO `messagetable` VALUES ('705', 'tw', 'ç©å®¶ã', 'ãä¸æ£ (;) éå¹£å¨ (;,;)');
INSERT INTO `messagetable` VALUES ('706', 'en', 'Congratulations to $1 and $2! They have been married.', null);
INSERT INTO `messagetable` VALUES ('706', 'tw', 'æ­åã$1ãåã$2ãï¼ä»åçµå©äºã', null);
INSERT INTO `messagetable` VALUES ('707', 'en', 'Lottery tickets are now available for Lucky Lottery #$1.', null);
INSERT INTO `messagetable` VALUES ('707', 'tw', 'å½©å¸å±æ¸ç¬¬ #$1 å±ã', null);
INSERT INTO `messagetable` VALUES ('708', 'en', 'Olympiad Validation Period has began', null);
INSERT INTO `messagetable` VALUES ('708', 'tw', 'å¥§æå¹äºè³½ç¨éå§ã', null);
INSERT INTO `messagetable` VALUES ('709', 'en', 'Olympiad Validation Period has ended', null);
INSERT INTO `messagetable` VALUES ('709', 'tw', 'å¥§æå¹äºè³½ç¨çµæã', null);
INSERT INTO `messagetable` VALUES ('710', 'en', 'The $1 has spawned near $2!', null);
INSERT INTO `messagetable` VALUES ('710', 'tw', '$1åºç¾å¨$2çååï¼', null);
INSERT INTO `messagetable` VALUES ('711', 'en', 'TvT Event: $1 hour(s) until registration is closed!', null);
INSERT INTO `messagetable` VALUES ('711', 'tw', 'TvT æ´»åï¼$1 å°æå¾ç»è¨çµæï¼', null);
INSERT INTO `messagetable` VALUES ('712', 'en', 'TvT Event: $1 minute(s) until registration is closed!', null);
INSERT INTO `messagetable` VALUES ('712', 'tw', 'TvT æ´»åï¼$1 åéå¾ç»è¨çµæï¼', null);
INSERT INTO `messagetable` VALUES ('713', 'en', 'TvT Event: $1 second(s) until registration is closed!', null);
INSERT INTO `messagetable` VALUES ('713', 'tw', 'TvT æ´»åï¼$1 ç§å¾ç»è¨çµæï¼', null);
INSERT INTO `messagetable` VALUES ('714', 'en', 'TvT Event: Event cancelled due to lack of Participation.', null);
INSERT INTO `messagetable` VALUES ('714', 'tw', 'TvT æ´»åï¼å ç¡äººåèå æ­¤æ´»ååæ¶ã', null);
INSERT INTO `messagetable` VALUES ('715', 'en', 'TvT Event: Event was cancelled.', null);
INSERT INTO `messagetable` VALUES ('715', 'tw', 'TvT æ´»åï¼æ´»åå·²åæ¶ã', null);
INSERT INTO `messagetable` VALUES ('716', 'en', 'TvT Event: Registration opened for $1 minute(s).', null);
INSERT INTO `messagetable` VALUES ('716', 'tw', 'TvT æ´»åï¼éæ¾ç»è¨ $1 åéã', null);
INSERT INTO `messagetable` VALUES ('717', 'en', '$1 has lost $2 castle', null);
INSERT INTO `messagetable` VALUES ('717', 'tw', 'ã$1ãè¡çå¤±å»äºã$2ãï¼', null);
INSERT INTO `messagetable` VALUES ('718', 'en', '$1 has lost $2 fort', null);
INSERT INTO `messagetable` VALUES ('718', 'tw', '$ã$1ãè¡çå¤±å»äºã$2ãï¼', null);
INSERT INTO `messagetable` VALUES ('719', 'en', '$1 has taken $2 castle!', null);
INSERT INTO `messagetable` VALUES ('719', 'tw', 'ã$1ãè¡çæ»ä¸äºã$2ãï¼', null);
INSERT INTO `messagetable` VALUES ('720', 'en', '$1 has taken $2 fort!', null);
INSERT INTO `messagetable` VALUES ('720', 'tw', 'ã$1ãè¡çæ»ä¸äºã$2ãï¼', null);
INSERT INTO `messagetable` VALUES ('721', 'en', '$1 has lost $2 castle!', null);
INSERT INTO `messagetable` VALUES ('721', 'tw', 'ã$1ãè¡çå¤±å»äºã$2ãï¼', null);
INSERT INTO `messagetable` VALUES ('722', 'en', '$1 has lost $2 fortress!', null);
INSERT INTO `messagetable` VALUES ('722', 'tw', 'ã$1ãè¡çå¤±å»äºã$2ãï¼', null);
INSERT INTO `messagetable` VALUES ('723', 'en', 'TvT Event: $1 hour(s) until event is finished!', null);
INSERT INTO `messagetable` VALUES ('723', 'tw', 'TvT æ´»åï¼$1 å°æå¾æ´»åçµæï¼', null);
INSERT INTO `messagetable` VALUES ('724', 'en', 'TvT Event: $1 minute(s) until the event is finished!', null);
INSERT INTO `messagetable` VALUES ('724', 'tw', 'TvT æ´»åï¼$1 åéå¾æ´»åçµæï¼', null);
INSERT INTO `messagetable` VALUES ('725', 'en', 'TvT Event: $1 second(s) until the event is finished!', null);
INSERT INTO `messagetable` VALUES ('725', 'tw', 'TvT æ´»åï¼$1 ç§å¾æ´»åçµæï¼', null);
INSERT INTO `messagetable` VALUES ('726', 'en', 'TvT Event: Teleporting back to the registration npc in $1 second(s).', null);
INSERT INTO `messagetable` VALUES ('726', 'tw', 'TvT æ´»åï¼å³å°å¨ $1 ç§å¾å³éåè³½èåå°å°ç»è¨å°åã', null);
INSERT INTO `messagetable` VALUES ('727', 'en', 'TvT Event: Teleporting participants to an arena in $1 second(s).', null);
INSERT INTO `messagetable` VALUES ('727', 'tw', 'TvT æ´»åï¼å³å°å¨ $1 ç§å¾å³éåè³½èå°æ´»åå°åã', null);
INSERT INTO `messagetable` VALUES ('728', 'en', 'Server aborts $E1 and continues normal operation!', 'Shutdown;Restart;Abort');
INSERT INTO `messagetable` VALUES ('728', 'tw', 'ä¼ºæå¨åæ¶$1ï¼ç¹¼çºæ­£å¸¸éä½ï¼', 'é¢ç·ä½æ¥­;éæ°åå;åæ¶');
INSERT INTO `messagetable` VALUES ('729', 'en', 'Server is $1 in $2 seconds!', null);
INSERT INTO `messagetable` VALUES ('729', 'tw', 'ä¼ºæå¨å°å¨ $2 ç§å¾$1ï¼', null);
INSERT INTO `messagetable` VALUES ('730', 'en', 'Clan $1 has finished to engrave one of the rulers.', null);
INSERT INTO `messagetable` VALUES ('730', 'tw', 'ã$1ãè¡çæåçæéåä¸»ã', null);
INSERT INTO `messagetable` VALUES ('731', 'en', 'Clan $1 has finished to raise the flag.', null);
INSERT INTO `messagetable` VALUES ('731', 'tw', 'ã$1ãè¡çå®æææã', null);
INSERT INTO `messagetable` VALUES ('732', 'en', 'Clan $1 has begun to engrave the ruler.', null);
INSERT INTO `messagetable` VALUES ('732', 'tw', 'æµäººè¡çéå§å»åçµ±æ²»èå°å°ã', null);
INSERT INTO `messagetable` VALUES ('733', 'en', 'Clan $1 has begun to raise flag.', null);
INSERT INTO `messagetable` VALUES ('733', 'tw', 'ã$1ãè¡çéå§ææã', null);
INSERT INTO `messagetable` VALUES ('734', 'en', 'The registration term for $1 has ended.', null);
INSERT INTO `messagetable` VALUES ('734', 'tw', 'ã$1ãæ»åæ°ç»è¨æéçµæã', null);
INSERT INTO `messagetable` VALUES ('735', 'en', 'The registration term for $1 has ended.', null);
INSERT INTO `messagetable` VALUES ('735', 'tw', 'ã$1ãè¦å¡æ°ç»è¨æéçµæã', null);
INSERT INTO `messagetable` VALUES ('736', 'en', 'The siege of $1 has ended in a draw.', null);
INSERT INTO `messagetable` VALUES ('736', 'tw', 'ã$1ãçæ»åæ°çµæçºå¹³æã', null);
INSERT INTO `messagetable` VALUES ('737', 'en', 'The siege of $1 has finished!', null);
INSERT INTO `messagetable` VALUES ('737', 'tw', 'ã$1ãçæ»åæ°å·²çµæã', null);
INSERT INTO `messagetable` VALUES ('738', 'en', 'The siege of $1 has started!', null);
INSERT INTO `messagetable` VALUES ('738', 'tw', 'ã$1ãçæ»åæ°å·²éå§ã', null);
INSERT INTO `messagetable` VALUES ('739', 'en', 'The siege of $1 has ended in a draw.', null);
INSERT INTO `messagetable` VALUES ('739', 'tw', 'ã$1ãçè¦å¡æ°çµæçºå¹³æã', null);
INSERT INTO `messagetable` VALUES ('740', 'en', 'The siege of $1 has finished!', null);
INSERT INTO `messagetable` VALUES ('740', 'tw', 'ã$1ãçè¦å¡æ°å·²çµæã', null);
INSERT INTO `messagetable` VALUES ('741', 'en', 'The siege of $1 has started!', null);
INSERT INTO `messagetable` VALUES ('741', 'tw', 'ã$1ãçè¦å¡æ°å·²éå§ã', null);
INSERT INTO `messagetable` VALUES ('742', 'en', '$1 minute(s) until $2 siege begin.', null);
INSERT INTO `messagetable` VALUES ('742', 'tw', 'ã$2ãæ»åæ°å°å¨ $1 åéå¾éå§ã', null);
INSERT INTO `messagetable` VALUES ('743', 'en', '$1 minute(s) until $2 siege conclusion.', null);
INSERT INTO `messagetable` VALUES ('743', 'tw', 'é¢ã$2ãæ»åæ°çµææééæ $1 åéã', null);
INSERT INTO `messagetable` VALUES ('744', 'en', '$1 minute(s) until $2 siege begin.', null);
INSERT INTO `messagetable` VALUES ('744', 'tw', 'ã$2ãè¦å¡æ°å°å¨ $1 åéå¾éå§ã', null);
INSERT INTO `messagetable` VALUES ('745', 'en', '$1 minute(s) until $2 siege conclusion.', null);
INSERT INTO `messagetable` VALUES ('745', 'tw', 'é¢ã$2ãè¦å¡æ°çµææééæ $1 åéã', null);
INSERT INTO `messagetable` VALUES ('746', 'en', '$1 has been registered to attack $2', null);
INSERT INTO `messagetable` VALUES ('746', 'tw', 'ã$1ãå·²ç»è¨çºã$2ãæ»åæ°æ»åæ¹ã', null);
INSERT INTO `messagetable` VALUES ('747', 'en', '$1 has been registered to attack $2', null);
INSERT INTO `messagetable` VALUES ('747', 'tw', 'ã$1ãå·²ç»è¨çºã$2ãè¦å¡æ°æ»åæ¹ã', null);
INSERT INTO `messagetable` VALUES ('748', 'en', '$1 has been registered to defend $2', null);
INSERT INTO `messagetable` VALUES ('748', 'tw', 'ã$1ãå·²ç»è¨çºã$2ãæ»åæ°å®åæ¹ã', null);
INSERT INTO `messagetable` VALUES ('749', 'en', '$1 has been registered to defend $2', null);
INSERT INTO `messagetable` VALUES ('749', 'tw', 'ã$1ãå·²ç»è¨çºã$2ãè¦å¡æ°å®åæ¹ã', null);
INSERT INTO `messagetable` VALUES ('750', 'en', '$1 has requested to defend $2', null);
INSERT INTO `messagetable` VALUES ('750', 'tw', 'ã$1ãæ¥åè«æ±çºã$2ãæ»åæ°å®åæ¹', null);
INSERT INTO `messagetable` VALUES ('751', 'en', '$1 has requested to defend $2', null);
INSERT INTO `messagetable` VALUES ('751', 'tw', 'ã$1ãæ¥åè«æ±çºã$2ãè¦å¡æ°å®åæ¹', null);
INSERT INTO `messagetable` VALUES ('752', 'en', '$1 siege $2 second(s) left!', null);
INSERT INTO `messagetable` VALUES ('752', 'tw', 'ã$1ãæ»åæ°å©ä¸ $2 ç§ï¼', null);
INSERT INTO `messagetable` VALUES ('753', 'en', '$1 siege $2 second(s) to start!', null);
INSERT INTO `messagetable` VALUES ('753', 'tw', 'ã$1ãæ»åæ°å°å¨ $2 ç§å¾éå§ã', null);
INSERT INTO `messagetable` VALUES ('754', 'en', '$1 siege $2 second(s) left!', null);
INSERT INTO `messagetable` VALUES ('754', 'tw', 'ã$1ãè¦å¡æ°å©ä¸ $2 ç§ï¼', null);
INSERT INTO `messagetable` VALUES ('755', 'en', '$1 siege $2 second(s) to start!', null);
INSERT INTO `messagetable` VALUES ('755', 'tw', 'ã$1ãè¦å¡æ°å°å¨ $2 ç§å¾éå§ã', null);
INSERT INTO `messagetable` VALUES ('756', 'en', 'The duel was canceled because a duelist engaged in PvP combat.', null);
INSERT INTO `messagetable` VALUES ('756', 'tw', 'æ±ºé¬¥åæ¶ï¼å çºæ±ºé¬¥èç®åæ­£èæ¼ PvP çæã', null);
INSERT INTO `messagetable` VALUES ('757', 'en', 'Transaction failed. Augmented items may not be exchanged.', null);
INSERT INTO `messagetable` VALUES ('757', 'tw', 'äº¤æå¤±æï¼é¸æçç©åç¦æ­¢äº¤æã', null);
INSERT INTO `messagetable` VALUES ('758', 'en', 'You are not in range of the artifact.', null);
INSERT INTO `messagetable` VALUES ('758', 'tw', 'å®è­·èå°å°è·é¢å¤ªé ã', null);
INSERT INTO `messagetable` VALUES ('759', 'en', 'You are not in range of the flagpole.', null);
INSERT INTO `messagetable` VALUES ('759', 'tw', 'ä¸å¨é£æç¯åå§ã', null);
INSERT INTO `messagetable` VALUES ('760', 'en', 'You can only place a flag during a siege.', null);
INSERT INTO `messagetable` VALUES ('760', 'tw', 'åªè½å¨æ»åæ°æ¾ç½®é£æã', null);
INSERT INTO `messagetable` VALUES ('761', 'en', 'You can only summon this as a registered attacker.', null);
INSERT INTO `messagetable` VALUES ('761', 'tw', 'åªææ»åæ¹æè½å¬åã', null);
INSERT INTO `messagetable` VALUES ('762', 'en', 'You can only summon this during a siege.', null);
INSERT INTO `messagetable` VALUES ('762', 'tw', 'åªè½å¨æ»åæ°å¬åã', null);
INSERT INTO `messagetable` VALUES ('763', 'en', 'You can only use strider siege assault during a siege.', null);
INSERT INTO `messagetable` VALUES ('763', 'tw', 'åªè½å¨æ»åæ°ä½¿ç¨åº§é¾æ»åå¼·è¥²ã', null);
INSERT INTO `messagetable` VALUES ('764', 'en', 'You can only use strider siege assault on doors and walls.', null);
INSERT INTO `messagetable` VALUES ('764', 'tw', 'åªè½ååéååçä½¿ç¨åº§é¾æ»åå¼·è¥²ã', null);
INSERT INTO `messagetable` VALUES ('765', 'en', 'You can only use strider siege assault when on strider.', null);
INSERT INTO `messagetable` VALUES ('765', 'tw', 'å¿é é¨ä¹å¨åº§é¾ä¸æè½ä½¿ç¨åº§é¾æ»åå¼·è¥²ã', null);
INSERT INTO `messagetable` VALUES ('766', 'en', 'You can only use this skill during a siege.', null);
INSERT INTO `messagetable` VALUES ('766', 'tw', 'åªè½å¨æ»åæ°ä½¿ç¨æ­¤æè½ã', null);
INSERT INTO `messagetable` VALUES ('767', 'en', 'You can only use this skill on an artifact', null);
INSERT INTO `messagetable` VALUES ('767', 'tw', 'ç®æ¨å¿é æ¯å®è­·èå°å°ã', null);
INSERT INTO `messagetable` VALUES ('768', 'en', 'You have already placed the maximum number of flags possible', null);
INSERT INTO `messagetable` VALUES ('768', 'tw', 'é£ææ¾ç½®æ¸éå·²éå°æ¥µéã', null);
INSERT INTO `messagetable` VALUES ('769', 'en', 'You kicked $1 from the game.', null);
INSERT INTO `messagetable` VALUES ('769', 'tw', 'è¸¢é¤ç©å®¶ã$1ãã', null);
INSERT INTO `messagetable` VALUES ('770', 'en', 'You must be a clan leader to place a flag', null);
INSERT INTO `messagetable` VALUES ('770', 'tw', 'å¿é æ¯è¡ççä¸»ã', null);
INSERT INTO `messagetable` VALUES ('771', 'en', 'You must be an attacker to place a flag', null);
INSERT INTO `messagetable` VALUES ('771', 'tw', 'åªææ»åæ¹æè½æ¾ç½®é£æã', null);
INSERT INTO `messagetable` VALUES ('772', 'en', 'You must be an attacker to use this skill', null);
INSERT INTO `messagetable` VALUES ('772', 'tw', 'åªææ»åæ¹æè½ä½¿ç¨æ­¤æè½ã', null);
INSERT INTO `messagetable` VALUES ('773', 'en', 'You must be on castle ground to place a flag', null);
INSERT INTO `messagetable` VALUES ('773', 'tw', 'åªè½å¨åå ¡å¨åæ¾ç½®é£æã', null);
INSERT INTO `messagetable` VALUES ('774', 'en', 'You must be on castle ground to summon this', null);
INSERT INTO `messagetable` VALUES ('774', 'tw', 'åªè½å¨åå ¡å¨åå¬åã', null);
INSERT INTO `messagetable` VALUES ('775', 'en', 'You must be on castle ground to use strider siege assault', null);
INSERT INTO `messagetable` VALUES ('775', 'tw', 'åªè½å¨åå ¡å¨åä½¿ç¨åº§é¾æ»åå¼·è¥²ã', null);
INSERT INTO `messagetable` VALUES ('776', 'en', 'You must be on castle ground to use this skill', null);
INSERT INTO `messagetable` VALUES ('776', 'tw', 'åªè½å¨åå ¡å¨åä½¿ç¨æ­¤æè½ã', null);
INSERT INTO `messagetable` VALUES ('777', 'en', 'You must be on fort ground to place a flag', null);
INSERT INTO `messagetable` VALUES ('777', 'tw', 'åªè½å¨è¦å¡å¨åæ¾ç½®é£æã', null);
INSERT INTO `messagetable` VALUES ('778', 'en', 'You must be on fort ground to summon this', null);
INSERT INTO `messagetable` VALUES ('778', 'tw', 'åªè½å¨è¦å¡å¨åå¬åã', null);
INSERT INTO `messagetable` VALUES ('779', 'en', 'You must be on fort ground to use strider siege assault', null);
INSERT INTO `messagetable` VALUES ('779', 'tw', 'åªè½å¨è¦å¡å¨åä½¿ç¨åº§é¾æ»åå¼·è¥²ã', null);
INSERT INTO `messagetable` VALUES ('780', 'en', 'You must be on fort ground to use this skill', null);
INSERT INTO `messagetable` VALUES ('780', 'tw', 'åªè½å¨è¦å¡å¨åä½¿ç¨æ­¤æè½ã', null);
INSERT INTO `messagetable` VALUES ('781', 'en', 'Player $1 tried to enchant a weared Item.', null);
INSERT INTO `messagetable` VALUES ('781', 'tw', 'ç©å®¶ã$1ãè©¦åå¼·åè©¦ç©¿çç©åã', null);
INSERT INTO `messagetable` VALUES ('782', 'en', 'Player $1 tried to use enchant Exploit!', '');
INSERT INTO `messagetable` VALUES ('782', 'tw', 'ç©å®¶ã$1ãè©¦åä½¿ç¨å¼·ååè½ã', '');
INSERT INTO `messagetable` VALUES ('783', 'en', 'Player $1 tried to enchant with a scroll he doesn\'t have.', null);
INSERT INTO `messagetable` VALUES ('783', 'tw', 'ç©å®¶ã$1ãè©¦åä½¿ç¨æªææçå¼·åå·è»¸ã', null);
INSERT INTO `messagetable` VALUES ('784', 'en', 'You invited $1 to your Command Channel.', null);
INSERT INTO `messagetable` VALUES ('784', 'tw', 'éè«ã$1ãå å¥ä½ çææ®é »éã', null);
INSERT INTO `messagetable` VALUES ('785', 'en', 'Client $1 tried to learn skill that he can\'t!!!', null);
INSERT INTO `messagetable` VALUES ('785', 'tw', 'å®¢æ¶ç«¯ã$1ãè©¦åå­¸ç¿ä¸è©²å­¸ç¿çæè½ï¼ï¼ï¼', null);
INSERT INTO `messagetable` VALUES ('786', 'en', 'Exploit attempt: Character $1 of account $2 tryed to add a forbidden henna.', null);
INSERT INTO `messagetable` VALUES ('786', 'tw', 'è©¦ååä½ï¼å¸³èã$2ãçç©å®¶ã$1ãè©¦åå å¥è¢«ç¦æ­¢çç´èº«ã', null);
INSERT INTO `messagetable` VALUES ('787', 'en', '$1 has canceled a pending petition.', null);
INSERT INTO `messagetable` VALUES ('787', 'tw', 'ã$1ãåæ¶è¨´æ±ã', null);
INSERT INTO `messagetable` VALUES ('788', 'en', '[RequestPrivateStoreBuy] player $1 tried an overflow exploit, ban this player!', null);
INSERT INTO `messagetable` VALUES ('788', 'tw', '[è¦æ±åäººååºè³¼è²·] ç©å®¶ã$1ãè©¦åå©ç¨æº¢åºé¯èª¤ï¼å°éæ­¤ç©å®¶ï¼', null);
INSERT INTO `messagetable` VALUES ('789', 'en', '[RequestPrivateStoreBuy] player $1 tried to buy an item not sold in a private store (buy), ban this player!', null);
INSERT INTO `messagetable` VALUES ('789', 'tw', '[è¦æ±åäººååºè³¼è²·] ç©å®¶ã$1ãè©¦åè³¼è²·ä¸å¨è²©è³£æ¸å®çç©åï¼å°éæ­¤ç©å®¶ï¼', null);
INSERT INTO `messagetable` VALUES ('790', 'en', '[RequestPrivateStoreBuy] player $1 tried to change the seller\'s price in a private store (buy), ban this player!', null);
INSERT INTO `messagetable` VALUES ('790', 'tw', '[è¦æ±åäººååºè³¼è²·] ç©å®¶ã$1ãè©¦åæ¹è®è³£å®¶è²©è³£çå¹æ ¼ï¼å°éæ­¤ç©å®¶ï¼', null);
INSERT INTO `messagetable` VALUES ('791', 'en', '[RequestPrivateStoreBuy] player $1 tried an overflow exploit, ban this player!', null);
INSERT INTO `messagetable` VALUES ('791', 'tw', '[è¦æ±åäººååºè³¼è²·] ç©å®¶ã$1ãè©¦åå©ç¨æº¢åºé¯èª¤ï¼å°éæ­¤ç©å®¶ï¼', null);
INSERT INTO `messagetable` VALUES ('792', 'en', '[RequestPrivateStoreBuy] player $1 tried to buy less items then sold by package-sell, ban this player for bot-usage!', null);
INSERT INTO `messagetable` VALUES ('792', 'tw', '[è¦æ±åäººååºè³¼è²·] ç©å®¶ã$1ãè©¦åè³¼è²·ä¸é¨åçå¥è£ç©åï¼å°éæ­¤ç©å®¶ï¼', null);
INSERT INTO `messagetable` VALUES ('793', 'en', '[RequestPrivateStoreSell] player $1 tried an overflow exploit, ban this player!', null);
INSERT INTO `messagetable` VALUES ('793', 'tw', '[è¦æ±åäººååºè²©è³£] ç©å®¶ã$1ãè©¦åå©ç¨æº¢åºé¯èª¤ï¼å°éæ­¤ç©å®¶ï¼', null);
INSERT INTO `messagetable` VALUES ('794', 'en', 'Warning!! Character $1 of account $2 tried to purchase over $3 items at the same time.', null);
INSERT INTO `messagetable` VALUES ('794', 'tw', 'è­¦åï¼ï¼å¸³èã$2ãçç©å®¶ã$1ãè©¦åä¸æ¬¡è³¼è²·è¶éã$3ãåç©åã', null);
INSERT INTO `messagetable` VALUES ('795', 'en', 'Warning!! Character $1 of account $2 tried to refine an item with wrong LifeStone-id.', null);
INSERT INTO `messagetable` VALUES ('795', 'tw', 'è­¦åï¼ï¼å¸³èã$2ãçç©å®¶ã$1ãè©¦åä½¿ç¨é¯èª¤ççå½ç³é²è¡ç²¾çã', null);
INSERT INTO `messagetable` VALUES ('796', 'en', 'Warning!! Character $1 of account $2 tried to refine an item with wrong Weapon-id.', null);
INSERT INTO `messagetable` VALUES ('796', 'tw', 'è­¦åï¼ï¼å¸³èã$2ãçç©å®¶ã$1ãè©¦åä½¿ç¨é¯èª¤çæ­¦å¨é²è¡ç²¾çã', null);
INSERT INTO `messagetable` VALUES ('797', 'en', 'Warning!! Character $1 of account $2 tried to refine an item with wrong Gemstone-id.', null);
INSERT INTO `messagetable` VALUES ('797', 'tw', 'è­¦åï¼ï¼å¸³èã$2ãçç©å®¶ã$1ãè©¦åä½¿ç¨é¯èª¤çå¯¶ç³é²è¡ç²¾çã', null);
INSERT INTO `messagetable` VALUES ('798', 'en', '$1 has been removed from the upcoming festival.', null);
INSERT INTO `messagetable` VALUES ('798', 'tw', 'ã$1ãå¨ä¸ä¸å ´çé»æç¥­å¸è¢«ç§»é¤ã', null);
INSERT INTO `messagetable` VALUES ('799', 'en', 'Warning!! Character $1 of account $2 tried to purchase over $3 items at the same time.', null);
INSERT INTO `messagetable` VALUES ('799', 'tw', 'è­¦åï¼ï¼å¸³èã$2ãçç©å®¶ã$1ãè©¦åä¸æ¬¡è³¼è²·è¶éã$3ãåç©åã', null);
INSERT INTO `messagetable` VALUES ('800', 'en', 'Warning!! Character $1 of account $2 tried to purchase over $3 adena worth of goods.', null);
INSERT INTO `messagetable` VALUES ('800', 'tw', 'è­¦åï¼ï¼å¸³èã$2ãçç©å®¶ã$1ãè©¦åè³¼è²·è¶éã$3ãéå¹£çç©åã', null);
INSERT INTO `messagetable` VALUES ('801', 'en', 'Warning!! Character $1 of account $2 sent a false BuyList list_id.', null);
INSERT INTO `messagetable` VALUES ('801', 'tw', 'è­¦åï¼ï¼å¸³èã$2ãçç©å®¶ã$1ãéåºé¯èª¤çè³¼è²·æ¸å®ã', null);
INSERT INTO `messagetable` VALUES ('802', 'en', 'EXTRA ONLY', 'SIGTERM;shutting down;restarting;aborting');
INSERT INTO `messagetable` VALUES ('802', 'tw', 'EXTRA ONLY', 'é¢ç·å·¥ä½;ééå·¥ä½;éæ°åå;åæ¶å·¥ä½');
INSERT INTO `messagetable` VALUES ('803', 'en', 'Level 31 or lower', null);
INSERT INTO `messagetable` VALUES ('803', 'tw', 'æªæ»¿32ç´', null);
INSERT INTO `messagetable` VALUES ('804', 'en', 'Level 42 or lower', null);
INSERT INTO `messagetable` VALUES ('804', 'tw', 'æªæ»¿43ç´', null);
INSERT INTO `messagetable` VALUES ('805', 'en', 'Level 53 or lower', null);
INSERT INTO `messagetable` VALUES ('805', 'tw', 'æªæ»¿54ç´', null);
INSERT INTO `messagetable` VALUES ('806', 'en', 'Level 64 or lower', null);
INSERT INTO `messagetable` VALUES ('806', 'tw', 'æªæ»¿65ç´', null);
INSERT INTO `messagetable` VALUES ('807', 'en', 'No Level Limit', null);
INSERT INTO `messagetable` VALUES ('807', 'tw', 'ç¡ç­ç´éå¶', null);
INSERT INTO `messagetable` VALUES ('808', 'en', 'Teleport List Table reloaded.', null);
INSERT INTO `messagetable` VALUES ('808', 'tw', 'å³éè¡¨å®éæ°è®åã', null);
INSERT INTO `messagetable` VALUES ('809', 'en', 'This is the Seal Validation period. Festivals will resume next week.', null);
INSERT INTO `messagetable` VALUES ('809', 'tw', 'å°å°æææéå·²çµæï¼é»æç¥­å¸å°å¨ä¸ä¸åç«¶ç­æééæ°éå§ã', null);
INSERT INTO `messagetable` VALUES ('810', 'en', 'The next festival will begin in $1 minute(s).', null);
INSERT INTO `messagetable` VALUES ('810', 'tw', 'ä¸ä¸åé»æçç¥­å¸å³å°æ¼ $1 åéå¾éå§ã', null);
INSERT INTO `messagetable` VALUES ('811', 'en', 'Festival Guide', null);
INSERT INTO `messagetable` VALUES ('811', 'tw', 'ç¥­å¸çå¼å°è', null);
INSERT INTO `messagetable` VALUES ('812', 'en', 'The main event will start in $1 minutes. Please register now.', null);
INSERT INTO `messagetable` VALUES ('812', 'tw', 'é»æçç¥­å¸å³å°æ¼ $1 åéå¾éå§ãè«è¸´èºåå ã', null);
INSERT INTO `messagetable` VALUES ('813', 'en', 'The main event is now starting.', null);
INSERT INTO `messagetable` VALUES ('813', 'tw', 'é»æçç¥­å¸æ­£å¼éå§ã', null);
INSERT INTO `messagetable` VALUES ('814', 'en', 'The festival is about to begin!', null);
INSERT INTO `messagetable` VALUES ('814', 'tw', 'é»æçç¥­å¸éå§ï¼', null);
INSERT INTO `messagetable` VALUES ('815', 'en', 'Festival Witch', null);
INSERT INTO `messagetable` VALUES ('815', 'tw', 'ç¥­å¸çå·«å¥³', null);
INSERT INTO `messagetable` VALUES ('816', 'en', 'The festival will end in $1 minute(s).', null);
INSERT INTO `messagetable` VALUES ('816', 'tw', 'é»æçç¥­å¸å³å°æ¼ $1 åéå¾çµæã', null);
INSERT INTO `messagetable` VALUES ('817', 'en', 'The chests have spawned! Be quick, the festival will end soon.', null);
INSERT INTO `messagetable` VALUES ('817', 'tw', 'å¯¶ç®±å·²ç¶åºä¾äºï¼é»æçç¥­å¸å³å°çµæï¼', null);
INSERT INTO `messagetable` VALUES ('818', 'en', 'That will do! I\'ll move you to the outside soon.', null);
INSERT INTO `messagetable` VALUES ('818', 'tw', 'ç¥­ç©å¾åè¶³ï¼ï¼æå°ç«å»æä½ ç§»å°å¤é¢ï¼', null);
INSERT INTO `messagetable` VALUES ('819', 'en', 'The festival will begin in 2 minutes.', null);
INSERT INTO `messagetable` VALUES ('819', 'tw', 'é»æçç¥­å¸å³å°æ¼ 2 åéå¾éå§ãè«è¸´èºåå ã', null);
INSERT INTO `messagetable` VALUES ('820', 'en', 'The festival has ended. Your party leader must now register your score before the next festival takes place.', null);
INSERT INTO `messagetable` VALUES ('820', 'tw', 'é»æçç¥­å¸å·²çµæãéé·å¿é å¨ä¸ä¸å ´éå§åå®æåæ¸ç»è¨ã', null);
INSERT INTO `messagetable` VALUES ('821', 'en', 'Seal of ', 'Avarice;Gnosis;Strife');
INSERT INTO `messagetable` VALUES ('821', 'tw', 'Seal of', 'Avarice;Gnosis;Strife');
INSERT INTO `messagetable` VALUES ('822', 'en', 'No Cabal', null);
INSERT INTO `messagetable` VALUES ('822', 'tw', 'No Cabal', null);
INSERT INTO `messagetable` VALUES ('823', 'en', 'Lords of Dawn', null);
INSERT INTO `messagetable` VALUES ('823', 'tw', 'é»æçåä¸»å', null);
INSERT INTO `messagetable` VALUES ('824', 'en', 'Revolutionaries of Dusk', null);
INSERT INTO `messagetable` VALUES ('824', 'tw', 'é»æçé©å½è»', null);
INSERT INTO `messagetable` VALUES ('825', 'en', 'Quest Event Initialization', null);
INSERT INTO `messagetable` VALUES ('825', 'tw', 'é åæé', null);
INSERT INTO `messagetable` VALUES ('826', 'en', 'Competition (Quest Event)', null);
INSERT INTO `messagetable` VALUES ('826', 'tw', 'ç«¶ç­æé', null);
INSERT INTO `messagetable` VALUES ('827', 'en', 'Quest Event Results', null);
INSERT INTO `messagetable` VALUES ('827', 'tw', 'è¨ç®ç¸½å', null);
INSERT INTO `messagetable` VALUES ('828', 'en', 'Seal Validation', null);
INSERT INTO `messagetable` VALUES ('828', 'tw', 'å°å°æææé', null);
INSERT INTO `messagetable` VALUES ('829', 'en', 'You cannot summon Siege Golem or Cannon while Seal of Strife posessed by Lords of Dawn.', null);
INSERT INTO `messagetable` VALUES ('829', 'tw', 'ç¶å å¥é»æçåä¸»åæç¡æ³å¬åæ»åé«å´æå è¾²ç ²ã', null);
INSERT INTO `messagetable` VALUES ('830', 'en', 'Warning!! Character $1 of account $2 sent a false recipe id.', null);
INSERT INTO `messagetable` VALUES ('830', 'tw', 'è­¦åï¼ï¼å¸³èã$2ãçç©å®¶ã$1ãéåºé¯èª¤çè£½ä½ã', null);
INSERT INTO `messagetable` VALUES ('831', 'en', ' hours ', null);
INSERT INTO `messagetable` VALUES ('831', 'tw', ' æ ', null);
INSERT INTO `messagetable` VALUES ('832', 'en', ' minutes', null);
INSERT INTO `messagetable` VALUES ('832', 'tw', ' åã', null);
INSERT INTO `messagetable` VALUES ('833', 'en', 'Not in Possession', null);
INSERT INTO `messagetable` VALUES ('833', 'tw', 'ä¸æ­¸å±¬ä»»ä½é£ç', null);
INSERT INTO `messagetable` VALUES ('834', 'en', 'Competition (Quest Event)', null);
INSERT INTO `messagetable` VALUES ('834', 'tw', 'ç«¶ç­æé', null);
INSERT INTO `messagetable` VALUES ('835', 'en', 'Quest', null);
INSERT INTO `messagetable` VALUES ('835', 'tw', 'Quest', null);
INSERT INTO `messagetable` VALUES ('836', 'en', 'Seal Validation', null);
INSERT INTO `messagetable` VALUES ('836', 'tw', 'å°å°æææé', null);
INSERT INTO `messagetable` VALUES ('837', 'en', 'Current tax rate: ', null);
INSERT INTO `messagetable` VALUES ('837', 'tw', 'ç®åç¨çï¼', null);
INSERT INTO `messagetable` VALUES ('838', 'en', 'Change tax rate to:', null);
INSERT INTO `messagetable` VALUES ('838', 'tw', 'èª¿æ´ç¨çï¼ã', null);
INSERT INTO `messagetable` VALUES ('839', 'en', 'Adjust', null);
INSERT INTO `messagetable` VALUES ('839', 'tw', 'èª¿æ´', null);
INSERT INTO `messagetable` VALUES ('840', 'en', 'recovery hp 0 ', null);
INSERT INTO `messagetable` VALUES ('840', 'tw', 'recovery hp 0', null);
INSERT INTO `messagetable` VALUES ('841', 'en', 'recovery mp 0 ', null);
INSERT INTO `messagetable` VALUES ('841', 'tw', 'recovery mp 0', null);
INSERT INTO `messagetable` VALUES ('842', 'en', 'recovery exp 0 ', null);
INSERT INTO `messagetable` VALUES ('842', 'tw', 'recovery exp 0', null);
INSERT INTO `messagetable` VALUES ('843', 'en', 'Fireplace (HP Recovery Device)', null);
INSERT INTO `messagetable` VALUES ('843', 'tw', 'å£çï¼HP æ¢å¾©è¨­åï¼', null);
INSERT INTO `messagetable` VALUES ('844', 'en', 'Provides additional HP recovery for clan members in the castle.', null);
INSERT INTO `messagetable` VALUES ('844', 'tw', 'åå ¡çè¡çæå¡æ¢å¾© HP æå¤å¢å  ', null);
INSERT INTO `messagetable` VALUES ('845', 'en', 'Carpet (MP Recovery)', null);
INSERT INTO `messagetable` VALUES ('845', 'tw', 'å°æ¯¯ï¼MP æ¢å¾©è¨­åï¼', null);
INSERT INTO `messagetable` VALUES ('846', 'en', 'Provides additional MP recovery for clan members in the castle.', null);
INSERT INTO `messagetable` VALUES ('846', 'tw', 'åå ¡çè¡çæå¡æ¢å¾© MP æå¤å¢å  ', null);
INSERT INTO `messagetable` VALUES ('847', 'en', 'Chandelier (EXP Recovery Device)', null);
INSERT INTO `messagetable` VALUES ('847', 'tw', 'åçï¼EXP æ¢å¾©è¨­åï¼', null);
INSERT INTO `messagetable` VALUES ('848', 'en', 'Restores the Exp of any clan member who is resurrected in the castle.', null);
INSERT INTO `messagetable` VALUES ('848', 'tw', 'åå ¡çè¡çæå¡å¾©æ´»æ EXP å¤å¢å  ', null);
INSERT INTO `messagetable` VALUES ('849', 'en', 'Adena', null);
INSERT INTO `messagetable` VALUES ('849', 'tw', 'éå¹£', null);
INSERT INTO `messagetable` VALUES ('850', 'en', 'Day', null);
INSERT INTO `messagetable` VALUES ('850', 'tw', 'å¤©', null);
INSERT INTO `messagetable` VALUES ('851', 'en', 'Withdraw the fee for the next time at ', null);
INSERT INTO `messagetable` VALUES ('851', 'tw', 'æ¶åä¸ä¸æ¬¡çè²»ç¨ï¼', null);
INSERT INTO `messagetable` VALUES ('852', 'en', 'Deactivate', null);
INSERT INTO `messagetable` VALUES ('852', 'tw', 'åæ¶', null);
INSERT INTO `messagetable` VALUES ('853', 'en', 'none', null);
INSERT INTO `messagetable` VALUES ('853', 'tw', 'ç¡', null);
INSERT INTO `messagetable` VALUES ('854', 'en', 'other tele 0', null);
INSERT INTO `messagetable` VALUES ('854', 'tw', 'other tele 0', null);
INSERT INTO `messagetable` VALUES ('855', 'en', 'other support 0', null);
INSERT INTO `messagetable` VALUES ('855', 'tw', 'other support 0', null);
INSERT INTO `messagetable` VALUES ('856', 'en', 'Insignia (Supplementary Magic)', null);
INSERT INTO `messagetable` VALUES ('856', 'tw', 'ä½©ç« ï¼è¼å©é­æ³ï¼', null);
INSERT INTO `messagetable` VALUES ('857', 'en', 'Enables the use of supplementary magic.', null);
INSERT INTO `messagetable` VALUES ('857', 'tw', 'æ½å±è¼å©é­æ³', null);
INSERT INTO `messagetable` VALUES ('858', 'en', 'Mirror (Teleportation Device)', null);
INSERT INTO `messagetable` VALUES ('858', 'tw', 'é¡å­ï¼å³éè¨­åï¼', null);
INSERT INTO `messagetable` VALUES ('859', 'en', 'other support ', null);
INSERT INTO `messagetable` VALUES ('859', 'tw', 'other support ', null);
INSERT INTO `messagetable` VALUES ('860', 'en', 'Teleports clan members in a castle to the target ', null);
INSERT INTO `messagetable` VALUES ('860', 'tw', 'å³éåå ¡çè¡çæå¡å°', null);
INSERT INTO `messagetable` VALUES ('861', 'en', 'Stage ', null);
INSERT INTO `messagetable` VALUES ('861', 'tw', 'éæ®µ', null);
INSERT INTO `messagetable` VALUES ('862', 'en', ' staging area', null);
INSERT INTO `messagetable` VALUES ('862', 'tw', 'çä½ç½®', null);
INSERT INTO `messagetable` VALUES ('863', 'en', 'other tele ', null);
INSERT INTO `messagetable` VALUES ('863', 'tw', 'other tele ', null);
INSERT INTO `messagetable` VALUES ('864', 'en', 'Level 1', null);
INSERT INTO `messagetable` VALUES ('864', 'tw', 'ç­ç´1', null);
INSERT INTO `messagetable` VALUES ('865', 'en', 'Level 2', null);
INSERT INTO `messagetable` VALUES ('865', 'tw', 'ç­ç´2', null);
INSERT INTO `messagetable` VALUES ('866', 'en', 'Level 3', null);
INSERT INTO `messagetable` VALUES ('866', 'tw', 'ç­ç´3', null);
INSERT INTO `messagetable` VALUES ('867', 'en', 'Level 4', null);
INSERT INTO `messagetable` VALUES ('867', 'tw', 'ç­ç´4', null);
INSERT INTO `messagetable` VALUES ('868', 'en', 'The defenders of $1 castle will be teleported to the inner castle.', null);
INSERT INTO `messagetable` VALUES ('868', 'tw', 'å°ã$1ãçå®åäººå¡å³éè³å§åã', null);
INSERT INTO `messagetable` VALUES ('869', 'en', 'Player $1 trying to use enchant exploit, ban this player!', null);
INSERT INTO `messagetable` VALUES ('869', 'tw', 'ç©å®¶ã$1ãè©¦åä½¿ç¨å¼·åè¡çºï¼å°éæ­¤ç©å®¶ï¼', null);
INSERT INTO `messagetable` VALUES ('870', 'en', 'Provides additional HP recovery for clan members in the clan hall.', null);
INSERT INTO `messagetable` VALUES ('870', 'tw', 'è¡çæå¡æ¢å¾© HP æå¤å¢å  ', null);
INSERT INTO `messagetable` VALUES ('871', 'en', 'recovery hp ', null);
INSERT INTO `messagetable` VALUES ('871', 'tw', 'recovery hp ', null);
INSERT INTO `messagetable` VALUES ('872', 'en', 'Provides additional MP recovery for clan members in the clan hall.', null);
INSERT INTO `messagetable` VALUES ('872', 'tw', 'è¡çæå¡æ¢å¾© MP æå¤å¢å  ', null);
INSERT INTO `messagetable` VALUES ('873', 'en', 'recovery mp ', null);
INSERT INTO `messagetable` VALUES ('873', 'tw', 'recovery mp ', null);
INSERT INTO `messagetable` VALUES ('874', 'en', 'Restores the Exp of any clan member who is resurrected in the clan hall.', null);
INSERT INTO `messagetable` VALUES ('874', 'tw', 'è¡çæå¡å¾©æ´»æ EXP å¤å¢å  ', null);
INSERT INTO `messagetable` VALUES ('875', 'en', 'recovery exp ', null);
INSERT INTO `messagetable` VALUES ('875', 'tw', 'recovery exp ', null);
INSERT INTO `messagetable` VALUES ('876', 'en', 'other item 0', null);
INSERT INTO `messagetable` VALUES ('876', 'tw', 'other item 0', null);
INSERT INTO `messagetable` VALUES ('877', 'en', 'Magic Equipment (Item Production Facilities)', null);
INSERT INTO `messagetable` VALUES ('877', 'tw', 'é­æ³è¨­åï¼ç©åçç¢è¨­åï¼', null);
INSERT INTO `messagetable` VALUES ('878', 'en', 'Allow the purchase of special items at fixed intervals.', null);
INSERT INTO `messagetable` VALUES ('878', 'tw', 'åè¨±å¨åºå®çæéå§è³¼è²·ç¹å¥çç©å', null);
INSERT INTO `messagetable` VALUES ('879', 'en', 'other item ', null);
INSERT INTO `messagetable` VALUES ('879', 'tw', 'other item ', null);
INSERT INTO `messagetable` VALUES ('880', 'en', 'other support ', null);
INSERT INTO `messagetable` VALUES ('880', 'tw', 'other support ', null);
INSERT INTO `messagetable` VALUES ('881', 'en', 'Mirror (Teleportation Device)', null);
INSERT INTO `messagetable` VALUES ('881', 'tw', 'é¡å­ï¼å³éè¨­åï¼', null);
INSERT INTO `messagetable` VALUES ('882', 'en', 'Teleports clan members in a clan hall to the target ', null);
INSERT INTO `messagetable` VALUES ('882', 'tw', 'å³éè¡çæå¡å°', null);
INSERT INTO `messagetable` VALUES ('883', 'en', 'Level 5', null);
INSERT INTO `messagetable` VALUES ('883', 'tw', 'ç­ç´5', null);
INSERT INTO `messagetable` VALUES ('884', 'en', 'Level 6', null);
INSERT INTO `messagetable` VALUES ('884', 'tw', 'ç­ç´6', null);
INSERT INTO `messagetable` VALUES ('885', 'en', 'Level 7', null);
INSERT INTO `messagetable` VALUES ('885', 'tw', 'ç­ç´7', null);
INSERT INTO `messagetable` VALUES ('886', 'en', 'Level 8', null);
INSERT INTO `messagetable` VALUES ('886', 'tw', 'ç­ç´8', null);
INSERT INTO `messagetable` VALUES ('887', 'en', 'deco curtains 0', null);
INSERT INTO `messagetable` VALUES ('887', 'tw', 'deco curtains 0', null);
INSERT INTO `messagetable` VALUES ('888', 'en', 'deco fixtures 0', null);
INSERT INTO `messagetable` VALUES ('888', 'tw', 'deco fixtures 0', null);
INSERT INTO `messagetable` VALUES ('889', 'en', 'Curtains (Decoration)', null);
INSERT INTO `messagetable` VALUES ('889', 'tw', 'çªç°¾ï¼è£é£¾ï¼', null);
INSERT INTO `messagetable` VALUES ('890', 'en', 'These curtains can be used to decorate the clan hall.', null);
INSERT INTO `messagetable` VALUES ('890', 'tw', 'è£é£¾æ ¹æå°', null);
INSERT INTO `messagetable` VALUES ('891', 'en', 'deco curtains ', null);
INSERT INTO `messagetable` VALUES ('891', 'tw', 'deco curtains ', null);
INSERT INTO `messagetable` VALUES ('892', 'en', 'Front Platform (Decoration)', null);
INSERT INTO `messagetable` VALUES ('892', 'tw', 'é½å°ï¼è£é£¾ï¼', null);
INSERT INTO `messagetable` VALUES ('893', 'en', 'Used to decorate the clan hall.', null);
INSERT INTO `messagetable` VALUES ('893', 'tw', 'è£é£¾æ ¹æå°', null);
INSERT INTO `messagetable` VALUES ('894', 'en', 'deco fixtures ', null);
INSERT INTO `messagetable` VALUES ('894', 'tw', 'deco fixtures ', null);
INSERT INTO `messagetable` VALUES ('895', 'en', 'The wielder of a cursed weapon cannot receive outside heals or buffs', null);
INSERT INTO `messagetable` VALUES ('895', 'tw', 'è£åè©åæ­¦å¨æç¡æ³ç²å¾å¤é¨çè¼å©é­æ³', null);
INSERT INTO `messagetable` VALUES ('896', 'en', ' Class Master:', null);
INSERT INTO `messagetable` VALUES ('896', 'tw', ' å¤§å¸«ï¼', null);
INSERT INTO `messagetable` VALUES ('897', 'en', 'Advance to ', null);
INSERT INTO `messagetable` VALUES ('897', 'tw', 'è½è·çºï¼', null);
INSERT INTO `messagetable` VALUES ('898', 'en', 'Come back here when you reach level 20 to change your class.', null);
INSERT INTO `messagetable` VALUES ('898', 'tw', 'ç­ä½  20 ç´å¾ååä¾æ¾æå§ã', null);
INSERT INTO `messagetable` VALUES ('899', 'en', 'Come back here when you reach level 40 to change your class.', null);
INSERT INTO `messagetable` VALUES ('899', 'tw', 'ç­ä½  40 ç´å¾ååä¾æ¾æå§ã', null);
INSERT INTO `messagetable` VALUES ('900', 'en', 'There are no more class changes for you.', null);
INSERT INTO `messagetable` VALUES ('900', 'tw', 'å·²ç¶æ²æä»»ä½è·æ¥­å¯ä»¥å¹«ä½ è½æäºã', null);
INSERT INTO `messagetable` VALUES ('901', 'en', 'Event: ', null);
INSERT INTO `messagetable` VALUES ('901', 'tw', 'æ´»åï¼', null);
INSERT INTO `messagetable` VALUES ('902', 'en', 'You have now become a ', null);
INSERT INTO `messagetable` VALUES ('902', 'tw', 'æ­åä½ è½è·çºï¼', null);
INSERT INTO `messagetable` VALUES ('903', 'en', 'GM Class Master:', null);
INSERT INTO `messagetable` VALUES ('903', 'tw', 'GM è½è·å¤§å¸«ï¼', null);
INSERT INTO `messagetable` VALUES ('904', 'en', 'Base Classes.', null);
INSERT INTO `messagetable` VALUES ('904', 'tw', 'åºæ¬è·æ¥­', null);
INSERT INTO `messagetable` VALUES ('905', 'en', '1st Classes.', null);
INSERT INTO `messagetable` VALUES ('905', 'tw', 'ä¸è½è·æ¥­', null);
INSERT INTO `messagetable` VALUES ('906', 'en', '2nd Classes.', null);
INSERT INTO `messagetable` VALUES ('906', 'tw', 'äºè½è·æ¥­', null);
INSERT INTO `messagetable` VALUES ('907', 'en', '3rd Classes.', null);
INSERT INTO `messagetable` VALUES ('907', 'tw', 'ä¸è½è·æ¥­', null);
INSERT INTO `messagetable` VALUES ('908', 'en', 'S.Y.L. Says:', null);
INSERT INTO `messagetable` VALUES ('908', 'tw', '', '');
INSERT INTO `messagetable` VALUES ('909', 'en', 'Current HP  ', null);
INSERT INTO `messagetable` VALUES ('909', 'tw', 'ç®å HPï¼', null);
INSERT INTO `messagetable` VALUES ('910', 'en', 'Max HP      ', null);
INSERT INTO `messagetable` VALUES ('910', 'tw', 'æå¤§ HPï¼', null);
INSERT INTO `messagetable` VALUES ('911', 'en', 'Max X      ', null);
INSERT INTO `messagetable` VALUES ('911', 'tw', 'æå¤§ Xï¼', null);
INSERT INTO `messagetable` VALUES ('912', 'en', 'Max Y      ', null);
INSERT INTO `messagetable` VALUES ('912', 'tw', 'æå¤§ Yï¼', null);
INSERT INTO `messagetable` VALUES ('913', 'en', 'Max Z      ', null);
INSERT INTO `messagetable` VALUES ('913', 'tw', 'æå¤§ Zï¼', null);
INSERT INTO `messagetable` VALUES ('914', 'en', 'Min X      ', null);
INSERT INTO `messagetable` VALUES ('914', 'tw', 'æå° Xï¼', null);
INSERT INTO `messagetable` VALUES ('915', 'en', 'Min Y      ', null);
INSERT INTO `messagetable` VALUES ('915', 'tw', 'æå° Yï¼', null);
INSERT INTO `messagetable` VALUES ('916', 'en', 'Min Z      ', null);
INSERT INTO `messagetable` VALUES ('916', 'tw', 'æå° Zï¼', null);
INSERT INTO `messagetable` VALUES ('917', 'en', 'Object ID: ', null);
INSERT INTO `messagetable` VALUES ('917', 'tw', 'ç©ä»¶ IDï¼', null);
INSERT INTO `messagetable` VALUES ('918', 'en', 'Door ID:', null);
INSERT INTO `messagetable` VALUES ('918', 'tw', 'éç IDï¼', null);
INSERT INTO `messagetable` VALUES ('919', 'en', 'Class: ', null);
INSERT INTO `messagetable` VALUES ('919', 'tw', 'é¡åï¼', null);
INSERT INTO `messagetable` VALUES ('920', 'en', 'Open', null);
INSERT INTO `messagetable` VALUES ('920', 'tw', 'éå', null);
INSERT INTO `messagetable` VALUES ('921', 'en', 'Close', null);
INSERT INTO `messagetable` VALUES ('921', 'tw', 'éé', null);
INSERT INTO `messagetable` VALUES ('922', 'en', 'Kill', null);
INSERT INTO `messagetable` VALUES ('922', 'tw', 'æ§æ¯', null);
INSERT INTO `messagetable` VALUES ('923', 'en', 'Delete', null);
INSERT INTO `messagetable` VALUES ('923', 'tw', 'åªé¤', null);
INSERT INTO `messagetable` VALUES ('924', 'en', 'You have ', null);
INSERT INTO `messagetable` VALUES ('924', 'tw', '', '');
INSERT INTO `messagetable` VALUES ('925', 'en', 'opened', null);
INSERT INTO `messagetable` VALUES ('925', 'tw', 'éå', null);
INSERT INTO `messagetable` VALUES ('926', 'en', ' the clan hall door.', null);
INSERT INTO `messagetable` VALUES ('926', 'tw', 'æ ¹æå°çéã', null);
INSERT INTO `messagetable` VALUES ('927', 'en', 'Outsiders may enter the clan hall while the door is open. Please close it when you\'ve finished your business.', null);
INSERT INTO `messagetable` VALUES ('927', 'tw', 'è¥éèéï¼è¡çæå¡ä»¥å¤çè§è²ä¹å¯é²åºï¼äºæè¾¦å®è«åå¿ééã', null);
INSERT INTO `messagetable` VALUES ('928', 'en', 'closed', null);
INSERT INTO `messagetable` VALUES ('928', 'tw', 'å·²ç¶éé', null);
INSERT INTO `messagetable` VALUES ('929', 'en', 'Good day!', null);
INSERT INTO `messagetable` VALUES ('929', 'tw', 'ç¥æ¨æåæå¿«çä¸å¤©ï¼', null);
INSERT INTO `messagetable` VALUES ('930', 'en', 'To Beginning', null);
INSERT INTO `messagetable` VALUES ('930', 'tw', 'é¦é ', null);
INSERT INTO `messagetable` VALUES ('931', 'en', 'Greetings!', null);
INSERT INTO `messagetable` VALUES ('931', 'tw', 'åï¼æ¨ä¾äºï¼', null);
INSERT INTO `messagetable` VALUES ('932', 'en', ' I am honored to serve your clan.', null);
INSERT INTO `messagetable` VALUES ('932', 'tw', 'å¾æ¦®å¹¸è¿æ¥å°è¡çæå¡ã', null);
INSERT INTO `messagetable` VALUES ('933', 'en', 'How may i assist you?', null);
INSERT INTO `messagetable` VALUES ('933', 'tw', 'æä»éº¼äºæéè¦æå¹«å¿ï¼', null);
INSERT INTO `messagetable` VALUES ('934', 'en', 'Open Door', null);
INSERT INTO `messagetable` VALUES ('934', 'tw', 'éé', null);
INSERT INTO `messagetable` VALUES ('935', 'en', 'Close Door', null);
INSERT INTO `messagetable` VALUES ('935', 'tw', 'éé', null);
INSERT INTO `messagetable` VALUES ('936', 'en', 'Hello there!', null);
INSERT INTO `messagetable` VALUES ('936', 'tw', 'æ¨å¥½ï¼', null);
INSERT INTO `messagetable` VALUES ('937', 'en', 'This clan hall is owned by ', null);
INSERT INTO `messagetable` VALUES ('937', 'tw', 'éæ ¹æå°çä¸»äººæ¯', null);
INSERT INTO `messagetable` VALUES ('938', 'en', ' who is the Lord of the ', null);
INSERT INTO `messagetable` VALUES ('938', 'tw', 'è¡çä¹è¡çä¸»ã', null);
INSERT INTO `messagetable` VALUES ('939', 'en', ' clan.', null);
INSERT INTO `messagetable` VALUES ('939', 'tw', 'éä¸ã', null);
INSERT INTO `messagetable` VALUES ('940', 'en', 'I am sorry, but only the clan members who belong to the ', null);
INSERT INTO `messagetable` VALUES ('940', 'tw', 'å¾æ±æ­ï¼é', null);
INSERT INTO `messagetable` VALUES ('941', 'en', ' clan can enter the clan hall.', null);
INSERT INTO `messagetable` VALUES ('941', 'tw', 'è¡çä¹è¡çæå¡ä¸å¾é²å¥ã', null);
INSERT INTO `messagetable` VALUES ('942', 'en', 'Clan hall ', null);
INSERT INTO `messagetable` VALUES ('942', 'tw', 'æ ¹æå°', null);
INSERT INTO `messagetable` VALUES ('943', 'en', ' have no owner clan.', null);
INSERT INTO `messagetable` VALUES ('943', 'tw', 'å°æªæä¸»äººã', null);
INSERT INTO `messagetable` VALUES ('944', 'en', 'You can rent it at auctioneers..', null);
INSERT INTO `messagetable` VALUES ('944', 'tw', 'æ¨å¯ä»¥æ¾æè³£ç®¡çèææ¨å®..', null);
INSERT INTO `messagetable` VALUES ('945', 'en', 'Festival Guide:', null);
INSERT INTO `messagetable` VALUES ('945', 'tw', 'ç¥­å¸çå¼å°èï¼', null);
INSERT INTO `messagetable` VALUES ('946', 'en', 'These are the top scores of the week, for the ', null);
INSERT INTO `messagetable` VALUES ('946', 'tw', 'æ¬é±æé«ç´éå¦ä¸ï¼', null);
INSERT INTO `messagetable` VALUES ('947', 'en', ' festival.', null);
INSERT INTO `messagetable` VALUES ('947', 'tw', '', '');
INSERT INTO `messagetable` VALUES ('948', 'en', 'Dawn: ', null);
INSERT INTO `messagetable` VALUES ('948', 'tw', 'é»æï¼', null);
INSERT INTO `messagetable` VALUES ('949', 'en', '. Score ', null);
INSERT INTO `messagetable` VALUES ('949', 'tw', 'ï¼åæ¸ ', null);
INSERT INTO `messagetable` VALUES ('950', 'en', 'Dawn: No record exists. Score 0', null);
INSERT INTO `messagetable` VALUES ('950', 'tw', 'é»æï¼æ²æç´éï¼åæ¸ 0', null);
INSERT INTO `messagetable` VALUES ('951', 'en', 'Dusk: ', null);
INSERT INTO `messagetable` VALUES ('951', 'tw', 'é»æï¼', null);
INSERT INTO `messagetable` VALUES ('952', 'en', 'Dusk: No record exists. Score 0', null);
INSERT INTO `messagetable` VALUES ('952', 'tw', 'é»æï¼æ²æç´éï¼åæ¸ 0', null);
INSERT INTO `messagetable` VALUES ('953', 'en', 'Children of Dusk', null);
INSERT INTO `messagetable` VALUES ('953', 'tw', 'é»æçé©å½è»', null);
INSERT INTO `messagetable` VALUES ('954', 'en', 'Children of Dawn', null);
INSERT INTO `messagetable` VALUES ('954', 'tw', 'é»æçåä¸»å', null);
INSERT INTO `messagetable` VALUES ('955', 'en', 'Consecutive top scores: ', null);
INSERT INTO `messagetable` VALUES ('955', 'tw', '<FONT color=LEVEL>æ­·ä»£æé«ç´é</FONT>ï¼', null);
INSERT INTO `messagetable` VALUES ('956', 'en', 'Affilated side: ', null);
INSERT INTO `messagetable` VALUES ('956', 'tw', 'æå±¬é£çï¼', null);
INSERT INTO `messagetable` VALUES ('957', 'en', 'Consecutive top scores: No record exists. Score 0', null);
INSERT INTO `messagetable` VALUES ('957', 'tw', '<FONT color=LEVEL>æ­·ä»£æé«ç´é</FONT>ï¼ç¡ãåæ¸ 0', null);
INSERT INTO `messagetable` VALUES ('958', 'en', 'Go back.', null);
INSERT INTO `messagetable` VALUES ('958', 'tw', 'è¿å', null);
INSERT INTO `messagetable` VALUES ('959', 'en', 'None', null);
INSERT INTO `messagetable` VALUES ('959', 'tw', 'ç¡', null);
INSERT INTO `messagetable` VALUES ('960', 'en', 'You\'ve learned all skills.', null);
INSERT INTO `messagetable` VALUES ('960', 'tw', 'ä½ å·²å­¸å®æææè½ã', null);
INSERT INTO `messagetable` VALUES ('961', 'en', 'I cannot teach you. My class list is empty.', null);
INSERT INTO `messagetable` VALUES ('961', 'tw', 'æç¡æ³æä½ ä»»ä½æ±è¥¿ã', null);
INSERT INTO `messagetable` VALUES ('962', 'en', ' Ask admin to fix it. Need add my npcid and classes to skill_learn.sql.', null);
INSERT INTO `messagetable` VALUES ('962', 'tw', 'è«åç¥ç®¡çå¡ä¿®æ­£ã', null);
INSERT INTO `messagetable` VALUES ('963', 'en', 'NpcId:', null);
INSERT INTO `messagetable` VALUES ('963', 'tw', 'NPC IDï¼', null);
INSERT INTO `messagetable` VALUES ('964', 'en', ', Your classId:', null);
INSERT INTO `messagetable` VALUES ('964', 'tw', 'ï¼ä½ çè·æ¥­ï¼', null);
INSERT INTO `messagetable` VALUES ('965', 'en', 'I cannot teach you any skills.', null);
INSERT INTO `messagetable` VALUES ('965', 'tw', 'æç¡æ³æä½ ä»»ä½æ±è¥¿ã', null);
INSERT INTO `messagetable` VALUES ('966', 'en', ' You must find your current class teachers.', null);
INSERT INTO `messagetable` VALUES ('966', 'tw', 'ä½ å¿é å°æ¾ä½ æå±¬è·æ¥­çæå¸«ã', null);
INSERT INTO `messagetable` VALUES ('967', 'en', 'You must have 3rd class change quest completed.', null);
INSERT INTO `messagetable` VALUES ('967', 'tw', 'æè¯æè½ï¼<br>å®æ 3 æ¬¡è½è·çè§è²æå¯ä»¥æè¯æè½ã', null);
INSERT INTO `messagetable` VALUES ('968', 'en', 'Html was too long', null);
INSERT INTO `messagetable` VALUES ('968', 'tw', 'æªæ¡éé·ï¼ç¡æ³é¡¯ç¤ºã', null);
INSERT INTO `messagetable` VALUES ('969', 'en', 'Skill learning:', null);
INSERT INTO `messagetable` VALUES ('969', 'tw', 'å­¸ç¿æè½ï¸°', null);
INSERT INTO `messagetable` VALUES ('970', 'en', 'Skills of your class are the easiest to learn.', null);
INSERT INTO `messagetable` VALUES ('970', 'tw', 'æå±¬è·æ¥­æè½æ¯æç°¡å®å­¸ç¿çï¼', null);
INSERT INTO `messagetable` VALUES ('971', 'en', 'Skills of another class of your race are a little harder.', null);
INSERT INTO `messagetable` VALUES ('971', 'tw', 'ç¸åç¨®æçå¶ä»è·æ¥­æè½åææé»å°é£ï¼', null);
INSERT INTO `messagetable` VALUES ('972', 'en', 'Skills for classes of another race are extremely difficult.', null);
INSERT INTO `messagetable` VALUES ('972', 'tw', 'å¶ä»ç¨®æçæè½å°ææ´é£å­¸ç¿ï¼', null);
INSERT INTO `messagetable` VALUES ('973', 'en', 'But the hardest of all to learn are the  ', null);
INSERT INTO `messagetable` VALUES ('973', 'tw', 'ç¶ç¶ï¼ä½ ä¹å¯ä»¥å­¸ç¿ã', null);
INSERT INTO `messagetable` VALUES ('974', 'en', 'skills!', null);
INSERT INTO `messagetable` VALUES ('974', 'tw', 'ãçæè½ï¼ä½æ¯å®åæ¯æé£å­¸ç¿çï¼', null);
INSERT INTO `messagetable` VALUES ('975', 'en', 'fighter', null);
INSERT INTO `messagetable` VALUES ('975', 'tw', 'fighter', null);
INSERT INTO `messagetable` VALUES ('976', 'en', 'mage', null);
INSERT INTO `messagetable` VALUES ('976', 'tw', 'mage', null);
INSERT INTO `messagetable` VALUES ('977', 'en', 'Pet Manager:', null);
INSERT INTO `messagetable` VALUES ('977', 'tw', 'å¯µç©ç®¡çå¡ï¼', null);
INSERT INTO `messagetable` VALUES ('978', 'en', 'You can rent a wyvern or strider for adena.', null);
INSERT INTO `messagetable` VALUES ('978', 'tw', 'ä½ å¯ä»¥ç§åé£é¾æåº§é¾ã', null);
INSERT INTO `messagetable` VALUES ('979', 'en', 'My prices:', null);
INSERT INTO `messagetable` VALUES ('979', 'tw', 'å¹æ ¼å¦ä¸ï¼', null);
INSERT INTO `messagetable` VALUES ('980', 'en', 'Ride', null);
INSERT INTO `messagetable` VALUES ('980', 'tw', 'é¨ä¹', null);
INSERT INTO `messagetable` VALUES ('981', 'en', 'Wyvern', null);
INSERT INTO `messagetable` VALUES ('981', 'tw', 'é£é¾', null);
INSERT INTO `messagetable` VALUES ('982', 'en', 'Strider', null);
INSERT INTO `messagetable` VALUES ('982', 'tw', 'åº§é¾', null);
INSERT INTO `messagetable` VALUES ('983', 'en', '30 sec/1800 adena', null);
INSERT INTO `messagetable` VALUES ('983', 'tw', '30 ç§/1800 éå¹£', null);
INSERT INTO `messagetable` VALUES ('984', 'en', '30 sec/900 adena', null);
INSERT INTO `messagetable` VALUES ('984', 'tw', '30 ç§/900 éå¹£', null);
INSERT INTO `messagetable` VALUES ('985', 'en', '1 min/7200 adena', null);
INSERT INTO `messagetable` VALUES ('985', 'tw', '1 å/7200 éå¹£', null);
INSERT INTO `messagetable` VALUES ('986', 'en', '1 min/3600 adena', null);
INSERT INTO `messagetable` VALUES ('986', 'tw', '1 å/3600 éå¹£', null);
INSERT INTO `messagetable` VALUES ('987', 'en', '10 min/720000 adena', null);
INSERT INTO `messagetable` VALUES ('987', 'tw', '10 å/720000 éå¹£', null);
INSERT INTO `messagetable` VALUES ('988', 'en', '10 min/360000 adena', null);
INSERT INTO `messagetable` VALUES ('988', 'tw', '10 å/360000 éå¹£', null);
INSERT INTO `messagetable` VALUES ('989', 'en', '30 min/6480000 adena', null);
INSERT INTO `messagetable` VALUES ('989', 'tw', '30 å/6480000 éå¹£', null);
INSERT INTO `messagetable` VALUES ('990', 'en', '30 min/3240000 adena', null);
INSERT INTO `messagetable` VALUES ('990', 'tw', '30 å/3240000 éå¹£', null);
INSERT INTO `messagetable` VALUES ('991', 'en', 'Current Target:', null);
INSERT INTO `messagetable` VALUES ('991', 'tw', 'ç®åç®æ¨ï¼', null);
INSERT INTO `messagetable` VALUES ('992', 'en', 'Template ID: ', null);
INSERT INTO `messagetable` VALUES ('992', 'tw', 'åºæ¬ IDï¼', null);
INSERT INTO `messagetable` VALUES ('993', 'en', 'HP: ', null);
INSERT INTO `messagetable` VALUES ('993', 'tw', 'HPï¼', null);
INSERT INTO `messagetable` VALUES ('994', 'en', 'MP: ', null);
INSERT INTO `messagetable` VALUES ('994', 'tw', 'MPï¼', null);
INSERT INTO `messagetable` VALUES ('995', 'en', 'Level: ', null);
INSERT INTO `messagetable` VALUES ('995', 'tw', 'ç­ç´ï¼', null);
INSERT INTO `messagetable` VALUES ('996', 'en', 'Edit NPC', null);
INSERT INTO `messagetable` VALUES ('996', 'tw', 'ä¿®æ¹', null);
INSERT INTO `messagetable` VALUES ('997', 'en', 'Show DropList', null);
INSERT INTO `messagetable` VALUES ('997', 'tw', 'æè½', null);
INSERT INTO `messagetable` VALUES ('998', 'en', 'View Shop', null);
INSERT INTO `messagetable` VALUES ('998', 'tw', 'æª¢è¦ååº', null);
INSERT INTO `messagetable` VALUES ('999', 'en', 'Lease next week', null);
INSERT INTO `messagetable` VALUES ('999', 'tw', 'åºç§ç¦®æ', null);
INSERT INTO `messagetable` VALUES ('1000', 'en', 'Abort current leasing', null);
INSERT INTO `messagetable` VALUES ('1000', 'tw', 'åæ¶åºç§', null);
INSERT INTO `messagetable` VALUES ('1001', 'en', 'Manage items', null);
INSERT INTO `messagetable` VALUES ('1001', 'tw', 'ç®¡çç©å', null);
INSERT INTO `messagetable` VALUES ('1002', 'en', 'NPC Information', null);
INSERT INTO `messagetable` VALUES ('1002', 'tw', 'NPC è³è¨', null);
INSERT INTO `messagetable` VALUES ('1003', 'en', 'Instance Type: ', null);
INSERT INTO `messagetable` VALUES ('1003', 'tw', 'åæï¼', null);
INSERT INTO `messagetable` VALUES ('1004', 'en', 'Faction: ', null);
INSERT INTO `messagetable` VALUES ('1004', 'tw', 'ç¨®é¡ï¼', null);
INSERT INTO `messagetable` VALUES ('1005', 'en', 'Location ID: ', null);
INSERT INTO `messagetable` VALUES ('1005', 'tw', 'ä½ç½®ï¼', null);
INSERT INTO `messagetable` VALUES ('1006', 'en', 'Mob Group: ', null);
INSERT INTO `messagetable` VALUES ('1006', 'tw', 'ç¾¤çµï¼', null);
INSERT INTO `messagetable` VALUES ('1007', 'en', 'Respawn Time: ', null);
INSERT INTO `messagetable` VALUES ('1007', 'tw', 'éçæéï¼', null);
INSERT INTO `messagetable` VALUES ('1008', 'en', '  Seconds', null);
INSERT INTO `messagetable` VALUES ('1008', 'tw', '  ç§', null);
INSERT INTO `messagetable` VALUES ('1009', 'en', '?  Seconds', null);
INSERT INTO `messagetable` VALUES ('1009', 'tw', '?  ç§', null);
INSERT INTO `messagetable` VALUES ('1010', 'en', 'Object ID', null);
INSERT INTO `messagetable` VALUES ('1010', 'tw', 'ç©ä»¶', null);
INSERT INTO `messagetable` VALUES ('1011', 'en', 'NPC ID', null);
INSERT INTO `messagetable` VALUES ('1011', 'tw', 'NPC ID', null);
INSERT INTO `messagetable` VALUES ('1012', 'en', 'Castle', null);
INSERT INTO `messagetable` VALUES ('1012', 'tw', 'åå', null);
INSERT INTO `messagetable` VALUES ('1013', 'en', 'Coords', null);
INSERT INTO `messagetable` VALUES ('1013', 'tw', 'ä½ç½®', null);
INSERT INTO `messagetable` VALUES ('1014', 'en', 'Level', null);
INSERT INTO `messagetable` VALUES ('1014', 'tw', 'ç­ç´', null);
INSERT INTO `messagetable` VALUES ('1015', 'en', 'Aggro', null);
INSERT INTO `messagetable` VALUES ('1015', 'tw', 'ä¸»åæ§', null);
INSERT INTO `messagetable` VALUES ('1016', 'en', 'Combat', null);
INSERT INTO `messagetable` VALUES ('1016', 'tw', 'çæ', null);
INSERT INTO `messagetable` VALUES ('1017', 'en', 'Current HP', null);
INSERT INTO `messagetable` VALUES ('1017', 'tw', 'ç®å HP', null);
INSERT INTO `messagetable` VALUES ('1018', 'en', 'Current MP', null);
INSERT INTO `messagetable` VALUES ('1018', 'tw', 'ç®å MP', null);
INSERT INTO `messagetable` VALUES ('1019', 'en', 'Max.HP', null);
INSERT INTO `messagetable` VALUES ('1019', 'tw', 'æå¤§ HP', null);
INSERT INTO `messagetable` VALUES ('1020', 'en', 'Max.MP', null);
INSERT INTO `messagetable` VALUES ('1020', 'tw', 'æå¤§ MP', null);
INSERT INTO `messagetable` VALUES ('1021', 'en', 'P.Atk.', null);
INSERT INTO `messagetable` VALUES ('1021', 'tw', 'ç©æ»', null);
INSERT INTO `messagetable` VALUES ('1022', 'en', 'M.Atk.', null);
INSERT INTO `messagetable` VALUES ('1022', 'tw', 'é­æ»', null);
INSERT INTO `messagetable` VALUES ('1023', 'en', 'P.Def.', null);
INSERT INTO `messagetable` VALUES ('1023', 'tw', 'ç©é²', null);
INSERT INTO `messagetable` VALUES ('1024', 'en', 'M.Def.', null);
INSERT INTO `messagetable` VALUES ('1024', 'tw', 'é­é²', null);
INSERT INTO `messagetable` VALUES ('1025', 'en', 'Accuracy', null);
INSERT INTO `messagetable` VALUES ('1025', 'tw', 'å½ä¸­', null);
INSERT INTO `messagetable` VALUES ('1026', 'en', 'Evasion', null);
INSERT INTO `messagetable` VALUES ('1026', 'tw', 'è¿´é¿', null);
INSERT INTO `messagetable` VALUES ('1027', 'en', 'Critical', null);
INSERT INTO `messagetable` VALUES ('1027', 'tw', 'è´å½', null);
INSERT INTO `messagetable` VALUES ('1028', 'en', 'Speed', null);
INSERT INTO `messagetable` VALUES ('1028', 'tw', 'éåº¦', null);
INSERT INTO `messagetable` VALUES ('1029', 'en', 'Atk.Speed', null);
INSERT INTO `messagetable` VALUES ('1029', 'tw', 'æ»é', null);
INSERT INTO `messagetable` VALUES ('1030', 'en', 'Cast.Speed', null);
INSERT INTO `messagetable` VALUES ('1030', 'tw', 'æ½æ³', null);
INSERT INTO `messagetable` VALUES ('1031', 'en', 'Basic Stats', null);
INSERT INTO `messagetable` VALUES ('1031', 'tw', 'åºæ¬å±¬æ§', null);
INSERT INTO `messagetable` VALUES ('1032', 'en', 'STR', null);
INSERT INTO `messagetable` VALUES ('1032', 'tw', 'STR', null);
INSERT INTO `messagetable` VALUES ('1033', 'en', 'DEX', null);
INSERT INTO `messagetable` VALUES ('1033', 'tw', 'DEX', null);
INSERT INTO `messagetable` VALUES ('1034', 'en', 'CON', null);
INSERT INTO `messagetable` VALUES ('1034', 'tw', 'CON', null);
INSERT INTO `messagetable` VALUES ('1035', 'en', 'INT', null);
INSERT INTO `messagetable` VALUES ('1035', 'tw', 'INT', null);
INSERT INTO `messagetable` VALUES ('1036', 'en', 'WIT', null);
INSERT INTO `messagetable` VALUES ('1036', 'tw', 'WIT', null);
INSERT INTO `messagetable` VALUES ('1037', 'en', 'MEN', null);
INSERT INTO `messagetable` VALUES ('1037', 'tw', 'MEN', null);
INSERT INTO `messagetable` VALUES ('1038', 'en', '[Combat Stats]', null);
INSERT INTO `messagetable` VALUES ('1038', 'tw', '[æ°é¬¥çæ]', null);
INSERT INTO `messagetable` VALUES ('1039', 'en', 'Race', null);
INSERT INTO `messagetable` VALUES ('1039', 'tw', 'ç¨®æ', null);
INSERT INTO `messagetable` VALUES ('1040', 'en', '[Basic Stats]', null);
INSERT INTO `messagetable` VALUES ('1040', 'tw', '[åºæ¬è½å]', null);
INSERT INTO `messagetable` VALUES ('1041', 'en', '[Drop Info]', null);
INSERT INTO `messagetable` VALUES ('1041', 'tw', '[æè½è³è¨]', null);
INSERT INTO `messagetable` VALUES ('1042', 'en', 'Rates legend: ', null);
INSERT INTO `messagetable` VALUES ('1042', 'tw', 'æ©çï¼', null);
INSERT INTO `messagetable` VALUES ('1043', 'en', 'less than 30%', null);
INSERT INTO `messagetable` VALUES ('1043', 'tw', 'ä½æ¼ 30%', null);
INSERT INTO `messagetable` VALUES ('1044', 'en', 'Sweep', null);
INSERT INTO `messagetable` VALUES ('1044', 'tw', 'Sweep', null);
INSERT INTO `messagetable` VALUES ('1045', 'en', 'Drop', null);
INSERT INTO `messagetable` VALUES ('1045', 'tw', 'Drop', null);
INSERT INTO `messagetable` VALUES ('1046', 'en', 'The Kingdom of Elmore', null);
INSERT INTO `messagetable` VALUES ('1046', 'tw', 'è¾ç¾æ©çå', null);
INSERT INTO `messagetable` VALUES ('1047', 'en', 'The Kingdom of Aden', null);
INSERT INTO `messagetable` VALUES ('1047', 'tw', 'äºä¸çå', null);
INSERT INTO `messagetable` VALUES ('1048', 'en', 'Black Judge:', null);
INSERT INTO `messagetable` VALUES ('1048', 'tw', 'é»è²å¯©å¤èï¼', null);
INSERT INTO `messagetable` VALUES ('1049', 'en', 'The wound you have received from death\'s touch is too deep to be healed for the money you have to give me. Find more money if you wish death\'s mark to be fully removed from you.', null);
INSERT INTO `messagetable` VALUES ('1049', 'tw', 'éé¢ä¸è¶³ã', null);
INSERT INTO `messagetable` VALUES ('1050', 'en', 'You have no more death wounds that require healing.', null);
INSERT INTO `messagetable` VALUES ('1050', 'tw', 'ä½ å·²ç¶æ²æå æ­»äº¡æçä¸çå¾éºçäºã', null);
INSERT INTO `messagetable` VALUES ('1051', 'en', 'Go forth and fight, both for this world and your own glory.', null);
INSERT INTO `messagetable` VALUES ('1051', 'tw', 'ä¾ï¼åºå»æ°é¬¥å§ãçºéä¸çï¼éæçºä½ èªå·±çé£é»é¨°é...', null);
INSERT INTO `messagetable` VALUES ('1052', 'en', 'Talk about:', null);
INSERT INTO `messagetable` VALUES ('1052', 'tw', 'éæ¼ï¼', null);
INSERT INTO `messagetable` VALUES ('1053', 'en', ' (In Progress)', null);
INSERT INTO `messagetable` VALUES ('1053', 'tw', 'ï¹é²è¡ä¸­ï¹', null);
INSERT INTO `messagetable` VALUES ('1054', 'en', ' (Done)', null);
INSERT INTO `messagetable` VALUES ('1054', 'tw', 'ï¹å®æï¹', null);
INSERT INTO `messagetable` VALUES ('1055', 'en', 'You are either not on a quest that involves this NPC, or you don\'t meet this NPC\'s minimum quest requirements.', null);
INSERT INTO `messagetable` VALUES ('1055', 'tw', 'ç®åæ²æå·è¡ä»»åï¼ææ¢ä»¶ä¸ç¬¦ã', null);
INSERT INTO `messagetable` VALUES ('1056', 'en', 'Return', null);
INSERT INTO `messagetable` VALUES ('1056', 'tw', 'è¿å', null);
INSERT INTO `messagetable` VALUES ('1057', 'en', 'The winner selected the numbers above.', null);
INSERT INTO `messagetable` VALUES ('1057', 'tw', 'é¸æä¸é¢çèç¢¼ã', null);
INSERT INTO `messagetable` VALUES ('1058', 'en', ' Event Number ', null);
INSERT INTO `messagetable` VALUES ('1058', 'tw', ' æ´»åèç¢¼', null);
INSERT INTO `messagetable` VALUES ('1059', 'en', '- 1st Prize', null);
INSERT INTO `messagetable` VALUES ('1059', 'tw', '- 1st çå', null);
INSERT INTO `messagetable` VALUES ('1060', 'en', '- 2nd Prize', null);
INSERT INTO `messagetable` VALUES ('1060', 'tw', '- 2nd çå', null);
INSERT INTO `messagetable` VALUES ('1061', 'en', '- 3rd Prize', null);
INSERT INTO `messagetable` VALUES ('1061', 'tw', '- 3rd çå', null);
INSERT INTO `messagetable` VALUES ('1062', 'en', '- 4th Prize', null);
INSERT INTO `messagetable` VALUES ('1062', 'tw', '- 4th çå', null);
INSERT INTO `messagetable` VALUES ('1063', 'en', 'There is no winning lottery ticket...', null);
INSERT INTO `messagetable` VALUES ('1063', 'tw', 'æ²æä¸­ççå½©å¸ã', null);
INSERT INTO `messagetable` VALUES ('1064', 'en', 'Newbie Guide:', null);
INSERT INTO `messagetable` VALUES ('1064', 'tw', 'åå­¸èå®å°ï¼', null);
INSERT INTO `messagetable` VALUES ('1065', 'en', 'Only a ', null);
INSERT INTO `messagetable` VALUES ('1065', 'tw', 'è¼å©é­æ³åªéæ¼', null);
INSERT INTO `messagetable` VALUES ('1066', 'en', 'novice character of level ', null);
INSERT INTO `messagetable` VALUES ('1066', 'tw', 'ç­ç´', null);
INSERT INTO `messagetable` VALUES ('1067', 'en', ' or less', null);
INSERT INTO `messagetable` VALUES ('1067', 'tw', 'ä»¥ä¸çè§è²', null);
INSERT INTO `messagetable` VALUES ('1068', 'en', ' can receive my support magic.', null);
INSERT INTO `messagetable` VALUES ('1068', 'tw', 'ã', null);
INSERT INTO `messagetable` VALUES ('1069', 'en', 'Your novice character is the first one that you created and raised in this world.', null);
INSERT INTO `messagetable` VALUES ('1069', 'tw', '', '');
INSERT INTO `messagetable` VALUES ('1070', 'en', 'Come back here when you have reached level ', null);
INSERT INTO `messagetable` VALUES ('1070', 'tw', 'ç®åå°æªæä»»ä½å°æ¨å¿è¦çè¼å©é­æ³ãè«æ¨å°äºç­ç´', null);
INSERT INTO `messagetable` VALUES ('1071', 'en', '. I will give you support magic then.', null);
INSERT INTO `messagetable` VALUES ('1071', 'tw', 'ä¹å¾åä¾ã', null);
INSERT INTO `messagetable` VALUES ('1072', 'en', 'Rent Pet', null);
INSERT INTO `messagetable` VALUES ('1072', 'tw', 'å¯µç©åºç§', null);
INSERT INTO `messagetable` VALUES ('1073', 'en', 'The number of people on the waiting list for ', null);
INSERT INTO `messagetable` VALUES ('1073', 'tw', 'å¥§æå¹äº', null);
INSERT INTO `messagetable` VALUES ('1074', 'en', 'Grand Olympiad', null);
INSERT INTO `messagetable` VALUES ('1074', 'tw', 'ç­ååè³½åå®', null);
INSERT INTO `messagetable` VALUES ('1075', 'en', 'General', null);
INSERT INTO `messagetable` VALUES ('1075', 'tw', 'åºæ¬', null);
INSERT INTO `messagetable` VALUES ('1076', 'en', 'Not class-defined', null);
INSERT INTO `messagetable` VALUES ('1076', 'tw', 'ç¡è·æ¥­å¤å®', null);
INSERT INTO `messagetable` VALUES ('1077', 'en', 'Back', null);
INSERT INTO `messagetable` VALUES ('1077', 'tw', 'è¿å', null);
INSERT INTO `messagetable` VALUES ('1078', 'en', 'There are ', null);
INSERT INTO `messagetable` VALUES ('1078', 'tw', 'ç®åæ', null);
INSERT INTO `messagetable` VALUES ('1079', 'en', 'points granted for this event.', null);
INSERT INTO `messagetable` VALUES ('1079', 'tw', 'å¥§æå¹äºåæ¸', null);
INSERT INTO `messagetable` VALUES ('1080', 'en', 'Grand Olympiad Competition View', null);
INSERT INTO `messagetable` VALUES ('1080', 'tw', 'è§çåå¤§çå¥§æå¹äºç«¶è³½', null);
INSERT INTO `messagetable` VALUES ('1081', 'en', 'Warning: If you watch an Olympiad game, the ', null);
INSERT INTO `messagetable` VALUES ('1081', 'tw', '*æ³¨æï¼è§çå¥§æå¹äºç«¶è³½çè©±ï¼', null);
INSERT INTO `messagetable` VALUES ('1082', 'en', 'summoning of your Servitors or Pets will be ', null);
INSERT INTO `messagetable` VALUES ('1082', 'tw', 'ä½¿é­æå¯µç©æè¢«è§£é¤å¬åã', null);
INSERT INTO `messagetable` VALUES ('1083', 'en', 'cancelled.', null);
INSERT INTO `messagetable` VALUES ('1083', 'tw', 'è«æ³¨æã', null);
INSERT INTO `messagetable` VALUES ('1084', 'en', 'There are no matches at the moment', null);
INSERT INTO `messagetable` VALUES ('1084', 'tw', 'ç®åæ²æä»»ä½ç«¶è³½ã', null);
INSERT INTO `messagetable` VALUES ('1085', 'en', 'Grand Olympiad Ranking', null);
INSERT INTO `messagetable` VALUES ('1085', 'tw', 'åå¤§çå¥§æå¹äºæå', null);
INSERT INTO `messagetable` VALUES ('1086', 'en', 'mmm your bait was delicious', null);
INSERT INTO `messagetable` VALUES ('1086', 'tw', 'åµ...å¥½å....', null);
INSERT INTO `messagetable` VALUES ('1087', 'en', 'I will tell fishes not to take your bait', null);
INSERT INTO `messagetable` VALUES ('1087', 'tw', 'å....æçé£å¶ä»é­é½ä¸æ³çä½ å§...', null);
INSERT INTO `messagetable` VALUES ('1088', 'en', 'forgive me!!', null);
INSERT INTO `messagetable` VALUES ('1088', 'tw', 'åè«æï¼ï¼', null);
INSERT INTO `messagetable` VALUES ('1089', 'en', 'Many thanks for rescue me.', null);
INSERT INTO `messagetable` VALUES ('1089', 'tw', 'éå¸¸æè¬çææã', null);
INSERT INTO `messagetable` VALUES ('1090', 'en', '[ Seal Status ]', null);
INSERT INTO `messagetable` VALUES ('1090', 'tw', '[ å°å°çæ ]', null);
INSERT INTO `messagetable` VALUES ('1091', 'en', 'Nothingness', null);
INSERT INTO `messagetable` VALUES ('1091', 'tw', 'ç¡', null);
INSERT INTO `messagetable` VALUES ('1092', 'en', 'Signboard is missing:', null);
INSERT INTO `messagetable` VALUES ('1092', 'tw', 'æ±ºé¬¥å ´çæ¿éºå¤±ï¼', null);
INSERT INTO `messagetable` VALUES ('1093', 'en', 'Select symbol you would like to remove:', null);
INSERT INTO `messagetable` VALUES ('1093', 'tw', 'è«é¸æè¦ç§»é¤çç´ç« ï¼', null);
INSERT INTO `messagetable` VALUES ('1094', 'en', 'You don\'t have any symbol to remove!', null);
INSERT INTO `messagetable` VALUES ('1094', 'tw', 'ä¸¦æ²æä»»ä½ç´ç« å¯ä»¥ç§»é¤ï¼', null);
INSERT INTO `messagetable` VALUES ('1095', 'en', 'You\'ve learned all skills.', null);
INSERT INTO `messagetable` VALUES ('1095', 'tw', 'ä½ å·²å­¸å®æææè½ã', null);
INSERT INTO `messagetable` VALUES ('1096', 'en', 'Add Subclass:', null);
INSERT INTO `messagetable` VALUES ('1096', 'tw', 'è¿½å å¯è·æ¥­ï¼', null);
INSERT INTO `messagetable` VALUES ('1097', 'en', 'Which sub class do you wish to add?', null);
INSERT INTO `messagetable` VALUES ('1097', 'tw', 'ä¸åä¸­ï¼è¦å°åªåè¿½å çºå¯è·æ¥­å¢ï¼', null);
INSERT INTO `messagetable` VALUES ('1098', 'en', 'Change Subclass:', null);
INSERT INTO `messagetable` VALUES ('1098', 'tw', 'è®æ´å¯è·æ¥­ï¼', null);
INSERT INTO `messagetable` VALUES ('1099', 'en', 'You can\'t change sub classes when you don\'t have a sub class to begin with.', null);
INSERT INTO `messagetable` VALUES ('1099', 'tw', 'å¨æ²æå¯è·æ¥­ççæä¸ï¼ç¡æ³è®æ´å¯è·æ¥­ãé¦åè¿½å æ°çå¯è·æ¥­å§ã', null);
INSERT INTO `messagetable` VALUES ('1100', 'en', 'Which class would you like to switch to?', null);
INSERT INTO `messagetable` VALUES ('1100', 'tw', 'è¦è®æ´çºåªåå¯è·æ¥­å¢ï¼', null);
INSERT INTO `messagetable` VALUES ('1101', 'en', '(Base Class)', null);
INSERT INTO `messagetable` VALUES ('1101', 'tw', 'ï¼åºæ¬è·æ¥­ï¼', null);
INSERT INTO `messagetable` VALUES ('1102', 'en', 'Which of the following sub classes would you like to change?', null);
INSERT INTO `messagetable` VALUES ('1102', 'tw', 'ä¸åä¸­ï¼è¦å°åªåå¯è·æ¥­åªé¤ä¸¦é²è¡è®æ´å¢ï¼', null);
INSERT INTO `messagetable` VALUES ('1103', 'en', 'Sub-class ', null);
INSERT INTO `messagetable` VALUES ('1103', 'tw', 'å¯è·æ¥­', null);
INSERT INTO `messagetable` VALUES ('1104', 'en', 'If you change a sub class, you\'ll start at level 40 after the 2nd class transfer.', null);
INSERT INTO `messagetable` VALUES ('1104', 'tw', 'åªé¤ä¸¦è®æ´å¯è·æ¥­çè©±ï¼æå¾ 2 æ¬¡è½è· 40 ç´éæ°éå§ã', null);
INSERT INTO `messagetable` VALUES ('1105', 'en', 'You may not add a new sub class before you are level 75 on your previous class.', null);
INSERT INTO `messagetable` VALUES ('1105', 'tw', 'ç­ç´æªéå° 75 ä¹åç¡æ³è¿½å å¯è·æ¥­ã', null);
INSERT INTO `messagetable` VALUES ('1106', 'en', 'You must have completed the Fate\'s Whisper quest to continue adding your sub class.', null);
INSERT INTO `messagetable` VALUES ('1106', 'tw', 'çºè¿½å å¯è·æ¥­ï¼å¿é åå®æãå½éçç§èªãä»»åã', null);
INSERT INTO `messagetable` VALUES ('1107', 'en', 'You must have completed the Mimir\'s Elixir quest to continue adding your sub class.', null);
INSERT INTO `messagetable` VALUES ('1107', 'tw', 'çºè¿½å å¯è·æ¥­ï¼å¿é åå®æãç±³å¯ç¾çæ³æ°´ãä»»åã', null);
INSERT INTO `messagetable` VALUES ('1108', 'en', 'You must have completed the Seeds of Chaos quest to continue adding your sub class.', null);
INSERT INTO `messagetable` VALUES ('1108', 'tw', 'çºè¿½å å¯è·æ¥­ï¼å¿é åå®æãæ¸¾æ²çç¨®å­ãä»»åã', null);
INSERT INTO `messagetable` VALUES ('1109', 'en', 'The sub class of ', null);
INSERT INTO `messagetable` VALUES ('1109', 'tw', 'å¯è·æ¥­ã', null);
INSERT INTO `messagetable` VALUES ('1110', 'en', ' has been added.', null);
INSERT INTO `messagetable` VALUES ('1110', 'tw', 'ãå·²ç¶è¿½å ã', null);
INSERT INTO `messagetable` VALUES ('1111', 'en', 'Your active sub class is now a ', null);
INSERT INTO `messagetable` VALUES ('1111', 'tw', 'ç®åæ­£å¨ä½¿ç¨çè·æ¥­çº', null);
INSERT INTO `messagetable` VALUES ('1112', 'en', 'Please choose a sub class to change to. If the one you are looking for is not here, ', null);
INSERT INTO `messagetable` VALUES ('1112', 'tw', 'è«é¸æå¯è·æ¥­è®æ´ãå¦æä½ è¦çè·æ¥­ä¸å¨éè£¡ï¼', null);
INSERT INTO `messagetable` VALUES ('1113', 'en', 'please seek out the appropriate master for that class.', null);
INSERT INTO `messagetable` VALUES ('1113', 'tw', 'è«ä½ å°æ¾å¶ä»å¤§å¸«æå®å¸«ã', null);
INSERT INTO `messagetable` VALUES ('1114', 'en', 'Warning!', null);
INSERT INTO `messagetable` VALUES ('1114', 'tw', 'æ³¨æï¼', null);
INSERT INTO `messagetable` VALUES ('1115', 'en', ' All classes and skills for this class will be removed.', null);
INSERT INTO `messagetable` VALUES ('1115', 'tw', 'è·æ¥­æè½å°æå¨é¨ç§»é¤ã', null);
INSERT INTO `messagetable` VALUES ('1116', 'en', 'Your sub class has been changed to ', null);
INSERT INTO `messagetable` VALUES ('1116', 'tw', 'å¯è·æ¥­è®æ´çº', null);
INSERT INTO `messagetable` VALUES ('1117', 'en', 'You\'re not qualified to learn Clan skills.', null);
INSERT INTO `messagetable` VALUES ('1117', 'tw', 'ä½ æ²æè³æ ¼å­¸ç¿è¡çæè½ã', null);
INSERT INTO `messagetable` VALUES ('1118', 'en', 'You\'ve learned all skills available for your Clan.', null);
INSERT INTO `messagetable` VALUES ('1118', 'tw', 'ä½ å·²å­¸å®ææè¡çæè½ã', null);
INSERT INTO `messagetable` VALUES ('1119', 'en', 'You cannot ride wyvern while Seal of Strife controlled by Dusk.', null);
INSERT INTO `messagetable` VALUES ('1119', 'tw', 'é»æçé©å½è»åå¾åå©æç¡æ³é¨ä¹é£é¾ã', null);
INSERT INTO `messagetable` VALUES ('1120', 'en', 'Only the party leader can leave a festival when a party has minimum number of members', null);
INSERT INTO `messagetable` VALUES ('1120', 'tw', 'å¦æéå¡å·²æµéï¼å°±åªæéé·å¯ä»¥é¢éé»æçç¥­å¸ã', null);
INSERT INTO `messagetable` VALUES ('1121', 'en', 'Warning!! Character $1 tried to enter four sepulchers with invalid npc id.', null);
INSERT INTO `messagetable` VALUES ('1121', 'tw', 'è­¦åï¼ï¼ç©å®¶ã$1ãä¼åå©ç¨éæ³ç NPC é²å¥åèæ¯ã', null);
INSERT INTO `messagetable` VALUES ('1122', 'en', 'Current Petitions', null);
INSERT INTO `messagetable` VALUES ('1122', 'tw', 'ç®åè¨´æ±', null);
INSERT INTO `messagetable` VALUES ('1123', 'en', 'There are no currently pending petitions.', null);
INSERT INTO `messagetable` VALUES ('1123', 'tw', 'ç®åæ²æä»»ä½è¨´æ±ã', null);
INSERT INTO `messagetable` VALUES ('1124', 'en', 'Petitioner', null);
INSERT INTO `messagetable` VALUES ('1124', 'tw', 'è¨´æ±ç©å®¶', null);
INSERT INTO `messagetable` VALUES ('1125', 'en', 'Petition Type', null);
INSERT INTO `messagetable` VALUES ('1125', 'tw', 'è¨´æ±é¡å', null);
INSERT INTO `messagetable` VALUES ('1126', 'en', 'Submitted', null);
INSERT INTO `messagetable` VALUES ('1126', 'tw', 'éåºæé', null);
INSERT INTO `messagetable` VALUES ('1127', 'en', 'View', null);
INSERT INTO `messagetable` VALUES ('1127', 'tw', 'æª¢è¦', null);
INSERT INTO `messagetable` VALUES ('1128', 'en', 'Refresh', null);
INSERT INTO `messagetable` VALUES ('1128', 'tw', 'éæ°æ´ç', null);
INSERT INTO `messagetable` VALUES ('1129', 'en', 'Back', null);
INSERT INTO `messagetable` VALUES ('1129', 'tw', 'è¿å', null);
INSERT INTO `messagetable` VALUES ('1130', 'en', 'In Process', null);
INSERT INTO `messagetable` VALUES ('1130', 'tw', 'é²è¡ä¸­', null);
INSERT INTO `messagetable` VALUES ('1131', 'en', '$1 has submitted a new petition.', null);
INSERT INTO `messagetable` VALUES ('1131', 'tw', 'ã$1ãéåºæ°çè¨´æ±ã', null);
INSERT INTO `messagetable` VALUES ('1132', 'en', 'Petition #', null);
INSERT INTO `messagetable` VALUES ('1132', 'tw', 'è¨´æ± #', null);
INSERT INTO `messagetable` VALUES ('1133', 'en', 'Submit Time: ', null);
INSERT INTO `messagetable` VALUES ('1133', 'tw', 'éåºæéï¼', null);
INSERT INTO `messagetable` VALUES ('1134', 'en', 'Petitioner: ', null);
INSERT INTO `messagetable` VALUES ('1134', 'tw', 'è¨´æ±ç©å®¶ï¼', null);
INSERT INTO `messagetable` VALUES ('1135', 'en', 'Accept', null);
INSERT INTO `messagetable` VALUES ('1135', 'tw', 'æ¥å', null);
INSERT INTO `messagetable` VALUES ('1136', 'en', 'Reject', null);
INSERT INTO `messagetable` VALUES ('1136', 'tw', 'æçµ', null);
INSERT INTO `messagetable` VALUES ('1137', 'en', 'Petition Type: ', null);
INSERT INTO `messagetable` VALUES ('1137', 'tw', 'è¨´æ±é¡åï¼', null);
INSERT INTO `messagetable` VALUES ('1138', 'en', 'Spawning Raid Boss $1', null);
INSERT INTO `messagetable` VALUES ('1138', 'tw', 'å¬åç©çµé¦é ã$1ãã', null);
INSERT INTO `messagetable` VALUES ('1139', 'en', 'RaidBoss Status....\\n', null);
INSERT INTO `messagetable` VALUES ('1139', 'tw', 'ç©çµé¦é çæ....\\n', null);
INSERT INTO `messagetable` VALUES ('1140', 'en', 'None', null);
INSERT INTO `messagetable` VALUES ('1140', 'tw', 'ç¡ã', null);
INSERT INTO `messagetable` VALUES ('1141', 'en', 'Add subclass.', null);
INSERT INTO `messagetable` VALUES ('1141', 'tw', 'è¿½å å¯è·æ¥­', null);
INSERT INTO `messagetable` VALUES ('1142', 'en', 'Talking Island Village', null);
INSERT INTO `messagetable` VALUES ('1142', 'tw', 'èªªè©±ä¹å³¶', null);
INSERT INTO `messagetable` VALUES ('1143', 'en', 'Elven Village', null);
INSERT INTO `messagetable` VALUES ('1143', 'tw', 'ç²¾éæè', '');
INSERT INTO `messagetable` VALUES ('1144', 'en', 'Dark Elven Village', null);
INSERT INTO `messagetable` VALUES ('1144', 'tw', 'é»æç²¾éæè', '');
INSERT INTO `messagetable` VALUES ('1145', 'en', 'Orc Village', null);
INSERT INTO `messagetable` VALUES ('1145', 'tw', 'åç¸äººæè', '');
INSERT INTO `messagetable` VALUES ('1146', 'en', 'Dwarven Village', null);
INSERT INTO `messagetable` VALUES ('1146', 'tw', 'ç®äººæè', '');
INSERT INTO `messagetable` VALUES ('1147', 'en', 'Town of Gludio', null);
INSERT INTO `messagetable` VALUES ('1147', 'tw', 'å¤é­¯ä¸åé®', '');
INSERT INTO `messagetable` VALUES ('1148', 'en', 'Gludin Village', null);
INSERT INTO `messagetable` VALUES ('1148', 'tw', 'å¤é­¯ä¸æè', '');
INSERT INTO `messagetable` VALUES ('1149', 'en', 'Town of Dion', null);
INSERT INTO `messagetable` VALUES ('1149', 'tw', 'çæ©åé®', '');
INSERT INTO `messagetable` VALUES ('1150', 'en', 'Town of Giran', null);
INSERT INTO `messagetable` VALUES ('1150', 'tw', 'å¥å²©åé®', '');
INSERT INTO `messagetable` VALUES ('1151', 'en', 'Town of Oren', null);
INSERT INTO `messagetable` VALUES ('1151', 'tw', 'æ­çåé®', '');
INSERT INTO `messagetable` VALUES ('1152', 'en', 'Town of Aden', null);
INSERT INTO `messagetable` VALUES ('1152', 'tw', 'äºä¸åé®', '');
INSERT INTO `messagetable` VALUES ('1153', 'en', 'Hunters Village', null);
INSERT INTO `messagetable` VALUES ('1153', 'tw', 'çµäººæè', '');
INSERT INTO `messagetable` VALUES ('1154', 'en', 'Giran Harbor', null);
INSERT INTO `messagetable` VALUES ('1154', 'tw', 'å¥å²©æ¸¯å£', '');
INSERT INTO `messagetable` VALUES ('1155', 'en', 'Heine', null);
INSERT INTO `messagetable` VALUES ('1155', 'tw', 'å ç´å¾ç«åé®', '');
INSERT INTO `messagetable` VALUES ('1156', 'en', 'Rune Township', null);
INSERT INTO `messagetable` VALUES ('1156', 'tw', 'é­¯å åé®', '');
INSERT INTO `messagetable` VALUES ('1157', 'en', 'Town of Goddard', null);
INSERT INTO `messagetable` VALUES ('1157', 'tw', 'é«éç¹åé®', '');
INSERT INTO `messagetable` VALUES ('1158', 'en', 'Town of Shuttgart', null);
INSERT INTO `messagetable` VALUES ('1158', 'tw', 'ä¿®å ç¹åé®', '');
INSERT INTO `messagetable` VALUES ('1159', 'en', 'Primeval Isle', null);
INSERT INTO `messagetable` VALUES ('1159', 'tw', 'åå§ä¹å³¶', '');
INSERT INTO `messagetable` VALUES ('1160', 'en', 'Kamael Village', null);
INSERT INTO `messagetable` VALUES ('1160', 'tw', 'éå¤©ä½¿æè', '');
INSERT INTO `messagetable` VALUES ('1161', 'en', 'Town of Aden', null);
INSERT INTO `messagetable` VALUES ('1161', 'tw', 'äºä¸åé®', '');
INSERT INTO `messagetable` VALUES ('1162', 'en', '$1 is asking to engage you. Do you want to start a new relationship?', null);
INSERT INTO `messagetable` VALUES ('1162', 'tw', 'ã$1ãåä½ è¨å©ï¼è«åä½ é¡ææ¥ååï¼', null);
INSERT INTO `messagetable` VALUES ('1163', 'en', 'You cannot position any Mercenaries during Quest Period.', null);
INSERT INTO `messagetable` VALUES ('1163', 'tw', 'ç¡æ³å¨ä¸å°å°ç«¶ç­ææ¾ç½®å­åµã', null);
INSERT INTO `messagetable` VALUES ('1164', 'en', 'You cannot position any Dawn Mercenaries at this time.', null);
INSERT INTO `messagetable` VALUES ('1164', 'tw', 'æªç²å¾ä»»ä½å°å°ï¼ç¡æ³æ¾ç½®é»æå­åµã', null);
INSERT INTO `messagetable` VALUES ('1165', 'en', 'You can position only Rookie Mercenaries at this time.', null);
INSERT INTO `messagetable` VALUES ('1165', 'tw', 'é»æç²å¾å°å°ï¼ç¡æ³æ¾ç½®å­åµã', null);
INSERT INTO `messagetable` VALUES ('1166', 'en', 'Usage: //mobgroup_nomove <groupId> <on|off>', null);
INSERT INTO `messagetable` VALUES ('1166', 'tw', 'ä½¿ç¨æ¹æ³ï¼//mobgroup_nomove <groupId> <on|off>', null);
INSERT INTO `messagetable` VALUES ('1167', 'en', 'Usage: //mobgroup_invul <groupId> <on|off>', null);
INSERT INTO `messagetable` VALUES ('1167', 'tw', 'ä½¿ç¨æ¹æ³ï¼//mobgroup_invul <groupId> <on|off>', null);
INSERT INTO `messagetable` VALUES ('1168', 'en', 'No current penalties in effect.', null);
INSERT INTO `messagetable` VALUES ('1168', 'tw', 'ç®åæ²æä»»ä½æ²ç½°ã', null);
INSERT INTO `messagetable` VALUES ('1169', 'en', 'Penalty', null);
INSERT INTO `messagetable` VALUES ('1169', 'tw', 'æ²ç½°', null);
INSERT INTO `messagetable` VALUES ('1170', 'en', 'Expiration Date', null);
INSERT INTO `messagetable` VALUES ('1170', 'tw', 'æé', null);
INSERT INTO `messagetable` VALUES ('1171', 'en', 'Name:', null);
INSERT INTO `messagetable` VALUES ('1171', 'tw', 'åç¨±ï¼', null);
INSERT INTO `messagetable` VALUES ('1172', 'en', 'Weilder:', null);
INSERT INTO `messagetable` VALUES ('1172', 'tw', 'ææèï¼', null);
INSERT INTO `messagetable` VALUES ('1173', 'en', 'Karma:', null);
INSERT INTO `messagetable` VALUES ('1173', 'tw', 'æ§åï¼', null);
INSERT INTO `messagetable` VALUES ('1174', 'en', 'Kills:', null);
INSERT INTO `messagetable` VALUES ('1174', 'tw', 'æ®ºäººæ¸éï¼', null);
INSERT INTO `messagetable` VALUES ('1175', 'en', 'Time remaining:', null);
INSERT INTO `messagetable` VALUES ('1175', 'tw', 'å©é¤æéï¼', null);
INSERT INTO `messagetable` VALUES ('1176', 'en', 'Remove', null);
INSERT INTO `messagetable` VALUES ('1176', 'tw', 'ç§»é¤', null);
INSERT INTO `messagetable` VALUES ('1177', 'en', 'Go', null);
INSERT INTO `messagetable` VALUES ('1177', 'tw', 'ç¹¼çº', null);
INSERT INTO `messagetable` VALUES ('1178', 'en', 'min.', null);
INSERT INTO `messagetable` VALUES ('1178', 'tw', 'åéã', null);
INSERT INTO `messagetable` VALUES ('1179', 'en', 'Position:', null);
INSERT INTO `messagetable` VALUES ('1179', 'tw', 'ä½ç½®ï¼', null);
INSERT INTO `messagetable` VALUES ('1180', 'en', 'Lying on the ground', null);
INSERT INTO `messagetable` VALUES ('1180', 'tw', 'æè½å°ä¸', null);
INSERT INTO `messagetable` VALUES ('1181', 'en', 'Doesn\'t exist.', null);
INSERT INTO `messagetable` VALUES ('1181', 'tw', 'ä¸¦ä¸å­å¨ã', null);
INSERT INTO `messagetable` VALUES ('1182', 'en', 'Give to Target', null);
INSERT INTO `messagetable` VALUES ('1182', 'tw', 'äº¤çµ¦ç®æ¨', null);
INSERT INTO `messagetable` VALUES ('1183', 'en', 'Del', null);
INSERT INTO `messagetable` VALUES ('1183', 'tw', 'åªé¤', null);
INSERT INTO `messagetable` VALUES ('1184', 'en', 'NPC', null);
INSERT INTO `messagetable` VALUES ('1184', 'tw', 'NPC', null);
INSERT INTO `messagetable` VALUES ('1185', 'en', 'Price Config', null);
INSERT INTO `messagetable` VALUES ('1185', 'tw', 'å¹æ ¼è¨­å®', null);
INSERT INTO `messagetable` VALUES ('1186', 'en', 'Trade List', null);
INSERT INTO `messagetable` VALUES ('1186', 'tw', 'è²©è³£æ¸å®', null);
INSERT INTO `messagetable` VALUES ('1187', 'en', 'The detail of dropdata', null);
INSERT INTO `messagetable` VALUES ('1187', 'tw', 'æè½è³è¨', null);
INSERT INTO `messagetable` VALUES ('1188', 'en', 'Appertain of NPC', null);
INSERT INTO `messagetable` VALUES ('1188', 'tw', 'NPC', null);
INSERT INTO `messagetable` VALUES ('1189', 'en', 'ItemName', null);
INSERT INTO `messagetable` VALUES ('1189', 'tw', 'ç©å', null);
INSERT INTO `messagetable` VALUES ('1190', 'en', 'Category', null);
INSERT INTO `messagetable` VALUES ('1190', 'tw', 'ç¨®é¡', null);
INSERT INTO `messagetable` VALUES ('1191', 'en', 'MIN', null);
INSERT INTO `messagetable` VALUES ('1191', 'tw', 'æå°', null);
INSERT INTO `messagetable` VALUES ('1192', 'en', 'MAX', null);
INSERT INTO `messagetable` VALUES ('1192', 'tw', 'æå¤§', null);
INSERT INTO `messagetable` VALUES ('1193', 'en', 'CHANCE', null);
INSERT INTO `messagetable` VALUES ('1193', 'tw', 'æ©ç', null);
INSERT INTO `messagetable` VALUES ('1194', 'en', 'Save Modify', null);
INSERT INTO `messagetable` VALUES ('1194', 'tw', 'å²å­ä¿®æ¹', null);
INSERT INTO `messagetable` VALUES ('1195', 'en', 'DropList', null);
INSERT INTO `messagetable` VALUES ('1195', 'tw', 'æè½æ¸å®', null);
INSERT INTO `messagetable` VALUES ('1196', 'en', '.', null);
INSERT INTO `messagetable` VALUES ('1196', 'tw', 'ã', null);
INSERT INTO `messagetable` VALUES ('1197', 'en', 's.', null);
INSERT INTO `messagetable` VALUES ('1197', 'tw', 'ã', null);
INSERT INTO `messagetable` VALUES ('1198', 'en', 'NPC Unspawn completed!', null);
INSERT INTO `messagetable` VALUES ('1198', 'tw', 'NPC æ¸é¤å®æï¼', null);
INSERT INTO `messagetable` VALUES ('1199', 'en', 'My Text is missing:', null);
INSERT INTO `messagetable` VALUES ('1199', 'tw', 'æªæ¡éºå¤±ï¼', null);
INSERT INTO `messagetable` VALUES ('1200', 'en', 'Please notice this menu is only available for Game Masters, not for normal players ;)', null);
INSERT INTO `messagetable` VALUES ('1200', 'tw', 'è«æ³¨æéåå¨è·æ¥­è½è·åªæ GM ççå°ï¼ä¸è¬ç©å®¶åªè½çå°ä»åæè½è½è·çè·æ¥­ã', null);
INSERT INTO `messagetable` VALUES ('1201', 'en', 'You have been put in jail by an admin.', null);
INSERT INTO `messagetable` VALUES ('1201', 'tw', 'è¢«ç®¡çå¡éå¥ç£çã', null);
INSERT INTO `messagetable` VALUES ('1202', 'en', 'You are free for now, respect server rules!', null);
INSERT INTO `messagetable` VALUES ('1202', 'tw', 'ç£çè§£é¤ï¼è«å¤éµå®ä¼ºæå¨è¦å®ï¼', null);
INSERT INTO `messagetable` VALUES ('1203', 'en', 'blue', null);
INSERT INTO `messagetable` VALUES ('1203', 'tw', 'èè²', null);
INSERT INTO `messagetable` VALUES ('1204', 'en', 'green', null);
INSERT INTO `messagetable` VALUES ('1204', 'tw', 'ç¶ è²', null);
INSERT INTO `messagetable` VALUES ('1205', 'en', 'red', null);
INSERT INTO `messagetable` VALUES ('1205', 'tw', 'ç´è²', null);
INSERT INTO `messagetable` VALUES ('1206', 'en', 'To arms!.', null);
INSERT INTO `messagetable` VALUES ('1206', 'tw', 'çºäºæ¦®èï¼', null);
INSERT INTO `messagetable` VALUES ('1207', 'en', 'I am ready to serve you my lord when the time comes.', null);
INSERT INTO `messagetable` VALUES ('1207', 'tw', 'å·²ç¶æºåå¥½äºæçåä¸»ï¼åªå·®æééæªå°ã', null);
INSERT INTO `messagetable` VALUES ('1208', 'en', 'You summon me.', null);
INSERT INTO `messagetable` VALUES ('1208', 'tw', 'ä½ å¬åäºæã', null);
INSERT INTO `messagetable` VALUES ('1209', 'en', 'Script error', null);
INSERT INTO `messagetable` VALUES ('1209', 'tw', 'è³æ¬é¯èª¤ï¼', null);
INSERT INTO `messagetable` VALUES ('1210', 'en', 'You are busy creatin', null);
INSERT INTO `messagetable` VALUES ('1210', 'tw', 'ç®åèæ¼å¿ç¢çæç¡æ³é²è¡è£½ä½ã', null);
INSERT INTO `messagetable` VALUES ('1211', 'en', 'You can only place a flag during a siege.', null);
INSERT INTO `messagetable` VALUES ('1211', 'tw', 'åªè½å¨è¦å¡æ°æ¾ç½®é£æã', null);
INSERT INTO `messagetable` VALUES ('1212', 'en', 'You are busy creating', null);
INSERT INTO `messagetable` VALUES ('1212', 'tw', 'ç®åèæ¼å¿ç¢çæç¡æ³é²è¡è£½ä½ã', null);
INSERT INTO `messagetable` VALUES ('1213', 'en', ' more than ', null);
INSERT INTO `messagetable` VALUES ('1213', 'tw', ' è¶é', null);
INSERT INTO `messagetable` VALUES ('1214', 'en', '$1 cannot be used with this weapon.', null);
INSERT INTO `messagetable` VALUES ('1214', 'tw', '$1 ç¡æ³å¨æ­¤æ­¦å¨ä¸ä½¿ç¨ã', null);
INSERT INTO `messagetable` VALUES ('1215', 'en', '', null);
INSERT INTO `messagetable` VALUES ('1215', 'tw', '', null);
INSERT INTO `messagetable` VALUES ('1216', 'en', '', null);
INSERT INTO `messagetable` VALUES ('1216', 'tw', '', null);
INSERT INTO `messagetable` VALUES ('1217', 'en', '', null);
INSERT INTO `messagetable` VALUES ('1217', 'tw', '', null);
INSERT INTO `messagetable` VALUES ('1218', 'en', '', null);
INSERT INTO `messagetable` VALUES ('1218', 'tw', '', null);
INSERT INTO `messagetable` VALUES ('1219', 'en', '', null);
INSERT INTO `messagetable` VALUES ('1219', 'tw', '', null);
