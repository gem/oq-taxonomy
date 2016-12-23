CREATE TABLE IF NOT EXISTS `#__easysefs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `state` tinyint(1) unsigned DEFAULT '1',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_key` text,
  `meta_desc` text,
  `metadata` text,
  `sef` text,
  `origin` text,
  `created` datetime DEFAULT NULL,
  `created_by` int(10) unsigned DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `language` char(7) DEFAULT 'en-GB',
  `hits` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;