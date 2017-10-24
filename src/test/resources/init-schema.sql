  DROP TABLE IF EXISTS `user`;
  CREATE TABLE `user` (
    `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
    `name` varchar(64) NOT NULL DEFAULT '',
    `password` varchar(128) NOT NULL DEFAULT '',
    `salt` varchar(32) NOT NULL DEFAULT '',
    `head_url` varchar(256) NOT NULL DEFAULT '',
    `authority` varchar(50) NOT NULL DEFAULT '',
    PRIMARY KEY (`id`),
    UNIQUE KEY `name` (`name`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
  DROP TABLE IF EXISTS `login_ticket`;
  CREATE TABLE `login_ticket` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `user_id` INT NOT NULL,
    `ticket` VARCHAR(45) NOT NULL,
    `expired` DATETIME NOT NULL,
    `status` INT NULL DEFAULT 0,
    PRIMARY KEY (`id`),
    UNIQUE INDEX `ticket_UNIQUE` (`ticket` ASC)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
  DROP TABLE IF EXISTS `menu`;
  CREATE TABLE `menu`(
    `picture_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `picture_name`  varchar(50) NOT NULL DEFAULT '',
    `picture_url` varchar(250) NOT NULL DEFAULT '',
    `picture_parentId`  int(11) ,
    `order_id` int,
    `picture_grade`int,
    `authority_id`varchar(50),
    `effective_distinction` char(1),
    `creat_man`varchar(250) NOT NULL DEFAULT '',
    `create_date`DATETIME,
    PRIMARY KEY (`picture_id`),
    UNIQUE INDEX `picture_id_UNIQUE` (`picture_id` ASC)
  )ENGINE=InnoDB DEFAULT CHARSET=utf8;
  DROP TABLE IF EXISTS `authority`;
  CREATE TABLE `authority` (
    `authority` VARCHAR(50) NOT NULL DEFAULT '',
    `authority_name` VARCHAR(50) NOT NULL DEFAULT '' ,
    `description` VARCHAR(250) NOT NULL DEFAULT '',
    `create_man` VARCHAR(45) NOT NULL DEFAULT '',
    `create_date` DATETIME ,
    `change_man` VARCHAR(128) NOT NULL DEFAULT '',
    `change_date` DATETIME ,
    PRIMARY KEY (`authority`)
  )ENGINE=InnoDB DEFAULT CHARSET=utf8;
  DROP TABLE IF EXISTS `task`;
  CREATE TABLE `task` (
    `task_id` VARCHAR(128) NOT NULL,
    `task_name` VARCHAR(50) NULL,
    `order_id` INT NOT NULL,
    `create_man` VARCHAR(128) NULL,
    `create_date` DATETIME NOT NULL,
    `change_man` VARCHAR(128) NULL,
    `change_date` DATETIME NULL,
    PRIMARY KEY (`task_id`, `order_id`,`create_date`)
  )ENGINE=InnoDB DEFAULT CHARSET=utf8;
  DROP TABLE IF EXISTS `execution`;
  CREATE TABLE `execution` (
    `task_id` INT NOT NULL,
    `id` INT NOT NULL,
    `execution_work` TEXT NULL,
    `log_summary` TEXT NULL,
    `log_title` VARCHAR(50) NULL,
    `create_man` VARCHAR(128) NULL,
    `create_time` DATETIME NULL,
    `change_man` VARCHAR(128) NULL,
    `change_date` DATETIME NULL,
    PRIMARY KEY (`task_id`, `id`)
  )ENGINE=InnoDB DEFAULT CHARSET=utf8;
  DROP TABLE IF EXISTS `general`;
  CREATE TABLE `general` (
    `general_key1` VARCHAR(5) NOT NULL,
    `general_key2` VARCHAR(3) NOT NULL,
    `general_key3` VARCHAR(3) NOT NULL,
    `general_name` VARCHAR(50) NULL,
    `general_text1` VARCHAR(150) NULL,
    `general_text2` VARCHAR(150) NULL,
    `general_text3` VARCHAR(150) NULL,
    `general_number1` DECIMAL(10,3) NULL,
    `general_number2` DECIMAL(10,3) NULL,
    `general_number3` DECIMAL(10,3) NULL,
    `order_id` INT NULL,
    `effective_distinction` CHAR(1) NULL,
    `create_man` VARCHAR(128) NULL,
    `create_date` DATETIME NULL,
    PRIMARY KEY (`general_key1`, `general_key2`, `general_key3`)
  )ENGINE=InnoDB DEFAULT CHARSET=utf8;