<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_finder
 *
 * @copyright   Copyright (C) 2005 - 2019 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

JHtml::_('behavior.core');
JHtml::_('formbehavior.chosen');
JHtml::addIncludePath(JPATH_COMPONENT . '/helpers/html');
JHtml::_('stylesheet', 'com_finder/finder.css', array('version' => 'auto', 'relative' => true));

//GEM custom
$db =& JFactory::getDBO();
$sql = "SELECT * FROM `category` ORDER BY id ASC";
$db->setQuery($sql);
$results = $db->loadObjectList();
if (isset($_GET['cat']))
	$namee = $_GET['cat'];
else
	$namee = 'a';
$sql_term = sprintf("SELECT * FROM `taxonomy_content` where title like '%s%%' and catid = '8' and state = '1' ORDER BY title ASC ",
$db->escape($namee));
$db->setQuery($sql_term);
$results_term = $db->loadObjectList();
?>

<div class="finder<?php echo $this->pageclass_sfx; ?>">
	<?php if ($this->params->get('show_page_heading')) : ?>
		<h1>
			<?php if ($this->escape($this->params->get('page_heading'))) : ?>
				<?php echo $this->escape($this->params->get('page_heading')); ?>
			<?php else : ?>
				<?php echo $this->escape($this->params->get('page_title')); ?>
			<?php endif; ?>
		</h1>
	<?php endif; ?>
	<?php if ($this->params->get('show_search_form', 1)) : ?>
		<div id="search-form">
			<?php echo $this->loadTemplate('form'); ?>
		</div>
	<?php endif; ?>
	<?php // Load the search results layout if we are performing a search. ?>
	<?php if ($this->query->search === true) : ?>
		<div id="search-results">
			<?php echo $this->loadTemplate('results'); ?>
		</div>
	<?php endif; ?>
</div>

<!-- GEM custom -->
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
            if($count_results != 0){
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
		if (!empty($results_term)) {
		foreach($results_term as $rows){ 
	?>
		<div class="col-md-4">
		  <h2><a class="tit-term" style="" href="terms/<?php echo $rows->alias; ?>"><span class="icon-arrow-right"></span> <?php echo ucfirst($rows->title); ?></a></h2>
		</div>
	<?php 
		}
        }else{
			echo '<span style="font-weight: 700;">No term this</span>';
		}
	?>
