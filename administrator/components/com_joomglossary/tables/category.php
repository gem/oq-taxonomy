<?php
/**
 * @package COM_JOOMGLOSSARY for Joomla!
 * @version $Id: category.php 1.0.0 2015-12-24 12:00:00
 * @author Terry W. Carter
 * @copyright (C) 2015 - Terry W. Carter
 * @license GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html
**/

//NO DIRECT ACCESS
defined( '_JEXEC' ) or die( 'Restricted access' );;

//IMPORT TABLE LIBRARY
jimport('joomla.database.table');

//CATEGORY TABLE CLASS
class JoomGlossaryTableCategory extends JTable
{
    function __construct(&$db) 
    {
        parent::__construct('#__com_joomglossary_categories', 'id', $db);
    }
}