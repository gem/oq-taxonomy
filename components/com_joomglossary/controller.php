<?php
/**
 * @package COM_JOOMGLOSSARY for Joomla!
 * @version $Id: controller.php 1.0.0 2015-12-24 12:00:00
 * @author Terry W. Carter
 * @copyright (C) 2015 - Terry W. Carter
 * @license GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html
**/

//NO DIRECT ACCESS
defined( '_JEXEC' ) or die( 'Restricted access' );

//IMPORT CONTROLLER LIBRARY
jimport( 'joomla.application.component.controller' );

//FRONT-END GLOSSARY CONTROLLER
class JoomGlossaryController extends JControllerLegacy
{
    function display($cachable = false) 
    {
        // set default view if not set
        $input = JFactory::getApplication()->input;
        $input->set('view', $input->getCmd('view','glossary'));

        // call parent behavio
        parent::display( $cachable );
    }
}