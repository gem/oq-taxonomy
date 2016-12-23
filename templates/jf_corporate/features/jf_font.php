<?php
/**
* @version		JF_DTF_078
* @author		JoomForest http://www.joomforest.com
* @copyright	Copyright (C) 2011-2016 JoomForest.com
* @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
*/

defined('JPATH_BASE') or die();
gantry_import('core.gantryfeature');

class GantryFeatureJf_Font extends GantryFeature {
    var $_feature_name = 'jf_font';

	function init() {
		global $gantry, $option;

		if ($this->get('enabled')) {
			
			$jf_font_tags		= $this->get('jf_font_tags');
			$jf_font_family 	= $this->get('jf_font_family');
			
			$gantry->addInlineStyle("".$jf_font_tags."{font-family:".$jf_font_family."}");
			
		}
		
    }

	function isOrderable() {
		return false;
	}

}