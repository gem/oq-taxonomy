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

if (!JFactory::getUser()->authorise('core.manage', 'com_easysef'))
{
	throw new Exception(JText::_('JERROR_ALERTNOAUTHOR'), 404);

	return;
}

JLoader::register('EasySefHelper', __DIR__ . '/helpers/easysef.php');

$controller = JControllerLegacy::getInstance('EasySef');
$controller->execute(JFactory::getApplication()->input->get('task'));
$controller->redirect();
