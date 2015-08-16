<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/*********************************************************************************
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2013 SugarCRM Inc.
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License version 3 as published by the
 * Free Software Foundation with the addition of the following permission added
 * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
 * IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
 * OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU Affero General Public License along with
 * this program; if not, see http://www.gnu.org/licenses or write to the Free
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301 USA.
 * 
 * You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
 * SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
 * 
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 * 
 * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * SugarCRM" logo. If the display of the logo is not reasonably feasible for
 * technical reasons, the Appropriate Legal Notices must display the words
 * "Powered by SugarCRM".
 ********************************************************************************/


require_once('include/Dashlets/Dashlet.php');


class fox_TaskContactsDistribution extends Dashlet {

    var $height = '200'; // height of the pad


	function fox_TaskContactsDistribution($id, $def) {
		$this->loadLanguage('fox_TaskContactsDistribution','modules/fox_Task/Dashlets/');
		$this->hasScript = true;  // dashlet has javascript attached to it

		if(!empty($def['height'])) // set a default height if none is set
			$this->height = $def['height'];


		parent::Dashlet($id);

		if(empty($def['title'])) $this->title = $this->dashletStrings['LBL_TITLE'];
		else $this->title = $def['title'];
	}

    /**
     * Displays the dashlet
     *
     * @return string html to display dashlet
     */
    function display() {


        $ss = new Sugar_Smarty();

        $ss->assign('id', $this->id);
        $ss->assign('height', $this->height);
		$ss->assign('getNewContactLbl', $this->dashletStrings['LBL_GET_NEW_CONTACT']);

        $str = $ss->fetch('modules/fox_Task/Dashlets/fox_TaskContactsDistribution/fox_TaskContactsDistribution.tpl');
        return parent::display($this->dashletStrings['LBL_DBLCLICK_HELP']) . $str . '<br />'; // return parent::display for title and such
    }

	/**
	 * Displays the javascript for the dashlet
	 *
	 * @return string javascript to use with this dashlet
	 */
	function displayScript() {
		$ss = new Sugar_Smarty();
		$ss->assign('id', $this->id);
		$ss->assign('gettingContactLbl', $this->dashletStrings['LBL_GETTING_CONTACT']);
		$str = $ss->fetch('modules/fox_Task/Dashlets/fox_TaskContactsDistribution/fox_TaskContactsDistributionScript.tpl');
		return $str; // return parent::display for title and such
	}



	function getContact() {
		global $current_user;

		$bean_task = BeanFactory::newBean('fox_Task');
		$bean_contact = BeanFactory::newBean('Contacts');

		$order_by = 'priority';
		$where = 'deleted=0 and active=1 and start_datetime<NOW() and end_datetime>NOW()';

		$fields = array(
			'id',
			'sql_query',
			'run_experiment',
			'name'
		);

		$sql = $bean_task->create_new_list_query($order_by, $where, $fields);

		$result = $GLOBALS['db']->query($sql);
		while($row = $GLOBALS['db']->fetchByAssoc($result) )
		{



			$contact_query = $bean_contact->create_new_list_query('', "id in ({$row['sql_query']})
			and id not in (select fox_usertask_contactscontacts_ida from fox_usertask_fox_task_c
			JOIN fox_usertask_contacts_c on
			fox_usertask_fox_task_c.`fox_usertask_fox_taskfox_usertask_idb` = fox_usertask_contacts_c.fox_usertask_contactsfox_usertask_idb
			JOIN fox_usertask on fox_usertask.id = fox_usertask_fox_taskfox_usertask_idb and fox_usertask.deleted=0
			where `fox_usertask_fox_taskfox_task_ida` ='{$row['id']}')
			", array('id'));

			if($row['run_experiment']) {
				$contact_query .= ' LIMIT 2';
			} else {
				$contact_query .= ' LIMIT 1';
			}

			





			$result_contacts = $GLOBALS['db']->query($contact_query);


			if($row_contact = $GLOBALS['db']->fetchByAssoc($result_contacts)) {
				$assigned_contact_id = $row_contact['id'];

				$assigned_contact_bean = BeanFactory::getBean('Contacts', $assigned_contact_id);
				$assigned_contact_bean->assigned_user_id = $current_user->id;
				$assigned_contact_bean->status_c=1;


				#$assigned_contact_bean->save();

				$userTask = BeanFactory::newBean('fox_UserTask');


				$userTask->name = $assigned_contact_bean->name .' / '.$row['name'];
				$userTask->save();
				$userTask->load_relationship('fox_usertask_contacts');
				$userTask->fox_usertask_contacts->add($assigned_contact_id);

				$userTask->load_relationship('fox_usertask_fox_task');
				$userTask->fox_usertask_fox_task->add($row['id']);





				/*
				добавляем юзер-таск
				*/
			}

			if($row['run_experiment'] and $row_contact = $GLOBALS['db']->fetchByAssoc($result_contacts)) {
				$test_contact_id = $row_contact['id'];

				$userTask = BeanFactory::newBean('fox_UserTask');


				$userTask->name = $assigned_contact_bean->name .' / '.$row['name'];
				$userTask->experimental_c=1;

				$userTask->save();
				$userTask->load_relationship('fox_usertask_contacts');
				$userTask->fox_usertask_contacts->add($test_contact_id);

				$userTask->load_relationship('fox_usertask_fox_task');
				$userTask->fox_usertask_fox_task->add($row['id']);


			}


		}


		$json = getJSONobj();
		echo 'result = ' . $json->encode(array('id' => $_REQUEST['id'],'contact_id'=>$assigned_contact_id));
	}



}

?>
