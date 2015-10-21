<?php 
function showBlockHome($items, $title = "Video Hot", $url = ""){
    $item = $items[0];
    unset($items[0]);
    
    if(isset($item['image'])) $item['thumbnail'] = $item['image'];
    ?>
        <div class="entry-container">
                <div class="entry-header">
                    <div class="container-fluid">
                        <div class="entry-title">
                            <div class="box-bg-left">
                                <div class="box-bg-right">
                                    <div class="box-bg-center">                                
                                        <?php echo $title; ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="pull-right entry-all">
                            <a href="<?php echo $url; ?>">Xem tất cả <i class="fa fa-caret-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="entry-body">                    
                        <div class="container-fluid">
                            <div class="col-md-4 no-padding-md">                                 
                                    <div href="<?php echo Yii::app()->createUrl('videos/detail?id=' . $item['id'] . '&alias=' . $item['alias']) ?>" class="thumbnail">
                                        <img src="<?php echo $item['thumbnail'] ?>" alt="<?php echo $item['title'] ?>">
                                        <a href="<?php echo Yii::app()->createUrl('videos/detail?id=' . $item['id'] . '&alias=' . $item['alias']) ?>" class="icon-play"></a>
                                        <div class="caption">
                                            <a href="<?php echo Yii::app()->createUrl('videos/detail?id=' . $item['id'] . '&alias=' . $item['alias']) ?>"><?php echo isset($item['title']) ? $item['title'] : '' ?></a>
                                        </div>
                                    </div>                                
                            </div>
                            <div class="col-md-8 no-padding-md">
                                <div class="well">
                                    <div class="row">
                                        <?php foreach ($items as $key => $item):
                                            if(isset($item['image'])) $item['thumbnail'] = $item['image'];
                                            ?>
                                            <div class="col-md-6 row-box">
                                                <div class="media item">
                                                    <div class="media-left entry-thunb">
                                                        <a href="<?php echo Yii::app()->createUrl('videos/detail?id=' . $item['id'] . '&alias=' . $item['alias']) ?>">
                                                            <img class="media-object" src="<?php echo $item['thumbnail'] ?>" alt="Video <?php echo $item['title'] ?>">
                                                            <?php if(isset($item['duration'])){ ?>
                                                                <span class="entry_time"><?php echo $item['duration'] ?></span>
                                                            <?php } ?>
                                                        </a>
                                                    </div>
                                                    <div class="media-body">
                                                        <span class="media-heading"><a href="<?php echo Yii::app()->createUrl('videos/detail?id=' . $item['id'] . '&alias=' . $item['alias']) ?>"><?php echo buildHtml::truncateText($item['title'], 40) ?></a></span>
                                                        <span class="entry-control">
                                                            <span><i class="fa fa-thumbs-o-up"></i> <?php echo isset($item['value']) ? $item['value'] : 0; ?></span>
                                                            <span><i class="fa fa-play-circle-o"></i> <?php echo isset($item['viewed']) ? $item['viewed'] : 0; ?></span>
                                                        </span>
                                                        <div class="entry-social hidden-lg hidden-md">
                                                            <div class="fb-like" data-href="<?php echo Yii::app()->createUrl('videos/detail?id=' . $item['id'] . '&alias=' . $item['alias']) ?>" data-layout="button_count" data-action="like" data-show-faces="false" data-share="true"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                             
                                        <?php endforeach; ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
    <?php
}
 
?>
 

<div class="page-home">
    <?php showBlockHome($videos, "Video Hot", Yii::app()->createUrl('/videos') ); ?>
     
    <?php showBlockHome($video_sposrts, "Thể thao", Yii::app()->createUrl('/videos?t=the-thao') ); ?>
    
    <?php showBlockHome($posts, "Tin Tức", Yii::app()->createUrl('/news') ); ?>
</div>
       
     