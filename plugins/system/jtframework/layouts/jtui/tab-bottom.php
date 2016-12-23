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
<div class="jtui-tab tab-bottom">
	<?php if (!empty($center)) echo '<div class="jt-tab-center jt-tab-center-bottom">'; ?>
	<ul class="jt-tab jt-tab-bottom<?php echo !empty($flip) ? ' jt-tab-flip' : ''; ?>"
	    data-jt-switcher="{connect:'#<?php echo $tabId; ?>'}">
		<?php echo $tabTitle; ?>
	</ul>
	<?php if (!empty($center)) echo '</div>'; ?>
	<ul id="<?php echo $tabId; ?>" class="jt-switcher jt-margin-top">
		<?php echo $tabContent; ?>
	</ul>
</div>
