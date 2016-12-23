<?php
/**
 * @version        1.0.0
 * @package        EasySef
 * @author         Vu Mai - http://www.joomtech.net/
 * @copyright      Copyright (c) 2016 JoomTech. All rights reserved.
 * @license        GNU General Public License, version 3
 */
// no direct access
defined('_JEXEC') or die;
JHtml::_('jtui.framework');
JHtml::_('behavior.formvalidator');
JHtml::_('behavior.keepalive');
JFactory::getDocument()->addScriptDeclaration('
	Joomla.submitbutton = function(task)
	{
		if (task == "sef.cancel" || document.formvalidator.isValid(document.getElementById("item-form")))
		{
			Joomla.submitform(task, document.getElementById("item-form"));
		}
	};
');
$input = JFactory::getApplication()->input;
?>

<form
	action="<?php echo JRoute::_('index.php?option=com_easysef&layout=edit&id=' . (int) $this->item->id, false); ?>"
	method="post" name="adminForm" id="item-form" class="form-validate">
	<div class="form-horizontal">
		<?php JHtml::_('jtui.addTab', JText::_('COM_EASYSEF_DETAILS_LABEL'), 'info-circle'); ?>
		<?php foreach ($this->form->getFieldset('details') as $field): ?>
			<?php echo $field->renderField(); ?>
		<?php endforeach; ?>
		<?php foreach ($this->form->getFieldset('metadata') as $field): ?>
			<?php echo $field->renderField(); ?>
		<?php endforeach; ?>
		<?php JHtml::_('jtui.endTab'); ?>
		<?php JHtml::_('jtui.addTab', JText::_('COM_EASYSEF_OPEN_GRAPH_LABEL'), 'share-square'); ?>
		<?php foreach ($this->form->getFieldset('openGraph') as $field): ?>
			<?php echo $field->renderField(); ?>
		<?php endforeach; ?>
		<?php JHtml::_('jtui.endTab'); ?>
		<?php echo JHtml::_('jtui.renderTab'); ?>
	</div>
	<input type="hidden" name="task" value=""/>
	<input type="hidden" name="return" value="<?php echo $input->getCmd('return'); ?>"/>
	<?php echo JHtml::_('form.token'); ?>
	</div>
</form>
