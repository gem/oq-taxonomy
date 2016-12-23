<?php
/**
* @version		JF_DTF_078
* @author		JoomForest http://www.joomforest.com
* @copyright	Copyright (C) 2011-2016 JoomForest.com
* @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
*/

defined('JPATH_BASE') or die();
gantry_import('core.gantryfeature');

class GantryFeatureJf_StyleSwitcher extends GantryFeature {
	var $_feature_name = 'jf_styleswitcher';

	function init() {
		/** @var $gantry Gantry */
		global $gantry;

		if ($this->get('enabled')) {
		
			$version = new JVersion;$joomla = $version->getShortVersion();if(substr($joomla,0,3) > '2.5'){JHtml::_('jquery.framework');}
			
			// CALL MAIN JOOMLA VARIABLES
				$jf_doc = JFactory::getDocument();
				$getapp = JFactory::getApplication();
				$jf_template = $getapp->getTemplate();
				$jf_template_dir = JURI::base().'templates/'.$jf_template;
				
			// CALL FEATURE
				$gantry->addLess('jf_features_style_switcher.less');
				$jf_doc->addScript($jf_template_dir.'/js/jf/jf_style_switcher.min.js');
		}
	}

	function render($position) {
		// CALL MAIN JOOMLA VARIABLES
			$jf_doc = JFactory::getDocument();
			$getapp = JFactory::getApplication();
			$jf_template = $getapp->getTemplate();
			$jf_template_dir = JURI::base().'templates/'.$jf_template;
		ob_start();
	?>
		<div id="jf_styleswitcher">
			<div class="jf_swtcher jf_tipsy_w" title="Choose Styles">
				<a class="jf_swtcher_btn" href="#"><i class="fa fa-chevron-up"></i></a>
				<div class="jf_swtcher_icon"><i class="fa fa-cogs"></i></div>
			</div>
			<div class="jf_style_tools">
				<div class="jf_style_tools_title">Colors</div>
				<ul class="jf_style_colors clearfix jf_tipsy_w" title="Select colors">
					<?php if (!$this->get('jf_styleswitcher_1') == "") { ?><li style="background:<?php echo $this->get('jf_styleswitcher_1_color'); ?>" class="" ><a href="<?php echo JURI::base(); ?><?php echo $this->get('jf_styleswitcher_1'); ?>"></a></li><?php } ?>
					<?php if (!$this->get('jf_styleswitcher_2') == "") { ?><li style="background:<?php echo $this->get('jf_styleswitcher_2_color'); ?>" class="" ><a href="<?php echo JURI::base(); ?><?php echo $this->get('jf_styleswitcher_2'); ?>"></a></li><?php } ?>
					<?php if (!$this->get('jf_styleswitcher_3') == "") { ?><li style="background:<?php echo $this->get('jf_styleswitcher_3_color'); ?>" class="" ><a href="<?php echo JURI::base(); ?><?php echo $this->get('jf_styleswitcher_3'); ?>"></a></li><?php } ?>
					<?php if (!$this->get('jf_styleswitcher_4') == "") { ?><li style="background:<?php echo $this->get('jf_styleswitcher_4_color'); ?>" class="" ><a href="<?php echo JURI::base(); ?><?php echo $this->get('jf_styleswitcher_4'); ?>"></a></li><?php } ?>
					<?php if (!$this->get('jf_styleswitcher_5') == "") { ?><li style="background:<?php echo $this->get('jf_styleswitcher_5_color'); ?>" class="" ><a href="<?php echo JURI::base(); ?><?php echo $this->get('jf_styleswitcher_5'); ?>"></a></li><?php } ?>
					<?php if (!$this->get('jf_styleswitcher_6') == "") { ?><li style="background:<?php echo $this->get('jf_styleswitcher_6_color'); ?>" class="" ><a href="<?php echo JURI::base(); ?><?php echo $this->get('jf_styleswitcher_6'); ?>"></a></li><?php } ?>
					<?php if (!$this->get('jf_styleswitcher_7') == "") { ?><li style="background:<?php echo $this->get('jf_styleswitcher_7_color'); ?>" class="" ><a href="<?php echo JURI::base(); ?><?php echo $this->get('jf_styleswitcher_7'); ?>"></a></li><?php } ?>
					<?php if (!$this->get('jf_styleswitcher_8') == "") { ?><li style="background:<?php echo $this->get('jf_styleswitcher_8_color'); ?>" class="" ><a href="<?php echo JURI::base(); ?><?php echo $this->get('jf_styleswitcher_8'); ?>"></a></li><?php } ?>
					<?php if (!$this->get('jf_styleswitcher_9') == "") { ?><li style="background:<?php echo $this->get('jf_styleswitcher_9_color'); ?>" class="" ><a href="<?php echo JURI::base(); ?><?php echo $this->get('jf_styleswitcher_9'); ?>"></a></li><?php } ?>
					<?php if (!$this->get('jf_styleswitcher_10') == "") { ?><li style="background:<?php echo $this->get('jf_styleswitcher_10_color'); ?>" class="" ><a href="<?php echo JURI::base(); ?><?php echo $this->get('jf_styleswitcher_10'); ?>"></a></li><?php } ?>
				</ul>
				<div class="jf_style_unlim jf_tipsy_nw" title="In AdminSide you can set any colors"><a href="#">Unlimited Colors</a><img src="<?php echo $jf_template_dir; ?>/images/jf/jf_features/jf_unlim_colors.jpg" alt="Unlimited Colors" width="290" height="214"></div>
			</div>
		</div>
	<?php
		return ob_get_clean();
	}
}