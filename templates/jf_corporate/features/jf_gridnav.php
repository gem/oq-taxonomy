<?php
/**
* @version		JF_DTF_078
* @author		JoomForest http://www.joomforest.com
* @copyright	Copyright (C) 2011-2016 JoomForest.com
* @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
*/

defined('JPATH_BASE') or die();
gantry_import('core.gantryfeature');

class GantryFeatureJf_GridNav extends GantryFeature {
    var $_feature_name = 'jf_gridnav';

	function init() {
		global $gantry, $option;

		if ($this->get('enabled')) {
		
			$version = new JVersion;$joomla = $version->getShortVersion();if(substr($joomla,0,3) > '2.5'){JHtml::_('jquery.framework');}
			
			$jf_doc = JFactory::getDocument();
			$getapp = JFactory::getApplication();
			$template = $getapp->getTemplate();
			$jf_template_dir = JURI::base().'templates/'.$template;
			
			$jf_GN_rows			= $this->get('jf_GN_rows');
			$jf_GN_anim			= $this->get('jf_GN_anim');
			$jf_GN_speed		= $this->get('jf_GN_speed');
			$jf_GN_reverse		= $this->get('jf_GN_reverse');
			
			$jf_doc->addStyleSheet($jf_template_dir.'/features/jf_gridnav/css/gridnav.min.css');
			$jf_doc->addScript($jf_template_dir.'/features/jf_gridnav/js/jquery.mousewheel.js');
			$jf_doc->addScript($jf_template_dir.'/features/jf_gridnav/js/jquery.gridnav_jf.js');
			
			$gantry->addInlineScript('	
				(function($){
					$.fn.jf_tj = function(options){
				 
						// This is the easiest way to have default options.
						var settings = $.extend({
							jf_tj_container		: "jf_tj_container",
							jf_VALUE_rows		: 2,
							jf_VALUE_anim		: "disperse",
							jf_VALUE_speed		: 400,
							jf_VALUE_factor		: 50,
							jf_VALUE_reverse	: false
						}, options);
				 
						return this.each(function() {   
							// GLOBAL VARIABLES
								var jf_tj					= $(this);
								
								var jf_tj_feature_wrapper	= $("#"+settings.jf_tj_container+"").parent(),
								tj_OG_HTML 				= jf_tj_feature_wrapper.html();
								
								$("#"+settings.jf_tj_container+"").gridnav({
									rows : settings.jf_VALUE_rows,
									type : {
										mode		: settings.jf_VALUE_anim,
										speed		: settings.jf_VALUE_speed,
										factor		: settings.jf_VALUE_factor,
										reverse		: settings.jf_VALUE_reverse
									}
								});

								var tj_Win_Resize_count = 0;
								$(window).resize(function(){
									// COUNT EACH RESIZE
										tj_Win_Resize_count++;
									// Removed slider
										$("#"+settings.jf_tj_container+"").remove();
									// Replaced wrapper with fresh HTNML
										jf_tj_feature_wrapper.html(tj_OG_HTML);
									// find itself slider
										var find_new_tj		= $("div[id*=\""+settings.jf_tj_container+"\"]");
									// replace this original code with unique ID
										find_new_tj.attr("id",""+settings.jf_tj_container+"-"+tj_Win_Resize_count);
									// CALL NEW SLIDE
										$("#"+settings.jf_tj_container+"-"+tj_Win_Resize_count).gridnav({
											rows : settings.jf_VALUE_rows,
											type : {
												mode		: settings.jf_VALUE_anim,
												speed		: settings.jf_VALUE_speed,
												factor		: settings.jf_VALUE_factor,
												reverse		: settings.jf_VALUE_reverse
											}
										});
										// alert("done");
									// alert(tj_OG_HTML);
									// alert(tj_Win_Resize_count);
								});
					
								
						});
				 
					};
				}(jQuery));

				(function($){$(window).load(function(){
					$("#jf_tj_container_def").jf_tj({
						jf_tj_container		: "jf_tj_container_def",
						jf_VALUE_rows		: '.$jf_GN_rows.',
						jf_VALUE_anim		: "def",
						jf_VALUE_speed		: '.$jf_GN_speed.',
						jf_VALUE_reverse	: '.$jf_GN_reverse.'
					});
					$("#jf_tj_container_fade").jf_tj({
						jf_tj_container		: "jf_tj_container_fade",
						jf_VALUE_rows		: '.$jf_GN_rows.',
						jf_VALUE_anim		: "fade",
						jf_VALUE_speed		: '.$jf_GN_speed.',
						jf_VALUE_reverse	: '.$jf_GN_reverse.'
					});
					$("#jf_tj_container_seqfade").jf_tj({
						jf_tj_container		: "jf_tj_container_seqfade",
						jf_VALUE_rows		: '.$jf_GN_rows.',
						jf_VALUE_anim		: "seqfade",
						jf_VALUE_speed		: '.$jf_GN_speed.',
						jf_VALUE_factor		: 100,			// for seqfade, sequpdown, rows
						jf_VALUE_reverse	: '.$jf_GN_reverse.'
					});
					$("#jf_tj_container_updown").jf_tj({
						jf_tj_container		: "jf_tj_container_updown",
						jf_VALUE_rows		: '.$jf_GN_rows.',
						jf_VALUE_anim		: "updown",
						jf_VALUE_speed		: '.$jf_GN_speed.',
						jf_VALUE_reverse	: '.$jf_GN_reverse.'
					});
					$("#jf_tj_container_sequpdown").jf_tj({
						jf_tj_container		: "jf_tj_container_sequpdown",
						jf_VALUE_rows		: '.$jf_GN_rows.',
						jf_VALUE_anim		: "sequpdown",
						jf_VALUE_speed		: '.$jf_GN_speed.',
						jf_VALUE_factor		: 100,			// for seqfade, sequpdown, rows
						jf_VALUE_reverse	: '.$jf_GN_reverse.'
					});
					$("#jf_tj_container_showhide").jf_tj({
						jf_tj_container		: "jf_tj_container_showhide",
						jf_VALUE_rows		: '.$jf_GN_rows.',
						jf_VALUE_anim		: "showhide",
						jf_VALUE_speed		: '.$jf_GN_speed.',
						jf_VALUE_reverse	: '.$jf_GN_reverse.'
					});
					$("#jf_tj_container_disperse").jf_tj({
						jf_tj_container		: "jf_tj_container_disperse",
						jf_VALUE_rows		: '.$jf_GN_rows.',
						jf_VALUE_anim		: "disperse",
						jf_VALUE_speed		: '.$jf_GN_speed.',
						jf_VALUE_reverse	: '.$jf_GN_reverse.'
					});
					$("#jf_tj_container_rows").jf_tj({
						jf_tj_container		: "jf_tj_container_rows",
						jf_VALUE_rows		: '.$jf_GN_rows.',
						jf_VALUE_anim		: "rows",
						jf_VALUE_speed		: '.$jf_GN_speed.',
						jf_VALUE_factor		: 150,			// for seqfade, sequpdown, rows
						jf_VALUE_reverse	: '.$jf_GN_reverse.'
					});
				})})(jQuery);
			');
			
		}
		
    }

	function isOrderable() {
		return false;
	}

}