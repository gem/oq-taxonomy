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

//IMPORT MODELLIST LIBRARY
jimport( 'joomla.application.component.modellist' );

//TERMS MODEL
class JoomGlossaryModelTerms extends JModelList
{
	public function __construct( $config = array() )
	{
		if( empty( $config['filter_fields'] ) ) {
			$config['filter_fields'] = array(
				'term',
				'termcategory',
				'termclass',
				'termcharacteristic',
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
		
		$catsearch = $this->getUserStateFromRequest( $this->context.'.filter.category', 'filter_category' );
		$this->setState( 'filter.category', $catsearch );
		
		// Load the parameters.
		$params = JComponentHelper::getParams( 'com_joomglossary' );
		$this->setState( 'params', $params );

		// List state information.
		parent::populateState( 'termcategory', 'asc' );
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
        $query->from( '#__com_joomglossary_terms' );
		
		//FILTER BY SEARCH
		$search = $db->escape($this->getState('filter.search'));
		if(is_numeric($search)){
			$query->where( "id = '$search'");
		}
		if($search != ''){
			$query->where( "( term LIKE '%" . $search . "%' ) OR ( termclass LIKE '%" . $search . "%' ) OR ( termcharacteristic LIKE '%" . $search . "%' )" );
		}
		
		//FILTER BY CATEGORY
		$catsearch = $db->escape($this->getState('filter.category'));
		if(is_numeric($catsearch)){
			$query->where( "( termcategory = '$catsearch')" );
		}
		
		$query->order ( 'termcategory', 'ASC' );
        return $query;
    }
	
	public function getTermCategory($catid)
	{
		$db = JFactory::getDBO();
		$query = $db->getQuery( true );
		$query->select( 'catname' );
		$query->from( '#__com_joomglossary_categories' );
		$query->where( "id = '$catid'" );
		$db->setQuery($query);
		$row = $db->loadObject();
		return $row->catname;
	}
	
	public function getTermLinkName($id)
	{
		$db = JFactory::getDBO();
		$query = $db->getQuery( true );
		$query->select( 'title' );
		$query->from( '#__menu' );
		$query->where( "id = '$id'" );
		$db->setQuery($query);
		$row = $db->loadObject();
		return $row->title;
	}
}