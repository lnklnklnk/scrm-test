<?php
 // created: 2015-08-11 17:03:52
$layout_defs["fox_Course"]["subpanel_setup"]['fox_course_contacts_1'] = array (
  'order' => 100,
  'module' => 'Contacts',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_FOX_COURSE_CONTACTS_1_FROM_CONTACTS_TITLE',
  'get_subpanel_data' => 'fox_course_contacts_1',
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
