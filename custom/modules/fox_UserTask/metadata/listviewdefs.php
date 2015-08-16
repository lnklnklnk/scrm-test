<?php
$module_name = 'fox_UserTask';
$listViewDefs [$module_name] = 
array (
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
  'FOX_USERTASK_CONTACTS_NAME' => 
  array (
    'type' => 'relate',
    'link' => true,
    'label' => 'LBL_FOX_USERTASK_CONTACTS_FROM_CONTACTS_TITLE',
    'id' => 'FOX_USERTASK_CONTACTSCONTACTS_IDA',
    'width' => '10%',
    'default' => true,
  ),
  'FOX_USERTASK_FOX_TASK_NAME' => 
  array (
    'type' => 'relate',
    'link' => true,
    'label' => 'LBL_FOX_USERTASK_FOX_TASK_FROM_FOX_TASK_TITLE',
    'id' => 'FOX_USERTASK_FOX_TASKFOX_TASK_IDA',
    'width' => '10%',
    'default' => true,
  ),
  'EXPERIMENTAL_C' => 
  array (
    'type' => 'bool',
    'default' => true,
    'label' => 'LBL_EXPERIMENTAL',
    'width' => '10%',
  ),
  'ASSIGNED_USER_NAME' => 
  array (
    'width' => '9%',
    'label' => 'LBL_ASSIGNED_TO_NAME',
    'module' => 'Employees',
    'id' => 'ASSIGNED_USER_ID',
    'default' => true,
  ),
);
?>
