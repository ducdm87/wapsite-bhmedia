
<div class="conatiner">
    <div class="dialog-message">
        <div class="alert alert-warning alert-dismissible text-center" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <p>Qúy khách vui lòng đăng nhập <strong>Tại đây</strong> hoặc vui lòng chuyển sang truy cập GPRS/3G/DEGE</p>
        </div>
    </div>
</div>
<?php if (isset($post) && $post): ?>
    <div class="entry-container">
        <div class="entry-header">
            <div class="container">
                <div class="entry-title entry-title-news">
                    <span><?php echo isset($category) ? $category['title'] : 'Khác'; ?></span>
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
<?php endif; ?>

