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
?>
<form action="<?php echo JRoute::_('index.php?option=com_joomglossary&view=csvimport');?>" method="post" name="adminForm" id="adminForm" enctype="multipart/form-data">
<p><?php echo JText::_('COM_JOOMGLOSSARY_CSVIMPORT_INSTRUCTIONS');?></p>
<div>
	<input type="file" id="csvfile" name="fileinput" class="button" />
</div>

<div>
	<input type="hidden" name="task" value="" />
	<?php echo JHtml::_('form.token'); ?>
</div>
</form>