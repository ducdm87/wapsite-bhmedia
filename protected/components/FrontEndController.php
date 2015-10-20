<?php

/**
 * Controller is the customized base controller class.
 * All controller classes for this application should extend from this base class.
 */
class FrontEndController extends CController {

    public $defaultAction = 'display';
    public $layout = '//app_template';
    public $menu = array();
    public $breadcrumbs = array();
    public static $permission;
    protected $user;
    protected $iconToolbar = array();
    protected $barTitle = "";
    protected $classIcon = "";
    public $metaDesc = "";
    public $metaKey = "";
    public $db = null;

    function init() {
//        echo '<br />init frontend';
        global $mainframe, $user, $db;
        global $apiKey, $isLogin, $link_ajax_login, $linkApi_Authen, $link_ajax_Logout, $link_change_pass;

        if(isset($_REQUEST['dest'])){
            $dest = $_REQUEST['dest'];
            $dest = base64_decode($dest);
            if(strpos($dest, '<>'))
            {
                $arr_dest = explode("<>", $dest);
                $arr_dest['job-title'] = $arr_dest[0];
                $arr_dest['job-link'] = $arr_dest[1];
                Yii::app()->session['dest'] = $arr_dest;               
            }
            
        }
        /*
        $link_ajax_login = MASTER_DOMAIN . "/ajax/get-login/";
        $linkApi_Authen = MASTER_DOMAIN . "/service/check-login/";
        $link_ajax_Logout = MASTER_DOMAIN . "/ajax/logout/";
        $link_change_pass = MASTER_DOMAIN . "/profile/changepassword/";
        */
        if(isset($_COOKIE['apiKey']) && strlen($_COOKIE['apiKey']) >10 )
		$apiKey = trim($_COOKIE['apiKey']);
        if($apiKey != "")
		$isLogin = sso::checkAuthentication($apiKey);
        
        $task = Request::getVar("task", "");
        if ($task != "") {
            $cmd = "action$task()";
            if (method_exists($this, $cmd))
                $this->$cmd();
        }
        $db = $this->db = Yii::app()->db;
        parent::init();
        Yii::app()->name = "Front end";
        $this->user = Yii::app()->session['userfront'];
      
        $mainframe = MainFrame::getInstance($this->db, $this->user, "frontend");
        $app = Yii::app();
        if (!$mainframe->isLogin()) {
            $duration = time() + 86400 * 365; // 365 days
        } else {
            $timeout = isset(Yii::app()->params->timeout)?Yii::app()->params->timeout:15;
            $duration = time() + $timeout*60; // 365 days
        }

        $cookie = new CHttpCookie(session_name(), session_id(), array("expire" => $duration));
        $app->getRequest()->getCookies()->add($cookie->name, $cookie);
        
        $afterLogin = (isset($_SESSION['afterLogin']) and $_SESSION['afterLogin'] == 1)?1:0;
        if($isLogin == 1 and $afterLogin == 0)
        {
            if(ENABLE_SSO == 1) $clientID = $apiKey;
            else $clientID = session_id();
            $this->afterLogin($clientID, $clientID);
            $_SESSION['afterLogin'] = 1;
        } 
    }

    function loadItem($value = 0, $fieldName = "", $tablename = "") {
        if ($value === 0 || $value == "") {
            return $this->item;
        }
 
        $value = trim($value);
        if ($fieldName == "")
            $fieldName = $this->primary;
        if ($tablename == "")
            $tablename = $this->tablename;

        $query = "SELECT * FROM " . $tablename . " WHERE " . $fieldName . " = :fieldvalue ";
        $query_command = $this->db->createCommand($query);
        $query_command->bindParam(':fieldvalue', $value);

        $item = $query_command->queryRow();
        return $item;
    }

    function storeItem($_item = null, $tableName = null, $primary = null) {
 
        if ($_item == null)
            $item = $this->item;
        else $item = $_item;
        if ($tableName == null)
            $tableName = $this->tablename;
        if ($primary == null)
            $primary = $this->primary;

        $insterted = array();
        foreach ($item as $k => $val) {
            $insterted[] = "$k=:$k";
        }
        $insterted = implode(",", $insterted);

        $query = "";
        if ($item[$primary] != 0) {
            if (isset($item['mdate']))
                $item['mdate'] = date("Y-m-d H:i:s");
            $query = "UPDATE " . $tableName . " SET " . $insterted . " WHERE " . $primary . " = " . $item[$primary];
        } else {
            if (isset($item['cdate']))
                $item['cdate'] = date("Y-m-d H:i:s");
            if (isset($item['mdate']))
                $item['mdate'] = date("Y-m-d H:i:s");
            $query = "INSERT INTO " . $tableName . " SET " . $insterted;
        }
        $query_command = $this->db->createCommand($query);
        foreach ($item as $key => $value) {
            $query_command->bindParam(':' . $key, $item[$key]);
        }
        
        $query_command->execute();
        if ($item[$primary] == 0)
            $item[$primary] = $this->db->lastInsertID;
        if ($_item == null)
            $this->item = $item;
        return $item[$primary];
    }

