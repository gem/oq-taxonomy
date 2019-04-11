<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_users
 *
 * @copyright   Copyright (C) 2005 - 2019 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

JHtml::_('behavior.keepalive');
JHtml::_('behavior.formvalidator');

// GEM custom
$db =& JFactory::getDBO();
$sql = "SELECT * FROM `category` ORDER BY id ASC ";
$db->setQuery($sql);
$results = $db->loadObjectList();
?>

<!-- GEM custom -->
<style>
.term-let {
    top: 245px;
}
</style>
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
<!--  end GEM custom -->

<div class="reset<?php echo $this->pageclass_sfx; ?>">
	<?php if ($this->params->get('show_page_heading')) : ?>
		<div class="page-header">
			<h1>
				<?php echo $this->escape($this->params->get('page_heading')); ?>
			</h1>
		</div>
	<?php endif; ?>
	<form id="user-registration" action="<?php echo JRoute::_('index.php?option=com_users&task=reset.request'); ?>" method="post" class="form-validate form-horizontal well">
		<?php foreach ($this->form->getFieldsets() as $fieldset) : ?>
			<fieldset>
				<?php if (isset($fieldset->label)) : ?>
					<p><?php echo JText::_($fieldset->label); ?></p>
				<?php endif; ?>
				<?php echo $this->form->renderFieldset($fieldset->name); ?>
			</fieldset>
		<?php endforeach; ?>
		<div class="control-group">
			<div class="controls">
				<button type="submit" class="btn btn-primary validate">
					<?php echo JText::_('JSUBMIT'); ?>
				</button>
			</div>
		</div>
		<?php echo JHtml::_('form.token'); ?>
	</form>
</div>
