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
jimport('joomla.application.component.view');

//CATEGORIES VIEW
class JoomGlossaryViewCSVImport extends JViewLegacy
{
	
	function display( $tpl = null ) 
	{
 
		//ERROR CHECKING
		if( count( $errors = $this->get( 'Errors' ) ) ) 
		{
			throw new Exception(implode('<br />', $errors), 500);
			return false;
		}

		//SET THE TOOLBAR
    	$this->addToolBar();

		//DISPLAY THE VIEW TEMPLATE
		parent::display($tpl);

		//SET DOCUMENT
		$this->setDocument();
	}

	//CREATE THE TOOLBAR
	protected function addToolBar()	
	{
		$state	= $this->get('State');
		
		JToolBarHelper::title( JText::_( 'COM_JOOMGLOSSARY_CSVIMPORT_DESC' ), 'category-add' );
		if (JFactory::getUser()->authorise('core.create', 'com_joomglossary')) 
		{
			JToolBarHelper::custom('csvimport.importTerms', 'upload', 'upload', 'Import Terms', false);
			JToolBarHelper::custom('csvimport.importCategories', 'upload', 'upload', 'Import Categories', false);
		}
	}

	//SET DOCUMENT TITLE
	protected function setDocument() 
	{
		$document = JFactory::getDocument();
		$document->setTitle( JText::_( 'COM_JOOMGLOSSARY_CSVIMPORT_TITLE' ) );
	}

}