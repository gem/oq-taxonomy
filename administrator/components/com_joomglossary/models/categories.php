<?php
/**
 * @package COM_JOOMGLOSSARY for Joomla!
 * @version $Id: categories.php 1.0.0 2015-12-24 12:00:00
 * @author Terry W. Carter
 * @copyright (C) 2015 - Terry W. Carter
 * @license GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html
**/

//NO DIRECT ACCESS
defined( '_JEXEC' ) or die( 'Restricted access' );

//IMPORT MODELLIST LIBRARY
jimport( 'joomla.application.component.modellist' );

//CATEGORIES MODEL
class JoomGlossaryModelCategories extends JModelList
{
	public function __construct( $config = array() )
	{
		if( empty( $config['filter_fields'] ) ) {
			$config['filter_fields'] = array(
				'catname',
				'catdesc', 
				'id'
			);
		}
		parent::__construct( $config );
	}
	
	protected function populateState( $ordering = null, $direction = null )
	{
		// Initialise variables.
		$app = JFactory::getApplication( 'administrator' );

		// Load the filter state.
		$search = $this->getUserStateFromRequest( $this->context.'.filter.search', 'filter_search' );
		$this->setState( 'filter.search', $search );
		 
		// Load the parameters.
		$params = JComponentHelper::getParams( 'com_joomglossary' );
		$this->setState( 'params', $params );

		// List state information.
		parent::populateState( 'catname', 'asc' );
	}
	
	protected function getStoreId( $id = '' )
	{
		// Compile the store id.
		$id.= ':' . $this->getState( 'filter.search' );
		return parent::getStoreId( $id );
	}
	
	
	protected function getListQuery()
    {
        $db = JFactory::getDBO();
        $query = $db->getQuery( true );
        $query->select( '*' );
        $query->from( '#__com_joomglossary_categories' );
		
		// Filter by search in name
		$search = $db->escape($this->getState('filter.search'));
		if(is_numeric($search)){
			$query->where( "id = '$search'");
		}else{
			$query->where( "( catname LIKE '%" . $search . "%' )" );
		}
		
		$query->order ( 'id', 'ASC' );
        return $query;
    }
}