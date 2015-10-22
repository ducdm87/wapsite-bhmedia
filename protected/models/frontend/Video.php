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
    private $table_like = "{{like}}";
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
     
    function getItems($catID = null, $feature = 0, $limit = 10, $start = 0)
    {
//        filter_order, filter_order_Dir, limit, limitstart
        $filter_order = Request::getVar('filter_order','viewed');
        $filter_order_Dir = Request::getVar('filter_order_Dir','DESC');
        $command = Yii::app()->db->createCommand();
        
        $command->limit($limit, $start);
        $command->order("$filter_order $filter_order_Dir");
        $where = array();
        $where[] = "c.id = $catID";
        $where[] = "a.feature = 1";
        $command->where(implode(" AND ", $where));
        
        $items = $command->select('a.*,c.title as name,c.alias as calias, c.id as cid,ep.*,lk.*')
                ->from("$this->table  a")
                ->join("$this->table_categories  c", 'a.catID=c.id')
                ->join("$this->table_episode  ep", 'a.id=ep.film_id')
                ->leftjoin("$this->table_like lk", "a.id=lk.fid")
                ->queryAll();
   
        
        if(count($items))
            foreach($items as & $item){
                $item['slug'] = $item['id']."-".$item['alias'];
                $item['link'] = Yii::app()->createUrl("videos/detail", array("id"=> $item['id'], "alias"=>$item['alias']));
            }
        return $items;
    }
    
    function getCategoryByAlias($catAlias){
         $command = $this->command->select('*')
                ->from("$this->table_categories")
                ->where("alias=:alias");
         $command->bindValue(":alias", $catAlias);
         $item = $command->queryRow();
                 
         
        return $item;
    }
    
    function getItem($id){
        $command = Yii::app()->db->createCommand();
        $where = array();
        $where[] = " a.status = 1 ";
        $where[] = " a.id = $id ";
        $where[] = " b.status = 1 ";
        $command->where(implode(" AND ", $where));
        
        $item = $command->select('a.*,b.title cat_title, b.alias cat_alias')
                ->from("$this->table  a")                
                ->leftjoin("$this->table_categories  b", 'a.catID=b.id')
                ->queryRow();
        $item['slug'] = $item['id']."-".$item['alias'];
        $item['catslug'] = $item['catID']."-".$item['cat_alias'];
        $item['link'] = Yii::app()->createUrl("videos/detail", array("id"=>$item['id'],"alias"=>$item['alias']));
        $item['link_view'] = Yii::app()->createUrl("videos/setview", array("id"=> $item['id']));
        $item['link_like'] = Yii::app()->createUrl("videos/likevideo", array("id"=> $item['id']));
//        $item['link2'] = Yii::app()->createUrl("videos/detail", array("alias"=>$item['alias']));
        $item['catlink'] = Yii::app()->createUrl("videos/category", array("alias"=>$item['cat_alias']));
        
        $like_videos = Yii::app()->session['like-video'];
        if(isset($like_videos[$id])) $item['allowlike'] = false;
        else $item['allowlike'] = true;
        
        return $item;
    }
    
    function getItemByAlias($alias){
        $command = Yii::app()->db->createCommand();
        $where = array();
        $where[] = " a.status = 1 ";
        $where[] = " a.alias = '$alias' ";
        $where[] = " b.status = 1 ";
        $command->where(implode(" AND ", $where));
        
        $item = $command->select('a.*,b.title cat_title, b.alias cat_alias')
                ->from("$this->table  a")                
                ->leftjoin("$this->table_categories  b", 'a.catID=b.id')
                ->queryRow();
        $item['slug'] = $item['id']."-".$item['alias'];
        $item['catslug'] = $item['catID']."-".$item['cat_alias'];
        $item['link'] = Yii::app()->createUrl("videos/detail", array("id"=>$item['id'],"alias"=>$item['alias']));       
        $item['catlink'] = Yii::app()->createUrl("videos/category", array("alias"=>$item['cat_alias']));
        return $item;
    }
    
     public function setLike($id) {
        $old_value = $this->get_videoLike($id);     
        $old_value = intval($old_value);
        $new_value = $old_value != 0 ? $old_value + 1 : 1;
        $data = array('like' => $new_value);
        $transaction = $this->connection->beginTransaction();
        try {
            $this->command->update($this->table, $data, 'id=:id', array('id' => $id));
            $transaction->commit();
            return $new_value;
        } catch (Exception $e) {
            Yii::log('Eror!: ' + $e->getMessage());
            return $transaction->rollBack();
        }
    }

    public function get_videoLike($id) {
        $command = Yii::app()->db->createCommand();
         
        $result = $command->select('like')
                ->from($this->table)
                ->where('id=:id', array('id' => $id))
                ->queryScalar();        
        return $result;
    }
    
    public function setView($id) {
        $old_view = $this->get_readview($id);     
        $old_view = intval($old_view);
        $new_view = $old_view != 0 ? $old_view + 1 : 1;
        $data = array('viewed' => $new_view);
        $transaction = $this->connection->beginTransaction();
        try {
            $this->command->update($this->table, $data, 'id=:id', array('id' => $id));
            $transaction->commit();
            return $new_view;
        } catch (Exception $e) {
            Yii::log('Eror!: ' + $e->getMessage());
            return $transaction->rollBack();
        }
    }

    public function get_readview($id) {
        $command = Yii::app()->db->createCommand();
         
        $result = $command->select('viewed')
                ->from($this->table)
                ->where('id=:id', array('id' => $id))
                ->queryScalar();        
        return $result;
    }

}
