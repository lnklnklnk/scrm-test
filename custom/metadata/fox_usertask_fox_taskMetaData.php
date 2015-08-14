<?php
// created: 2015-08-14 11:27:13
$dictionary["fox_usertask_fox_task"] = array (
  'true_relationship_type' => 'one-to-many',
  'relationships' => 
  array (
    'fox_usertask_fox_task' => 
    array (
      'lhs_module' => 'fox_Task',
      'lhs_table' => 'fox_task',
      'lhs_key' => 'id',
      'rhs_module' => 'fox_UserTask',
      'rhs_table' => 'fox_usertask',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'fox_usertask_fox_task_c',
      'join_key_lhs' => 'fox_usertask_fox_taskfox_task_ida',
      'join_key_rhs' => 'fox_usertask_fox_taskfox_usertask_idb',
    ),
  ),
  'table' => 'fox_usertask_fox_task_c',
  'fields' => 
  array (
    0 => 
    array (
      'name' => 'id',
      'type' => 'varchar',
      'len' => 36,
    ),
    1 => 
    array (
      'name' => 'date_modified',
      'type' => 'datetime',
    ),
    2 => 
    array (
      'name' => 'deleted',
      'type' => 'bool',
      'len' => '1',
      'default' => '0',
      'required' => true,
    ),
    3 => 
    array (
      'name' => 'fox_usertask_fox_taskfox_task_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'fox_usertask_fox_taskfox_usertask_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'fox_usertask_fox_taskspk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'fox_usertask_fox_task_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'fox_usertask_fox_taskfox_task_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'fox_usertask_fox_task_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'fox_usertask_fox_taskfox_usertask_idb',
      ),
    ),
  ),
);