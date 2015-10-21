<?php

class MenusController extends BackEndController {

    var $primary = 'id';
    var $tablename = "{{menus}}";
    var $tbl_menuitem = "{{menu_item}}";
    var $item = array();
    var $item2 = array();
    var $items = array();
    
    private $model;
    private $request;

    function init() {        
        yii::import('application.models.backend.menus.*');
        $this->item["id"]   =  0;
        $this->item["title"]   =   "";
        $this->item["alias"]   =   "";
        $this->item["description"]   =   "";
        $this->item["status"]   =   1;
        $this->item["cdate"]   =   "";
        $this->item["mdate"]   =   "";
        
        $this->item2["id"]   =  0;
        $this->item2["title"]   =   "";
        $this->item2["alias"]   =   "";
        $this->item2["menuID"]   =  Request::getInt('menu', "");;
        $this->item2["parentID"]   =   0;
        $this->item2["type"]   =   "";
        $this->item2["link"]   =   "";
        $this->item2["controller"]   =   "";
        $this->item2["action"]   =   "";
        $this->item2["level"]   =   1;
        $this->item2["ordering"]   =   "";
        $this->item2["status"]   =   1;
        $this->item2["cdate"]   =   "";
        $this->item2["mdate"]   =   "";
        $this->item2["params"]   =   "";
        parent::init();
    }
    /*
     * For menu type
     */
    public function actionMenutypes() {
        $this->pageTitle = "Menu manager";        
        $model = MenuType::getInstance();  
        
        $task = Request::getVar('task', "");
        if ($task == "hidden" OR $task == 'publish' OR $task == "unpublish") {
            $cids = Request::getVar('cid');
            for ($i = 0; $i < count($cids); $i++) {
                $cid = $cids[$i];
                $item = $this->loadItem($cid, "id");

                if ($item['status'] == 0)
                    $item['status'] = 1;
                else if ($item['status'] == 1)
                    $item['status'] = 2;
                else if ($item['status'] == 2)
                    $item['status'] = 0;

                $this->storeItem($item);
            }
            YiiMessage::raseSuccess("Successfully saved changes status for menu type");
        }
        
        $this->addIconToolbar("Creat", $this->createUrl("/menus/newmenutype"), "new");
        $this->addIconToolbar("Edit", $this->createUrl("/menus/editmenutype"), "edit", 1, 1, "Please select a item from the list to edit");        
        $this->addIconToolbar("Publish", $this->createUrl("/menus/publishmenutype"), "publish");
        $this->addIconToolbar("Unpublish", $this->createUrl("/menus/unpublishmenutype"), "unpublish");
        $this->addIconToolbar("Delete", $this->createUrl("/menus/removemenutype"), "trash", 1, 1, "Please select a item from the list to Remove");        
        $this->addBarTitle("Menu type <small>[manager]</small>", "user");   
        
        $items = $model->getMenuTypes();
        
        $this->render('menutypes', array("items"=>$items));
    }
    
    public function actionNewmenutype() {   
        $this->actionEditmenutype();
    }
    
    public function actionEditmenutype() {   
        setSysConfig("sidebar.display", 0);
        $this->addIconToolbar("Save", $this->createUrl("/menus/savemenutype"), "save");
        $this->addIconToolbar("Apply", $this->createUrl("/menus/applymenutype"), "apply");
        $items = array();
        
        $cid = Request::getVar("cid", 0);
        
        if (is_array($cid))
            $cid = $cid[0];

        if ($cid == 0) {
            $this->addIconToolbar("Cancel", $this->createUrl("/menus/cancelmenutype"), "cancel");
            $this->addBarTitle("Menu types <small>[New]</small>", "user");        
            $this->pageTitle = "New menu";
        }else{
            $this->addIconToolbar("Close", $this->createUrl("/menus/cancelmenutype"), "cancel");
            $this->addBarTitle("Menu type <small>[Edit]</small>", "user");        
            $this->pageTitle = "Edit menu";
            $this->item = $this->loadItem($cid);
        }
        
        $this->render('editmenutype', array("item"=>$this->item));
    }

    function actionApplymenutype() {
        $this->storeMenuType();
        $this->redirect($this->createUrl('menus/editmenutype') . "?cid=" . $this->item["id"]);
    }
    
    function actionSavemenutype() {
        $this->storeMenuType();
        $this->redirect($this->createUrl('menus/menutypes'));
    }
    
    function actionCancelmenutype()
    {
        $this->redirect($this->createUrl('menus/menutypes'));
    }
   
    
    function storeMenuType() {
        global $mainframe;
        $post = $_POST;
       
        $id = Request::getInt("id", 0);
        $bool = true;
        $this->item = $this->loadItem($id); 
        
        $this->item = $mainframe->bind($this->item, $post); 
        if($this->item['title'] == "" AND $this->item['alias'] == "") return false;
        $this->item["id"] = $id;
        
        YiiMessage::raseSuccess("Successfully saved changes to menu: " . $this->item['title']);
        $this->item["id"] = $this->storeItem();
    }
    
    function actionRemovemenutype() {
        $cids = Request::getVar("cid", 0);
        
        if(count($cids) >0){
            for($i=0;$i<count($cids);$i++){
                $cid = $cids[$i];
                //check item first
                $item = $this->removeItem($cid);               
            }
        }
        YiiMessage::raseSuccess("Successfully remove Menutype(s)");
        $this->redirect($this->createUrl('menus/menutypes'));
    }
    
    function actionPublishmenutype()
    {
        $cids = Request::getVar("cid", 0);
        
        if(count($cids) >0){
            for($i=0;$i<count($cids);$i++){
                $cid = $cids[$i];
                //check item first
                $this->item = $this->loadItem($cid);            
                $this->item['status'] = 1;
                $this->item["id"] = $this->storeItem();
            }
        }
        YiiMessage::raseSuccess("Successfully publish Menutype(s)");
        $this->redirect($this->createUrl('menus/menutypes'));
    }
    
