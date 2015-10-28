<?php

class ArticlesController extends FrontEndController {

    private $category;
    private $post;

    function init() {
        parent::init();
        // yii::import('application.models.frontend.*');
        $this->category = Category::getInstance();
        $this->post = Article::getInstance();
    }
    
    // trang chu tin tuc
    public function actionDisplay() {
        $model = Article::getInstance();
        $params["items"] = $model->getTinTuc();
         
        $this->render('default', $params);
    } 
    
    // trang chuyen muc
    public function actionCategory() { 
        $model = Article::getInstance();
        
        $catAlias = Request::getVar('alias',null);
        $page = Request::getVar('page',1);
         
        $limit = 12;
        
        $data['alias'] = $catAlias;
        $data['category'] = $model->getCategory(null, $catAlias);
        if($data['category'] == false){
            $this->redirect($this->createUrl("articles/"));
        }
        
        $start = ($page - 1)*$limit;
        $data['category']['items'] = $model->getArticlesCategoy($data['category']['id'],$start, $limit);
        if($data['category']['total'] > $start  + $limit ){            
            $page++;
        }else $page--;
        if($page>1){
            $catAlias = $data['category']['alias'];
            $data['category']['pagemore'] = Yii::app()->createUrl("articles/category", array("alias"=>$catAlias, "page"=>$page));
        }elseif($page == 1)
            $data['category']['pagemore'] = Yii::app()->createUrl("articles/category", array("alias"=>$catAlias));
        $this->render('category', $data);
    }

    // trang chi tiet
    public function actionDetail() {

        $cid = Request::getVar('id',null);
        $alias = Request::getVar('alias',null);
        $model = Article::getInstance();
        $data['item'] = $model->getItem($cid, $alias);
        $data['category'] = $model->getCategory($data['item']['catID']);
       
        $this->render('detail', $data);
    }

}
