<?php
/**
 * @package     JTFramework
 * @Author      Mai Vu - joomtech.net
 * @copyright   Copyright (C) 2016 All Rights Reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE
 */
namespace JT;
defined('_JEXEC') or die;

class Config
{
	public $scope;
	/** @var  $db \JDatabaseDriver */
	protected $db;
	protected $table;

	public function __construct($config)
	{
		if (array_key_exists('scope', $config))
		{
			$this->scope = $config['scope'];
		}
		else
		{
			throw new \Exception('JTFramework - the scope\'s config not found!', 400);

			return false;
		}
		$this->db    = \JFactory::getDbo();
		$this->table = '#__jtframework_configs';
	}

	public function save(Array $data)
	{
		$columnKey   = $this->db->qn('id');
		$configTable = $this->db->qn($this->table);
		$columnName  = $this->db->qn('name');
		$columnValue = $this->db->qn('value');
		$columnScope = $this->db->qn('scope');
		foreach ($data as $name => $val)
		{
			$key     = (int) $val['id'];
			$name    = $this->db->q($name);
			$value   = $this->db->q($val['value']);
			$scope   = $this->db->q($this->scope);
			$query   = [];
			$query[] = "INSERT INTO {$configTable}({$columnKey}, {$columnName}, {$columnValue}, {$columnScope})";
			$query[] = "VALUES({$key}, {$name}, {$value}, {$scope})";
			$query[] = "ON DUPLICATE KEY UPDATE {$columnName} = {$name}, {$columnValue} = {$value}";
			try
			{
				$this->db
					->setQuery(join(' ', $query))
					->execute();
			}
			catch (\Exception $e)
			{
				\JFactory::getApplication()->enqueueMessage($e->getMessage(), 'error');

				return false;
			}
		}

		return true;
	}

	public function getData($reload = false)
	{
		static $data = [];
		if (!isset($data[$this->scope]) || $reload)
		{
			$query = $this->db
				->getQuery(true)
				->select('a.id, a.name, a.value, a.scope')
				->from($this->db->qn($this->table, 'a'))
				->where('a.scope = ' . $this->db->q($this->scope));
			$this->db->setQuery($query);
			$data[$this->scope] = (array) $this->db->loadAssocList('name');
		}

		return $data[$this->scope];
	}

	public function get($name, $default = null)
	{
		foreach ($this->getData() as $data)
		{
			if (isset($data[$name]))
			{
				return $data[$name]['value'];
			}
		}

		return $default;
	}

	public function delete($pk = 0)
	{
		$query = $this->db
			->getQuery(true)
			->delete($this->db->qn($this->table));
		if ($pk)
		{
			$query->where($this->db->qn('id') . ' = ' . (int) $pk);
		}
		else
		{
			$query->where($this->db->qn('scope') . ' = ' . $this->db->q($this->scope));
		}
		$this->db->setQuery($query);

		return $this->db->execute();
	}

}