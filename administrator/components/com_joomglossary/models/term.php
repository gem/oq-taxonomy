<?php
/**
 * @package COM_JOOMGLOSSARY for Joomla!
 * @version $Id: term.php 1.0.0 2015-12-24 12:00:00
 * @author Terry W. Carter
 * @copyright (C) 2015 - Terry W. Carter
 * @license GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html
**/

//NO DIRECT ACCESS
defined( '_JEXEC' ) or die( 'Restricted access' );

//IMPORT MODELFORM LIBRARY
jimport( 'joomla.application.component.modeladmin' );
 
//TERM MODEL
class JoomGlossaryModelTerm extends JModelAdmin
{
	public function getTable( $type = 'Term', $prefix = 'JoomGlossaryTable', $config = array() ) 
	{
		return JTable::getInstance( $type, $prefix, $config );
	}

	public function getForm( $data = array(), $loadData = true ) 
	{
		//GET THE FORM
		$form = $this->loadForm( 'com_joomglossary.term', 'term',
		array( 'control' => 'jform', 'load_data' => $loadData ) );
		if( empty( $form ) ) 
		{
			return false;
		}
		return $form;
	}

	protected function loadFormData() 
	{
		$data = JFactory::getApplication()->getUserState( 'com_joomglossary.edit.term.data', array() );
		if( empty( $data ) ) 
		{
			$data = $this->getItem();
		}
		return $data;
	}

	public function getCategories()
	{
		$db = JFactory::getDBO();
        $query = $db->getQuery( true );
        $query->select( 'category' );
        $query->from( '#__com_joomglossary_categories' );
		$query->where( "published = '1'" );
		$query->order( "catname ASC" );
		$db->setQuery($query);
		$rows = $db->loadObjectList();
		return $rows;
    }

	public function getCategory( $termid )
	{
		$db = JFactory::getDBO();
        $query = $db->getQuery( true );
        $query->select( 'catname' );
        $query->from( '#__com_joomglossary_categories' );
		$query->where( "termid = '$termid'" );
		$db->setQuery($query);
		$rows = $db->loadObject();
		return $rows;
    }
}