<?php
// created: 2015-08-14 11:27:13
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
