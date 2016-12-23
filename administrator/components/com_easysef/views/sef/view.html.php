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

class EasySefViewSef extends JViewLegacy
{
	protected $form;

	protected $item;

	protected $state;

	public function display($tpl = null)
	{
		$this->form  = $this->get('Form');
		$this->item  = $this->get('Item');
		$this->state = $this->get('State');

		$this->canDo = EasySefHelper::getActions();
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
		JFactory::getApplication()->input->set('hidemainmenu', true);
		$user       = JFactory::getUser();
		$userId     = $user->get('id');
		$isNew      = ($this->item->id == 0);
		$checkedOut = !($this->item->checked_out == 0 || $this->item->checked_out == $userId);
		$canDo      = $this->canDo;
		JToolbarHelper::title(
			JText::_('COM_EASYSEF_PAGE_' . ($checkedOut ? 'VIEW_SEF' : ($isNew ? 'ADD_SEF' : 'EDIT_SEF')))
		);
		if ($isNew && $canDo->get('core.create'))
		{
			JToolbarHelper::apply('sef.apply');
			JToolbarHelper::save('sef.save');
			JToolbarHelper::save2new('sef.save2new');
			JToolbarHelper::cancel('sef.cancel');
		}
		else
		{
			if (!$checkedOut)
			{
				if ($canDo->get('core.edit'))
				{
					JToolbarHelper::apply('sef.apply');
					JToolbarHelper::save('sef.save');
					if ($canDo->get('core.create'))
					{
						JToolbarHelper::save2new('sef.save2new');
					}
				}
			}


			JToolbarHelper::cancel('sef.cancel');
		}
	}
}
