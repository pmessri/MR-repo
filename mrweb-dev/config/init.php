<?php

date_default_timezone_set('America/Los_Angeles');

####################################################
### CONSTANTS
####################################################

define('PROJECT_PATH',				'/var/www/html/dtek.motionreptiles.com');
define('PROJECT_CONFIG',			PROJECT_PATH . '/config');

define('PROJECT_HTDOCS',			PROJECT_PATH . '/htdocs');
define('PROJECT_LOGS',				PROJECT_PATH . '/logs');

define('SMARTY_PATH',				PROJECT_CONFIG . '/smarty');
define('SMARTY_TEMPLATES',			SMARTY_PATH . '/templates');
define('SMARTY_TEMPLATES_COMPILE',	SMARTY_PATH . '/templates_c');
define('SMARTY_CACHE',				SMARTY_PATH . '/cache');
define('SMARTY_CONFIG',				SMARTY_PATH . '/cache');

define('WEB_URL',					'http://www.motionreptiles.com');
define('WEB_CSS',					'js');
define('WEB_JS',					'css');

####################################################
### Templating
####################################################

require(SMARTY_PATH . '/libs/Smarty.class.php');
$smarty = new Smarty();

$smarty->setTemplateDir(SMARTY_TEMPLATES);
$smarty->setCompileDir(SMARTY_TEMPLATES_COMPILE);
$smarty->setCacheDir(SMARTY_CACHE);
$smarty->setConfigDir(SMARTY_CONFIG);

####################################################
### Database
####################################################

define('DB_DATABASE',		'mrweb');
define('DB_HOSTNAME',		'localhost');
define('DB_PORT',			'3306');
define('DB_USERNAME',		'mrweb');
define('DB_PASSWORD',		'Px0294023920');

####################################################
### Functions
####################################################

require(PROJECT_PATH . '/functions/database.php');
require(PROJECT_PATH . '/functions/projects.php');

?>
