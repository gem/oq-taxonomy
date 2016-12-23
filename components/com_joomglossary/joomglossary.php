<?php
/**
 * @package COM_JOOMGLOSSARY for Joomla!
 * @version $Id: joomglossary.php 1.0.0 2015-12-24 12:00:00
 * @author Terry W. Carter
 * @copyright (C) 2015 - Terry W. Carter
 * @license GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html
**/

//NO DIRECT ACCESS
defined( '_JEXEC' ) or die( 'Restricted access' );

//IMPORT CONTROLLER LIBRARY
jimport( 'joomla.application.component.controller' );

//GET CONTROLLER INSTANCE
$controller = JControllerLegacy::getInstance( 'JoomGlossary' );

//PERFORM REQUESTED TASK
$input = JFactory::getApplication()->input;
$controller->execute($input->getCmd('task'));

//REDIRECT IF SET
$controller->redirect();