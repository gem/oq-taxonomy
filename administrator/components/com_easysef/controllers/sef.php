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

class EasySefControllerSef extends JControllerForm
{
	protected $view_list = 'sefs';
	protected $view_item = 'sef';

	public function redirect()
	{
		if ($this->redirect)
		{
			$app = JFactory::getApplication();
			$app->enqueueMessage($this->message, $this->messageType);
			if ($this->messageType == 'error' && $app->isSite())
			{
				$return = $app->input->getBase64('return');
				if (!empty($return))
				{
					$this->redirect = base64_decode($return);
				}
			}

			$app->redirect($this->redirect);
		}

		return false;
	}

	protected function postSaveHook(JModelLegacy $model, $validData = array())
	{
		$app = JFactory::getApplication();
		if ($app->isSite())
		{
			JTable::addIncludePath(JPATH_COMPONENT_ADMINISTRATOR . '/tables');
			$table = JTable::getInstance('Sef', 'EasySefTable');
			$table->load($model->getState('sef.id'));

			if ($table->state && !empty($table->sef))
			{
				$redirect = EasySefHelper::getBaseUrl($table->sef);
				$redirect = EasySefHelper::getRealSefUrl($redirect);
			}
			else
			{
				$redirect = $table->get('origin') ? EasySefHelper::getRealSefUrl($table->get('origin')) : JUri::root(true);
			}

			$this->setRedirect($redirect)
				->redirect();
		}

	}
}
