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

//TERM VIEW
class JoomGlossaryViewTerm extends JViewLegacy
{
	public function display($tpl = null) 
	{
		//GET MODEL DATA
		$form = $this->get( 'Form' );
		$item = $this->get( 'Item' );
		
		//ERROR CHECKING
		if( count( $errors = $this->get( 'Errors' ) ) ) 
		{
			throw new Exception(implode('<br />', $errors), 500);
			return false;
		}

		//ASSIGN DATA TO DISPLAY
		$this->form = $form;
		$this->item = $item;

		//SET TOOLBAR
		$this->addToolBar();

		//DISPLAY VIEW TEMPLATE
		parent::display( $tpl );

		//SET DOCUMENT
		$this->setDocument();
	}

 	//CREATE THE TOOLBAR
	protected function addToolBar() 
	{
    	$input = JFactory::getApplication()->input;
		$input->set( 'hidemainmenu', true );
		$isNew = ( $this->item->id == 0 );
		JToolBarHelper::title( $isNew ? JText::_( 'COM_JOOMGLOSSARY_TERM_NEW' ) 
									  	  : JText::_( 'COM_JOOMGLOSSARY_TERM_EDIT' ), 'category-add' );
		JToolBarHelper::custom( 'term.save', 'save', 'save', 'Save', false );
		JToolBarHelper::custom( 'term.save2new', 'save-new', 'save-new', 'Save & New', false );
		JToolBarHelper::custom( 'term.cancel', 'cancel', 'cancel', $isNew ? 'Cancel' : 'Cancel', false );
	}

	//SET VIEW TITLE
	protected function setDocument() 
	{
		$isNew = ( $this->item->id < 1 );
		$document = JFactory::getDocument();
		$document->setTitle( $isNew ? JText::_( 'COM_JOOMGLOSSARY_TERM_CREATE_TITLE' )
   								    : JText::_( 'COM_JOOMGLOSSARY_TERM_EDIT_TITLE' ) );
	}
}