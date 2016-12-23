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

//IMPORT VIEW LIBRARY
jimport('joomla.application.component.view');

//TERMS VIEW
class JoomGlossaryViewTerms extends JViewLegacy
{
	protected $items;
	protected $pagination;
	protected $state;
	
	function display( $tpl = null ) 
	{
		//GET MODEL DATA
		$this->items		= $this->get( 'Items' );
		$this->pagination	= $this->get( 'Pagination' );
		$this->state		= $this->get( 'State' );
 
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
		
		JToolBarHelper::title( JText::_( 'COM_JOOMGLOSSARY_TERMS_DESC' ), 'categories' );
		if (JFactory::getUser()->authorise('core.create', 'com_joomglossary')) 
		{
			JToolBarHelper::custom('term.add', 'new', 'new', 'Add Term', false);
		}
		if (JFactory::getUser()->authorise('core.edit', 'com_joomglossary')) 
		{
			JToolBarHelper::custom('term.edit', 'edit', 'edit', 'Edit', true);
			JToolBarHelper::custom('terms.publish', 'publish', 'publish', 'Publish', true);
			JToolBarHelper::custom('terms.unpublish', 'unpublish', 'unpublish', 'Un-publish', true);
		}
		if (JFactory::getUser()->authorise('core.delete', 'com_joomglossary')) 
		{
			JToolBarHelper::custom('terms.delete', 'delete', 'delete', 'Delete', true);
		}
	}

	//SET DOCUMENT TITLE
	protected function setDocument() 
	{
		$document = JFactory::getDocument();
		$document->setTitle( JText::_( 'COM_JOOMGLOSSARY_TERMS_TITLE' ) );
	}

}