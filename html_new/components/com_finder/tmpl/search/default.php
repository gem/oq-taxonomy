<?php

/**
 * @package     Joomla.Site
 * @subpackage  com_finder
 *
 * @copyright   (C) 2011 Open Source Matters, Inc. <https://www.joomla.org>
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

$this->document->getWebAssetManager()
    ->useStyle('com_finder.finder')
    ->useScript('com_finder.finder');

//GEM custom
// Get a db connection.
$db = JFactory::getDbo();

// Create a new query object.
$query = $db->getQuery(true);

$query->select('*')
      ->from($db->quoteName('category'))
      ->order($db->quoteName('id') . ' ASC'); 

$db->setQuery($query);
$results = $db->loadObjectList();

if (isset($_GET['cat']))
        $namee = $_GET['cat'];
else
        $namee = 'a';
// echo $namee;

// Create a new query object.
$sql_term = $db->getQuery(true);

$sql_term->select('*')
      ->from($db->quoteName('taxonomy_content'))
      // ->where($db->quoteName('title') . $namee)
      ->where($db->quoteName('title') . ' like ' . $db->quote($namee . '%'))
      ->where($db->quoteName('catid') . ' = ' . $db->quote('8'))
      ->where($db->quoteName('state') . ' = ' . $db->quote('1'))
      ->order($db->quoteName('title') . ' ASC'); 
//$sql_term = sprintf("SELECT * FROM `taxonomy_content` where title like '%s%%' and catid = '8' and state = '1' ORDER BY title ASC ",
//$db->escape($namee));
$db->setQuery($sql_term);
$results_term = $db->loadObjectList();
echo $result_term; 
?>
<div class="com-finder finder">
    <?php if ($this->params->get('show_page_heading')) : ?>
        <h1>
            <?php if ($this->escape($this->params->get('page_heading'))) : ?>
                <?php echo $this->escape($this->params->get('page_heading')); ?>
            <?php else : ?>
                <?php echo $this->escape($this->params->get('page_title')); ?>
            <?php endif; ?>
        </h1>
    <?php endif; ?>
    <div id="search-form" class="com-finder__form">
        <?php echo $this->loadTemplate('form'); ?>
    </div>
    <?php // Load the search results layout if we are performing a search. ?>
    <?php if ($this->query->search === true) : ?>
        <div id="search-results" class="com-finder__results">
            <?php echo $this->loadTemplate('results'); ?>
        </div>
    <?php endif; ?>
</div>

<!-- GEM custom -->
<!--<div class="term-let">
        <?php
          # foreach($results as $rows){
          #   //control if exist terms with specific cat
          #   $cat = $rows->cat;
          #   $sql_term_id = sprintf("SELECT * FROM `taxonomy_content` where title like '%s%%' and catid = '8' and state = '1' ",
          #                          $db->escape($cat));
          #   $db->setQuery($sql_term_id);
          #   $count_results_term = $db->loadObjectList();
          #   $db->query($sql_term_id);
          #   $count_results = $db->getNumRows();
          #   if($count_results != 0){
          #       echo'
          #       <a class="let-cat m'.$cat.'" href="'.$this->baseurl.'/?cat='.$cat.'">
          #               <div class="div-let-cat">
          #                       '.ucfirst($cat).'
          #               </div>
          #       </a>';
          #   }
          # }
        ?>
    </div>
        <div style="clear:both;"></div>-->

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

