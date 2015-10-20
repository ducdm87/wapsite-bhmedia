<div class="row">
    <h1 class="page-header">Videos</h1>

    <div class="panel panel-primary">
        <div class="panel panel-heading">
            <span><i class="fa fa-bars"></i> List media</span>
        </div>
        <div class="panel-body">
            <div class="">
                <!--<a href="" class="btn btn-primary" data-toggle="modal" data-target="#uploadExtention"><i class="fa fa-cog"></i> Upload</a>-->
                <a href="<?php echo $this->createUrl('films/create') ?>" class="btn btn-danger pull-right btn-sm"><i class="fa fa-plus"></i> Create a Media</a>
            </div>
            <br/>
            <div class="table-resposive" style="margin-top: 20px;">
                <table class="table table-hover table-bordered">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Title</th>
                            <th>Description</th>
                            <th>Date Create</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if (isset($films) && $films): ?>
                            <?php $i = 1; ?>
                            <?php foreach ($films as $film): ?>
                                <tr class="<?php echo ($i % 2) ? 'info' : 'active' ?>">
                                    <td><?php echo $i; ?></td>
                                    <td><?php echo $film['title']; ?></td>
                                    <td><?php echo $film['info']; ?></td>
                                    <td>
                                        <?php echo date('F j, Y',  strtotime($film['cdate'])); ?>
                                    </td>
                                    <td>
                                        <a href="<?php echo $this->createUrl('/films/create?id=' . $film['id']) ?>" role="edit"><i class="fa fa-edit"> Sửa</i></a>
                                        ||
                                        <a href="<?php echo $this->createUrl('/films?delete=' . $film['id']) ?>"><i class="fa fa-times"></i> Xóa</a>
                                    </td>
                                </tr>
                                <?php $i++; ?>
                            <?php endforeach; ?>
                        <?php endif; ?>
                    </tbody>
                </table>
            </div>

        </div>
    </div>
</div>