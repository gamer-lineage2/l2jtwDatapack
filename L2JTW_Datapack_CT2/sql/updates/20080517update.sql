ALTER TABLE `access_levels` CHANGE `access_level` `accessLevel` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `access_levels` CHANGE `name_color` `nameColor` CHAR(6);
ALTER TABLE `access_levels` CHANGE `title_color` `titleColor` CHAR(6);
ALTER TABLE `access_levels` CHANGE `child_access` `childAccess` VARCHAR(255);
ALTER TABLE `access_levels` CHANGE `is_gm` `isGm` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `access_levels` CHANGE `allow_peace_attack` `allowPeaceAttack` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `access_levels` CHANGE `allow_fixed_res` `allowFixedRes` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `access_levels` CHANGE `allow_transaction` `allowTransaction` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `access_levels` CHANGE `allow_altg` `allowAltg` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `access_levels` CHANGE `give_damage` `giveDamage` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `access_levels` CHANGE `take_aggro` `takeAggro` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `access_levels` CHANGE `gain_exp` `gainExp` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0;

ALTER TABLE `admin_command_access_rights` CHANGE `admin_command` `adminCommand` VARCHAR(255);
ALTER TABLE `admin_command_access_rights` CHANGE `access_levels` `accessLevels` VARCHAR(255);