ALTER TABLE `npc` ADD `drop_herbs` enum('true','false') DEFAULT 'false' NOT NULL;

ALTER TABLE `custom_npc`  CHANGE `drop_herbs` `drop_herbs` enum('true','false') DEFAULT 'false' NOT NULL;