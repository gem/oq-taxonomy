<?php
/**
 * @package COM_JOOMGLOSSARY for Joomla!
 * @version $Id: view.html.php 1.0.0 2015-12-24 12:00:00
 * @author Terry W. Carter
 * @copyright (C) 2015 - Terry W. Carter
 * @license GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html
**/

//NO DIRECT ACCESS
defined( '_JEXEC' ) or die( 'Restricted access' );

//IMPORT VIEW LIBRARY
jimport( 'joomla.application.component.view' );
class JoomGlossaryViewGlossary extends JViewLegacy
{
	function display( $tpl = null )
	{
		$JInput = JFactory::getApplication()->input;
		
		$this->globalparams 	= &JComponentHelper::getParams( 'com_joomglossary' );
		$this->tabcase			= $this->globalparams->get( 'tabcase', '', 'string' );
		
		//GET MODEL DATA
        $this->items 			= $this->get( 'Items' );
		$this->category			= $JInput->get( 'category', '', 'int' );
		$this->state			= $this->get( 'State' );
		$this->pagination		= $this->get( 'Pagination' );

		//ERROR CHECKING
		if( count( $errors = $this->get( 'Errors' ) ) ) 
		{
			throw new Exception(implode('<br />', $errors), 500);
			return false;
		}
		$thispage =& JFactory::getDocument();
		//INCLUDE ROSTER VIEW CSS
		$thispage->addStyleSheet( "media/com_joomglossary/css/style.css", "text/css", "screen" );

		//DISSPLAY THE VIEW
		parent::display( $tpl );
	}
}