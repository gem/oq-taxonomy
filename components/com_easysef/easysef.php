<?php
/**
 * @version        1.0.0
 * @package        EasySef
 * @author         Vu Mai - http://www.joomtech.net/
 * @copyright      Copyright (c) 2016 JoomTech. All rights reserved.
 * @license        GNU General Public License, version 3
 */
// no direct access
defined('_JEXEC') or die;
$app = JFactory::getApplication();
$app->getLanguage()->load('com_easysef', JPATH_COMPONENT_ADMINISTRATOR);
if ($app->input->get('task') !== 'sef.save')
{
	throw new Exception(JText::_('JERROR_ALERTNOAUTHOR'), 404);

	return;
}
$controller = JControllerLegacy::getInstance('EasySef', ['base_path' => JPATH_COMPONENT_ADMINISTRATOR]);
$controller->execute($app->input->get('task'));
$controller->redirect();