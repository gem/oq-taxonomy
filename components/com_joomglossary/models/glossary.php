<?php
/**
 * @package COM_JOOMGLOSSARY for Joomla!
 * @version $Id: glossary.php 1.0.0 2015-12-24 12:00:00
 * @author Terry W. Carter
 * @copyright (C) 2015 - Terry W. Carter
 * @license GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html
**/

//NO DIRECT ACCESS
defined( '_JEXEC' ) or die( 'Restricted access' );

//IMPORT MODELITEM LIBRARY
jimport( 'joomla.application.component.modellist' );

//GLOSSARY VIEW CLASS
class JoomGlossaryModelGlossary extends JModelList
{	
	protected function populateState($ordering = null, $direction = null)
	{
        parent::populateState('catname', 'asc');
   		$this->setState('list.limit', 0);
	}
	
	protected function getListQuery()
	{
		$JInput = JFactory::getApplication()->input;
		$category = $JInput->get('category','','int');

		$db = JFactory::getDbo();
		$query = $db->getQuery(true);
		$query->select ( '*' );
		$query->from ( '#__com_joomglossary_terms' );
		if(!$category){
			$query->where( "published = '1'");
		}else{
			$query->where ( "termcategory = '$category' AND published = '1'" );
		}
		$query->order("term", "ASC");
		return $query;	
	}
	
	public function CategoryInfo($catid){
		$db = JFactory::getDbo();
		$query = $db->getQuery(true);
		$query->select('catname, catdesc');
		$query->from('#__com_joomglossary_categories');
		$query->where("id = '$catid'");
		$db->setQuery($query);
		$rows = $db->loadObjectList();
		return $rows;
	}
}