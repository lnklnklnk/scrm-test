<?php
if (!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

class FoxfordHooks {
	function beforeSave($bean, $event, $arguments)
	{
		var_dump($bean);
		die;
	}

} 