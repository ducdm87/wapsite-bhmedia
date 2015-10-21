
<div class="page-news-detail">        
    <div class="entry-container">
        <div class="entry-header">
            <div class="container-fluid">
                <div class="entry-title">
                    <div class="box-bg-left">
                        <div class="box-bg-right">
                            <div class="box-bg-center">                                
                               <?php echo isset($category) ? $category['title'] : 'Khác'; ?>
                            </div>
                        </div>
                    </div>
                </div>                    
            </div> 
        </div> 
        <div class="entry-body">
            <div class="container">
                <h4 class="media-heading">
                    <?php echo isset($post['title']) ? $post['title'] : ''; ?>
                </h4>
                <p>
                     <?php echo isset($post['introtext']) ? $post['introtext'] : ''; ?>
                </p>
                <div>
                    <?php echo isset($post['fulltext']) ? $post['fulltext'] : '';  ?>
                </div>
            </div>
        </div>
    </div>    
</div>

