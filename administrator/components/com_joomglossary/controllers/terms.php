<?php
/**
 * @package COM_JOOMGLOSSARY for Joomla!
 * @version $Id: terms.php 1.0.0 2015-12-24 12:00:00
 * @author Terry W. Carter
 * @copyright (C) 2015 - Terry W. Carter
 * @license GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html
**/

//NO DIRECT ACCESS
defined( '_JEXEC' ) or die( 'Restricted access' );

//IMPORT CONTROLLER ADMIN LIBRARY
jimport( 'joomla.application.component.controlleradmin' );

//TERMS CONTROLLER
class JoomGlossaryControllerTerms extends JControllerAdmin
{
	public function getModel( $name = 'Term', $prefix = 'JoomGlossaryModel' ) 
	{
		$model = parent::getModel( $name, $prefix, array( 'ignore_request' => true ) );
		return $model;
	}
}