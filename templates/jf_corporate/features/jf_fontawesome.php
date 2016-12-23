<?php
/**
* @version		JF_DTF_078
* @author		JoomForest http://www.joomforest.com
* @copyright	Copyright (C) 2011-2016 JoomForest.com
* @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
*/

defined('JPATH_BASE') or die();
gantry_import('core.gantryfeature');

class GantryFeatureJf_FontAwesome extends GantryFeature {
    var $_feature_name = 'jf_fontawesome';

	function init() {
		global $gantry, $option;

		if ($this->get('enabled')) {
			
			$jf_fontawesome_cdn		= $this->get('jf_fontawesome_cdn');
			
            $gantry->addStyle(''.$jf_fontawesome_cdn.'');
			$gantry->addInlineStyle('ul.jf_fa{list-style:none;margin:0;padding:0}ul.jf_fa li{position:relative;line-height:25px;padding:0;margin:0;color:inherit;border:0;background:0;text-shadow:none;-webkit-border-radius:0;-moz-border-radius:0;border-radius:0}ul.jf_fa li i{color:#222;font-size:14px;width:17px;display:inline-block;text-align:center}ul.jf_fa,ul.jf_fa li{padding-left:0}');
		}
		
    }

	function isOrderable() {
		return false;
	}

}