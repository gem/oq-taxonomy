<?php
/**
* @version		JF_DTF_078
* @author		JoomForest http://www.joomforest.com
* @copyright	Copyright (C) 2011-2016 JoomForest.com
* @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
*/

defined('JPATH_BASE') or die();
gantry_import('core.gantryfeature');

class GantryFeatureJf_ScrollTop extends GantryFeature {
	var $_feature_name = 'jf_scrolltop';

	function init() {
		/** @var $gantry Gantry */
		global $gantry;

		if ($this->get('enabled')) {
		
			$version = new JVersion;$joomla = $version->getShortVersion();if(substr($joomla,0,3) > '2.5'){JHtml::_('jquery.framework');}
			
			// CALL FUNCTION
				$gantry->addInlineScript('
					jQuery(document).ready(function($){
						function showJFScrollTop() {
							if ($(window).scrollTop() > 350 && $("#jf_scrolltop").data("positioned") == "false") {
								$("#jf_scrolltop").animate({"bottom":"20px"}).data("positioned", "true");
							} else if ($(window).scrollTop() <= 350 && $("#jf_scrolltop").data("positioned") == "true") {
								$("#jf_scrolltop").animate({"bottom":"-40px"}).data("positioned","false");
							}
						}
						$(window).scroll(showJFScrollTop);
						$("#jf_scrolltop").data("positioned","false");
						$("#jf_scrolltop").click(function(){
							$("html,body").animate({scrollTop:0},500);
							return false;
						});
					});
				');
					
		}
	}

	function render($position) {
		ob_start();
	?>
		<div id="jf_scrolltop"><i class="fa fa-angle-up"></i></div>
	<?php
		return ob_get_clean();
	}
}