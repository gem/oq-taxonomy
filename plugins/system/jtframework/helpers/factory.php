<?php
/**
 * @package     JTFramework
 * @Author      Mai Vu - joomtech.net
 * @copyright   Copyright (C) 2016 All Rights Reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE
 */
namespace JT;
defined('_JEXEC') or die;

class Factory
{
	public static function getClass($className, Array $config = [])
	{
		$class = '\\JT\\' . $className;
		if (!class_exists($class))
		{
			\JLoader::import('helpers.classes.' . strtolower($className), JT_FRAMEWORK_PATH);
		}
		if (!class_exists($class))
		{
			return false;
		}
		if (is_callable([$class, 'getInstance']))
		{
			return call_user_func([$className, 'getInstance']);
		}

		return new $class($config);
	}

	public static function getIcons()
	{
		$config = self::getClass('config', ['scope' => 'jtframework.icon']);
		$data   = $config->getData();
		if (empty($data['icons']['value']))
		{
			$query = file_get_contents(JT_FRAMEWORK_PATH . '/sql/mysql/icons.sql', true);
			if ($query)
			{
				$db = \JFactory::getDbo();
				$db->setQuery($query)
					->execute();
				$data = $config->getData(true);
			}
		}
		if (empty($data['icons']['value']))
		{
			throw new \Exception('JTFramework - Icons not found!', 500);

			return false;
		}

		return $data['icons']['value'];
	}

}