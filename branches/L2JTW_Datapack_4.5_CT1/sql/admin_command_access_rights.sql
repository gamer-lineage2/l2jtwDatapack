-- 
-- For further information on the usage of this table, please refer to the 
-- documentation comments in the access_levels.sql file
-- 
-- -----------------------------------------------
-- Table structure for admin_command_access_rights
-- -----------------------------------------------
CREATE TABLE IF NOT EXISTS `admin_command_access_rights` (
  `adminCommand` varchar(255) NOT NULL default 'admin_',
  `accessLevels` varchar(255) NOT NULL,
  PRIMARY KEY  (`adminCommand`)
) ;

INSERT IGNORE INTO `admin_command_access_rights` VALUES 
('admin_admin','1'),
('admin_admin1','1'),
('admin_admin2','1'),
('admin_admin3','1'),
('admin_admin4','1'),
('admin_admin5','1'),
-- #######################
-- ### COMMON COMMANDS ###
-- #######################
('admin_delete','1'),
('admin_gmshop','1'),
('admin_heal','1'),
('admin_help','1'),
('admin_vis','1'),
('admin_invis','1'),
('admin_invis_menu','1'),
('admin_invul','1'),
('admin_kill','1'),
('admin_res','1'),
('admin_silence','1'),
('admin_target','1'),
('admin_cancel','1'), 
-- #######################
-- ### CHAR MANAGEMENT ###
-- #######################
('admin_ban','1'),
('admin_banchat','1'),
('admin_jail','1'),
('admin_character_disconnect','1'),
('admin_kick','1'),
('admin_unban','1'),
('admin_unbanchat','1'),
('admin_unjail','1'), 
-- #################
-- ### CLAN HALL ###
-- #################
('admin_clanhall','1'),
('admin_clanhalldel','1'),
('admin_clanhallset','1'),
('admin_clanhallopendoors','1'),
('admin_clanhallteleportself','1'),
-- ####################
-- ### ANNOUNCEMENT ###
-- ####################
('admin_add_announcement','1'),
('admin_announce','1'),
('admin_announce_announcements','1'),
('admin_announce_menu','1'),
('admin_del_announcement','1'),
('admin_list_announcements','1'),
('admin_reload_announcements','1'),
-- #######################
-- ### RELOAD COMMANDS ###
-- #######################
('admin_cache_htm_rebuild','1'),
('admin_cache_htm_reload','1'),
('admin_cache_crest_fix','1'),
('admin_cache_crest_rebuild','1'),
('admin_cache_crest_reload','1'),
('admin_quest_reload','1'),
('admin_teleport_reload','1'),
('admin_spawn_reload','1'),
('admin_zone_reload','1'),
('admin_reload','1'),
-- ####################
-- ### DOOR CONTROL ###
-- ####################
('admin_close','1'),
('admin_closeall','1'),
('admin_open','1'),
('admin_openall','1'),
-- #########################
-- ### CHAR MODIFICATION ###
-- #########################
('admin_setclass','1'),
('admin_add_exp_sp','1'),
('admin_add_exp_sp_to_character','1'),
('admin_add_level','1'),
('admin_set_level','1'),
('admin_changename','1'),
('admin_changename_menu','1'),
('admin_character_list','1'),
('admin_character_info','1'),
('admin_current_player','1'),
('admin_edit_character','1'),
('admin_find_character','1'),
('admin_find_ip','1'),
('admin_find_account','1'),
('admin_nokarma','1'),
('admin_rec','1'),
('admin_repair','1'),
('admin_restore','1'),
('admin_setew','1'),
('admin_setkarma','1'),
('admin_save_modifications','1'),
('admin_setcolor','1'),
('admin_setname','1'),
('admin_setsex','1'),
('admin_settitle','1'),
('admin_show_characters','1'),
('admin_diet','1'),
('admin_fullfood','1'),
-- ################
-- ### EDIT NPC ###
-- ################
('admin_edit_npc','1'),
('admin_save_npc','1'),
('admin_show_droplist','1'),
('admin_edit_drop','1'),
('admin_add_drop','1'),
('admin_del_drop','1'),
('admin_showShop','1'),
('admin_showShopList','1'),
('admin_addShopItem','1'),
('admin_delShopItem','1'),
('admin_box_access','1'),
('admin_editShopItem','1'),
('admin_npc_say','1'),
-- ###############
-- ### EFFECTS ###
-- ###############
('admin_atmosphere','1'),
('admin_invisible','1'),
('admin_visible','1'),
('admin_earthquake','1'),
('admin_bighead','1'),
('admin_shrinkhead','1'),
('admin_gmspeed','1'),
('admin_gmspeed_menu','1'),
('admin_unpara_all','1'),
('admin_para_all','1'),
('admin_unpara','1'),
('admin_para','1'),
('admin_polymorph','1'),
('admin_unpolymorph','1'),
('admin_polyself','1'),
('admin_unpolyself','1'),
('admin_clearteams','1'),
('admin_setteam_close','1'),
('admin_setteam','1'),
('admin_effect','1'),
('admin_social','1'),
('admin_play_sounds','1'),
('admin_play_sound','1'),
('admin_abnormal','1'),
('admin_atmosphere_menu','1'),
('admin_unpara_all_menu','1'),
('admin_para_all_menu','1'),
('admin_unpara_menu','1'),
('admin_para_menu','1'),
('admin_polymorph_menu','1'),
('admin_unpolymorph_menu','1'),
('admin_polyself_menu','1'),
('admin_unpolyself_menu','1'),
('admin_social_menu','1'),
('admin_effect_menu','1'),
('admin_abnormal_menu','1'),
('admin_transform_menu','1'),
-- ####################
-- ### ENCHANT MENU ###
-- ####################
('admin_seteh','1'),
('admin_setec','1'),
('admin_seteg','1'),
('admin_setel','1'),
('admin_seteb','1'),
('admin_setes','1'),
('admin_setle','1'),
('admin_setre','1'),
('admin_setlf','1'),
('admin_setrf','1'),
('admin_seten','1'),
('admin_setun','1'),
('admin_setba','1'),
('admin_enchant','1'), 
-- #############
-- ### EVENT ###
-- #############
('admin_event','1'),
('admin_event_new','1'),
('admin_event_choose','1'),
('admin_event_store','1'),
('admin_event_set','1'),
('admin_event_change_teams_number','1'),
('admin_event_announce','1'),
('admin_event_panel','1'),
('admin_event_control_begin','1'),
('admin_event_control_teleport','1'),
('admin_add','1'),
('admin_event_see','1'),
('admin_event_del','1'),
('admin_delete_buffer','1'),
('admin_event_control_sit','1'),
('admin_event_name','1'),
('admin_event_control_kill','1'),
('admin_event_control_res','1'),
('admin_event_control_poly','1'),
('admin_event_control_unpoly','1'),
('admin_event_control_prize','1'),
('admin_event_control_chatban','1'),
('admin_event_control_finish','1'),
-- #######################
-- ### SERVER SETTINGS ###
-- #######################
('admin_server_shutdown','1'),
('admin_server_restart','1'),
('admin_server_abort','1'),
('admin_server_gm_only','1'),
('admin_server_all','1'),
('admin_server_max_player','1'),
('admin_server_list_clock','1'),
('admin_server_login','1'),
('admin_kick_non_gm','1'),
-- ############
-- ### MENU ###
-- ############
('admin_char_manage','1'),
('admin_teleport_character_to_menu','1'),
('admin_recall_char_menu','1'),
('admin_recall_party_menu','1'),
('admin_recall_clan_menu','1'),
('admin_goto_char_menu','1'),
('admin_kick_menu','1'),
('admin_kill_menu','1'),
('admin_ban_menu','1'),
('admin_unban_menu','1'), 
-- #################
-- ### MOB GROUP ###
-- #################
('admin_mobmenu','1'),
('admin_mobgroup_create','1'),
('admin_mobgroup_spawn','1'),
('admin_mobgroup_unspawn','1'),
('admin_mobgroup_kill','1'),
('admin_mobgroup_idle','1'),
('admin_mobgroup_attack','1'),
('admin_mobgroup_rnd','1'),
('admin_mobgroup_return','1'),
('admin_mobgroup_follow','1'),
('admin_mobgroup_casting','1'),
('admin_mobgroup_nomove','1'),
('admin_mobgroup_attackgrp','1'),
('admin_mobgroup_invul','1'),
('admin_mobinst','1'), 
('admin_mobgroup_remove','1'), 
-- #################
-- ### PATH NODE ###
-- #################
('admin_pn_info','1'),
('admin_show_path','1'),
('admin_path_debug','1'),
('admin_show_pn','1'),
('admin_find_path','1'), 
-- #############
-- ### RIDE ####
-- #############
('admin_ride_wyvern','1'),
('admin_ride_strider','1'),
('admin_unride_wyvern','1'),
('admin_unride_strider','1'),
('admin_unride','1'),
-- #############
-- ### SIEGE ###
-- #############
('admin_siege','1'),
('admin_add_attacker','1'),
('admin_add_defender','1'),
('admin_add_guard','1'),
('admin_list_siege_clans','1'),
('admin_clear_siege_list','1'),
('admin_move_defenders','1'),
('admin_spawn_doors','1'),
('admin_endsiege','1'),
('admin_startsiege','1'),
('admin_setcastle','1'),
-- ##################
-- ### FORT SIEGE ###
-- ##################
('admin_fortsiege','1'),
('admin_add_fortattacker','1'),
('admin_add_fortdefender','1'),
('admin_add_fortguard','1'),
('admin_list_fortsiege_clans','1'),
('admin_clear_fortsiege_list','1'),
('admin_move_fortdefenders','1'),
('admin_spawn_fortdoors','1'),
('admin_endfortsiege','1'),
('admin_startfortsiege','1'),
('admin_setfort','1'),
('admin_removefort','1'),
-- #############
-- ### SKILL ###
-- #############
('admin_show_skills','1'),
('admin_remove_skills','1'),
('admin_skill_list','1'),
('admin_skill_index','1'),
('admin_add_skill','1'),
('admin_add_clan_skill','1'),
('admin_remove_skill','1'),
('admin_get_skills','1'),
('admin_reset_skills','1'),
('admin_give_all_skills','1'),
('admin_remove_all_skills','1'), 
-- #############
-- ### SPAWN ###
-- #############
('admin_mammon_find','1'),
('admin_mammon_respawn','1'),
('admin_list_spawns','1'),
('admin_show_spawns','1'),
('admin_spawn','1'),
('admin_spawn_once','1'),
('admin_spawn_index','1'),
('admin_spawn_monster','1'),
('admin_respawnall','1'),
('admin_unspawnall','1'), 
-- ################
-- ### TELEPORT ###
-- ################
('admin_show_moves','1'),
('admin_show_moves_other','1'),
('admin_show_teleport','1'),
('admin_teleport_to_character','1'),
('admin_teleportto','1'),
('admin_move_to','1'),
('admin_teleport_character','1'),
('admin_recall','1'),
('admin_walk','1'),
('admin_explore','1'),
('admin_recall_npc','1'),
('admin_gonorth','1'),
('admin_gosouth','1'),
('admin_goeast','1'),
('admin_gowest','1'),
('admin_goup','1'),
('admin_godown','1'),
('admin_tele','1'),
('admin_teleto','1'),
-- #####################
-- ### TEST COMMANDS ###
-- #####################
('admin_known','1'),
('admin_mp','1'),
('admin_msg','1'),
('admin_forge','1'),
('admin_forge2','1'),
('admin_forge3','1'),
('admin_skill_test','1'),
('admin_st','1'),
('admin_stats','1'),
('admin_test','1'),
('admin_zone_check','1'),
('admin_fight_calculator','1'),
('admin_fight_calculator_show','1'),
('admin_fcs','1'),
-- #################
-- ### PETITIONS ###
-- #################
('admin_accept_petition','1'),
('admin_reject_petition','1'),
('admin_reset_petitions','1'),
('admin_view_petition','1'),
('admin_view_petitions','1'),
-- ###################
-- ### GM SETTINGS ###
-- ###################
('admin_changelvl','1'),
('admin_gm','1'),
('admin_gmchat','1'),
('admin_gmchat_menu','1'),
('admin_gmlistoff','1'),
('admin_gmliston','1'),
('admin_snoop','1'), 
-- #####################
-- ### MISCELLANEOUS ###
-- #####################
('admin_buy','1'),
('admin_create_item','1'),
('admin_itemcreate','1'),
('admin_manualhero','1'),
('admin_pledge','1'),
('admin_set','1'),
('admin_set_menu','1'),
('admin_set_mod','1'),
('admin_tradeoff','1'),
('admin_unblockip','1'),
-- ###############
-- ### GEODATA ###
-- ###############
('admin_geo_z','1'),
('admin_geo_type','1'),
('admin_geo_nswe','1'),
('admin_geo_los','1'),
('admin_geo_position','1'),
('admin_geo_bug','1'),
('admin_geo_load','1'),
('admin_geo_unload','1'),
('admin_geoeditor_connect','1'),
('admin_geoeditor_join','1'),
('admin_geoeditor_leave','1'),
-- ###############
-- ### ZARICHE ###
-- ###############
('admin_cw_info','1'),
('admin_cw_info_menu','1'),
('admin_cw_add','1'),
('admin_cw_remove','1'),
('admin_cw_goto','1'),
('admin_cw_reload','1'),
-- ###############
-- ###  MANOR  ###
-- ###############
('admin_manor_info','1'),
('admin_manor_setnext','1'),
('admin_manor_approve','1'),
('admin_manor_disable','1'),
('admin_manor_setmaintenance','1'),
('admin_manor_save','1');
