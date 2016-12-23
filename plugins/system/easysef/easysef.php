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

JLoader::register('EasySefHelper', JPATH_ADMINISTRATOR . '/components/com_easysef/helpers/easysef.php');

class PlgSystemEasySef extends JPlugin
{
	/**
	 * Application object.
	 *
	 * @var    JApplicationCms
	 * @since  3.5
	 */
	protected $app;
	/** @var  $db JDatabaseDriver */
	protected $db;
	protected $modeSef;
	protected $docType;

	public function __construct(&$subject, $config = [])
	{
		parent::__construct($subject, $config);
		$this->modeSef = $this->app->get('sef', 0);
		$this->docType = JFactory::getDocument()->getType();
	}

	public function onBeforeCompileHead()
	{
		if ($this->app->isAdmin() || $this->docType != 'html')
		{
			return;
		}
		$document  = JFactory::getDocument();
		$generator = trim(JComponentHelper::getParams('com_easysef')->get('generator', ''));
		if (!empty($generator))
		{
			$document->setGenerator($generator);
		}
		if (($sef = $this->getCurrentSef()) || ($sef = $this->getCurrentOrigin()))
		{
			$metaTitle = trim($sef->meta_title);
			$metaKey   = trim($sef->meta_key);
			$metaDesc  = trim($sef->meta_desc);
			$metadata  = trim($sef->metadata);
			if (!empty($metaTitle))
			{
				$document->setTitle($metaTitle);
			}
			if (!empty($metaKey))
			{
				$document->setMetadata('keywords', $metaKey);
			}
			if (!empty($metaDesc))
			{
				$document->setDescription($metaDesc);
			}
			$ogUrl = EasySefHelper::getRealSefUrl(!empty($sef->sef) ? $sef->sef : $sef->origin);
			$ogUrl = JUri::getInstance()->toString(['scheme', 'host']) . $ogUrl;
			$document->setMetaData('og:url', null);
			$document->addCustomTag('<meta property="og:url" value="' . htmlspecialchars($ogUrl) . '"/>');
			if (!empty($metadata))
			{
				$metadata = new Joomla\Registry\Registry($metadata);
				foreach ($metadata->toArray() as $k => $v)
				{
					if (!empty($v))
					{
						$document->setMetadata($k, $v);
					}
				}
			}
		}
	}

	public function onAfterRender()
	{
		require_once JPATH_ADMINISTRATOR . '/components/com_easysef/helpers/easysef.php';
		$canDo = EasySefHelper::getActions();

		if ($this->app->isAdmin() || $this->docType != 'html')
		{
			return;
		}

		$buffer   = $this->app->getBody();
		$language = JFactory::getLanguage();
		if ($canDo->get('core.create') || $canDo->get('core.edit'))
		{
			$language->load('joomla', JPATH_ADMINISTRATOR);
			$language->load('com_easysef', JPATH_ADMINISTRATOR . '/components/com_easysef');
			$file = JPATH_ADMINISTRATOR . '/components/com_easysef/models/forms/sef.xml';
			$form = JForm::getInstance('com_easysef.sef', $file, ['control' => 'jform']);
			$form->setFieldAttribute('origin', 'readonly', 'true');
			$form->setFieldAttribute('origin', 'disabled', 'true');
			$form->setFieldAttribute('language', 'type', 'hidden');
			$uri      = clone JUri::getInstance();
			$origin   = trim($uri->toString(['path', 'query']));
			$document = JFactory::getDocument();
			$data     = [
				'meta_title' => $document->getTitle(),
				'meta_key'   => $document->getMetaData('keywords'),
				'meta_desc'  => $document->getDescription(),
			];
			$table    = $this->getTable();
			if (
				$table->load(['sef' => EasySefHelper::getBaseUrl($origin)])
				&& !empty($table->sef)
				&& $table->language == $language->getTag()
			)
			{
				// When SEF exists
				$data           = array_merge($data, $table->getProperties());
				$data['sef']    = EasySefHelper::getRealSefUrl($data['sef']);
				$data['origin'] = EasySefHelper::getRealSefUrl($data['origin']);
			}
			elseif (
				$table->load(['origin' => EasySefHelper::getBaseUrl($origin)])
				&& $table->language == $language->getTag()
			)
			{
				// When SEF not exists but it has a record with the same origin URL
				$data           = array_merge($data, $table->getProperties());
				$data['origin'] = EasySefHelper::getRealSefUrl($data['origin']);
			}
			if (empty($data['origin']))
			{
				$data['origin'] = $origin;
			}
			if (!empty($data['metadata']))
			{
				$registry = new Joomla\Registry\Registry;
				$registry->loadString((string) $data['metadata']);
				$data['metadata'] = $registry->toArray();
			}
			else
			{
				$data['metadata'] = [];
			}
			if (empty($data['language']))
			{
				$data['language'] = $this->app->get('language', 'en-GB');
			}
			if (!$this->modeSef)
			{
				$form->setFieldAttribute('sef', 'readonly', 'readonly');
				$form->setFieldAttribute('sef', 'disabled', 'disabled');
				unset($data['sef']);
			}
			$form->bind($data);
			$layout = JT\Factory::getClass('LayoutFile', ['modal', JPATH_ROOT . '/components/com_easysef/layouts', null]);
			$layout->addIncludePath(JPATH_THEMES . '/' . $this->app->getTemplate() . '/html/layouts/com_easysef');
			$buffer = preg_replace('/\<\/body\>/i', $layout->render(['form' => $form], false) . '</body>', $buffer);
			$this->checkBuffer($buffer);

		}

		$this->app->setBody($buffer);
	}

