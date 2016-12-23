<?php
/**
 * @version        1.0.0
 * @package        EasyTab System Plugin
 * @author         Vu Mai - http://www.joomtech.net/
 * @copyright      Copyright (c) 2016 JoomTech. All rights reserved.
 * @license        http://www.gnu.org/licenses/gpl-3.0.html GNU/GPL
 */
defined('_JEXEC') or die;
extract($displayData);
JHtml::_('jtui.component', 'accordion');
?>
<div class="jtui-tab slide">
	<div id="<?php echo $tabId; ?>" class="jt-accordion" data-jt-accordion>
		<?php foreach ($tabs as $tab): ?>
			<div class="jt-accordion-title">
				<?php echo $tab['title']; ?>
			</div>
			<div class="jt-accordion-content">
				<?php echo $tab['content']; ?>
			</div>
		<?php endforeach; ?>
	</div>
</div>
