<?php
define('DOMAIN', 'http://opencart.develop/');

// HTTP
define('HTTP_SERVER', DOMAIN);

// HTTPS
define('HTTPS_SERVER', DOMAIN);

define('PATH', '/Applications/AMPPS/www/opencart.develop/');

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
define('DB_USERNAME', 'root');
define('DB_PASSWORD', 'root');
define('DB_DATABASE', 'oc2302j0');
define('DB_PORT', '3306');
define('DB_PREFIX', 'oc_');