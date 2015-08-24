<?php
// created: 2015-08-19 16:13:21
$dictionary["fox_course_contacts"] = array (
  'true_relationship_type' => 'many-to-many',
  'relationships' => 
  array (
    'fox_course_contacts' => 
    array (
      'lhs_module' => 'fox_Course',
      'lhs_table' => 'fox_course',
      'lhs_key' => 'id',
      'rhs_module' => 'Contacts',
      'rhs_table' => 'contacts',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'fox_course_contacts_c',
      'join_key_lhs' => 'fox_course_contactsfox_course_ida',
      'join_key_rhs' => 'fox_course_contactscontacts_idb',
    ),
  ),
  'table' => 'fox_course_contacts_c',
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
      'name' => 'fox_course_contactsfox_course_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'fox_course_contactscontacts_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'fox_course_contactsspk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'fox_course_contacts_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'fox_course_contactsfox_course_ida',
        1 => 'fox_course_contactscontacts_idb',
      ),
    ),
  ),
);