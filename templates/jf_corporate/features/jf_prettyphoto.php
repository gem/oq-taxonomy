<?php
/**
* @version		JF_DTF_078
* @author		JoomForest http://www.joomforest.com
* @copyright	Copyright (C) 2011-2016 JoomForest.com
* @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
*/

defined('JPATH_BASE') or die();
gantry_import('core.gantryfeature');

class GantryFeatureJf_PrettyPhoto extends GantryFeature {
    var $_feature_name = 'jf_prettyphoto';

	function init() {
		global $gantry, $option;

		if ($this->get('enabled')) {
		
			$version = new JVersion;$joomla = $version->getShortVersion();if(substr($joomla,0,3) > '2.5'){JHtml::_('jquery.framework');}
			
			$jf_doc = JFactory::getDocument();
			$getapp = JFactory::getApplication();
			$template = $getapp->getTemplate();
			$jf_template_dir = JURI::base().'templates/'.$template;
			
			$jf_pp_theme			= $this->get('jf_pp_theme');
			$jf_pp_bgopacity 		= $this->get('jf_pp_bgopacity');
			$jf_pp_slidespeed		= $this->get('jf_pp_slidespeed');
			$jf_pp_share			= $this->get('jf_pp_share');
			if ($jf_pp_share == 'off') {
				$jf_pp_share_value		= ',social_tools:false';
			} else {
				$jf_pp_share_value		= '/* turned on share mode */';
			}
			
			$jf_doc->addStyleSheet($jf_template_dir.'/features/jf_prettyphoto/css/prettyPhoto.min.css');
			$jf_doc->addScript($jf_template_dir.'/features/jf_prettyphoto/jquery.prettyPhoto.min.js');
			$gantry->addInlineScript('
				jQuery(document).ready(function($){
					$("a[rel^=\'prettyPhoto\']").prettyPhoto({
						theme: "'.$jf_pp_theme.'", /* pp_default / light_rounded / dark_rounded / light_square / dark_square / facebook */
						opacity: '.$jf_pp_bgopacity.''.$jf_pp_share_value.'
					});
					$("a[rel^=\'prettyPhoto\[pp_gal_slide\]\']").prettyPhoto({
						theme: "'.$jf_pp_theme.'", /* pp_default / light_rounded / dark_rounded / light_square / dark_square / facebook */
						autoplay_slideshow: true,
						slideshow: '.$jf_pp_slidespeed.',
						opacity: '.$jf_pp_bgopacity.''.$jf_pp_share_value.'
					});
				});
			');
			
		}
		
    }

	function isOrderable() {
		return false;
	}

}