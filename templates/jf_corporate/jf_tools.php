<?php
/**
* @version		JF_DTF_078
* @author		JoomForest http://www.joomforest.com
* @copyright	Copyright (C) 2011-2016 JoomForest.com
* @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
*/

// no direct access
defined( '_JEXEC' ) or die( 'Restricted index access' );

// ini_set('display_errors', 'On');
// error_reporting(E_ALL | E_STRICT);
$version = new JVersion;$joomla = $version->getShortVersion();if(substr($joomla,0,3) > '2.5'){JHtml::_('jquery.framework');}

$jf_doc = JFactory::getDocument();
$jf_getapp = JFactory::getApplication();
$jf_template = $jf_getapp->getTemplate();
$jf_template_dir = JURI::base().'templates/'.$jf_template;


/* ////////////////////////////////////////// -------- START: LOAD STYLESHEETS -------------//////////////////////////////////////// */
	/* START JF TYPO --------------------------------------------------------------------- */
		/* START CSS CORE Bootstrap --------------------------------------------------------------------- */
			if ($gantry->get('jf_typo_bootstrap')){
				$gantry->addLess('bootstrap.less', 'bootstrap.css', 6);
			}
		/* END CSS CORE Bootstrap --------------------------------------------------------------------- */
		/* START JF TYPO LESS --------------------------------------------------------------------- */
			$gantry->addLess('jf_typo_00_base.less');
			if ($gantry->get('jf_typo_01_core')){
				$gantry->addLess('jf_typo_01_core.less');
			}
			if ($gantry->get('jf_typo_02_accordions')){
				$gantry->addLess('jf_typo_02_accordions.less');
				$gantry->addInlineScript('
					jQuery(document).ready(function($){
						// Set default open/close settings
						$(".jf_typo_accord .trigger:first").addClass("active").next().show(); //Add "active" class to first trigger, then show/open the immediate next containe
						// On Click
						$(".jf_typo_accord .trigger").click(function(){
							if( $(this).next().is(":hidden") ) { //If immediate next container is closed...
								$(".jf_typo_accord .trigger").removeClass("active").next().slideUp("fast"); //Remove all .active classes and slide up the immediate next container
								$(this).toggleClass("active").next().slideDown("fast"); //Add .active class to clicked trigger and slide down the immediate next container
							}
							return false; //Prevent the browser jump to the link anchor
						});
					});
				');
			}
			if ($gantry->get('jf_typo_03_toggles')){
				$gantry->addLess('jf_typo_03_toggles.less');
				$gantry->addInlineScript('
					jQuery(document).ready(function($){
						$(".jf_typo_toggle .trigger").click(function(){
							$(this).toggleClass("active").next().slideToggle("fast");
						});
					});
				');
			}
			if ($gantry->get('jf_typo_04_pricing_tables'))		$gantry->addLess('jf_typo_04_pricing_tables.less');
			if ($gantry->get('jf_typo_05_image_video_frames')) 	$gantry->addLess('jf_typo_05_image_video_frames.less');
			if ($gantry->get('jf_typo_06_social_icons')){		$gantry->addLess('jf_typo_06_social_icons.less');}
			if ($gantry->get('jf_typo_bs_tooltips_31')){		
				$gantry->addLess('jf_typo_bs_tooltips_31.less');
				$jf_doc->addScript($jf_template_dir.'/js/jf/jf_typo_bs_tooltips_v31.min.js');
				$gantry->addInlineScript('
					jQuery(document).ready(function($){
						$("[data-toggle=\'tooltip\']").tooltip({container:"body"});
					});
				');
			}
		/* END JF TYPO LESS --------------------------------------------------------------------- */
		/* START - CUSTOM STYLESHEET --------------------------------------------------------------------- */
			$gantry->addStyle('jf_custom.css');
		/* END   - CUSTOM STYLESHEET --------------------------------------------------------------------- */
	/* END JF TYPO --------------------------------------------------------------------- */
/* ////////////////////////////////////////// -------- END: LOAD STYLESHEETS -------------//////////////////////////////////////// */



/* ////////////////////////////////////////// -------- START: LOAD JAVASCRIPTS -------------//////////////////////////////////////// */
	/* START jQuery SIDE --------------------------------------------------------------------- */
	
		/* START jQuery Easing --------------------------------------------------------------------- */
			if ($gantry->get('jf_jquery_easing')){
				$jf_doc->addScript($jf_template_dir.'/js/jf/jquery.easing.min.js');
			}
		/* END jQuery Easing ------------------------------------------------------------------- */
		
		/* START JF - Core Script --------------------------------------------------------------------- */
			$jf_doc->addScript($jf_template_dir.'/js/jf/jf.min.js');
		/* END JF - Core Script --------------------------------------------------------------------- */
	
	/* END jQuery SIDE --------------------------------------------------------------------- */
/* ////////////////////////////////////////// -------- END: LOAD JAVASCRIPTS -------------//////////////////////////////////////// */
