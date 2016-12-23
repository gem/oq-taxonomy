<?php
/**
 * @version        1.0.0
 * @package        EasyTab System Plugin
 * @author         Vu Mai - http://www.joomtech.net/
 * @copyright      Copyright (c) 2016 JoomTech. All rights reserved.
 * @license        http://www.gnu.org/licenses/gpl-3.0.html GNU/GPL
 */
defined('_JEXEC') or die;
if (!class_exists('plgSystemJTFrameworkInstallerScript'))
{
	class plgSystemJTFrameworkInstallerScript
	{
		protected $minimumPHPVersion = '5.4.0';
		protected $minimumJoomlaVersion = '3.3.0';
		protected $maximumJoomlaVersion = '3.9.999';

		public function postflight($route, JAdapterInstance $adapter)
		{
			if($route == 'install' || $route == 'update')
			{
				if(!$this->checkRequirement())
				{
					return false;
				}
			}

			$db    = JFactory::getDbo();
			$query = $db->getQuery(true)
				->update($db->qn('#__extensions'))
				->set($db->qn('enabled') . ' = 1')
				->where($db->qn('type') . ' = ' . $db->q('plugin'))
				->where($db->qn('element') . ' = ' . $db->q('jtframework'))
				->where($db->qn('folder') . ' = ' . $db->q('system'));
			$db
				->setQuery($query)
				->execute();
		}

		public function checkRequirement()
		{
			// Check the minimum PHP version
			if (!version_compare(PHP_VERSION, $this->minimumPHPVersion, 'ge'))
			{
				$msg = "<p>You need PHP $this->minimumPHPVersion or later to install this package</p>";
				throw new RuntimeException($msg);

				return false;
			}

			// Check the minimum Joomla! version
			if (!version_compare(JVERSION, $this->minimumJoomlaVersion, 'ge'))
			{
				$msg = "<p>You need Joomla! $this->minimumJoomlaVersion or later to install this component</p>";
				throw new RuntimeException($msg);

				return false;
			}

			// Check the maximum Joomla! version
			if (!version_compare(JVERSION, $this->maximumJoomlaVersion, 'le'))
			{
				$msg = "<p>You need Joomla! $this->maximumJoomlaVersion or earlier to install this component</p>";
				throw new RuntimeException($msg);

				return false;
			}

			return true;
		}
	}
}