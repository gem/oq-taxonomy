<?php
/**
 * @package     JTFramework
 * @Author      Mai Vu - joomtech.net
 * @copyright   Copyright (C) 2016 All Rights Reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE
 */
defined('_JEXEC') or die;
extract($displayData);
?>
<input type="text" id="<?php echo $id; ?>" class="<?php echo $class; ?>"
       data-jt-datepicker="{format:'<?php echo $format; ?>'}">