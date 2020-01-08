
<?php echo form_open('users/login'); ?>
<div class="row">
    <div class="col-md-4 col-md-offset-4">
        <?php echo validation_errors(); ?>
        <h1 class="text-center"><i class="fa fa-user fa-3x" aria-hidden="true"></i></h1>
        <h1 class="text-center"><?php echo $title; ?></h1>
        <div class="form-group">
            <input type="text" class="form-control" name="username" placeholder="Enter Username"  autofocus>
        </div>
        <div class="form-group">
            <input type="password" class="form-control" name="password" placeholder="Enter Password"  autofocus>
        </div>
        <button class="btn btn-primary btn-block" type="submit">Login</button>
    </div>
</div>
<?php echo form_close(); ?>