	public function onAfterRoute()
	{
		if ($this->app->isAdmin() || !$this->modeSef)
		{
			return;
		}
		$canDo = EasySefHelper::getActions();
		if ($canDo->get('core.create') || $canDo->get('core.edit'))
		{
			JHtml::_('jtui.framework');
			JHtml::_('bootstrap.tooltip');
		}
		if ($currentSef = $this->getCurrentSef())
		{
			$uri    = clone JUri::getInstance(EasySefHelper::getRealSefUrl($currentSef->origin));
			$router = $this->app->getRouter();
			$vars   = $router->parse($uri);
			foreach ($vars as $name => $value)
			{
				$this->app->input->set($name, $value);
			}
			$table = $this->getTable();
			if ($table->load($currentSef->id))
			{
				$hits = (int) $table->hits + 1;
				$table->set('hits', $hits);
				$table->store();
			}
		}

	}

	protected function getCurrentSef()
	{
		$sefs = $this->getAllSefs();
		static $currentSef = null;

		if (null === $currentSef && !empty($sefs))
		{
			$langTag        = $this->app->getLanguage()->getTag();
			$currentUrl     = trim(JUri::getInstance()->toString(['path', 'query']));
			$currentBaseUrl = EasySefHelper::getBaseUrl($currentUrl);
			$currentSef     = '';
			foreach ($sefs as $sef)
			{
				if (empty($sef->sef))
				{
					continue;
				}
				if ($sef->sef == $currentBaseUrl && $sef->language == $langTag)
				{
					$currentSef = $sef;
					break;
				}
			}
		}

		return $currentSef;
	}

	protected function getCurrentOrigin()
	{
		$sefs = $this->getAllSefs();
		static $currentOrigin = null;

		if (null === $currentOrigin && !empty($sefs))
		{
			$langTag        = $this->app->getLanguage()->getTag();
			$currentUrl     = trim(JUri::getInstance()->toString(['path', 'query']));
			$currentBaseUrl = EasySefHelper::getBaseUrl($currentUrl);
			$currentOrigin  = '';
			foreach ($sefs as $sef)
			{
				if ($sef->origin == $currentBaseUrl && $sef->language == $langTag)
				{
					$currentOrigin = $sef;
					break;
				}
			}
		}

		return $currentOrigin;
	}

	protected function getTable()
	{
		static $table;

		if (!is_object($table))
		{
			JTable::addIncludePath(JPATH_ADMINISTRATOR . '/components/com_easysef/tables');
			$table = JTable::getInstance('Sef', 'EasySefTable');
		}

		return $table;
	}

	protected function getAllSefs()
	{
		static $data = null;

		if (null === $data)
		{
			$query = $this->db->getQuery(true)
				->select('a.id, a.state, a.meta_title, meta_key, a.meta_desc, a.origin, a.sef, a.metadata, a.language, a.hits')
				->from($this->db->qn('#__easysefs', 'a'))
				->where('a.state = 1');
			$this->db->setQuery($query);
			if($data = $this->db->loadObjectList())
			{
				$count = 0;
				foreach($data as $d)
				{
					if(!empty($d->sef))
					{
						$count++;
					}
				}
				if($count > 10)
				{
					JFactory::getApplication()->enqueueMessage('Maximum SEF link is 10 for this version of Easy SEF', 'warning');
				}
			}
		}

		return $data;
	}

	protected function checkBuffer($buffer)
	{
		if ($buffer === null)
		{
			switch (preg_last_error())
			{
				case PREG_BACKTRACK_LIMIT_ERROR:
					$message = "PHP regular expression limit reached (pcre.backtrack_limit)";
					break;
				case PREG_RECURSION_LIMIT_ERROR:
					$message = "PHP regular expression limit reached (pcre.recursion_limit)";
					break;
				case PREG_BAD_UTF8_ERROR:
					$message = "Bad UTF8 passed to PCRE function";
					break;
				default:
					$message = "Unknown PCRE error calling PCRE function";
			}

			throw new RuntimeException($message);
		}
	}

}
