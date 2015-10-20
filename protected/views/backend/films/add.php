<div class="page-header">
    <h1><span class="text-left-sm">Media / </smail>create new</h1>
</div>
<div class="clearfix"></div>
<div class="module row">
    <form action="<?php echo $this->createUrl('films/addmedia') ?>" method="post">
        <input type="hidden" name="id" value="<?php echo isset($item['id']) ? $item['id'] : '' ?>"/>
        <input type="hidden" name="episode_id" value="<?php echo isset($item['episode_id']) ? $item['episode_id'] : '' ?>"/>
        <div class="col-md-8">
            <div class="panel">
                <div class="panel-heading">
                    <span>Info media</span>
                </div>
                <div class="panel-body">
                    <div class="form-group ">
                        <label class="control-label">Type</label>
                        <div>
                            <select name="type" class="form-control">
                                <option value="1" <?php echo isset($item['type']) && ($item['type'] == 1) ? 'selected' : '' ?>>Video</option>
                                <option value="2" <?php echo isset($item['type']) && ($item['type'] == 2) ? 'selected' : '' ?>>Video Thể Thao</option>
                                <option value="3" <?php echo isset($item['type']) && ($item['type'] == 3) ? 'selected' : '' ?>>Hài</option>
                                <option value="4" <?php echo isset($item['type']) && ($item['type'] == 4) ? 'selected' : '' ?>>Điện ảnh</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Title</label>
                        <div>
                            <input type="text" class="input-sm form-control title-generate" name="title" value="<?php echo isset($item['title']) ? $item['title'] : '' ?>"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Alias</label>
                        <div>
                            <input type="text" class="input-sm form-control alias-generate" name="alias" value="<?php echo isset($item['alias']) ? $item['alias'] : '' ?>"/>
                        </div>
                    </div>

                    <div class="form-group control-actor">
                        <label class="control-label">Actor</label>
                        <div>
                            <input type="text" class="input-sm form-control" name="actor" value="<?php echo isset($item['actor']) ? $item['actor'] : '' ?>"/>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group control-duration">
                        <label class="control-label">Duration</label>
                        <div>
                            <input type="text" class="input-sm form-control" name="duration" value="<?php echo isset($item['duration']) ? $item['duration'] : '' ?>"/>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group control-director">
                        <label class="control-label">Director</label>
                        <div>
                            <input type="text" class="input-sm form-control" name="derector" value="<?php echo isset($item['derector']) ? $item['derector'] : '' ?>"/>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="clearfix"></div>
                    <div class="form-group control-desc">
                        <label class="control-label">Desciprion</label>
                        <div>
                            <textarea name="info" rows="5" class="form-control"><?php echo isset($item['info']) ? $item['info'] : '' ?></textarea>
                        </div>
                    </div>

                </div>
            </div>
            <div class="panel">
                <div class="panel-heading">
                    <span>Image</span>
                    <div class="caption pull-right">
                        <a href="javascript:void(0)" class="label label-primary" role="button" onclick="BrowseServer();">Add Media</a>
                    </div>
                </div>
                <div class="panel-body">
                    <div class="form-group">

                        <input type="hidden" name="image" id="image_hiden" value="<?php echo isset($item['image']) ? $item['image'] : '' ?>"/>

                        <div class="drapzon">
                            <div class="col-md-6 row container-thumbnail">
                                <div class="thumbnail" style="height: 200px;">
                                    <img src="" alt="" id="image_src" style="height:190px;">

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel panel-video video-control">
                <div class="panel-heading">
                    <span>Video</span>
                    <div class="caption pull-right">
                        <ul class="list-inline" style="margin-top: -10px;">
                            <li>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="youtube" id="checkYoutube"/> Youtube
                                    </label>
                                </div>
                            </li>
                            <li>
                                <a href="javascript:void(0)" class="label label-primary" role="button" onclick="BrowseServerVideo();">Add video</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        <input type="hidden" name="episode" id="video_hiden" value="<?php echo isset($item['episode_url']) ? $item['episode_url'] : '' ?>"/>
                        <input type="text" name="fecklink" class="form-control" id="video-src" disabled="" value="<?php echo isset($item['episode_url']) ? $item['episode_url'] : '' ?>">
                        <!--                        <div class="drapzon">
                                                    <div class="">
                                                        <div class="col-md-6">
                                                            <video width="400" controls>
                                                                <source id="video-src" src="" type="video/mp4">
                                                                Your browser does not support HTML5 video.
                                                            </video>
                                                        </div>
                                                    </div>
                        
                                                </div>-->
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="panel">
                <div class="panel-heading">
                    <span>More info</span>
                </div>
                <div class="panel-body">
                    <div class="clearfix"></div>
                    <div class="form-group catalog">
                        <label class="control-label">Category</label>
                        <div>
                            <select class="form-control" name="category">
                                <?php if (isset($categories) && $categories): ?>

                                    <?php foreach ($categories as $category): ?>
                                        <option value="<?php echo $category['id'] ?>" <?php echo isset($item['category_id']) && ($item['category_id'] == $category['id']) ? 'selected' : '' ?>><?php echo $category['title'] ?></option>
                                    <?php endforeach; ?>
                                <?php endif; ?>
                            </select>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group control-year">
                        <label class="control-label">Year</label>
                        <div>
                            <input type="text" class="input-sm form-control" name="film_year" value="<?php echo isset($item['film_year']) ? $item['film_year'] : '' ?>"/>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group control-area">
                        <label class="control-label ">Area</label>
                        <div>
                            <input type="text" class="input-sm form-control" name="film_area" value="<?php echo isset($item['film_area']) ? $item['film_area'] : '' ?>"/>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label class="control-label">Status</label>
                        <div>
                            <select name="status" class="form-control">
                                <option value="1">Enable</option>
                                <option value="0">Disable</option>
                            </select>
                        </div>
                    </div>

                    <div class="clearfix"></div>
                    <div class="form-group">
                        <button type="reset" class="btn btn-info"><i class="fa fa-refresh"></i> Làm mới </button>
                        <button type="submit" class="btn btn-danger"><i class="fa fa-plus"></i><?php echo isset($item['id']) ? 'Thay đổi' : 'Thêm' ?>  </button>
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
        <!--        <div class="col-md-12">
                    <div class="panel episode-control">
                        <div class="panel-heading">
                            <span>Link Video</span>
                            <div class="panel-heading-controls">
                                <a href="javascript:void(0)" class="label label-primary add-input"><i class="fa fa-plus"></i> add</a>
                            </div>
                        </div>
                        <div class="panel-body body-media">
                            <div class="form-group more-input">
                                <div class="col-md-7">
                                    <label class="control-label">Link</label>
                                    <div>
                                        <input type="url" class="input-sm form-control" name="episode_url[]" value=""/>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label class="control-label">Name</label>
                                    <div>
                                        <input type="url" class="input-sm form-control" name="episode_name[]" value=""/>
                                    </div>
                                </div>
                                <div class="col-md-1"></div>
                            </div>
                        </div>
                    </div>
                </div>-->
    </form>
</div>