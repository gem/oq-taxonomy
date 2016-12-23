<?php
/**
 * @package     JTFramework
 * @Author      Mai Vu - joomtech.net
 * @copyright   Copyright (C) 2016 All Rights Reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE
 */
defined('_JEXEC') or die;
extract($displayData);

$classes = array_filter((array) $classes);
$id      = $for . '-lbl';
$title   = '';

if (!empty($description))
{
	$title = ' title="' . JHtml::tooltipText(trim($text, ':'), $description, 0) . '"';
}

if ($required)
{
	$classes[] = 'required';
}

$classes[] = 'jt-form-label';

?>
<label
	id="<?php echo $id; ?>"
	for="<?php echo $for; ?>"
	data-jt-tooltip
	class="<?php echo implode(' ', $classes); ?>"
	<?php echo $title; ?><?php echo $position; ?>>
	<?php echo $text; ?>
	<?php if ($required) : ?>
		<span class="star">&#160;*</span>
	<?php endif; ?>
</label>
