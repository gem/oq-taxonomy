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

class EasySefModelSefs extends JModelList
{
	public function __construct($config = array())
	{
		if (empty($config['filter_fields']))
		{
			$config['filter_fields'] = array(
				'id', 'a.id',
				'meta_title', 'a.meta_title',
				'meta_key', 'a.meta_key',
				'meta_desc', 'a.meta_desc',
				'checked_out_time', 'a.checked_out_time',
				'state', 'a.state',
				'created', 'a.created',
				'created_by', 'a.created_by',
				'language', 'a.language',
			);
		}

		parent::__construct($config);
	}

	protected function populateState($ordering = 'a.id', $direction = 'desc')
	{

		$search = $this->getUserStateFromRequest($this->context . '.filter.search', 'filter_search');
		$this->setState('filter.search', $search);

		$published = $this->getUserStateFromRequest($this->context . '.filter.state', 'filter_state', '');
		$this->setState('filter.state', $published);

		$language = $this->getUserStateFromRequest($this->context . '.filter.language', 'filter_language', '');
		$this->setState('filter.language', $language);

		parent::populateState($ordering, $direction);

	}

	protected function getStoreId($id = '')
	{
		$id .= ':' . $this->getState('filter.search');
		$id .= ':' . $this->getState('filter.state');
		$id .= ':' . $this->getState('filter.language');

		return parent::getStoreId($id);
	}

	protected function getListQuery()
	{
		$db    = $this->getDbo();
		$query = $db->getQuery(true);

		$query->select(
			$this->getState(
				'list.select',
				'a.id, a.state, a.meta_title, a.meta_key, a.meta_desc, a.sef, a.hits,
				a.origin, a.created, a.created_by, a.checked_out, a.checked_out_time, a.language'
			)
		);
		$query->from($db->qn('#__easysefs', 'a'));
		$query->select('uc.name AS editor')
			->join('LEFT', '#__users AS uc ON uc.id=a.checked_out');

		$query->select('l.title AS language_title, l.image AS language_image')
			->join('LEFT', $db->qn('#__languages') . ' AS l ON l.lang_code = a.language');

		$published = $this->getState('filter.state');

		if (is_numeric($published))
		{
			$query->where('a.state = ' . (int) $published);
		}
		elseif ($published === '')
		{
			$query->where('(a.state = 0 OR a.state = 1)');
		}
		$search = $this->getState('filter.search');

		if (!empty($search))
		{
			if (stripos($search, 'id:') === 0)
			{
				$query->where('a.id = ' . (int) substr($search, 3));
			}
			elseif (stripos($search, 'author:') === 0)
			{
				$search = $db->quote('%' . $db->escape(substr($search, 7), true) . '%');
				$query->where('(ua.name LIKE ' . $search . ' OR ua.username LIKE ' . $search . ')');
			}
			else
			{
				$search = $db->quote('%' . str_replace(' ', '%', $db->escape(trim($search), true) . '%'));
				$query->where('(a.origin LIKE ' . $search . ' OR a.sef LIKE ' . $search . ')');
			}
		}
		$language = $this->getState('filter.language');
		if (!empty($language))
		{
			$query->where('a.language = ' . $db->quote($language));
		}

		$orderCol  = $this->state->get('list.ordering', 'a.id');
		$orderDirn = $this->state->get('list.direction', 'desc');
		$query->order($db->escape($orderCol . ' ' . $orderDirn));

		return $query;
	}

}
