
<div class="page-news">   
    <?php foreach ($categories as $category): ?>
        <div class="entry-container">
            <div class="entry-header">                
                <div class="container-fluid">                
                    <div class="entry-title">
                        <div class="box-bg-left">
                            <div class="box-bg-right">
                                <div class="box-bg-center">                                
                                    <?php echo $category['title'] ?>
                                </div>
                            </div>
                        </div>
                    </div>                
                </div>                
            </div>
            <div class="entry-body">     
                <div class="container-fluid">
                    <?php if (isset($category['posts']) && $category['posts']): ?>
                        <?php foreach ($category['posts'] as $post): 
                            $link_content = $this->createUrl('articles/detail/',array('id'=>$post['id'],'alias'=> $post['alias']) );
                            ?>
                            <div class="media entry-news">
                                <div class="media-left media-middle">
                                    <a href="<?php echo $link_content ?>" class="thumb">
                                        <img class="media-object" src="<?php echo $post['thumbnail'] ?>" alt="<?php echo $post['title'] ?>" height="105" width="105">
                                    </a>
                                </div>
                                <div class="media-body entry-caption">
                                    <h4 class="media-heading"><a href="<?php echo $link_content ?>"><?php echo $post['title'] ?></a></h4>
                                    <?php echo $post['introtext'] ?>
                                    <div class="readmore">
                                        <a href="<?php echo $link_content ?>">Xem thêm >></a>
                                    </div>
                                </div>
                            </div>
                            <div class="clear-fix break-line border-botton "></div>
                        <?php endforeach; ?>                    
                    <?php endif; ?>               
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
    <?php endforeach; ?>        
</div>
