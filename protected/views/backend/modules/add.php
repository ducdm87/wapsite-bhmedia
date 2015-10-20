<div class="module">
    <div class="panel panel-primary">
        <div class="panel panel-heading">
            <span>Add Extention</span>
        </div>
        <div class="panel-body">
            <div class="col-md-6">
                <form action="" method="get">
                    <div class="form-group">

                        <label class="control-label">Tên</label>
                        <div>
                            <select name="module" class="form-control" onchange="this.form.submit()">
                                <option value="">Chọn module</option>
                                <?php if (isset($modules) && $modules): ?>
                                    <?php foreach ($modules as $module): ?>
                                        <option value="<?php echo $module ?>" <?php echo isset($_GET['module']) && ($_GET['module'] == $module) ? 'selected' : false ?>><?php echo $module ?></option>
                                    <?php endforeach; ?>
                                <?php endif; ?>
                            </select>

                        </div>
                    </div>

                </form>
                <form action="<?php echo $this->createUrl('modules/dopost') ?>" method="post">
                    <input type="hidden" name="id"  value="<?php echo isset($item['id']) ? $item['id'] : false; ?>"/>
                    <input type="hidden" name="name" class="form-control" value="<?php echo isset($_GET['module']) ? $_GET['module'] : false; ?>">

                    <div class="params">
                        <div class="form-group">
                            <label class="control-label">Tên hiển thị</label>
                            <div>
                                <input type="text" name="showtitle" class="form-control" value="<?php echo isset($item['showtitle']) ? $item['showtitle'] : false; ?>">
                            </div>
                        </div>
                        <input type="hidden" name="type" value="module"/>
                        <div class="form-group">
                            <label class="control-label">Site</label>
                            <div>
                                <select name="site" class="form-control">
                                    <option value="1">Site</option>
                                    <option value="0">Backend</option>
                                </select>
                            </div>
                        </div> 
                        <input type="hidden" name="author" class="form-control" value="<?php echo isset($item['author']) ? $item['author'] : false; ?>">

                        <div class="form-group">
                            <label class="control-label">Sắp xếp</label>
                            <div>
                                <input type="text" name="order" class="form-control" value="<?php echo isset($item['ordering']) ? $item['ordering'] : false; ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Vị Trí</label>
                            <div>
                                <input type="text" name="position" class="form-control" value="<?php echo isset($item['position']) ? $item['position'] : false; ?>">
                            </div>
                        </div> 
                        <div class="form-group">
                            <label class="control-label">Trạng thái</label>
                            <div>
                                <select name="status" class="form-control">
                                    <option value="1">Enable</option>
                                    <option value="0">Disable</option>
                                </select>
                            </div>
                        </div> 
                    </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <fieldset><legend class="control-label">Param</legend>
                        <?php foreach ($item as $param): ?>
                            <?php if (isset($param['param']) && $param['param']): ?>
                                <?php foreach ($param['param'] as $key => $fields): ?>
                                    <?php if (isset($key) && $key == 'field'): ?>
                                        <?php //echo YiiElement::render($field) ?>
                                        <?php
                                        foreach ($fields as $field) {
                                            if (isset($field)) {
                                                echo YiiElement::render($field);
                                            }
                                        }
                                        ?>
                                    <?php endif; ?>
                                <?php endforeach; ?>
                            <?php endif; ?>
                        <?php endforeach; ?>
                    </fieldset>
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="col-md-8">
                <button type="reset" class="btn btn-info"><i class="fa fa-refresh"></i> Làm mới </button>
                <button type="submit" class="btn btn-primary"><i class="fa fa-plus"></i><?php echo isset($item['id']) ? 'Thay đổi' : 'Thêm' ?>  </button>
            </div>
            </form>
        </div>
    </div>

</div>