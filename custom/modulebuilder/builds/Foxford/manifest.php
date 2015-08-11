<?php
/*********************************************************************************
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2013 SugarCRM Inc.
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License version 3 as published by the
 * Free Software Foundation with the addition of the following permission added
 * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
 * IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
 * OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU Affero General Public License along with
 * this program; if not, see http://www.gnu.org/licenses or write to the Free
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301 USA.
 * 
 * You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
 * SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
 * 
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 * 
 * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * SugarCRM" logo. If the display of the logo is not reasonably feasible for
 * technical reasons, the Appropriate Legal Notices must display the words
 * "Powered by SugarCRM".
 ********************************************************************************/


// THIS CONTENT IS GENERATED BY MBPackage.php
$manifest = array (
  0 => 
  array (
    'acceptable_sugar_versions' => 
    array (
      0 => '',
    ),
  ),
  1 => 
  array (
    'acceptable_sugar_flavors' => 
    array (
      0 => 'CE',
      1 => 'PRO',
      2 => 'ENT',
    ),
  ),
  'readme' => '',
  'key' => 'fox',
  'author' => '',
  'description' => '',
  'icon' => '',
  'is_uninstallable' => true,
  'name' => 'Foxford',
  'published_date' => '2015-08-11 15:03:47',
  'type' => 'module',
  'version' => 1439305432,
  'remove_tables' => 'prompt',
);


$installdefs = array (
  'id' => 'Foxford',
  'beans' => 
  array (
    0 => 
    array (
      'module' => 'fox_Course',
      'class' => 'fox_Course',
      'path' => 'modules/fox_Course/fox_Course.php',
      'tab' => false,
    ),
  ),
  'layoutdefs' => 
  array (
    0 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/layoutdefs/fox_course_contacts_1_Contacts.php',
      'to_module' => 'Contacts',
    ),
    1 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/layoutdefs/fox_course_contacts_1_fox_Course.php',
      'to_module' => 'fox_Course',
    ),
    2 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/layoutdefs/fox_course_contacts_Contacts.php',
      'to_module' => 'Contacts',
    ),
    3 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/layoutdefs/fox_course_contacts_fox_Course.php',
      'to_module' => 'fox_Course',
    ),
  ),
  'relationships' => 
  array (
    0 => 
    array (
      'meta_data' => '<basepath>/SugarModules/relationships/relationships/fox_course_contacts_1MetaData.php',
    ),
    1 => 
    array (
      'meta_data' => '<basepath>/SugarModules/relationships/relationships/fox_course_contactsMetaData.php',
    ),
  ),
  'image_dir' => '<basepath>/icons',
  'copy' => 
  array (
    0 => 
    array (
      'from' => '<basepath>/SugarModules/modules/fox_Course',
      'to' => 'modules/fox_Course',
    ),
  ),
  'language' => 
  array (
    0 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/Contacts.php',
      'to_module' => 'Contacts',
      'language' => 'en_us',
    ),
    1 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/Contacts.php',
      'to_module' => 'Contacts',
      'language' => 'ru_ru',
    ),
    2 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/fox_Course.php',
      'to_module' => 'fox_Course',
      'language' => 'en_us',
    ),
    3 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/fox_Course.php',
      'to_module' => 'fox_Course',
      'language' => 'ru_ru',
    ),
    4 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/Contacts.php',
      'to_module' => 'Contacts',
      'language' => 'en_us',
    ),
    5 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/Contacts.php',
      'to_module' => 'Contacts',
      'language' => 'ru_ru',
    ),
    6 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/fox_Course.php',
      'to_module' => 'fox_Course',
      'language' => 'en_us',
    ),
    7 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/language/fox_Course.php',
      'to_module' => 'fox_Course',
      'language' => 'ru_ru',
    ),
    8 => 
    array (
      'from' => '<basepath>/SugarModules/language/application/en_us.lang.php',
      'to_module' => 'application',
      'language' => 'en_us',
    ),
  ),
  'vardefs' => 
  array (
    0 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/fox_course_contacts_1_Contacts.php',
      'to_module' => 'Contacts',
    ),
    1 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/fox_course_contacts_1_fox_Course.php',
      'to_module' => 'fox_Course',
    ),
    2 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/fox_course_contacts_Contacts.php',
      'to_module' => 'Contacts',
    ),
    3 => 
    array (
      'from' => '<basepath>/SugarModules/relationships/vardefs/fox_course_contacts_fox_Course.php',
      'to_module' => 'fox_Course',
    ),
  ),
);