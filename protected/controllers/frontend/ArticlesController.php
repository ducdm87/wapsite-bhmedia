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
    
    public function actionDisplay() {
        $model = Article::getInstance();
        $params["items"] = $model->getTinTuc();
         
        $this->render('default', $params);
    }

    public function actionLastNews() {
        $model = Article::getInstance();
        $params["items"] = $model->getLastNews();

        $this->render('default', $params);
    }

    public function actionDetail() {

        $id = $_GET['id'];

        $alias = $_GET['alias'];

        $data['post'] = $this->post->getPostById($id);
        if ($data['post']['alias'] != $alias) {
            if ($error = Yii::app()->errorHandler->error) {
                $this->render('error', $error);
            } 
        }
        $data['category'] = $this->category->getCategoryById($data['post']['catid']);
       
        $this->render('detail', $data);
    }

}
