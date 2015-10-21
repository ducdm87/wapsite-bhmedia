<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class CategoriesController extends BackEndController {
 
    var $tablename = "{{categories}}";
    var $tbl_menu = '{{categories}}';
    var $primary = 'id';
    var $item = null;
    
    private $model;

    function init() {
        parent::init();

        $this->model = Categories::getInstance();
    }

    public function actionDisplay() {
        
        $task = Request::getVar('task', "");
        if ($task == "hidden" OR $task == 'publish' OR $task == "unpublish") {
            $cids = Request::getVar('cid');            
            for ($i = 0; $i < count($cids); $i++) {
                $cid = $cids[$i];
                if ($task == "publish")
                    $this->changeStatus ($cid, 1);
                else if ($task == "hidden")
                    $this->changeStatus ($cid, 2);
                else $this->changeStatus ($cid, 0);
            }
            YiiMessage::raseSuccess("Successfully saved changes status for menu type");
        }
        
        
        $this->addIconToolbar("Creat", $this->createUrl("/categories/new"), "new");
        $this->addIconToolbar("Edit", $this->createUrl("/categories/edit"), "edit", 1, 1, "Please select a item from the list to edit");        
        $this->addIconToolbar("Publish", $this->createUrl("/categories/publish"), "publish");
        $this->addIconToolbar("Unpublish", $this->createUrl("/categories/unpublish"), "unpublish");
        $this->addIconToolbar("Delete", $this->createUrl("/categories/remove"), "trash", 1, 1, "Please select a item from the list to Remove");        
        $this->addBarTitle("Categories <small>[manager]</small>", "user");   
        
        $items = $this->model->getItems();
        
        $this->render('default', array("items" => $items));
    }
 

    public function actionEdit() {
        $cid = Request::getVar('cid', "");        
        setSysConfig("sidebar.display", 0);
        
        $this->addIconToolbar("Save", $this->createUrl("/categories/save"), "save");
        $this->addIconToolbar("Apply", $this->createUrl("/categories/apply"), "apply");
        $this->addBarTitle("Module <small>[Edit]</small>", "user");
        $this->addIconToolbar("Close", $this->createUrl("/categories/cancel"), "cancel");
        $this->pageTitle = "Edit category";           
        
        $obj = YiiCategory::getInstance();        
        $item = $obj->loadItem($cid, "*", false); 
        $lists = $this->model->getListEdit($item);
        
        $this->render('edit', array("item" => $item, "lists"=>$lists));
    }

    function actionApply() {
        $cid = $this->store();
        $this->redirect($this->createUrl('categories/edit') . "?cid=" . $cid);
    }
    
    function actionSave() {
        $cid = $this->store();
        $this->redirect($this->createUrl('categories/'));
    }
    
    function actionCancel()
    {
        $this->redirect($this->createUrl('categories/'));
    }
    
    public function store() {
        global $mainframe;
        
        $cid = Request::getVar("id", 0); 
       
        $obj_category = YiiModule::getInstance();
        $obj_row = $obj_category->loadItem($cid);
        $obj_row->bind($_POST);
        
        $menu_selected = Request::getVar('selection-menu-select', 'selected');
        $obj_row->params = json_encode($_POST['params']);
        $obj_row->menu = $menu_selected;
        $obj_row->store();
         
        if($menu_selected == 'all'){
            $query = "DELETE FROM ".TBL_MODULE_MENUITEM_REF." WHERE categoryID = $obj_row->id ";
            Yii::app()->db->createCommand($query)->query();
            
            $query = "INSERT INTO ".TBL_MODULE_MENUITEM_REF." SET categoryID = $obj_row->id, menuID = 0 ";
            Yii::app()->db->createCommand($query)->query();
            
        }else if($menu_selected == 'selected' AND isset ($_POST['selection-menu'])){
            $menuids = $_POST['selection-menu'];
            foreach($menuids as $menuid){
                $query = "REPLACE INTO ".TBL_MODULE_MENUITEM_REF." SET categoryID = $obj_row->id, menuID = $menuid ";
                Yii::app()->db->createCommand($query)->query();
            } 
        }else{
            $query = "DELETE FROM ".TBL_MODULE_MENUITEM_REF." WHERE categoryID = $obj_row->id ";
            Yii::app()->db->createCommand($query)->query();
        }
            
 
        YiiMessage::raseSuccess("Successfully save Module(s)");
        return $obj_row->id;
    }
    
    
     function actionPublish()
    {
        $cids = Request::getVar("cid", 0);        
        if(count($cids) >0){
            for($i=0;$i<count($cids);$i++){
                $this->changeStatus($cids[$i], 1);
            }
        }
        YiiMessage::raseSuccess("Successfully publish Cateegory(s)");
        $this->redirect($this->createUrl('categories/'));
    }
    
    function actionUnpublish()
    {
        $cids = Request::getVar("cid", 0);        
        if(count($cids) >0){
            for($i=0;$i<count($cids);$i++){                
                $this->changeStatus($cids[$i], 0);
            }
        }
        YiiMessage::raseSuccess("Successfully unpublish Cateegory(s)");
        $this->redirect($this->createUrl('categories/'));
    }
    
    function changeStatus($cid, $value)
    {
        $obj = YiiCategory::getInstance();        
        $obj = $obj->loadItem($cid, "*", false); 
        $obj->status = $value;
        $obj->store();
    }
}
