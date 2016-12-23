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
?>
<div class="jtui-tab tab-right">
	<div class="jt-grid">
		<div class="jt-width-medium-1-4 jt-push-3-4">
			<ul class="jt-tab jt-tab-right" data-jt-switcher="{connect:'#<?php echo $tabId; ?>'}">
				<?php echo $tabTitle; ?>
			</ul>
		</div>
		<div class="jt-width-medium-3-4 jt-pull-1-4">
			<ul id="<?php echo $tabId; ?>" class="jt-switcher jt-margin-top">
				<?php echo $tabContent; ?>
			</ul>
		</div>
	</div>
</div>