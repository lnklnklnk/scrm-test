<?php
 // created: 2015-08-19 16:13:22
$layout_defs["Users"]["subpanel_setup"]['fox_usertask_users'] = array (
  'order' => 100,
  'module' => 'fox_UserTask',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_FOX_USERTASK_USERS_FROM_FOX_USERTASK_TITLE',
  'get_subpanel_data' => 'fox_usertask_users',
  'top_buttons' => 
  array (
    0 => 
    array (
      'widget_class' => 'SubPanelTopButtonQuickCreate',
    ),
    1 => 
    array (
      'widget_class' => 'SubPanelTopSelectButton',
      'mode' => 'MultiSelect',
    ),
  ),
);
