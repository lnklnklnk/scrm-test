<?php
 // created: 2015-08-12 22:07:20
$layout_defs["fox_Course"]["subpanel_setup"]['fox_course_contacts'] = array (
  'order' => 100,
  'module' => 'Contacts',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_FOX_COURSE_CONTACTS_FROM_CONTACTS_TITLE',
  'get_subpanel_data' => 'fox_course_contacts',
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
