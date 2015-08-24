<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2015-08-19 16:13:22
$dictionary["fox_UserTask"]["fields"]["fox_usertask_contacts"] = array (
  'name' => 'fox_usertask_contacts',
  'type' => 'link',
  'relationship' => 'fox_usertask_contacts',
  'source' => 'non-db',
  'module' => 'Contacts',
  'bean_name' => 'Contact',
  'vname' => 'LBL_FOX_USERTASK_CONTACTS_FROM_CONTACTS_TITLE',
  'id_name' => 'fox_usertask_contactscontacts_ida',
);
$dictionary["fox_UserTask"]["fields"]["fox_usertask_contacts_name"] = array (
  'name' => 'fox_usertask_contacts_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_FOX_USERTASK_CONTACTS_FROM_CONTACTS_TITLE',
  'save' => true,
  'id_name' => 'fox_usertask_contactscontacts_ida',
  'link' => 'fox_usertask_contacts',
  'table' => 'contacts',
  'module' => 'Contacts',
  'rname' => 'name',
  'db_concat_fields' => 
  array (
    0 => 'first_name',
    1 => 'last_name',
  ),
);
$dictionary["fox_UserTask"]["fields"]["fox_usertask_contactscontacts_ida"] = array (
  'name' => 'fox_usertask_contactscontacts_ida',
  'type' => 'link',
  'relationship' => 'fox_usertask_contacts',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_FOX_USERTASK_CONTACTS_FROM_FOX_USERTASK_TITLE',
);


// created: 2015-08-19 16:13:22
$dictionary["fox_UserTask"]["fields"]["fox_usertask_fox_task"] = array (
  'name' => 'fox_usertask_fox_task',
  'type' => 'link',
  'relationship' => 'fox_usertask_fox_task',
  'source' => 'non-db',
  'module' => 'fox_Task',
  'bean_name' => 'fox_Task',
  'vname' => 'LBL_FOX_USERTASK_FOX_TASK_FROM_FOX_TASK_TITLE',
  'id_name' => 'fox_usertask_fox_taskfox_task_ida',
);
$dictionary["fox_UserTask"]["fields"]["fox_usertask_fox_task_name"] = array (
  'name' => 'fox_usertask_fox_task_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_FOX_USERTASK_FOX_TASK_FROM_FOX_TASK_TITLE',
  'save' => true,
  'id_name' => 'fox_usertask_fox_taskfox_task_ida',
  'link' => 'fox_usertask_fox_task',
  'table' => 'fox_task',
  'module' => 'fox_Task',
  'rname' => 'name',
);
$dictionary["fox_UserTask"]["fields"]["fox_usertask_fox_taskfox_task_ida"] = array (
  'name' => 'fox_usertask_fox_taskfox_task_ida',
  'type' => 'link',
  'relationship' => 'fox_usertask_fox_task',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_FOX_USERTASK_FOX_TASK_FROM_FOX_USERTASK_TITLE',
);


// created: 2015-08-19 16:13:22
$dictionary["fox_UserTask"]["fields"]["fox_usertask_users"] = array (
  'name' => 'fox_usertask_users',
  'type' => 'link',
  'relationship' => 'fox_usertask_users',
  'source' => 'non-db',
  'module' => 'Users',
  'bean_name' => 'User',
  'vname' => 'LBL_FOX_USERTASK_USERS_FROM_USERS_TITLE',
  'id_name' => 'fox_usertask_usersusers_ida',
);
$dictionary["fox_UserTask"]["fields"]["fox_usertask_users_name"] = array (
  'name' => 'fox_usertask_users_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_FOX_USERTASK_USERS_FROM_USERS_TITLE',
  'save' => true,
  'id_name' => 'fox_usertask_usersusers_ida',
  'link' => 'fox_usertask_users',
  'table' => 'users',
  'module' => 'Users',
  'rname' => 'name',
);
$dictionary["fox_UserTask"]["fields"]["fox_usertask_usersusers_ida"] = array (
  'name' => 'fox_usertask_usersusers_ida',
  'type' => 'link',
  'relationship' => 'fox_usertask_users',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_FOX_USERTASK_USERS_FROM_FOX_USERTASK_TITLE',
);

?>