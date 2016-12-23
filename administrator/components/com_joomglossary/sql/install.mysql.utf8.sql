CREATE TABLE IF NOT EXISTS `#__com_joomglossary_terms` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `termcategory` int(6) NOT NULL,
  `term` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `termlink` varchar(150) COLLATE utf8_general_ci NOT NULL,
  `termanchor` varchar(150) COLLATE utf8_general_ci NOT NULL,
  `termclass` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `termcharacteristic` text COLLATE utf8_general_ci NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `#__com_joomglossary_categories` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `catname` varchar(255) NOT NULL,
  `catdesc` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO `#__com_joomglossary_categories` (`id`, `catname`, `catdesc`, `published`) VALUES
(1, 'Uncategorized', '<p>Default category for terms.</p>', 1);