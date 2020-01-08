



<?php echo form_open('users/register'); ?>
    <div class="row">
        <div class="col-md-4 col-md-offset-4">

            <h1 class="text-center"><i class="fa fa-user-plus fa-3x" aria-hidden="true"></i></h1>
            <h1 class="text-center"><?= $title; ?></h1>
            <?php echo validation_errors(); ?>
            <div class="form-group">
                <lable>Name</lable>
                <input class="form-control" name="name" type="text" placeholder="Name" />
            </div>
            <div class="form-group">
                <lable>Zipcode</lable>
                <input class="form-control" name="zipcode" type="text" placeholder="Zipcode" />
            </div>
            <div class="form-group">
                <lable>Email</lable>
                <input class="form-control" name="email" type="email" placeholder="Email" />
            </div>
            <div class="form-group">
                <lable>Username</lable>
                <input class="form-control" name="username" type="text" placeholder="Username" />
            </div>
            <div class="form-group">
                <lable>Password</lable>
                <input class="form-control" name="password" type="password" placeholder="Password" />
            </div>
            <div class="form-group">
                <lable>Confirm Password</lable>
                <input class="form-control" name="password2" type="password" placeholder="Confirm Password" />
            </div>
            <button class="btn btn-primary btn-block" type="submit">Submit</button>
        </div>
    </div>
<?php echo form_close(); ?>



