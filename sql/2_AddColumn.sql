ALTER TABLE `isu_condition` ADD COLUMN `condition_level` ENUM('info', 'warning', 'critical') NOT NULL AFTER `condition`;
