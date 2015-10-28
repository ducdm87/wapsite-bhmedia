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

    // trang chu video
    public function actionDisplay() {
         
    }

    // danh muc video
    function actionCategory(){
        $model = Video::getInstance();
        
        $catAlias = Request::getVar('alias',null);
        $page = Request::getVar('page',1);
        $limit = 12;
        
        $data['alias'] = $catAlias;
        $data['category'] = $model->getCategory(null, $catAlias);
          
        if($data['category'] == false){
            $this->redirect($this->createUrl("app/"));
        }
        if($page == 1)
            $data['items'] = $model->getItems($data['category']['id'], true,5);
        $start = ($page - 1)*$limit;
        $data['items2'] = $model->getItems($data['category']['id'], false,$limit, $start);
       
        if($data['category']['total'] > $start  + $limit ){            
            $page++;
        }else $page--;
        $catAlias = $data['category']['alias'];
        if($page>1){            
            $data['category']['pagemore'] = Yii::app()->createUrl("videos/category", array("alias"=>$catAlias, "page"=>$page));
        }else if($page == 1)
            $data['category']['pagemore'] = Yii::app()->createUrl("videos/category", array("alias"=>$catAlias));
 
        $this->render('category', $data);
    }
    
    // chi tiet video
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
        $data['category'] = $model->getCategory($item['catID']);
         
        
        $data['item'] = $item;
        $data['items'] = $items;
        $data['items2'] = $items2;
        $this->render('detail', $data);
    }     
 
    // tang view khi play
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
    
    // like video
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