    function convertalias($string) {
        $alias = $string;

        $coDau = array("à", "á", "ạ", "ả", "ã", "â", "ầ", "ấ", "ậ", "ẩ", "ẫ", "ă",
            "ằ", "ắ", "ặ", "ẳ", "ẵ",
            "è", "é", "ẹ", "ẻ", "ẽ", "ê", "ề", "ế", "ệ", "ể", "ễ",
            "ì", "í", "ị", "ỉ", "ĩ",
            "ò", "ó", "ọ", "ỏ", "õ", "ô", "ồ", "ố", "ộ", "ổ", "ỗ", "ơ"
            , "ờ", "ớ", "ợ", "ở", "ỡ",
            "ù", "ú", "ụ", "ủ", "ũ", "ư", "ừ", "ứ", "ự", "ử", "ữ",
            "ỳ", "ý", "ỵ", "ỷ", "ỹ",
            "đ",
            "À", "Á", "Ạ", "Ả", "Ã", "Â", "Ầ", "Ấ", "Ậ", "Ẩ", "Ẫ", "Ă"
            , "Ằ", "Ắ", "Ặ", "Ẳ", "Ẵ",
            "È", "É", "Ẹ", "Ẻ", "Ẽ", "Ê", "Ề", "Ế", "Ệ", "Ể", "Ễ",
            "Ì", "Í", "Ị", "Ỉ", "Ĩ",
            "Ò", "Ó", "Ọ", "Ỏ", "Õ", "Ô", "Ồ", "Ố", "Ộ", "Ổ", "Ỗ", "Ơ"
            , "Ờ", "Ớ", "Ợ", "Ở", "Ỡ",
            "Ù", "Ú", "Ụ", "Ủ", "Ũ", "Ư", "Ừ", "Ứ", "Ự", "Ử", "Ữ",
            "Ỳ", "Ý", "Ỵ", "Ỷ", "Ỹ",
            "Đ", "ê", "ù", "à");

        $khongDau = array("a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a"
            , "a", "a", "a", "a", "a", "a",
            "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e",
            "i", "i", "i", "i", "i",
            "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o"
            , "o", "o", "o", "o", "o",
            "u", "u", "u", "u", "u", "u", "u", "u", "u", "u", "u",
            "y", "y", "y", "y", "y",
            "d",
            "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A"
            , "A", "A", "A", "A", "A",
            "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E",
            "I", "I", "I", "I", "I",
            "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O"
            , "O", "O", "O", "O", "O",
            "U", "U", "U", "U", "U", "U", "U", "U", "U", "U", "U",
            "Y", "Y", "Y", "Y", "Y",
            "D", "e", "u", "a");

        $alias = str_replace($coDau, $khongDau, $alias);

        $coDau = array("̀", "́", "̉", "̃", "̣", "“", "”", ".");
        $khongDau = array("", "", "", "", "", "", "", "");
        $alias = str_replace($coDau, $khongDau, $alias);

        $alias = preg_replace('/[^a-zA-Z0-9-.]/', '-', $alias);
        $alias = preg_replace('/^[-]+/', '', $alias);
        $alias = preg_replace('/[-]+$/', '', $alias);
        $alias = preg_replace('/[-]{2,}/', '-', $alias);
        return $alias;
    }

    function afterLogin($old_session_id, $new_session_id) {
        return true;
        global $mainframe, $user;
        $user_id = $mainframe->getUserID();
        $table_name = "{{rsm_resume}}";

        $query = "UPDATE " . $table_name . " SET user_id =:user_id, client_id=:client_id WHERE client_id=:oldclient_id";
        $query_command = $this->db->createCommand($query);
        $query_command->bindParam(':user_id', $user_id);
        $query_command->bindParam(':client_id', $new_session_id);
        $query_command->bindParam(':oldclient_id', $old_session_id);
        $query_command->execute();

        return true;
    }

    function take_file_name($external_image_url) {
        $external_image_url = $this->convertalias($external_image_url);
        $image_filename = preg_replace('/.*\/(.*)/', '$1', urldecode($external_image_url));
        $image_filename = preg_replace('/[^a-zA-Z0-9-.]/', '-', $image_filename);
        $image_filename = str_replace(' ', '-', $image_filename);
        $image_filename = preg_replace('/^[-]+/', '', $image_filename);
        $image_filename = preg_replace('/[-]+$/', '', $image_filename);
        $image_filename = preg_replace('/[-]{2,}/', '-', $image_filename);
        $image_filename = str_replace('.jpg', '.jpeg', $image_filename);
        if (strlen($image_filename) > 80)
            $image_filename = substr($image_filename, -80);
        $image_filename = trim($image_filename, '-');
        $image_filename = trim($image_filename);
        return $image_filename;
    } 
}
