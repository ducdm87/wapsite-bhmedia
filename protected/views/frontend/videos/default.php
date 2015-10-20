<div class="container-full">
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
            <div class="entry-title entry-title-news">
                <span><?php echo isset($lable) ? $lable : 'Video Hot'; ?></span>
            </div>
        </div>
    </div>
    <?php if (isset($videos) && $videos): ?>
        <div class="entry-body">
            <div class="container-fluid">
                <div class="col-md-5 no-padding-md">
                    <div class="thumbnail">
                        <img src="<?php echo isset($videos[0]['image']) ? $videos[0]['image'] : '' ?>" alt="" style="height: 270px; width: 480px;">
                        <a href="<?php echo $this->createUrl('videos/detail?id=' . $videos[0]['id'] . '&alias=' . $videos[0]['alias']) ?>" class="icon-play"></a>
                        <div class="caption">
                            <a href="<?php echo $this->createUrl('videos/detail?id=' . $videos[0]['id'] . '&alias=' . $videos[0]['alias']) ?>"><?php echo isset($videos[0]['title']) ? $videos[0]['title'] : '' ?></a>
                        </div>
                    </div>
                </div>
                <?php unset($videos[0]); ?>
                <div class="col-md-7 no-padding-md">
                    <div class="well">
                        <?php if (isset($videos) && $videos): ?>
                            <div class="row-mobile row">
                                <?php $index = 0; ?>
                                <?php foreach ($videos as $video): ?>
                                    <div class="col-md-6 no-padding-md">
                                        <div class="media item">
                                            <div class="media-left entry-thunb">
                                                <a href="<?php echo $this->createUrl('videos/detail?id=' . $video['id'] . '&alias=' . $video['alias']) ?>">
                                                    <img class="media-object" src="<?php echo isset($video['image']) ? $video['image'] : '' ?>" alt="Media <?php echo $video['title'] ?>">
                                                    <span class="entry_time"><?php echo $video['duration'] ?></span>
                                                </a>
                                            </div>
                                            <div class="media-body entry-thunb">
                                                <span class="media-heading"><a href="<?php echo $this->createUrl('videos/detail?id=' . $video['id'] . '&alias=' . $video['alias']) ?>"><?php echo buildHtml::truncateText($video['title'], 40) ?></a></span>
                                                <span class="entry-control">
                                                    <span><i class="fa fa-thumbs-o-up"></i> <?php echo isset($video['value']) ? $video['value'] : 0; ?></span>
                                                    <span><i class="fa fa-play-circle-o"></i> <?php echo isset($video['viewed']) ? $video['viewed'] : 0; ?></span>
                                                </span>
                                                <div class="entry-social">
                                                    <div class="fb-like" data-href="<?php echo $this->createUrl('videos/detail?id=' . $video['id'] . '&alias=' . $video['alias']) ?>" data-layout="button_count" data-action="like" data-show-faces="false" data-share="true"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <?php echo ($index == 1) ? '<div class="break-line clearfix"></div>' : ''; ?>
                                    <?php $index ++; ?>
                                <?php endforeach; ?>
                            </div>
                        <?php else: ?>
                            <h3 class="text-center">Dữ liệu đang cập nhật...</h3>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="no-padding-md">
                    <div class="well" style="border: none;">
                        <?php if (isset($allvideos) && $allvideos): ?>
                            <div class="row-mobile row">
                                <?php $index = 0; ?>
                                <?php foreach ($allvideos as $video): ?>
                                    <div class="col-md-4 no-padding-md">
                                        <div class="media item">
                                            <div class="media-left entry-thunb">
                                                <a href="<?php echo $this->createUrl('videos/detail?id=' . $video['id'] . '&alias=' . $video['alias']) ?>">
                                                    <img class="media-object" src="<?php echo isset($video['image']) ? $video['image'] : '' ?>" alt="Media <?php echo $video['title'] ?>">
                                                    <span class="entry_time"><?php echo $video['duration'] ?></span>
                                                </a>
                                            </div>
                                            <div class="media-body entry-thunb">
                                                <span class="media-heading"><a href="<?php echo $this->createUrl('videos/detail?id=' . $video['id'] . '&alias=' . $video['alias']) ?>"><?php echo buildHtml::truncateText($video['title'], 40) ?></a></span>
                                                <span class="entry-control">
                                                    <span><i class="fa fa-thumbs-o-up"></i> <?php echo isset($video['value']) ? $video['value'] : 0; ?></span>
                                                    <span><i class="fa fa-play-circle-o"></i> <?php echo isset($video['viewed']) ? $video['viewed'] : 0; ?></span>
                                                </span>
                                                <div class="entry-social">
                                                    <div class="fb-like" data-href="<?php echo $this->createUrl('videos/detail?id=' . $video['id'] . '&alias=' . $video['alias']) ?>" data-layout="button_count" data-action="like" data-show-faces="false" data-share="true"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <?php echo ($index == 2) ? '<div class="break-line clearfix"></div>' : ''; ?>
                                    <?php $index ++; ?>
                                <?php endforeach; ?>
                            </div>
                        <?php else: ?>
                            <h3 class="text-center">Dữ liệu đang cập nhật...</h3>
                        <?php endif; ?>
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