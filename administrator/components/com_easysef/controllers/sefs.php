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

class EasySefControllerSefs extends JControllerAdmin
{
	protected $view_list = 'sefs';
	protected $view_item = 'sef';
	
	public function getModel($name = 'Sef', $prefix = 'EasySefModel', $config = ['ignore_request' => true])
	{
		$model = parent::getModel($name, $prefix, $config);

		return $model;
	}

}
