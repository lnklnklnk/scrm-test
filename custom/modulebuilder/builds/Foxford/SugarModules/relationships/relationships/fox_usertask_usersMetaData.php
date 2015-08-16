<?php
// created: 2015-08-16 15:17:32
$dictionary["fox_usertask_users"] = array (
  'true_relationship_type' => 'one-to-many',
  'relationships' => 
  array (
    'fox_usertask_users' => 
    array (
      'lhs_module' => 'Users',
      'lhs_table' => 'users',
      'lhs_key' => 'id',
      'rhs_module' => 'fox_UserTask',
      'rhs_table' => 'fox_usertask',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'fox_usertask_users_c',
      'join_key_lhs' => 'fox_usertask_usersusers_ida',
      'join_key_rhs' => 'fox_usertask_usersfox_usertask_idb',
    ),
  ),
  'table' => 'fox_usertask_users_c',
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
      'name' => 'fox_usertask_usersusers_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'fox_usertask_usersfox_usertask_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'fox_usertask_usersspk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'fox_usertask_users_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'fox_usertask_usersusers_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'fox_usertask_users_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'fox_usertask_usersfox_usertask_idb',
      ),
    ),
  ),
);