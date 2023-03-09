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
<!-- end GEM custom -->

<div class="registration<?php echo $this->pageclass_sfx; ?>">
	<?php if ($this->params->get('show_page_heading')) : ?>
		<div class="page-header">
			<h1><?php echo $this->escape($this->params->get('page_heading')); ?></h1>
		</div>
	<?php endif; ?>
	<form id="member-registration" action="<?php echo JRoute::_('index.php?option=com_users&task=registration.register'); ?>" method="post" class="form-validate form-horizontal well" enctype="multipart/form-data">
		<?php // Iterate through the form fieldsets and display each one. ?>
		<?php foreach ($this->form->getFieldsets() as $fieldset) : ?>
			<?php $fields = $this->form->getFieldset($fieldset->name); ?>
			<?php if (count($fields)) : ?>
				<fieldset>
					<?php // If the fieldset has a label set, display it as the legend. ?>
					<?php if (isset($fieldset->label)) : ?>
						<legend><?php echo JText::_($fieldset->label); ?></legend>
					<?php endif; ?>
					<?php echo $this->form->renderFieldset($fieldset->name); ?>
				</fieldset>
			<?php endif; ?>
		<?php endforeach; ?>
		<div class="control-group">
			<div class="controls">
				<button type="submit" class="btn btn-primary validate">
					<?php echo JText::_('JREGISTER'); ?>
				</button>
				<a class="btn" href="<?php echo JRoute::_(''); ?>" title="<?php echo JText::_('JCANCEL'); ?>">
					<?php echo JText::_('JCANCEL'); ?>
				</a>
				<input type="hidden" name="option" value="com_users" />
				<input type="hidden" name="task" value="registration.register" />
			</div>
		</div>
		<?php echo JHtml::_('form.token'); ?>
	</form>
</div>
