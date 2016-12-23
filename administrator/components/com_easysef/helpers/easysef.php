<?php
/**
 * @version        1.0.0
 * @package        EasySef
 * @author         Vu Mai - http://www.joomtech.net/
 * @copyright      Copyright (c) 2016 JoomTech. All rights reserved.
 * @license        GNU General Public License, version 3
 */
// no direct access
defined('_JEXEC') or die;

class EasySefHelper
{
	public static function getActions()
	{
		$user    = JFactory::getUser();
		$result  = new JObject;
		$path    = JPATH_ADMINISTRATOR . '/components/com_easysef/access.xml';
		$actions = JAccess::getActionsFromFile($path, '/access/section[@name="component"]/');
		foreach ($actions as $action)
		{
			$result->set($action->name, $user->authorise($action->name, 'com_easysef'));
		}

		return $result;
	}

	public static function getLanguageFilter()
	{
		static $languageFilter = null;

		if (null === $languageFilter)
		{
			if (JPluginHelper::isEnabled('system', 'languagefilter'))
			{
				$languageFilter         = JPluginHelper::getPlugin('system', 'languagefilter');
				$languageFilter->params = new Joomla\Registry\Registry((string) $languageFilter->params);
			}
			else
			{
				$languageFilter = false;
			}
		}

		return $languageFilter;
	}

	public static function getCurrentLanguageSef()
	{
		static $langSef = null;
		$languageFilter = static::getLanguageFilter();
		if (null === $langSef && !empty($languageFilter))
		{
			$app                 = JFactory::getApplication('site');
			$removeDefaultPrefix = $languageFilter->params->get('remove_default_prefix', 0);
			$currentLanguage     = $app->get('language', 'en-GB');
			$defaultLanguage     = JComponentHelper::getParams('com_languages')->get('site', 'en-GB');
			$addLangSef          = ($removeDefaultPrefix && $defaultLanguage == $currentLanguage) ? false : true;
			$langCodes           = JLanguageHelper::getLanguages('lang_code');
			if ($addLangSef && !empty($langCodes) && !empty($langCodes[$currentLanguage]->sef))
			{
				$langSef = $langCodes[$currentLanguage]->sef;
			}
		}

		return $langSef;
	}

	public static function getBaseUrl($url)
	{
		$rootUrl = JUri::root(true);
		$langSef = static::getCurrentLanguageSef();
		$app     = JFactory::getApplication();
		$url     = preg_replace('#^(' . $rootUrl . ')#', '', trim(trim($url), '\\/'), 1);
		$url     = preg_replace('#^(/?index\.php/?)#', '', $url, 1);
		if (!empty($langSef) && strpos($url, $langSef) === 0)
		{
			$url = preg_replace('#^(' . $langSef . ')#', '', $url, 1);
		}
		if ($app->get('sef_suffix'))
		{
			$url = preg_replace('/(\.html)$/', '', $url, 1);
		}
		$url = preg_replace('#^/?#', '', $url, 1);

		return $url;
	}

	public static function getRealSefUrl($url)
	{
		$app     = JFactory::getApplication();
		$rootUrl = JUri::root(true);
		$langSef = static::getCurrentLanguageSef();
		$url     = trim(trim($url), '\\/');
		if (!empty($langSef) && strpos($url, $langSef) !== 0)
		{
			$url = $langSef . '/' . $url;
		}
		if ($app->get('sef_rewrite') && strpos($url, 'index.php') === 0)
		{
			$url = preg_replace('/^(index\.php)/', '', $url);
		}
		elseif (!$app->get('sef_rewrite') && strpos($url, 'index.php') !== 0)
		{
			$url = 'index.php/' . $url;
		}
		$url = $rootUrl . '/' . $url;
		if ($app->get('sef_suffix') && !preg_match('/(\.html)$/', $url))
		{
			$url = preg_replace('/(\/+)$/', '', $url) . '.html';
		}

		return $url;
	}

	public static function parseUrl(&$sef)
	{
		if ($sef->language == '*')
		{
			return;
		}
		$app            = JFactory::getApplication();
		$origin         = $sef->origin;
		$sefUrl         = $sef->sef;
		$langTag        = $sef->language;
		$languageFilter = static::getLanguageFilter();
		if (!empty($languageFilter))
		{
			$langCodes = JLanguageHelper::getLanguages('lang_code');

			if (!empty($langCodes[$langTag]))
			{
				if (strpos($origin, $langCodes[$langTag]->sef) !== 0)
				{
					$origin = $langCodes[$langTag]->sef . '/' . $origin;
				}
				if (!empty($sefUrl) && strpos($sefUrl, $langCodes[$langTag]->sef) !== 0)
				{
					$sefUrl = $langCodes[$langTag]->sef . '/' . $sefUrl;
				}
			}
		}
		if (!$app->get('sef_rewrite') && strpos($origin, 'index.php') !== 0)
		{
			$origin = 'index.php/' . $origin;
			if (!empty($sefUrl))
			{
				$sefUrl = 'index.php/' . $sefUrl;
			}
		}
		if ($app->get('sef_suffix'))
		{
			if(!preg_match('/(\.html)$/', $origin))
			{
				$origin = preg_replace('/(\/+)$/', '', $origin) . '.html';
			}
			if(!empty($sefUrl) && !preg_match('/(\.html)$/', $sefUrl))
			{
				$sefUrl = preg_replace('/(\/+)$/', '', $sefUrl) . '.html';
			}
		}
		$sef->origin = JUri::root(true) . '/' . $origin;
		if (!empty($sefUrl))
		{
			$sef->sef = JUri::root(true) . '/' . $sefUrl;
		}
	}
}
