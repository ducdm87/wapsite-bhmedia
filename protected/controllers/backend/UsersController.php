<?php

class UsersController extends BackEndController {

    var $primary = 'id';
    var $tablename = "{{users}}";
    var $tbl_group = "{{users_group}}";
    private $model_group;
    private $model;
    private $request;

    function init() {
        parent::init();

        $this->model = new Users();
        $this->model_group = new Group();
        $this->request = Yii::app()->getRequest();
    }

    public function actionDisplay() {

//        $this->addIconToolbar("logout", $this->createUrl("/user/logout"),"cancel");
        $this->addIconToolbar("Edit", $this->createUrl("/user/edit"), "edit", 1, 1, "Please select a item from the list to edit");
        $this->addIconToolbar("New", $this->createUrl("/user/new"), "new");
        $this->addIconToolbarDelete();
        $this->addBarTitle("User <small>[list]</small>", "user");

        $task = Request::getVar('task', "");
        if ($task == "hidden" OR $task == 'publish' OR $task == "unpublish") {
            $cids = Request::getVar('cid');
            for ($i = 0; $i < count($cids); $i++) {
                $cid = $cids[$i];
                $item = $this->loadItem($cid, "id", $this->tablename);

                if ($item['status'] == 0)
                    $item['status'] = 1;
                else if ($item['status'] == 1)
                    $item['status'] = 2;
                else if ($item['status'] == 2)
                    $item['status'] = 0;

                $this->storeItem($item, $this->tablename);
            }
            YiiMessage::raseSuccess("Successfully saved changes status for users");
        }



        $model = new Users();
        $list_user = $model->getUsers();
        $arr_group = $model->getGroups();

//        $this->pageTitle = "Home page Display";        
        $this->render('users', array("list_user" => $list_user, 'arr_group' => $arr_group));
    }

    
     public function actionLogout() {
        Yii::app()->session['userbackend'] = null;
//        Yii::app()->user->logout();
        $this->redirect($this->createUrl('login'));
    }

    function actionCancel() {
        $this->redirect($this->createUrl('users/'));
    }

    function actionNew() {
        $this->addIconToolbar("Save", $this->createUrl("/user/save"), "save");
        $this->addIconToolbar("Apply", $this->createUrl("/user/apply"), "apply");
        $this->addIconToolbar("Cancel", $this->createUrl("/user/cancel"), "cancel");
        $this->addBarTitle("User <small>[New]</small>", "user");
        $model = new Users();
        $arr_group = $model->getGroup();
        $this->render('edit', array("item" => $this->item,'arr_group'=>$arr_group));
    }

    function actionEdit() {
        setSysConfig("sidebar.display", 0); 
        $model = new Users();
        $cid = Request::getVar("cid", 0);

        if (is_array($cid))
            $cid = $cid[0];

        if ($cid == 0) {
            $this->actionNew();
            return;
        }

        $this->addIconToolbar("Save", $this->createUrl("/users/save"), "save");
        $this->addIconToolbar("Apply", $this->createUrl("/users/apply"), "apply");
        $this->addIconToolbar("Close", $this->createUrl("/users/cancel"), "cancel");
        $this->addBarTitle("User <small>[Edit]</small>", "user");

        $model = new Users();
        $item = $model->getItem($cid) ;       
         
        $list = $model->getListEdit($item);

        $this->render('edit', array("item" => $item,"list" => $list));
    }

    function actionApply() {
        $userID = $this->storeUser();
        $this->redirect($this->createUrl('users/edit') . "?cid=" . $userID);
    }

    function actionSave() {
        $this->storeUser();
        $this->redirect($this->createUrl('users/'));
    }

    function storeUser() {
        global $mainframe;
        $post = $_POST;
        $id = Request::getVar("id", 0);
        $obj_users = YiiUser::getInstance();
        $item_user = $obj_users->getUser($id);
       
        if (!isset($_POST['username'])) {
            YiiMessage::raseWarning("Cannot save the user information");
            $this->redirect($this->createUrl('users/'));
        }
 
        $bool = true;
        $item_user->bind($post); 
        $item_by_uname = $item_user->loadRow("*", "username = '$item_user->username'");
        
       
        if (trim($_POST['username']) == "") {
            YiiMessage::raseWarning("You must provide an username.");
            $bool = false;
        } else if ($_POST["changepassword"] != $_POST["repassword"] AND $_POST["changepassword"] != "") {
            YiiMessage::raseWarning("Passwords Do Not Match.");
            $bool = false;
        } else if (trim($_POST['email']) == "") {
            YiiMessage::raseWarning("You must provide an e-mail address.");
            $bool = false;
        } else if ($item_by_uname and $item_by_uname['id'] != $item_user->id) {
            YiiMessage::raseWarning("This username is already in use.");
            $bool = false;
        } 
        
        if ($bool != false) {
            if(($_POST["changepassword"] == $_POST["repassword"] AND $_POST["changepassword"] != "")){
                $item_user->password = md5($_POST["changepassword"]);
            }
           
            YiiMessage::raseSuccess("Successfully saved changes to User: " . $item_user->username);
            $item_user->store();
            return $item_user->id;
        }
    }
    
    
}
