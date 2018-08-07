<?php
//DOMAIN
define('DOMAIN', 'http://www.domenas.lt/');

// HTTP
define('HTTP_SERVER', DOMAIN);

// HTTPS
define('HTTPS_SERVER', DOMAIN);

// PATH
define('PATH', '/home/elparduo/domains/domenas.lt/public_html/');

// DIR
define('DIR_APPLICATION', PATH . 'catalog/');
define('DIR_SYSTEM', PATH . 'system/');
define('DIR_IMAGE', PATH . 'image/');
define('DIR_LANGUAGE', PATH . 'catalog/language/');
define('DIR_TEMPLATE', PATH . 'catalog/view/theme/');
define('DIR_CONFIG', PATH . 'system/config/');
define('DIR_CACHE', PATH . 'system/storage/cache/');
define('DIR_DOWNLOAD', PATH . 'system/storage/download/');
define('DIR_LOGS', PATH . 'system/storage/logs/');
define('DIR_MODIFICATION', PATH . 'system/storage/modification/');
define('DIR_UPLOAD', PATH . 'system/storage/upload/');

// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'UserVardas');
define('DB_PASSWORD', 'Paswordas');
define('DB_DATABASE', 'UserVardas');
define('DB_PORT', '3306');
define('DB_PREFIX', 'oc_');

// HTTP
// define('HTTP_SERVER', 'http://www.domenas.lt/');
// // HTTPS
// define('HTTPS_SERVER', 'http://www.domenas.lt/');
// // HTTPS
// define('HTTPS_SERVER', 'http://www.domenas.lt/');
// //GLOBAL
// define('WEBSITE_URL', 'http://www.domenas.lt/');

// // DIR
// if (!defined('DS')) {
//  define('DS', DIRECTORY_SEPARATOR); 
// }
// define('DIR_APPLICATION', $_SERVER['DOCUMENT_ROOT'].DS.'catalog'.DS);
// define('DIR_SYSTEM', $_SERVER['DOCUMENT_ROOT'].DS.'system'.DS);
// define('DIR_LANGUAGE', $_SERVER['DOCUMENT_ROOT'].DS.'catalog'.DS.'language'.DS);
// define('DIR_TEMPLATE', $_SERVER['DOCUMENT_ROOT'].DS.'catalog'.DS.'view'.DS.'theme'.DS);
// define('DIR_CONFIG', $_SERVER['DOCUMENT_ROOT'].DS.'system'.DS.'config'.DS);
// define('DIR_IMAGE', $_SERVER['DOCUMENT_ROOT'].DS.'image'.DS);
// define('DIR_CACHE', $_SERVER['DOCUMENT_ROOT'].DS.'system'.DS.'storage'.DS.'cache'.DS);
// define('DIR_MODIFICATION', $_SERVER['DOCUMENT_ROOT'].DS.'system'.DS.'storage'.DS.'modification'.DS);
// define('DIR_LOGS', $_SERVER['DOCUMENT_ROOT'].DS.'system'.DS.'storage'.DS.'logs'.DS);

