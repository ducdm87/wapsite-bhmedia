
<form action="<?php echo $this->createUrl('menus/menuitems') ?>" method="post" name="adminForm" >
    <div class="row">
        <div class="panel panel-primary">             
            <div class="panel-body">
                <div class="col-md-6">
                    <div class="form-group row">
                        <label class="control-label left col-md-3">Name</label>
                        <div class="col-md-9">
                            <input type="text" name="title" class="form-control" value="<?php echo $item['title']; ?>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="control-label left col-md-3">Alias</label>
                        <div class="col-md-9">
                            <input type="text" name="alias" class="form-control" value="<?php echo $item['alias']; ?>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="control-label left col-md-3">Display in</label>
                        <div class="col-md-9"><?php echo $list['menuID']; ?></div>
                    </div>
                    <div class="form-group row">
                        <label class="control-label left col-md-3">Link</label>
                        <div class="col-md-9"><input type="text" name="link" class="form-control" value="<?php echo $item['link']; ?>"></div>
                    </div>
                    <div class="form-group row">
                        <label class="control-label left col-md-3">Status</label>
                        <div class="col-md-9"><?php echo buildHtml::choseStatus("status", $item['status']); ?></div>
                    </div>
                    <div class="form-group row">
                        <label class="control-label left col-md-3">Parent Item</label>
                        <div class="col-md-9"><?php echo $list['parentID']; ?></div>
                    </div>
                </div>
                <div class="col-md-6">
                    <ul class="nav nav-tabs nav-pills">
                        <li class="active"><a data-toggle="tab" href="#param-sys">Parameters <small>(System)</small></a></li>
                        <li><a data-toggle="tab" href="#param-advance">Advance<small>(Custome)</small></a></li>                        
                      </ul>
                      <div class="tab-content">
                        <div id="param-sys" class="tab-pane fade in active">
                            <h3>HOME</h3>
                            <p>Some content.</p>
                        </div>
                        <div id="param-advance" class="tab-pane fade">
                            <h3>Menu 1</h3>
                            <p>Some content in menu 1.</p>
                        </div>
                      </div>
                </div>
            </div>
        </div>
    </div>
    
    <input type="hidden" name="id" value="<?php echo $item['id']; ?>">    
    <input type="hidden" name="cid[]" value="<?php echo $item['id']; ?>">    
</form>