<?php
// created: 2015-08-16 15:17:32
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
