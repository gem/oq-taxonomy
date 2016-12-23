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
JHtml::_('bootstrap.tooltip');
JHtml::_('behavior.multiselect');
JHtml::_('formbehavior.chosen', 'select');

$app       = JFactory::getApplication();
$user      = JFactory::getUser();
$userId    = $user->get('id');
$listOrder = $this->escape($this->state->get('list.ordering'));
$listDirn  = $this->escape($this->state->get('list.direction'));
?>

<form action="<?php echo JRoute::_('index.php?option=com_easysef&view=sefs', false); ?>" method="post" name="adminForm"
      id="adminForm">
	<div id="j-main-container">
		<?php echo JLayoutHelper::render('joomla.searchtools.default', array('view' => $this)); ?>
		<?php if (empty($this->items)) : ?>
			<div class="jt-alert jt-alert-warning" data-jt-alert>
				<a href="" class="jt-alert-close jt-close"></a>
				<?php echo JText::_('JGLOBAL_NO_MATCHING_RESULTS'); ?>
			</div>
		<?php else : ?>
			<table class="jt-table jt-table-striped" id="sefList">
				<thead>
				<tr>
					<th width="1%" class="center">
						<?php echo JHtml::_('grid.checkall'); ?>
					</th>
					<th width="1%" style="min-width:55px" class="nowrap center">
						<?php echo JHtml::_('searchtools.sort', 'JSTATUS', 'a.state', $listDirn, $listOrder); ?>
					</th>
					<th width="25%">
						<?php echo JHtml::_('searchtools.sort', 'COM_EASYSEF_ORIGIN_LABEL', 'a.origin', $listDirn, $listOrder); ?>
					</th>
					<th width="25%">
						<?php echo JHtml::_('searchtools.sort', 'COM_EASYSEF_SEF_LABEL', 'a.sef', $listDirn, $listOrder); ?>
					</th>
					<th width="10%" class="nowrap jt-hidden-small">
						<?php echo JHtml::_('searchtools.sort', 'COM_EASYSEF_META_TITLE_LABEL', 'a.meta_title', $listDirn, $listOrder); ?>
					</th>
					<th class="nowrap jt-hidden-small">
						<?php echo JHtml::_('searchtools.sort', 'COM_EASYSEF_META_KEY_LABEL', 'a.meta_key', $listDirn, $listOrder); ?>
					</th>
					<th class="nowrap jt-hidden-small">
						<?php echo JHtml::_('searchtools.sort', 'COM_EASYSEF_META_DESC_LABEL', 'a.meta_desc', $listDirn, $listOrder); ?>
					</th>

					<th width="1%" class="nowrap jt-hidden-small">
						<?php echo JHtml::_('searchtools.sort', 'JGRID_HEADING_ID', 'a.id', $listDirn, $listOrder); ?>
					</th>
				</tr>
				</thead>
				<tbody>
				<?php foreach ($this->items as $i => $item) :
					$canCheckin = $user->authorise('core.manage', 'com_checkin') || $item->checked_out == $userId || $item->checked_out == 0;
					$canChange = $user->authorise('core.edit', 'com_easysef.sef.' . $item->id) && $canCheckin;
					EasySefHelper::parseUrl($item);
					?>
					<tr class="row<?php echo $i % 2; ?>">
						<td class="center">
							<?php echo JHtml::_('grid.id', $i, $item->id); ?>
						</td>
						<td class="center">
							<?php echo JHtml::_('jgrid.published', $item->state, $i, 'sefs.', $canChange, 'cb'); ?>
						</td>
						<td class="has-context">
							<?php if ($item->checked_out) : ?>
								<?php echo JHtml::_('jgrid.checkedout', $i, $item->editor, $item->checked_out_time, 'sefs.', $canCheckin); ?>
							<?php endif; ?>
							<?php if ($canChange) : ?>
								<a class="hasTooltip"
								   href="<?php echo JRoute::_('index.php?option=com_easysef&task=sef.edit&id=' . $item->id); ?>"
								   title="<?php echo JText::_('JACTION_EDIT'); ?>">
									<?php echo $this->escape($item->origin); ?>
								</a>
							<?php else : ?>
								<?php echo $this->escape($item->origin); ?>
							<?php endif; ?>
						</td>
						<td class="has-context">
							<?php if (!empty($item->sef)): ?>
								<?php if ($item->state): ?>
									<a href="<?php echo $item->sef; ?>" target="_blank">
										<?php echo $this->escape($item->sef); ?>
									</a>
								<?php else: ?>
									<?php echo $this->escape($item->sef); ?>
								<?php endif; ?>
							<?php endif; ?>
						</td>
						<td class="jt-hidden-small">
							<?php echo $this->escape($item->meta_title); ?>
						</td>
						<td class="jt-hidden-small">
							<?php echo $this->escape($item->meta_key); ?>
						</td>
						<td class="jt-hidden-small">
							<?php echo $this->escape($item->meta_desc); ?>
						</td>
						<td class="jt-hidden-small">
							<?php echo (int) $item->id; ?>
						</td>
					</tr>
				<?php endforeach; ?>
				</tbody>
			</table>
			<?php echo $this->pagination->getListFooter(); ?>
		<?php endif; ?>
		<input type="hidden" name="task" value=""/>
		<input type="hidden" name="boxchecked" value="0"/>
		<?php echo JHtml::_('form.token'); ?>
	</div>
</form>