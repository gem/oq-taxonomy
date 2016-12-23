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

class EasySefViewSefs extends JViewLegacy
{
	protected $items;

	protected $pagination;

	protected $state;


	public function display($tpl = null)
	{
		$this->items         = $this->get('Items');
		$this->pagination    = $this->get('Pagination');
		$this->state         = $this->get('State');
		$this->filterForm    = $this->get('FilterForm');
		$this->activeFilters = $this->get('ActiveFilters');

		// Check for errors.
		if (count($errors = $this->get('Errors')))
		{
			JError::raiseError(500, implode("\n", $errors));

			return false;
		}

		$this->addToolbar();

		parent::display($tpl);
	}

	protected function addToolbar()
	{
		$canDo = EasySefHelper::getActions();

		JToolbarHelper::title(JText::_('COM_EASYSEF_SEFS_TITLE'));

		if ($canDo->get('core.create'))
		{
			JToolbarHelper::addNew('sef.add');
		}

		if (($canDo->get('core.edit')))
		{
			JToolbarHelper::editList('sef.edit');
		}

		if ($canDo->get('core.edit'))
		{
			JToolbarHelper::publish('sefs.publish', 'JTOOLBAR_PUBLISH', true);
			JToolbarHelper::unpublish('sefs.unpublish', 'JTOOLBAR_UNPUBLISH', true);
			JToolbarHelper::checkin('sefs.checkin');
		}

		if ($canDo->get('core.delete'))
		{
			JToolbarHelper::deleteList('JGLOBAL_CONFIRM_DELETE', 'sefs.delete');
		}

		if ($canDo->get('core.admin'))
		{
			JToolbarHelper::preferences('com_easysef');
		}

	}

}
