<?php
/**
 * @package COM_JOOMGLOSSARY for Joomla!
 * @version $Id: edit.php 1.0.0 2015-12-24 12:00:00
 * @author Terry W. Carter
 * @copyright (C) 2015 - Terry W. Carter
 * @license GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html
**/

//NO DIRECT ACCESS
defined( '_JEXEC' ) or die( 'Restricted access' );

//LOAD TOOLTIP AND VALIDATION
JHtml::_('behavior.tooltip');
JHtml::_('behavior.formvalidation');
?>
<form action="<?php echo JRoute::_('index.php?option=com_joomglossary&layout=edit&id='.(int) $this->item->id);?>" method="post" name="adminForm" id="adminForm" class="form-validate">
<fieldset class="adminform">
	<legend><?php echo JText::_( 'COM_JOOMGLOSSARY_CATEGORY_DETAILS' ); ?></legend>
	<?php foreach($this->form->getFieldset() as $field): ?>
        <?php if (!$field->hidden): ?>
			<?php echo $field->label; ?>
        <?php endif; ?>
        <?php echo $field->input; ?>
	<?php endforeach; ?>
</fieldset>
<div>
	<input type="hidden" name="task" value="category.edit" />
	<?php echo JHtml::_('form.token'); ?>
</div>
</form>