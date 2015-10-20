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
        $this->category = Category::getInstance();
        $this->post = Post::getInstance();
        $this->media = Media::getInstance();
    }

    public function actionDisplay() {
        $data = array();
        $type = 1;
        if (isset($_GET['t']) && $_GET['t'] == 'the-thao') {
            $data['lable'] = 'Thể Thao';
            $type = 2;
        } elseif (isset($_GET['t']) && $_GET['t'] == 'hai') {
             $data['lable'] = 'Hài';
            $type = 3;
        } elseif (isset($_GET['t']) && $_GET['t'] == 'dien-anh') {
             $data['lable'] = 'Điện ảnh';
            $type = 4;
        }
        $data['videos'] = $this->media->getMedias(5, 0, array('m.type' => $type), false, $order = 'm.viewed', $by = "DESC");
        $data ['allvideos'] = $this->media->getMedias(0, 0, array('m.type' => $type), false, $order = 'm.viewed', $by = "ASC");

        $this->render('default', $data);
    }

    public function actionDetail() {
        $id = $_GET['id'];

        $alias = $_GET['alias'];

        $data['video'] = $this->media->getMediaById($id);
        if ($data['video']['alias'] != $alias) {
            if ($error = Yii::app()->errorHandler->error) {
                $this->render('error', $error);
            }
        }
        $data['videosRand'] = $this->getMediaRand();

        $data['videos'] = $this->getMediaBycategory($data['video']['category_id']);
        $this->render('detail', $data);
    }

    private function getMediaByCategory($cid) {
        $media = new Media();
        $where_param = array('m.category_id' => $cid);
        return $media->getMedias(4, 0, $where_param);
    }

    private function getMediaRand() {
        $media = new Media();
        return $media->getMedias(6, 0, false, false, $order = 'm.viewed', $by = "DESC", true);
    }

    public function actionSetView() {
        if ($res = $this->media->setView($_POST['video_id'])) {
            echo json_encode($res);
        } else {
            echo json_encode(FALSE);
        }
    }

    public function actionCheckSession() {
        $media = Media::getInstance();
        $session = Yii::app()->session->get('user_data');
        if (!isset($session) && $session) {
            echo json_encode(FALSE);
        } else {

            $data = array(
                'uid' => $session['id'],
                'fid' => $_POST['id']
            );
            //Set like
            if (!$media->addUserLike($data)) {
                echo json_encode(TRUE);
            }
        }
    }

}
