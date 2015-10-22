<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class FilmsController extends BackEndController {

    private $film_model;
    private $category;

    function init() {
        parent::init();
        yii::import('application.models.backend.medias.*');
        $this->film_model = Media::getInstance();
        yii::import('application.models.backend.category.*');
        $this->category = Category::getInstance();
    }

    public function actionDisplay() {
        $data = array();
        if (isset($_GET['delete']) && $_GET['delete']) {
            $this->deleteMedia($_GET['delete']);
        }
        $data['films'] = $this->film_model->getMedias(10, 0);
        $data['total'] = $this->film_model->getCountTotal();

        $this->render('default', $data);
    }

    public function actionCreate($type = false) {
        $data = array();
        if (isset($_GET['id']) && $_GET['id']) {
            $data['item'] = $this->film_model->getMediaById($_GET['id']);
        }

        $data['categories'] = $this->category->getCategories(0, 0, array('type' => VIDEO_TYPE));
        $this->render('add', $data);
    }

    public function actionAddMedia() {
        $link_data = array();
        $data = array();
        $js = '';

        if (isset($_POST) && $_POST) {

            $data['film'] = array(
                'id' => (Request::getVar('id', '')) ? Request::getVar('id', '') : false,
                'title' => Request::getVar('title', ''),
                'alias' => Request::getVar('alias', ''),
                'actor' => Request::getVar('actor', ''),
                'duration' => Request::getVar('duration', ''),
                'catID' => Request::getVar('category', ''),
                'info' => Request::getVar('info', ''),
                'film_year' => Request::getVar('film_year', ''),
                'film_area' => Request::getVar('film_area', ''),
                'status' => Request::getVar('status', ''),
                'type' => Request::getVar('type', ''),
                'cdate' => date('Y:m:d H:i:s', time()),
                'image' => Request::getVar('image', ''),
                'mdate' => isset($_POST['id']) ? date('Y:m:d H:i:s', time()) : false
            );
            if ($_POST['type'] != 2) {
                $data['episode']['episode_url'] = (Request::getVar('episode', '')) ? Request::getVar('episode', '') : Request::getVar('fecklink', '');
            }
            if (isset($data['film']['id']) && $data['film']['id']) {
                if (!$this->film_model->updateMedia($data)) {
                    YiiMessage::raseSuccess("Update bean has success!.");
                } else {
                    YiiMessage::raseWarning("Error! Update fail!.");
                }
            } else {
                if (!$this->film_model->addMedia($data)) {
                    YiiMessage::raseSuccess("Create bean has success!.");
                } else {
                    YiiMessage::raseWarning("Error! Created fail!.");
                }
            }


            $this->redirect($this->createUrl("/films"));
        }
    }

    private function deleteMedia($id) {
        if (!$this->film_model->deleteRecord($id)) {

            YiiMessage::raseSuccess("Delete bean has success!.");
        } else {

            YiiMessage::raseWarning("Error! Delete fail!.");
        }
        $this->redirect($this->createUrl("/films"));
    }

//API : get_video_info
    private static $endpoint = "http://www.youtube.com/get_video_info";

    private function getLink($id) {
        $API_URL = self::$endpoint . "?&video_id=" . $id;
        $video_info = $this->curlGet($API_URL);
        $url_encoded_fmt_stream_map = '';
        parse_str($video_info);
        if (isset($reason)) {
            return $reason;
        }
        if (isset($url_encoded_fmt_stream_map)) {
            $my_formats_array = explode(',', $url_encoded_fmt_stream_map);
        } else {
            return 'No encoded format stream found.';
        }
        if (count($my_formats_array) == 0) {
            return 'No format stream map found - was the video id correct?';
        }
        $avail_formats[] = '';
        $i = 0;
        $ipbits = $ip = $itag = $sig = $quality = $type = $url = '';
        $expire = time();
        foreach ($my_formats_array as $format) {
            parse_str($format);
            $avail_formats[$i]['itag'] = $itag;
            $avail_formats[$i]['quality'] = $quality;
            $type = explode(';', $type);
            $avail_formats[$i]['type'] = $type[0];
            $avail_formats[$i]['url'] = urldecode($url) . '&signature=' . $sig;
            parse_str(urldecode($url));
            $avail_formats[$i]['expires'] = date("G:i:s T", $expire);
            $avail_formats[$i]['ipbits'] = $ipbits;
            $avail_formats[$i]['ip'] = $ip;
            $i++;
        }
        return $avail_formats;
    }

    private function curlGet($URL) {
        $ch = curl_init();
        $timeout = 3;
        curl_setopt($ch, CURLOPT_URL, $URL);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, $timeout);
        $tmp = curl_exec($ch);
        curl_close($ch);
        return $tmp;
    }

    private function setItag($label) {
        $itag = '';
        switch ($label) {
            case '22':
                $itag = '720p HD';
                break;
            case '43':
                $itag = '480p SD';
                break;
            case'18':
                $itag = '320p MD';
                break;
            case '5':
                $itag = '180p Web';
                break;
            default:
                $itag = 'true';
                break;
        }
        return $itag;
    }

}
