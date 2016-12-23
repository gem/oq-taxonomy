<?php
/**
 * @package COM_JOOMGLOSSARY for Joomla!
 * @version $Id: default.php 1.0.0 2015-12-24 12:00:00
 * @author Terry W. Carter
 * @copyright (C) 2015 - Terry W. Carter
 * @license GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html
**/

//NO DIRECT ACCESS
defined( '_JEXEC' ) or die( 'Restricted access' );

//LOAD TOOLTIP BEHAVIOR
JHtml::_( 'behavior.tooltip' );

//SET SORTING VARIABLES
$listOrder	= $this->escape($this->get('list.ordering'));
$listDirn	= $this->escape($this->get('list.direction'));
$saveOrder	= $listOrder == 'ordering';
?>
<form action="<?php echo JRoute::_('index.php?option=com_joomglossary&view=categories'); ?>" method="post" name="adminForm" id="adminForm">
	<div id="filter-bar" class="btn-toolbar">
		<div class="filter-search btn-group pull-left">
			<label class="filter-search-lbl" for="filter_search" style="padding-right:10px;"><?php echo JText::_( 'COM_JOOMGLOSSARY_FILTER_FIELD_LABEL' ); ?>
			<input type="text" name="filter_search" id="filter_search" value="<?php echo $this->escape( $this->get( 'filter.search' ) ); ?>" title="<?php echo JText::_( 'COM_JOOMGLOSSARY_FILTER_FIELD_TITLE' ); ?>" /></label>
        </div>
        <div class="btn-group pull-left">
			<button class="btn tip" type="submit" title="Search"><i class="icon-search"></i></button>
			<button class="btn tip" type="button" title="Clear" onclick="document.id('filter_search').value='';this.form.submit();"><i class="icon-remove"></i></button>
		</div>
	</div>
	<div class="clearfix"></div>
	<table class="table table-striped">
    	<thead>
    		<th class="left"><strong><?php echo JText::_( '' ); ?></strong></th>
    		<th class="left"><strong><?php echo JText::_( 'COM_JOOMGLOSSARY_VIEW_CATEGORIES_HEADING_CATNAME' ); ?></strong></th>
            <th class="left"><strong><?php echo JText::_( 'COM_JOOMGLOSSARY_VIEW_CATEGORIES_HEADING_CATID' ); ?></strong></th>
            <th class="left"><strong><?php echo JText::_( 'COM_JOOMGLOSSARY_VIEW_CATEGORIES_HEADING_CATDESC' ); ?></strong></th>
        	<th class="left"><strong><?php echo JText::_( 'COM_JOOMGLOSSARY_VIEW_CATEGORIES_HEADING_PUBLISHED' ); ?></strong></th>
    	</thead>
        <tfoot>
			<tr>
				<td colspan="5"><?php echo $this->pagination->getListFooter();?></td>
			</tr>
		</tfoot>
        <tbody>
		<?php foreach( $this->items as $i => $item ): ?>
		<tr class="row<?php echo $i % 2; ?>">
			<td>
				<?php echo JHtml::_( 'grid.id', $i, $item->id ); ?>
			</td>
			<td>
				<?php echo $item->catname; ?>
			</td>
            <td>
				<?php echo $item->id; ?>
			</td>
            <td>
				<?php echo strip_tags($item->catdesc); ?>
			</td>
			<td>
				<?php echo JHtml::_('jgrid.published', $item->published, $i, 'categories.', true); ?>
			</td>
		</tr>
		<?php endforeach; ?>
        </tbody>
	</table>
<div>
	<input type="hidden" name="task" value="" />
	<input type="hidden" name="boxchecked" value="0" />
	<input type="hidden" name="filter_order" value="<?php echo $listOrder; ?>" />
	<input type="hidden" name="filter_order_Dir" value="<?php echo $listDirn; ?>" />
	<?php echo JHtml::_('form.token'); ?>
</div>
</form>