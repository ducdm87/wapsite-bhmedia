<?php 
//error_reporting(E_ALL & ~E_NOTICE & ~E_WARNING & ~E_DEPRECATED & ~E_STRICT);
error_reporting(E_ALL);
global $classSuffix;
$classSuffix = "";
require_once dirname(__FILE__).'/protected/includes/libs/request.php';
$config_frontend = "app.php";
require_once dirname(__FILE__).'/protected/functions.php';
require_once dirname(__FILE__).'/protected/define.php';


$yii = dirname(__FILE__).'/framework/yii.php';
$config = dirname(__FILE__)."/protected/config/$config_frontend";

// Remove the following lines when in production mode
defined('YII_DEBUG') or define('YII_DEBUG', true);
defined('YII_TRACE_LEVEL') or define('YII_TRACE_LEVEL', 3);
 
require_once($yii);
Yii::createWebApplication($config)->runEnd('frontend');