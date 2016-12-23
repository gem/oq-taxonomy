<?php
/**
 * @version   $Id: iconlist.php 2381 2012-08-15 04:14:26Z btowles $
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2012 RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 */

defined('JPATH_PLATFORM') or die;

class JFormFieldIconList extends JFormFieldList
{

	public $type = 'IconList';

	// icons
	protected $icons = array('fa fa-adjust','fa fa-align-center','fa fa-align-justify','fa fa-align-left','fa fa-align-right','fa fa-arrow-down','fa fa-arrow-left','fa fa-arrow-right','fa fa-arrow-up','fa fa-asterisk','fa fa-backward','fa fa-ban-circle','fa fa-bar-chart','fa fa-barcode','fa fa-beaker','fa fa-bell','fa fa-bold','fa fa-bolt','fa fa-book','fa fa-bookmark','fa fa-bookmark-empty','fa fa-briefcase','fa fa-bullhorn','fa fa-calendar','fa fa-camera','fa fa-camera-retro','fa fa-caret-down','fa fa-caret-left','fa fa-caret-right','fa fa-caret-up','fa fa-certificate','fa fa-check','fa fa-check-empty','fa fa-chevron-down','fa fa-chevron-left','fa fa-chevron-right','fa fa-chevron-up','fa fa-circle-arrow-down','fa fa-circle-arrow-left','fa fa-circle-arrow-right','fa fa-circle-arrow-up','fa fa-cloud','fa fa-cog','fa fa-cogs','fa fa-columns','fa fa-comment','fa fa-comment-alt','fa fa-comments','fa fa-comments-alt','fa fa-copy','fa fa-credit-card','fa fa-cut','fa fa-dashboard','fa fa-download','fa fa-download-alt','fa fa-edit','fa fa-eject','fa fa-envelope','fa fa-envelope-alt','fa fa-exclamation-sign','fa fa-external-link','fa fa-eye-close','fa fa-eye-open','fa fa-facebook','fa fa-facebook-sign','fa fa-facetime-video','fa fa-fast-backward','fa fa-fast-forward','fa fa-file','fa fa-film','fa fa-filter','fa fa-fire','fa fa-flag','fa fa-folder-close','fa fa-folder-open','fa fa-font','fa fa-forward','fa fa-fullscreen','fa fa-gift','fa fa-github','fa fa-github-sign','fa fa-glass','fa fa-globe','fa fa-google-plus','fa fa-google-plus-sign','fa fa-group','fa fa-hand-down','fa fa-hand-left','fa fa-hand-right','fa fa-hand-up','fa fa-hdd','fa fa-headphones','fa fa-heart','fa fa-heart-empty','fa fa-home','fa fa-inbox','fa fa-indent-left','fa fa-indent-right','fa fa-info-sign','fa fa-italic','fa fa-key','fa fa-leaf','fa fa-legal','fa fa-lemon','fa fa-link','fa fa-linkedin','fa fa-linkedin-sign','fa fa-list','fa fa-list-alt','fa fa-list-ol','fa fa-list-ul','fa fa-lock','fa fa-magic','fa fa-magnet','fa fa-map-marker','fa fa-minus','fa fa-minus-sign','fa fa-money','fa fa-move','fa fa-music','fa fa-off','fa fa-ok','fa fa-ok-circle','fa fa-ok-sign','fa fa-paper-clip','fa fa-paste','fa fa-pause','fa fa-pencil','fa fa-phone','fa fa-phone-sign','fa fa-picture','fa fa-pinterest','fa fa-pinterest-sign','fa fa-plane','fa fa-play','fa fa-play-circle','fa fa-plus','fa fa-plus-sign','fa fa-print','fa fa-pushpin','fa fa-qrcode','fa fa-question-sign','fa fa-random','fa fa-refresh','fa fa-remove','fa fa-remove-circle','fa fa-remove-sign','fa fa-reorder','fa fa-repeat','fa fa-resize-full','fa fa-resize-horizontal','fa fa-resize-small','fa fa-resize-vertical','fa fa-retweet','fa fa-road','fa fa-rss','fa fa-save','fa fa-screenshot','fa fa-search','fa fa-share','fa fa-share-alt','fa fa-shopping-cart','fa fa-sign-blank','fa fa-signal','fa fa-signin','fa fa-signout','fa fa-sitemap','fa fa-sort','fa fa-sort-down','fa fa-sort-up','fa fa-star','fa fa-star-empty','fa fa-star-half','fa fa-step-backward','fa fa-step-forward','fa fa-stop','fa fa-strikethrough','fa fa-table','fa fa-tag','fa fa-tags','fa fa-tasks','fa fa-text-height','fa fa-text-width','fa fa-th','fa fa-th-large','fa fa-th-list','fa fa-thumbs-down','fa fa-thumbs-up','fa fa-time','fa fa-tint','fa fa-trash','fa fa-trophy','fa fa-truck','fa fa-twitter','fa fa-twitter-sign','fa fa-umbrella','fa fa-underline','fa fa-undo','fa fa-unlock','fa fa-upload','fa fa-upload-alt','fa fa-user','fa fa-user-md','fa fa-volume-down','fa fa-volume-off','fa fa-volume-up','fa fa-warning-sign','fa fa-wrench','fa fa-zoom-in','fa fa-zoom-out');


	protected function getOptions()
	{
		// Initialize variables.
		$options = array();

		$options[] = JHtml::_('select.option', '-1', '- None Selected -', 'value', 'text');

		foreach ($this->icons as $icon)
		{
			$options[] = JHtml::_('select.option', $icon, $icon, 'value', 'text');
		}

		$options = array_merge(parent::getOptions(), $options);

		return $options;

	}
}
