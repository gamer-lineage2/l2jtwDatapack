ALTER TABLE `olympiad_nobles` MODIFY `class_id` tinyint(3) unsigned NOT NULL DEFAULT 0;
ALTER TABLE `olympiad_nobles` MODIFY `olympiad_points` int(10) NOT NULL DEFAULT 0;
ALTER TABLE `olympiad_nobles` MODIFY `competitions_done` smallint(3) NOT NULL DEFAULT 0;
ALTER TABLE `olympiad_nobles` MODIFY `competitions_won` smallint(3) NOT NULL DEFAULT 0;
ALTER TABLE `olympiad_nobles` MODIFY `competitions_lost` smallint(3) NOT NULL DEFAULT 0;
ALTER TABLE `olympiad_nobles` MODIFY `competitions_drawn` smallint(3) NOT NULL DEFAULT 0;
ALTER TABLE `olympiad_nobles` MODIFY `competitions_done_week` tinyint(3) NOT NULL default 0;
ALTER TABLE `olympiad_nobles` MODIFY `competitions_done_week_classed` tinyint(3) NOT NULL default 0;
ALTER TABLE `olympiad_nobles` MODIFY `competitions_done_week_non_classed` tinyint(3) NOT NULL default 0;
ALTER TABLE `olympiad_nobles` MODIFY `competitions_done_week_team` tinyint(3) NOT NULL default 0;
ALTER TABLE `olympiad_nobles_eom` MODIFY `class_id` tinyint(3) unsigned NOT NULL DEFAULT 0;
ALTER TABLE `olympiad_nobles_eom` MODIFY `olympiad_points` int(10) NOT NULL DEFAULT 0;
ALTER TABLE `olympiad_nobles_eom` MODIFY `competitions_done` smallint(3) NOT NULL DEFAULT 0;
ALTER TABLE `olympiad_nobles_eom` MODIFY `competitions_won` smallint(3) NOT NULL DEFAULT 0;
ALTER TABLE `olympiad_nobles_eom` MODIFY `competitions_lost` smallint(3) NOT NULL DEFAULT 0;
ALTER TABLE `olympiad_nobles_eom` MODIFY `competitions_drawn` smallint(3) NOT NULL DEFAULT 0;