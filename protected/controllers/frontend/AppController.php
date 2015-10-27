<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class AppController extends FrontEndController {

    public $item = array();
    private $category;
    private $post;
    private $media;

    function init() {
        parent::init();        
        $this->category = Category::getInstance();
        $this->post = Post::getInstance();
        $this->media = Media::getInstance();
    }

    public function actionDisplay() {
        $model_videos = Video::getInstance();
        
        $model_category = Category::getInstance();
        $list_category = $model_category->getItems();
        if(count($list_category)){
            $media = Media::getInstance();
            foreach ($list_category as & $category){
                $category['items'] = $media->getItems($category['id'], $feature = 1, 5);                
            }
        }
        
        $data = array();
        $model = Article::getInstance();
        $data["items_news"] = $model->getLastNews(5);
        
        
        $data['list_category'] = $list_category;              
       // $data['news'] = $list_category;              
        $this->render('default', $data);
    }

    private function getMedia() {
        $media = new Media();
        return $media->getMedias(4, 0, array('m.type' => 1));
    }

}
