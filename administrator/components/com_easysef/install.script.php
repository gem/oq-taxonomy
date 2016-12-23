<?php
/**
 * @version        1.0.0
 * @package        EasyTab System Plugin
 * @author         Vu Mai - http://www.joomtech.net/
 * @copyright      Copyright (c) 2016 JoomTech. All rights reserved.
 * @license        http://www.gnu.org/licenses/gpl-3.0.html GNU/GPL
 */
defined('_JEXEC') or die;

class com_easysefInstallerScript
{

	public function postflight($type, $parent)
	{
		if ($type == 'install' || $type == 'update')
		{
			$this->enablePlugin('easysef', 'system');
		}
	}

	public function preflight($type, $parent)
	{
		$src = $parent->getParent()->getPath('source');
		if (JFolder::exists($src . '/extensions/plugins'))
		{
			$plugins   = JFolder::folders($src . '/extensions/plugins');
			$installer = new JInstaller;

			if (in_array('jtframework', $plugins))
			{
				if (!$installer->install($src . '/extensions/plugins/jtframework'))
				{
					return false;
				}
			}

			foreach ($plugins as $plugin)
			{
				if (basename($plugin) == 'jtframework')
				{
					continue;
				}
				$result = $installer->install($src . '/extensions/plugins/' . $plugin);
				if ($result)
				{
					$manifest = $installer->getManifest();
					$this->enablePlugin($plugin, (string) $manifest->attributes()->group);
				}
			}
		}

		if (JFolder::exists($src . '/extensions/modules'))
		{
			$modules = JFolder::folders($src . '/extensions/modules');
			foreach ($modules as $module)
			{
				$installer = new JInstaller;
				$installer->install($src . '/extensions/modules/' . $module);
			}
		}
	}

	protected function enablePlugin($plugin, $group)
	{
		$db    = JFactory::getDbo();
		$query = $db->getQuery(true);
		$query->update($db->qn('#__extensions'))
			->set($db->qn('enabled') . ' = 1')
			->where($db->qn('type') . ' = ' . $db->q('plugin'))
			->where($db->qn('element') . ' = ' . $db->q($plugin))
			->where($db->qn('folder') . ' = ' . $db->q($group));
		$db->setQuery($query);

		return $db->execute();
	}

}
