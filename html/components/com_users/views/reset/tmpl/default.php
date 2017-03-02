<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_users
 *
 * @copyright   Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

JHtml::_('behavior.keepalive');
JHtml::_('behavior.formvalidator');

$db =& JFactory::getDBO();
$sql = "SELECT * FROM `category` ORDER BY id ASC ";
$db->setQuery($sql);
$results = $db->loadObjectList();
?>

<div class="term-let">
                <?php foreach($results as $rows){
            //control if exist terms with specific cat
            $cat = $rows->cat;
            $sql_term_id = sprintf("SELECT * FROM `taxonomy_content` where title like '%s%%' and catid = '8' and state = '1' ",
                                   $db->escape($cat));
            $db->setQuery($sql_term_id);
            $count_results_term = $db->loadObjectList();
            $db->query($sql_term_id);
            $count_results = $db->getNumRows();
            if($count_results == '0'){
                echo '<style>.m'.$cat.'{display:none;}</style>';
            }
        ?>
            <a class="let-cat m<?php echo $cat; ?>" href="<?php echo $this->baseurl; ?>/?cat=<?php echo $cat; ?>">
                        <div class="div-let-cat">
                                <?php echo ucfirst($cat); ?>
                        </div>
            </a>
                <?php } ?>
                </div>
<div style="clear:both;"></div>

<div class="reset<?php echo $this->pageclass_sfx?>">
        <?php if ($this->params->get('show_page_heading')) : ?>
        <div class="page-header">
                <h1>
                        <?php echo $this->escape($this->params->get('page_heading')); ?>
                </h1>
        </div>
        <?php endif; ?>
<form id="user-registration" action="<?php echo JRoute::_('index.php?option=com_users&task=reset.request'); ?>" method="post" class="form-validate form-horizontal well">
                <?php foreach ($this->form->getFieldsets() as $fieldset) : ?>
                        <fieldset>
                                <p><?php echo JText::_($fieldset->label); ?></p>
                                <?php foreach ($this->form->getFieldset($fieldset->name) as $name => $field) : ?>
                                        <div class="control-group">
                                                <div class="control-label">
                                                        <?php echo $field->label; ?>
                                                </div>
                                                <div class="controls">
                                                        <?php echo $field->input; ?>
                                                </div>
                                        </div>
                                <?php endforeach; ?>
                        </fieldset>
                <?php endforeach; ?>

                <div class="control-group">
                        <div class="controls">
                                <button type="submit" class="btn btn-primary validate"><?php echo JText::_('JSUBMIT'); ?></button>
                        </div>
                </div>
                <?php echo JHtml::_('form.token'); ?>
        </form>
</div>
