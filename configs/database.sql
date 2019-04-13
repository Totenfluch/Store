CREATE TABLE `store_players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authid` varchar(32) NOT NULL,
  `name` varchar(64) NOT NULL,
  `credits` int(11) NOT NULL,
  `date_of_join` int(11) NOT NULL,
  `date_of_last_join` int(11) NOT NULL,
  `ban` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `authid` (`authid`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4;


CREATE TABLE `store_opencase` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) unsigned NOT NULL DEFAULT '0',
  `unique` varchar(255) NOT NULL DEFAULT 'ERROR',
  `days` int(11) NOT NULL DEFAULT '0',
  `date` int(11) NOT NULL DEFAULT '0',
  `handle` varchar(16) NOT NULL DEFAULT 'ERROR',
  `type` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4;


CREATE TABLE `store_newlogs` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) unsigned NOT NULL DEFAULT '0',
  `credits` int(11) NOT NULL DEFAULT '0',
  `difference` int(11) NOT NULL DEFAULT '0',
  `reason` varchar(256) NOT NULL DEFAULT 'unknown reason',
  `timestamp` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4;


CREATE TABLE `store_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `type` varchar(16) NOT NULL,
  `unique_id` varchar(192) NOT NULL DEFAULT '',
  `date_of_purchase` int(11) unsigned NOT NULL DEFAULT '0',
  `date_of_expiration` int(11) unsigned NOT NULL DEFAULT '0',
  `price_of_purchase` int(11) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `p` (`player_id`,`type`,`unique_id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4;


CREATE TABLE `store_item_parent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `parent` tinyint(3) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `store_item_child` (
  `parent` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '!parent!',
  `type` VARCHAR(32) NOT NULL DEFAULT 'ITEM_ERROR' COMMENT '!type!',
  `uid` VARCHAR(32) NOT NULL DEFAULT 'ITEM_ERROR',
  `buyable` BIT(1) NOT NULL DEFAULT b'1' COMMENT '!buyable!',
  `giftable` BIT(1) NOT NULL DEFAULT b'1' COMMENT '!giftable!',
  `only` BIT(1) NOT NULL DEFAULT b'0' COMMENT '!only!',
  `auth` VARCHAR(128) NOT NULL DEFAULT 'ITEM_NOT_PERSONAL' COMMENT '!personal!',
  `vip` BIT(1) NOT NULL DEFAULT b'0' COMMENT '!vip!',
  `name` VARCHAR(32) NOT NULL DEFAULT 'ITEM_UNNAMED' COMMENT '菜单显示的名字',
  `lvls` TINYINT(2) NOT NULL DEFAULT '0' COMMENT 'playerskin level',
  `desc` VARCHAR(32) NOT NULL DEFAULT 'ITEM_NO_DESC' COMMENT 'playerskin desc',
  `case` TINYINT(3) NOT NULL DEFAULT '0' COMMENT 'playerskin open case only',
  `compose` BIT(1) NOT NULL DEFAULT b'0' COMMENT 'playerskin compose only',
  `1d` INT(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'credits/day',
  `1m` INT(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'credits/month',
  `pm` VARCHAR(255) NOT NULL DEFAULT '100000' COMMENT 'credits/perment',
  `model` VARCHAR(192) NOT NULL DEFAULT 'ITEM_NO_MODEL' COMMENT 'playerskin|hat|nadeskin|vwmodel|pets',
  `arms` VARCHAR(192) NOT NULL DEFAULT 'ITEM_NO_ARMS' COMMENT 'playerskin',
  `team` TINYINT(2) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'playerskin',
  `sound` VARCHAR(192) NOT NULL DEFAULT 'ITEM_NO_SOUND' COMMENT 'playerskin|sound',
  `position` VARCHAR(64) NOT NULL DEFAULT '0.0 0.0 0.0' COMMENT 'hat|pets',
  `angles` VARCHAR(64) NOT NULL DEFAULT '0.0 0.0 0.0' COMMENT 'hat|pets',
  `attachment` VARCHAR(32) NOT NULL DEFAULT 'ITEM_NO_ATTACHMENT' COMMENT 'hat',
  `slot` TINYINT(2) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'hat|vwmodel|weaponskin',
  `material` VARCHAR(192) NOT NULL DEFAULT 'ITEM_NO_MATERIAL' COMMENT 'nadetrail|trail|spray',
  `color` VARCHAR(32) NOT NULL DEFAULT 'ITEM_NO_COLOR' COMMENT 'nadetrail|trail|namecolor|msgcolor|neon',
  `grenade` VARCHAR(32) NOT NULL DEFAULT 'ITEM_NO_GRENADE' COMMENT 'nadeskin',
  `shortname` VARCHAR(32) NOT NULL DEFAULT 'ITEM_NO_SHORTNAME' COMMENT 'sound',
  `volume` FLOAT(2,1) UNSIGNED NOT NULL DEFAULT '1.0' COMMENT 'sound',
  `cooldown` TINYINT(3) UNSIGNED NOT NULL DEFAULT '60' COMMENT 'sound',
  `worldmodel` VARCHAR(192) NOT NULL DEFAULT 'ITEM_NO_WORLDMODEL' COMMENT 'vwmodel',
  `dropmodel` VARCHAR(192) NOT NULL DEFAULT 'ITEM_NO_DROPMODEL' COMMENT 'vwmodel',
  `weapon` VARCHAR(32) NOT NULL DEFAULT 'ITEM_NO_ENTITY' COMMENT 'vwmodel|weaponskin',
  `effect` VARCHAR(32) NOT NULL DEFAULT 'ITEM_NO_EFFECT' COMMENT 'arua|particle',
  `brightness` TINYINT(2) UNSIGNED NOT NULL DEFAULT '5' COMMENT 'neon',
  `distance` TINYINT(3) UNSIGNED NOT NULL DEFAULT '150' COMMENT 'neon',
  `distancefade` TINYINT(3) UNSIGNED NOT NULL DEFAULT '50' COMMENT 'neon',
  `tag` VARCHAR(32) NOT NULL DEFAULT 'ITEM_NO_TAG' COMMENT 'nametag',
  `idle` VARCHAR(32) NOT NULL DEFAULT 'ITEM_NO_IDLE' COMMENT 'pet',
  `run` VARCHAR(32) NOT NULL DEFAULT 'ITEM_NO_RUN' COMMENT 'pet',
  `death` VARCHAR(32) NOT NULL DEFAULT 'ITEM_NO_DEATH' COMMENT 'pet',
  `seed` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'weaponskin',
  `weart` TINYINT(3) NOT NULL DEFAULT '-1' COMMENT 'weaponskin',
  `paint` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'weaponskin',
  `wearf` FLOAT(7,6) UNSIGNED NOT NULL DEFAULT '0.010000' COMMENT 'weaponskin',
  `store_servers_idstore_servers` INT NOT NULL,
  PRIMARY KEY (`type`, `uid`, `store_servers_idstore_servers`),
  INDEX `p` (`parent` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

-- Servers
CREATE TABLE IF NOT EXISTS `store_servers` (
  `idstore_servers` INT NOT NULL,
  `store_server_name` VARCHAR(128) NULL,
  `store_server_ip_port` VARCHAR(32) NULL,
  PRIMARY KEY (`idstore_servers`))
ENGINE = InnoDB
