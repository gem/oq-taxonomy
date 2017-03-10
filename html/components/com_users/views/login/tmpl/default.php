<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_users
 *
 * @copyright   Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

$db =& JFactory::getDBO();
$sql = "SELECT * FROM `category` ORDER BY id ASC ";
$db->setQuery($sql);
$results = $db->loadObjectList();
?>
       <div class="term-let">
        <?php 
          foreach($results as $rows){
            //control if exist terms with specific cat
            $cat = $rows->cat;
            $sql_term_id = sprintf("SELECT * FROM `taxonomy_content` where title like '%s%%' and catid = '8' and state = '1' ",
                                   $db->escape($cat));
            $db->setQuery($sql_term_id);
            $count_results_term = $db->loadObjectList();
            $db->query($sql_term_id);
            $count_results = $db->getNumRows();
            if($count_results != '0'){
                echo'
                <a class="let-cat m'.$cat.'" href="'.$this->baseurl.'/?cat='.$cat.'">
                        <div class="div-let-cat">
                                '.ucfirst($cat).'
                        </div>
                </a>';
            }
          }
        ?>         
       </div>
       <div style="clear:both;"></div>



<?php
$cookieLogin = $this->user->get('cookieLogin');

if ($this->user->get('guest') || !empty($cookieLogin))
{
        // The user is not logged in or needs to provide a password.
        echo $this->loadTemplate('login');
}
else
{
        // The user is already logged in.
        echo $this->loadTemplate('logout');
}
