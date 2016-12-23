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
extract($displayData);
?>
<a
	href="#jt-easysef-modal"
	class="jt-button jt-button-small jt-alert jt-alert-success"
	data-jt-modal
	style="position:fixed;top:48%;right:10px;padding:0">
	<div style="width:35px;text-align:center">
		<i class="jt-icon-line-chart"></i>
		<?php echo JText::_('COM_EASYSEF'); ?>
	</div>
</a>
<div id="jt-easysef-modal" class="jt-modal">
	<form
		action="<?php echo JRoute::_('index.php?option=com_easysef&task=sef.save&id=' . (int) $form->getValue('id'), false); ?>"
		method="post" name="adminForm" id="item-form" class="form-validate">
		<div class="jt-modal-dialog">
			<div class="jt-modal-header jt-clearfix">
				<div class="jt-form jt-navbar-flip">
					<button type="submit" class="jt-button jt-button-small jt-button-primary">
						<i class="jt-icon-floppy-o"></i>
						<?php echo JText::_('COM_EASYSEF_BUTTON_APPLY'); ?>
					</button>
					<button type="button" class="jt-button jt-button-small jt-button-danger jt-modal-close">
						<i class="jt-icon-times-circle"></i>
						<?php echo JText::_('COM_EASYSEF_BUTTON_CLOSE'); ?>
					</button>
				</div>
			</div>
			<div class="jt-form">
				<?php JHtml::_('jtui.addTab', JText::_('COM_EASYSEF_DETAILS_LABEL'), 'info-circle'); ?>
				<div class="jt-grid" data-jt-margin>
					<?php foreach ($form->getFieldset('details') as $field): ?>
						<div class="jt-width-medium-1-3">
							<label class="jt-form-label" for="<?php echo $field->id; ?>">
								<?php echo $field->label; ?>
							</label>
						</div>
						<div class="jt-width-medium-2-3">
							<?php echo $field->input; ?>
						</div>
					<?php endforeach; ?>
					<?php foreach ($form->getFieldset('metadata') as $field): ?>
						<div class="jt-width-medium-1-3">
							<label class="jt-form-label" for="<?php echo $field->id; ?>">
								<?php echo $field->label; ?>
							</label>
						</div>
						<div class="jt-width-medium-2-3">
							<?php echo $field->input; ?>
						</div>
					<?php endforeach; ?>
				</div>
				<?php JHtml::_('jtui.endTab'); ?>
				<?php JHtml::_('jtui.addTab', JText::_('COM_EASYSEF_OPEN_GRAPH_LABEL'), 'share-square'); ?>
				<div class="jt-alert" data-jt-margin>
					This feature only work for pro version. Become a <a href="http://www.joomtech.net" target="_blank">JoomTech</a> subscriber to use it.
				</div>
				<?php JHtml::_('jtui.endTab'); ?>
				<?php echo JHtml::_('jtui.renderTab'); ?>
			</div>
		</div>
		<input type="hidden" name="return"
		       value="<?php echo base64_encode(JUri::getInstance()->toString(['path', 'query'])); ?>"/>
		<?php echo JHtml::_('form.token'); ?>
	</form>
</div>