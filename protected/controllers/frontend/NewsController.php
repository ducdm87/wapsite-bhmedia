<?php

class NewsController extends FrontEndController {

    private $category;
    private $post;

    function init() {
        parent::init();
        // yii::import('application.models.frontend.*');
        $this->category = Category::getInstance();
        $this->post = Post::getInstance();
    }

    public function actionDisplay() {
        $data = array();


        $data['categories'] = $this->category->getCategories(10, 0, array('type' => NEWS_TYPE));
        if (isset($data['categories']) && $data['categories']) {
            foreach ($data['categories'] as $key => $category) {
                if ($posts_category = $this->post->getPostByCategories($category['id'], 10, 0, array('p.status' => 1))) {
                    foreach ($posts_category as $post) {
                        if (isset($post['catid']) && ($post['catid'] == $category['id'])) {
                            $data['categories'][$key]['posts'][] = $post;
                        }
                    }
                }
            }
        }

        $this->render('default', $data);
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
