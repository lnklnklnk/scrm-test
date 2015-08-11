<?PHP
$manifest = array( 
	'name' => 'RUSSIAN RAPIRA LANGUAGE PACK FOR SUGARCRM',
	'description' => 'заключительный перевод для SugaCRM CE 6.x на великий и могучий, перевод продолжен здесь: https://github.com/likhobory/SuiteCRM7RU',
	'type' => 'langpack',
	'is_uninstallable' => 'Yes',
	'acceptable_sugar_versions' =>
		  array (),
	'acceptable_sugar_flavors' =>
		  array('CE'),
	'author' => 'likhobory',
    'version' => '6.5.17',
	'published_date' => '2014/07/21',
      );

$installdefs = array(
	'id'=> 'ru_ru',
	'image_dir'=>'<basepath>/images',
	'copy' => array(
	array('from'=> '<basepath>/include','to'=>'include',),
	array('from'=> '<basepath>/modules','to'=>'modules'),
	array('from'=> '<basepath>/install','to'=>'install'),

                        )
 );
?>