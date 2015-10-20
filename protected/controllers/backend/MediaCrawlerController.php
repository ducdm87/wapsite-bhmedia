<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class MediaCrawlerController extends CController {

    public function actionGetServer() {
        if (isset($_POST) && $_POST) {
            switch ($_POST['server']) {
                case 'youtube':

                    break;
                case 'picasa':

                    break;
                case 'mclip':
                    $this->getFilmMclip($_POST['film_url']);
                    break;
                default:
                    break;
            }
        }
    }

    private function getFilmMclip($url) {
        $data = $this->curlGetMClip($url);

        $finder = new DomXPath($data);
        $classname = "vega_popup_show";
        $spaner = $finder->query("//*[contains(@class, '$classname')]");
        var_dump($spaner);
    }

    private function curlGetMClip($URL) {
        $ch = curl_init();
        $timeout = 3;
        curl_setopt($ch, CURLOPT_URL, $URL);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, $timeout);
        $tmp = curl_exec($ch);
        curl_close($ch);

        return $tmp;
    }

}
