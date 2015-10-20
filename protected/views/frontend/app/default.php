
<div class="wrapper">
    <div class="container-fluid" style="padding: 0px;">
        <div class="banner">
            <img src="<?php echo Yii::app()->request->baseUrl; ?>/images/app/banner.png" alt="Banner" class="img-responsive"/>
        </div>
        <div class="dialog-message">
            <div class="alert alert-warning alert-dismissible text-center" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <p>Qúy khách vui lòng đăng nhập <strong>Tại đây</strong> hoặc vui lòng chuyển sang truy cập GPRS/3G/DEGE</p>
            </div>
        </div>
    </div>

    <div class="entry-container">
        <div class="entry-header">
            <div class="container-fluid">
                <div class="entry-title">
                    <span>Video Hot</span>
                </div>
                <div class="pull-right entry-all">
                    <a href="<?php echo $this->createUrl('/videos') ?>">Xem tất cả <i class="fa fa-caret-right"></i></a>
                </div>
            </div>
        </div>
        <div class="entry-body">
            <?php if (isset($videos) && $videos): ?>
                <div class="container-fluid">

                    <div class="col-md-5 no-padding-md">
                        <?php foreach ($video as $value): ?>
                            <div href="<?php echo $this->createUrl('videos/detail?id=' . $value['id'] . '&alias=' . $value['alias']) ?>" class="thumbnail">
                                <img src="<?php echo $value['image'] ?>" alt="<?php echo $value['title'] ?>" style="width: 480px; height: 270px;">
                                <a href="<?php echo $this->createUrl('videos/detail?id=' . $value['id'] . '&alias=' . $value['alias']) ?>" class="icon-play"></a>
                                <div class="caption">
                                    <a href="<?php echo $this->createUrl('videos/detail?id=' . $value['id'] . '&alias=' . $value['alias']) ?>"><?php echo isset($value['title']) ? $value['title'] : '' ?></a>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                    <div class="col-md-7 no-padding-md">
                        <div class="well">
                            <div class="row">
                                <?php foreach ($videos as $key => $video): ?>
                                    <div class="col-md-6 ">
                                        <div class="media item">
                                            <div class="media-left entry-thunb">
                                                <a href="<?php echo $this->createUrl('videos/detail?id=' . $video['id'] . '&alias=' . $video['alias']) ?>">
                                                    <img class="media-object" src="<?php echo $video['image'] ?>" alt="Video <?php echo $video['title'] ?>">
                                                    <span class="entry_time"><?php echo $video['duration'] ?></span>
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <span class="media-heading"><a href="<?php echo $this->createUrl('videos/detail?id=' . $video['id'] . '&alias=' . $video['alias']) ?>"><?php echo buildHtml::truncateText($video['title'], 40) ?></a></span>
                                                <span class="entry-control">
                                                    <span><i class="fa fa-thumbs-o-up"></i> <?php echo isset($video['value']) ? $video['value'] : 0; ?></span>
                                                    <span><i class="fa fa-play-circle-o"></i> <?php echo isset($video['viewed']) ? $video['viewed'] : 0; ?></span>
                                                </span>
                                                <div class="entry-social hidden-lg hidden-md">
                                                    <div class="fb-like" data-href="<?php echo $this->createUrl('videos/detail?id=' . $video['id'] . '&alias=' . $video['alias']) ?>" data-layout="button_count" data-action="like" data-show-faces="false" data-share="true"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <?php if ($key == 2): ?>
                                        <div class="break-line clearfix"></div>
                                    <?php endif; ?>
                                <?php endforeach; ?>
                            </div>
                        </div>
                    </div>
                </div>
            <?php else: ?>
                <div class="container-fluid">
                    <h3 class="text-center">Dữ liệu đang cập nhật...</h3>
                </div>
            <?php endif; ?>

        </div>
    </div>

    <div class="entry-container">
        <div class="entry-header">
            <div class="">
                <div class="entry-title">
                    <span>Thể thao</span>
                </div>
                <div class="pull-right entry-all">
                    <a href="/videos?t=the-thao">Xem tất cả <i class="fa fa-caret-right"></i></a>
                </div>
            </div>
        </div>
        <?php if (isset($video_sposrts) && $video_sposrts): ?>
            <div class="entry-body">
                <div class="container-fluid">

                    <div class="col-md-5 hidden-xs hidden-ms">
                        <div class="thumbnail">
                            <a href="<?php echo $this->createUrl('videos/detail?id=' . $video_sposrts[0]['id'] . '&alias=' . $video_sposrts[0]['alias']) ?>">
                                <img src="<?php echo isset($video_sposrts[0]['image']) ? $video_sposrts[0]['image'] : '' ?>" alt="<?php echo isset($video_sposrts[0]['title']) ? $video_sposrts[0]['title'] : '' ?>" style="width: 480px; height: 270px;">
                            </a>
                             <a href="<?php echo $this->createUrl('videos/detail?id=' . $video_sposrts[0]['id'] . '&alias=' . $video_sposrts[0]['alias']) ?>" class="icon-play"></a>
                            <div class="caption">
                                <a href="<?php echo $this->createUrl('videos/detail?id=' . $video_sposrts[0]['id'] . '&alias=' . $video_sposrts[0]['alias']) ?>"><?php echo isset($video_sposrts[0]['title']) ? $video_sposrts[0]['title'] : '' ?></a>
                            </div>
                        </div>
                    </div>
                    <?php unset($video_sposrts[0]); ?>
                    <div class="col-md-7 no-padding-md">
                        <div class="well">
                            <div class="row">
                                <?php $index =0; ?>
                                <?php foreach ($video_sposrts as $key => $video): ?>
                                    <div class="col-md-6">
                                        <div class="media item">
                                            <div class="media-left">
                                                <a href="<?php echo $this->createUrl('videos/detail?id=' . $video['id'] . '&alias=' . $video['alias']) ?>" class="entry-thunb">
                                                    <img class="media-object" src="<?php echo isset($video['image']) ? $video['image'] : '' ?>" alt="Media <?php echo isset($video['title']) ? $video['title'] : '' ?>" style="">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <span class="media-heading"><a href="<?php echo $this->createUrl('videos/detail?id=' . $video['id'] . '&alias=' . $video['alias']) ?>"><?php echo buildHtml::truncateText($video['title'], 40) ?></a></span>
                                                <span class="entry-control">
                                                    <span><i class="fa fa-thumbs-o-up"></i> <?php echo isset($video['value']) ? $video['value'] : 0; ?></span>
                                                    <span><i class="fa fa-play-circle-o"></i> <?php echo isset($video['viewed']) ? $video['viewed'] : 0; ?></span>
                                                </span>
                                                <div class="entry-social hidden-lg hidden-md">
                                                    <div class="fb-like" data-href="<?php echo $this->createUrl('videos/detail?id=' . $video['id'] . '&alias=' . $video['alias']) ?>" data-layout="button_count" data-action="like" data-show-faces="false" data-share="true"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <?php echo ($index == 1) ? '<div class="break-line clearfix"></div>' : '' ?>
                                <?php $index ++; ?>
                                <?php endforeach; ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <?php else: ?>
            <div class="container-fluid">
                <h3 class="text-center">Dữ liệu đang cập nhật...</h3>
            </div>
        <?php endif; ?>
    </div>


    <div class="entry-container">
        <div class="entry-header">
            <div class="container-fluid">
                <div class="entry-title">
                    <span>Tin Tức</span>
                </div>
                <div class="pull-right entry-all">
                    <a href="<?php echo $this->createUrl('/news') ?>">Xem tất cả <i class="fa fa-caret-right"></i></a>
                </div>
            </div>
        </div>
        <div class="entry-body">
            <div class="container-fluid">
                <?php if (isset($posts) && $posts): ?>

                    <div class="col-md-5 hidden-xs hidden-ms">
                        <div href="<?php echo $this->createUrl('news/detail?id=' . $posts[0]['id'] . '&alias=' . $posts[0]['alias']) ?>" class="thumbnail">
                            <img src="<?php echo isset($posts[0]['thumbnail']) ? $posts[0]['thumbnail'] : '' ?>" alt="<?php echo isset($posts[0]['title']) ? $posts[0]['title'] : '' ?>" style="width: 480px;height: 270px; ">
                            <div class="caption">
                                <a href=""><?php echo isset($posts[0]['title']) ? $posts[0]['title'] : '' ?></a>
                            </div>
                        </div>
                    </div>
                    <?php unset($posts[0]); ?>
                    <div class="col-md-7 no-padding-md">
                        <div class="well">
                            <div class="row">
                                <?php if (isset($posts) && $posts): ?>
                                    <?php foreach ($posts as $key => $post): ?>
                                        <div class="col-md-6">
                                            <div class="media item">
                                                <div class="media-left entry-thunb">
                                                    <a href="<?php echo $this->createUrl('news/detail?id=' . $post['id'] . '&alias=' . $post['alias']) ?>">
                                                        <img class="media-object" src="<?php echo $post['thumbnail'] ?>" alt="Media <?php echo $post['title'] ?>">
                                                    </a>
                                                </div>
                                                <div class="media-body">
                                                    <span class="media-heading">
                                                        <a href="<?php echo $this->createUrl('news/detail?id=' . $post['id'] . '&alias=' . $post['alias']) ?>">
                                                            <?php echo buildHtml::truncateText($post['title'], 40) ?>
                                                        </a>
                                                    </span>
                                                    <span class="entry-control">
                                                        <span><i class="fa fa-thumbs-o-up"></i> <?php echo isset($post['value']) ? $post['value'] : 0; ?></span>
                                                        <span><i class="fa fa-play-circle-o"></i> <?php echo isset($post['viewed']) ? $post['viewed'] : 0; ?></span>
                                                    </span>
                                                    <div class="entry-social hidden-lg hidden-md">
                                                        <div class="fb-like" data-href="<?php echo $this->createUrl('videos/detail?id=' . $video['id'] . '&alias=' . $video['alias']) ?>" data-layout="button_count" data-action="like" data-show-faces="false" data-share="true"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <?php if ($key == 2): ?>
                                            <div class="break-line clearfix"></div>
                                        <?php endif; ?>
                                    <?php endforeach; ?>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>
                <?php else: ?>
                    <div class="container-fluid">
                        <h3 class="text-center">Dữ liệu đang cập nhật...</h3>
                    </div>
                <?php endif; ?>
            </div>
        </div>
    </div>
</div>