    function actionUnpublishmenutype()
    {
        $cids = Request::getVar("cid", 0);
        
        if(count($cids) >0){
            for($i=0;$i<count($cids);$i++){
                $cid = $cids[$i];
                //check item first
                $this->item = $this->loadItem($cid);            
                $this->item['status'] = 0;
                $this->item["id"] = $this->storeItem();
            }
        }
        YiiMessage::raseSuccess("Successfully unpublish Menutype(s)");
        $this->redirect($this->createUrl('menus/menutypes'));
    }
    
    /*
     * For menu item
     */

    function actionMenuitems()
    {
        $this->pageTitle = "Menu item";
        $model = MenuItem::getInstance();  
        $menuID = Request::getInt('menu', "");
        if($menuID<=0){
            YiiMessage::raseSuccess("Invalid menu id");
            $this->redirect($this->createUrl('menus/menutypes'));
        }
        
        $task = Request::getVar('task', "");
        if ($task == "hidden" OR $task == 'publish' OR $task == "unpublish") {
            $cids = Request::getVar('cid');
            for ($i = 0; $i < count($cids); $i++) {
                $cid = $cids[$i];
                $item = $this->loadItem($cid, "id");

                if ($item['status'] == 0)
                    $item['status'] = 1;
                else if ($item['status'] == 1)
                    $item['status'] = 2;
                else if ($item['status'] == 2)
                    $item['status'] = 0;

                $this->storeItem($item);
            }
            YiiMessage::raseSuccess("Successfully saved changes status for menu type");
        }
        
        $this->addIconToolbar("Creat", $this->createUrl("/menus/newmenuitem?menu=1"), "new");
        $this->addIconToolbar("Edit", $this->createUrl("/menus/editmenuitem?menu=1"), "edit", 1, 1, "Please select a item from the list to edit");        
        $this->addIconToolbar("Publish", $this->createUrl("/menus/publishmenuitem?menu=1"), "publish");
        $this->addIconToolbar("Unpublish", $this->createUrl("/menus/unpublishmenuitem?menu=1"), "unpublish");
        $this->addIconToolbar("Delete", $this->createUrl("/menus/removemenuitem?menu=1"), "trash", 1, 1, "Please select a item from the list to Remove");        
        $this->addBarTitle("Menu items <small>[manager]</small>", "user");   
        
        $items = $model->getMenuItems();
        $lists = $model->getList(); 
        
        $this->render('menuitems', array("items"=>$items, "lists"=>$lists));
    }
    
     public function actionNewmenuitem() {                
        $this->actionEditmenuitem();
    }
    
    public function actionEditmenuitem() {                
        $this->addIconToolbar("Save", $this->createUrl("/menus/savemenuitem?menu=1"), "save");
        $this->addIconToolbar("Apply", $this->createUrl("/menus/applymenuitem?menu=1"), "apply");
        $items = array();
        setSysConfig("sidebar.display", 0);
        $cid = Request::getVar("cid", 0);
        $menuID = Request::getInt('menu', "");
        if($menuID<=0){
            YiiMessage::raseSuccess("Invalid menu id");
            $this->redirect($this->createUrl('menus/menutypes'));
        }
        
        if (is_array($cid))
            $cid = $cid[0];

        if ($cid == 0) {
            $this->addBarTitle("Menu item <small>[New]</small>", "user");        
            $this->pageTitle = "New menu item";
            $this->addIconToolbar("Cancel", $this->createUrl("/menus/cancelmenuitem?menu=1"), "cancel");        
        }else{
            $this->addBarTitle("Menu item <small>[Edit]</small>", "user");        
            $this->pageTitle = "Edit menu item";
            $this->addIconToolbar("Close", $this->createUrl("/menus/cancelmenuitem?menu=1"), "cancel");
            $this->item2 = $this->loadItem($cid, "", $this->tbl_menuitem );
        }
        $model = MenuItem::getInstance();
        $list = $model->getListEdit($this->item2["level"]);
       
        $params = array("item"=>$this->item2, "list"=>$list);
        $this->render('editmenuitem', $params);
    }
     
    
    function actionApplymenuitem() {
        $this->storeMenuItem();
        $menuID = $this->item2["menuID"];
        $this->redirect($this->createUrl('menus/editmenuitem?menu='.$menuID.'&cid=' . $this->item["id"]));
    }
    
    function actionSavemenuitem() {
        $this->storeMenuItem();
        $menuID = $this->item2["menuID"];
        $this->redirect($this->createUrl('menus/menuitems?menu='.$menuID));
    }
    
    function actionCancelmenuitem(){
        $menuID = Request::getInt('menu', "");
        if($menuID<=0){
            YiiMessage::raseSuccess("Invalid menu id");
            $this->redirect($this->createUrl('menus/menutypes'));
        }else{           
            $this->redirect($this->createUrl('menus/menuitems?menu='.$menuID));
        }
    }
   
    
    function storeMenuItem() {
        global $mainframe;
        $post = $_POST;
       
        $id = Request::getVar("id", 0);        
        $bool = true;
        if($id != 0)
            $this->item2 = $this->loadItem($id,"", $this->tbl_menuitem); 
       
        $this->item2 = $mainframe->bind($this->item2, $post); 
        if($this->item2['title'] == "" AND $this->item2['alias'] == "") return false;
        $this->item2["id"] = $id;
         
        YiiMessage::raseSuccess("Successfully saved changes to menu item: " . $this->item2['title']);
        $this->item2["id"] = $this->storeItem($this->item2, $this->tbl_menuitem);
    }
    
}
