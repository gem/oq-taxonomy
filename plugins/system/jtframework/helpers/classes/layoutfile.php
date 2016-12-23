<?php
/**
 * @package     JTFramework
 * @Author      Mai Vu - joomtech.net
 * @copyright   Copyright (C) 2015 - 2016 All Rights Reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE
 */
namespace JT;
defined('_JEXEC') or die;

class LayoutFile extends \JLayoutFile
{
	public function __construct($config = [])
	{
		list($layoutId, $basePath, $options) = $config;
		parent::__construct($layoutId, $basePath, $options);
	}

	public function render($displayData = [], $addTemplatePath = true)
	{
		if ($addTemplatePath)
		{
			$this->addIncludePath(JPATH_THEMES . '/' . \JFactory::getApplication()->getTemplate() . '/html/layouts');
		}

		return parent::render($displayData);
	}
}