ALTER TABLE `isu_condition` ADD COLUMN `condition_level` ENUM('info', 'warning', 'critical') NOT NULL AFTER `condition`;
UPDATE `isu_condition` SET `condition_level` = (
    CASE (LENGTH(`condition`) - LENGTH(REPLACE(`condition`, '=true', ''))) / LENGTH('=true')
    WHEN 0 THEN 'info'
    WHEN 1 THEN 'warning'
    WHEN 2 THEN 'warning'
    ELSE 'critical'
    END
);
