<?php
/**
 * @version        1.0.0
 * @package        JTFramework
 * @author         Vu Mai - http://www.joomtech.net/
 * @copyright      Copyright (c) 2016 JoomTech. All rights reserved.
 * @license        GNU General Public License, version 3
 */
// no direct access
defined('_JEXEC') or die;

abstract class JHtmlJtui
{
	protected static $theme;
	protected static $tabBuffers = null;

	public static function framework($theme = 'almost-flat')
	{
		static $framework = false;

		if (!$framework)
		{
			JHtml::stylesheet('jtui/uikit' . (!empty($theme) ? '.' . $theme : '') . '.min.css', [], true);
			JHtml::_('jquery.framework');
			JHtml::script('jtui/uikit.min.js', false, true);
			static::$theme = $theme;
			$framework     = true;
		}
	}

	public static function component($files)
	{
		self::framework();
		settype($files, 'array');
		static $components = [];
		foreach ($files as $file)
		{
			if (!isset($components[$file]))
			{
				JHtml::script('jtui/components/' . $file . '.min.js', false, true);
				JHtml::stylesheet('jtui/components/' . $file . (!empty(static::$theme) ? '.' . static::$theme : '') . '.min.css', [], true);
				$components[$file] = true;
			}

		}
	}

	public static function datePicker($attributes = [])
	{
		self::component('datepicker');
		$displayData = array_merge([
			'id'     => '',
			'class'  => '',
			'format' => 'MM/DD/YYYY'
		], $attributes);

		return self::render('jtui.datepicker', $displayData);
	}

	public static function tabs($tabs, $tabLayout = 'tab-default', $displayData = [], $responsive = false)
	{
		self::framework();
		$tabTitle = $tabContent = [];
		foreach ($tabs as $i => $tab)
		{
			if (!empty($tab['icon']))
			{
				$tab['title'] = '<i class="jt-icon-' . $tab['icon'] . '"></i>&nbsp;<span class="jt-tab-title">' . $tab['title'] . '</span>';
			}
			else
			{
				$tab['title'] = '<span class="jt-tab-title">' . $tab['title'] . '</span>';
			}
			$tabTitle[]   = '<li class="' . (!$i ? ' jt-active' : '') . '"><a href="#">' . $tab['title'] . '</a></li>';
			$tabContent[] = '<li>' . $tab['content'] . '</li>';
			// Update Tabs
			$tabs[$i] = $tab;
		}
		$tabLayout   = str_replace('jt-', '', strtolower($tabLayout));
		$layoutId    = 'jtui.' . (in_array($tabLayout, ['tab-left', 'tab-right', 'tab-bottom', 'slide']) ? $tabLayout : 'tab');
		$displayData = array_merge([
			'tabId'      => uniqid('jt-tab'),
			'tabs'       => $tabs,
			'tabTitle'   => join("\n", $tabTitle),
			'tabContent' => join("\n", $tabContent)
		], $displayData);
		$responsive && JHtml::stylesheet('jtui/tab-responsive.css', [], true);

		return self::render($layoutId, $displayData);
	}

	private static function render($layoutId, $displayData = [])
	{
		$layoutFile = new JLayoutFile($layoutId, JPATH_PLUGINS . '/system/jtframework/layouts');
		$layoutFile->addIncludePath(JPATH_THEMES . '/' . JFactory::getApplication()->getTemplate() . '/html/layouts');

		return $layoutFile->render($displayData);
	}

	public static function icons()
	{
		static $created = false;
		if (!$created)
		{
			JFactory::getDocument()->addScriptDeclaration('
				if(!window._jt_icons){
					window._jt_icons = ' . \JT\Factory::getIcons() . '
				}
			');
			$created = true;
		}
	}

	public static function addTab($title, $icon = null)
	{
		if (!is_array(self::$tabBuffers))
		{
			self::$tabBuffers = ['data' => [], 'current' => []];
		}
		self::$tabBuffers['current'] = ['title' => $title, 'icon' => $icon, 'content' => null];
		ob_start();
		
		return null;
	}

	public static function endTab()
	{
		$current                     = self::$tabBuffers['current'];
		$current['content']          = ob_get_clean();
		self::$tabBuffers['data'][]  = $current;
		self::$tabBuffers['current'] = [];
		
		return null;
	}

	public static function renderTab($layout = 'tab-default', $displayData = [])
	{
		$tabs                     = self::$tabBuffers['data'];
		self::$tabBuffers['data'] = null;

		return self::tabs($tabs, $layout, $displayData);
	}
}