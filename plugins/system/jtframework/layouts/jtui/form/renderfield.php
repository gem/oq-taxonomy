<?php
/**
 * @package     JTFramework
 * @Author      Mai Vu - joomtech.net
 * @copyright   Copyright (C) 2016 All Rights Reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE
 */
defined('_JEXEC') or die;
extract($displayData);

if (!empty($options['showonEnabled']))
{
	JHtml::_('jquery.framework');
	JHtml::_('script', 'jui/cms.js', false, true);
}
$class = empty($options['class']) ? '' : ' ' . $options['class'];
$rel   = empty($options['rel']) ? '' : ' ' . $options['rel'];
?>
<div class="jt-form-row<?php echo $class; ?>"<?php echo $rel; ?>>
	<?php if (empty($options['hiddenLabel'])) : ?>
		<?php echo $label; ?>
	<?php endif; ?>
	<div class="jt-form-controls">
		<?php echo $input; ?>
	</div>
</div>
