<?php
// created: 2015-08-14 11:27:13
$dictionary["fox_usertask_contacts"] = array (
  'true_relationship_type' => 'one-to-many',
  'relationships' => 
  array (
    'fox_usertask_contacts' => 
    array (
      'lhs_module' => 'Contacts',
      'lhs_table' => 'contacts',
      'lhs_key' => 'id',
      'rhs_module' => 'fox_UserTask',
      'rhs_table' => 'fox_usertask',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'fox_usertask_contacts_c',
      'join_key_lhs' => 'fox_usertask_contactscontacts_ida',
      'join_key_rhs' => 'fox_usertask_contactsfox_usertask_idb',
    ),
  ),
  'table' => 'fox_usertask_contacts_c',
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
      'name' => 'fox_usertask_contactscontacts_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'fox_usertask_contactsfox_usertask_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'fox_usertask_contactsspk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'fox_usertask_contacts_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'fox_usertask_contactscontacts_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'fox_usertask_contacts_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'fox_usertask_contactsfox_usertask_idb',
      ),
    ),
  ),
);