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

class EasySefModelSef extends JModelAdmin
{

	protected $text_prefix = 'COM_EASYSEF';
	public $typeAlias = 'com_easysef.sef';

	protected function canDelete($record)
	{
		$canDo = EasySefHelper::getActions();

		return $canDo->get('core.delete');

	}

	protected function canEditState($record)
	{
		$canDo = EasySefHelper::getActions();

		return $canDo->get('core.edit');
	}

	public function getTable($type = 'Sef', $prefix = 'EasySefTable', $config = [])
	{
		JTable::addIncludePath(JPATH_COMPONENT_ADMINISTRATOR . '/tables');

		return JTable::getInstance($type, $prefix, $config);
	}

	public function getForm($data = [], $loadData = true)
	{
		JForm::addFormPath(JPATH_COMPONENT_ADMINISTRATOR . '/models/forms');

		$form = $this->loadForm('com_easysef.sef', 'sef', ['control' => 'jform', 'load_data' => $loadData]);

		if (empty($form))
		{
			return false;
		}

		return $form;
	}

	protected function loadFormData()
	{
		$app  = JFactory::getApplication();
		$data = $app->getUserState('com_easysef.edit.sef.data', array());

		if (empty($data))
		{
			$data = $this->getItem();
		}

		$this->preprocessData('com_easysef.sef', $data);

		return $data;
	}

	public function save($data = [])
	{
		if (!empty($data['metadata']))
		{
			$registry = new Joomla\Registry\Registry;
			$registry->loadArray((array) $data['metadata']);
			$data['metadata'] = (string) $registry->toString();
		}

		return parent::save($data);
	}

	public function getItem($pk = null)
	{
		if ($item = parent::getItem($pk))
		{
			if (!empty($item->metadata))
			{
				$registry = new Joomla\Registry\Registry;
				$registry->loadString((string) $item->metadata);
				$item->metadata = $registry->toArray();
			}
		}

		return $item;
	}

}
