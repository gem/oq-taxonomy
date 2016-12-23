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
jimport('joomla.html.html');
jimport('joomla.form.formfield');
jimport('joomla.form.helper');
JFormHelper::loadFieldClass('list');
class JFormFieldCategories extends JFormFieldList
{
	protected $type = 'Categories';
	public function getOptions()
	{
		// Initialize variables.
		$options = array();
		$db     = JFactory::getDbo();
		$query  = $db->getQuery(true);
		$query->select('id AS value, catname AS text');
		$query->from('#__com_joomglossary_categories');
		$query->order('catname');
		$query->where('published = 1');
		// Get the options.
		$db->setQuery($query);
		$options = $db->loadObjectList();
		// Check for a database error.
		if ($db->getErrorNum())
		{
			throw new Exception($db->getErrorMsg(), 500);
		}
		return $options;
	}
}