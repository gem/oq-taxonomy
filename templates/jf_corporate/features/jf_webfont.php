<?php
/**
* @version		JF_DTF_078
* @author		JoomForest http://www.joomforest.com
* @copyright	Copyright (C) 2011-2016 JoomForest.com
* @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
*/

defined('JPATH_BASE') or die();
gantry_import('core.gantryfeature');

class GantryFeatureJf_WebFont extends GantryFeature {
    var $_feature_name = 'jf_webfont';

	function init() {
		global $gantry, $option;

		if ($this->get('enabled')) {
			
			$jf_webfont_stylesheet	= $this->get('jf_webfont_stylesheet');
			$jf_webfont_tags		= $this->get('jf_webfont_tags');
			$jf_webfont_family 		= $this->get('jf_webfont_family');
			
            $gantry->addStyle(''.$jf_webfont_stylesheet.'');
			$gantry->addInlineStyle("".$jf_webfont_tags."{font-family:".$jf_webfont_family."}");
			
		}
		
    }

	function isOrderable() {
		return false;
	}

}