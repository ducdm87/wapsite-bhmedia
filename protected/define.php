<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

define("ENABLE_MULTISITE", 1); 

$domain = "vietbao.vn"; 

$news_scope = "";

if(ENABLE_MULTISITE == 1){
    $domain = $_SERVER['HTTP_HOST'];
    switch($domain){
        default :
        case "dev.wapsite.com";
        case "alpha.film.dev";
            $config_frontend = "app.php";
            $news_scope = 'app';
            $_GET['scope'] = 'app';
            $_REQUEST['scope'] = 'app';
            break;
        
    }
}

define("MAILFROM", "ducdm87@gmail.com");
define("WEB_SITE", $domain);
define("WEB_URL", "http://$domain");
define("TIME_OUT_ACTIVE_ACCOUNT", "2");
define("TIME_OUT_ACTIVE_UNIT", "days");
define("DEFAULT_GROUPID", 19);
define("PATH_SITE", dirname(__FILE__));   

define("ENABLE_SSO", 0);

define("ROOT_PATH", dirname(dirname(__FILE__)) ."/");
define('PATH_APIFILE', ROOT_PATH . "tmp/apifile/");

global $sys_config, $sys_menu;
$sys_menu = $sys_config = array();

setSysConfig("colright.display",true); 
setSysConfig("page.classSuffix","");
setSysConfig("news.scope",$news_scope);
setSysConfig("news.detail.showpath",1);
setSysConfig("news.limit",10);

setSysConfig("seopage.title","seo page title"); 
setSysConfig("seopage.keyword","seo page keyword"); 
setSysConfig("seopage.description", "seo page description");


/*
 * controll: 0
 * action: 1 
 * page-tpl: 2
 * layout: 3
 *  */

