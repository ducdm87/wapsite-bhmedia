<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Video extends CFormModel {

    private $table = "{{videos}}";
    private $table_episode = "{{episode}}";
    private $table_categories = "{{categories}}";
    private $command;
    private $connection;

    function __construct() {
        parent::__construct();

        $this->command = Yii::app()->db->createCommand();
        $this->connection = Yii::app()->db;
    }

    static function getInstance() {
        static $instance;

        if (!is_object($instance)) {
            $instance = new Video();
        }
        return $instance;
    }
  

    public function getItems($limit = 10, $start = 0, $where = array()) {

        $obj_table = YiiTables::getInstance(TBL_VIDEOS);
        $items = $obj_table->loads("*", $conditions = "", $orderBy ="id desc", $limit, $start);
        return $items;
    }

    public function getItem($cid){
        $obj = YiiTables::getInstance(TBL_VIDEOS);        
        $obj->load($cid);
        return $obj;
    }
    
    function getListEdit($mainItem){
        
    }

}
