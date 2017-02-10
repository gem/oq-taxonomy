<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_finder
 *
 * @copyright   Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */
defined('_JEXEC') or die;

JHtml::_('behavior.core');
JHtml::_('formbehavior.chosen');
JHtml::addIncludePath(JPATH_COMPONENT . '/helpers/html');
JHtml::stylesheet('com_finder/finder.css', false, true, false);

$db =& JFactory::getDBO();
$sql = "SELECT * FROM `category` ORDER BY cat ASC";
$db->setQuery($sql);
$results = $db->loadObjectList();

if (isset($_GET['cat']))
	$namee = $_GET['cat'];
else
	$namee = 'a';


$sql_term = "SELECT * FROM `taxonomy_content` where title like '$namee%' and catid = '8' and state = '1' ORDER BY title ASC ";
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
<?php endif;

// Load the search results layout if we are performing a search.
if ($this->query->search === true):
?>
	<div id="search-results">
		<?php echo $this->loadTemplate('results'); ?>
	</div>
<?php endif; ?>
</div>
	<div class="term-let">
	<?php 
       foreach($results as $rows) {
           //control if exist terms with specific cat
           $cat = $rows->cat;
           //$sql_term_id = sprintf("SELECT * FROM `taxonomy_content` where title like '%s%%' and catid = '8' and state = '1' ",
           //                        $db->quote($cat));
           $sql_term_id = "SELECT * FROM `taxonomy_content` where title like '$cat%' and catid = '8' and state = '1' ";
           $db->setQuery($sql_term_id);
           $count_results_term = $db->loadObjectList();
           $db->query($sql_term_id);
           $count_results = $db->getNumRows();
           if($count_results == '0'){
               echo '<style>.m'.$cat.'{display:none;}</style>';
           } 
    ?>
        <a class="let-cat" href="<?php echo $this->baseurl; ?>/?cat=<?php echo $cat; ?>">
		<div class="div-let-cat <?php printf("%s%s", "m$cat", ($namee == $cat ? ' let-selected' : '')); ?>">
			<?php echo ucfirst($cat); ?>
		</div>
        </a>
	<?php 
       }// end foreach
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
