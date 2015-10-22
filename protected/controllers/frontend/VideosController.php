<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class VideosController extends FrontEndController {

    public $item = array();
    private $category;
    private $post;
    private $media;

    function init() {
        parent::init();       
       
       // $this->category = Category::getInstance();
        //$this->post = Post::getInstance();
        $this->media = Media::getInstance();
    }

    public function actionDisplay() {
        $data = array();
        $type = 1;
        $model = Video::getInstance();
         
        $data['videos'] = $model->getMedias(5, 0, array('m.type' => $type), false, $order = 'm.viewed', $by = "DESC");
        $data ['allvideos'] = $model->getMedias(0, 0, array('m.type' => $type), false, $order = 'm.viewed', $by = "ASC");

        $this->render('default', $data);
    }

    public function actionDetail() {
        $id = Request::getVar('id',null);
        $alias = Request::getVar('alias',null);

        $model =  Video::getInstance();
        if($id == null OR $id == ""){
            if($alias != null and $alias != ""){
                $item = $model->getItemByAlias($alias);
            }else{
                header("Location: /");
            }
        }else{
            $item = $model->getItem($id);
        }
        
        $items = $model->getItems($item['catID'], true,4);
        $items2 = $model->getItems($item['catID'], false,15);
        $data['item'] = $item;
        $data['items'] = $items;
        $data['items2'] = $items2;
        $this->render('detail', $data);
    }
    
    function actionCategory(){
        $model = Video::getInstance();
        
        $catAlias = Request::getVar('alias',null);
        $data['alias'] = $catAlias;
        $data['category'] = $model->getCategoryByAlias($catAlias);
        if($data['category'] == false){
            $this->redirect($this->createUrl("app/"));
        }
        $data['items'] = $model->getItems($data['category']['id'], true,5);
        $data['items2'] = $model->getItems($data['category']['id'], false,9);
        $this->render('category', $data);
    }
 
    public function actionSetView() {
        $id = Request::getVar('id',null);
        $model = Video::getInstance();
        if ($res = $model->setView($id)) {
            $str_out = "var vsvcdpd = $res; $('.entry-viewed span').text(vsvcdpd) ";
            echo $str_out;
        } else {
            echo json_encode(FALSE);
        }
    }
    
    function actionLikevideo(){
        $id = Request::getVar('id',null);
        $model = Video::getInstance();
        
        $like_videos = Yii::app()->session['like-video'];
        
        if($like_videos == null) $like_videos = array();
        if(isset($like_videos[$id])){
            $res = $model->get_readview($id);
        }else{
            $model = Video::getInstance();
            $res = $model->setLike($id);
        }
        
        $like_videos[$id] = $id;
        Yii::app()->session['like-video'] = $like_videos;        
        $str_out = "var vlvcdpd = $res; $('.entry-info .fa-thumbs-o-up').css('color','black') ";
        echo $str_out;
        die;
    }
}
