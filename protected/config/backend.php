<?php

$settings = array(
    'defaultController' => 'cpanel',
    'components' => array(
        'urlManager' => array(
            'urlFormat' => 'path',
                      'rules' => array(
                'backend/ ' => 'cpanel/display',
                'backend' => 'cpanel/display',
                
                                                               
                'backend/<controller>' => '<controller>',
                'backend/<controller>/<action>' => '<controller>/<action>',
                                
                                             
            ),
        ),
        'user' => array(
            'loginUrl' => array('users/login'),
        ),
        'session' => array(
            'class' => 'CHttpSession',
            'sessionName' => md5("back-end-yii:bdasbdabdba"),
        ),
    ),
    'import' => array(
        'application.models.*',
        'application.models.backend.*',        
        'application.includes.*',
        'application.includes.libs.*',
        'application.includes.html.*',
        'application.includes.html.elements.*',
        'application.includes.html.menus.*',
        'application.includes.html.menus.elements.*',
    ),
    'params' => array(
        'timeout' => '60',       
    ),
);
return CMap::mergeArray(
                require(dirname(__FILE__) . '/main.php'), $settings
);
