<?php
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
