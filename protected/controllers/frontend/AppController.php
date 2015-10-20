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

        $data = array();
        $data['videos'] = $this->media->getMedias(5, 0, array('m.type' => 1));
        if (isset($data['videos']) && $data['videos']) {
            foreach ($data['videos'] as $key => $video) {
                if ($key == 0) {
                    $data['video'][] = $video;
                } else {
                    unset($data['videos'][0]);
                }
            }
        }

        $data['video_sposrts'] = $this->media->getMedias(5, 0, array('m.type' => 2));
        $data['posts'] = $this->post->getPosts(5, 0, array('p.status' => 1));

        $this->render('default', $data);
    }

    private function getMedia() {
        $media = new Media();
        return $media->getMedias(4, 0, array('m.type' => 1));
    }

}
