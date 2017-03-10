<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_search
 *
 * @copyright   Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
JHtml::_('formbehavior.chosen', 'select');
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
<div class="search<?php echo $this->pageclass_sfx; ?>">
<?php if ($this->params->get('show_page_heading')) : ?>
<h1 class="page-title">
        <?php if ($this->escape($this->params->get('page_heading'))) :?>
                <?php echo $this->escape($this->params->get('page_heading')); ?>
        <?php else : ?>
                <?php echo $this->escape($this->params->get('page_title')); ?>
        <?php endif; ?>
</h1>
<?php endif; ?>

<?php echo $this->loadTemplate('form'); ?>
<?php if ($this->error == null && count($this->results) > 0) :
        echo $this->loadTemplate('results');
else :
        echo $this->loadTemplate('error');
endif; ?>
</div>
