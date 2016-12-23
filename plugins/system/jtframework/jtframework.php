<?php
/**
 * @version        1.0.0
 * @package        JTFramework
 * @author         Vu Mai - http://www.joomtech.net/
 * @copyright      Copyright (c) 2016 JoomTech. All rights reserved.
 * @license        GNU General Public License, version 3
 */
// no direct access
defined('_JEXEC') or die;

class PlgSystemJTFramework extends JPlugin
{
	public function onAfterInitialise()
	{
		!defined('JT_FRAMEWORK_PATH') && define('JT_FRAMEWORK_PATH', JPATH_PLUGINS . '/system/jtframework');
		!defined('JT_MEDIA_PATH') && define('JT_MEDIA_PATH', JPATH_ROOT . '/media/jtui');
		!defined('JT_MEDIA_URL') && define('JT_MEDIA_URL', JUri::root(true) . '/media/jtui');
		JHtml::addIncludePath(__DIR__ . '/helpers/html');
		JLoader::import('helpers.factory', JT_FRAMEWORK_PATH);
	}
	
}