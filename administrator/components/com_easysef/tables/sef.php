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

class EasySefTableSef extends JTable
{
	public function __construct(&$db)
	{
		parent::__construct('#__easysefs', 'id', $db);
		$this->setColumnAlias('published', 'state');
	}

	public function store($updateNulls = false)
	{
		$this->created    = JFactory::getDate()->toSql();
		$this->created_by = JFactory::getUser()->id;
		$this->origin     = trim(EasySefHelper::getBaseUrl($this->origin));
		if (!empty($this->sef))
		{
			$this->sef = trim(EasySefHelper::getBaseUrl($this->sef));
			$db        = $this->getDbo();
			$query     = $db->getQuery(true)
				->select('COUNT(*)')
				->from($db->qn('#__easysefs'))
				->where($db->qn('sef') . ' <> ' . $db->q(''));
			$db->setQuery($query);
			$count = (int) $db->loadResult();
			if ($count > 10)
			{
				JFactory::getApplication()->enqueueMessage('Maximum SEF link is 10 for this version of Easy SEF', 'warning');
				$this->sef = '';
			}
		}

		return parent::store($updateNulls);
	}

	public function check()
	{
		$app = JFactory::getApplication();
		if ($app->isSite() && empty($this->origin))
		{
			$this->origin = base64_decode($app->input->getBase64('return'));
		}
		if (empty($this->origin))
		{
			$this->setError(JText::_('COM_EASYSEF_ERROR_ORIGIN_CAN_NOT_EMPTY'));

			return false;
		}
		if (!$app->get('sef'))
		{
			$this->sef = '';
		}
		$origin = trim(EasySefHelper::getBaseUrl($this->origin));
		$sef    = trim(EasySefHelper::getBaseUrl($this->sef));
		$db     = $this->getDbo();
		$query  = $db->getQuery(true);
		$query->select('COUNT(a.id)')
			->from($db->qn('#__easysefs', 'a'))
			->where('a.origin LIKE ' . $db->q($origin))
			->where('a.language = ' . $db->q($this->language));
		$db->setQuery($query);
		$count = (int) $db->loadResult();
		if (($this->id && $count > 1) || (!$this->id && $count > 0))
		{
			$this->setError(JText::_('COM_EASYSEF_ERROR_ORIGIN_DUPLICATE'));

			return false;
		}
		if (!empty($sef))
		{
			$sefs = explode('/', preg_replace(['/\/+/', '/^\/+|\/+$/'], ['/', ''], $sef));
			foreach ($sefs as &$sef)
			{
				$sef = JApplicationHelper::stringURLSafe($sef);
			}
			$sef = join('/', $sefs);
			$query->clear('where')
				->where('a.sef LIKE ' . $db->q($sef))
				->where('a.language = ' . $db->q($this->language));
			$db->setQuery($query);
			$count = (int) $db->loadResult();
			if (($this->id && $count > 1) || (!$this->id && $count > 0))
			{
				$this->setError(JText::_('COM_EASYSEF_ERROR_ORIGIN_DUPLICATE'));

				return false;
			}
			$this->sef = $sef;
		}

		return true;
	}
}