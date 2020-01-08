<html>
    <head>
        <title>CI Blog</title>
        <link href="https://bootswatch.com/3/flatly/bootstrap.min.css"  rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"  rel="stylesheet">
        <link href="<?php echo base_url(); ?>assets/css/style.css" rel="stylesheet" />
        <script src="http://cdn.ckeditor.com/4.7.3/full/ckeditor.js"></script>
    </head>
<body>
<nav class="navbar navbar-inverse">
   <div class="container">
       <div class="navbar-header">
           <a href="<?php echo base_url(); ?>" class="navbar-brand">ciBlog</a>
       </div>
       <div id="navbar">
           <ul class="nav navbar-nav">
               <li><a href="<?php echo base_url(); ?>pages/home">Home</a></li>
               <li><a href="<?php echo base_url(); ?>pages/about">About</a></li>
               <li><a href="<?php echo base_url(); ?>posts">Blogs</a></li>
               <li><a href="<?php echo base_url(); ?>categories">Categories</a></li>
           </ul>
           <ul class="nav navbar-nav navbar-right">
               <?php if(!$this->session->userdata('logged_in')) : ?>
                   <li><a href="<?php echo base_url(); ?>users/login"><i class="fa fa-sign-in" aria-hidden="true"></i>Login</a></li>
                   <li><a href="<?php echo base_url(); ?>users/register"><i class="fa fa-user-plus" aria-hidden="true"></i>Register</a></li>
               <?php endif; ?>
               <?php if($this->session->userdata('logged_in')) : ?>
                   <li><a href="<?php echo base_url(); ?>posts/create">Create Post</a></li>
                   <li><a href="<?php echo base_url(); ?>categories/create">Create Category</a></li>
                   <li><a href="<?php echo base_url(); ?>users/logout"><i class="fa fa-sign-out" aria-hidden="true"></i>Logout</a></li>
               <?php endif; ?>
           </ul>
       </div>
   </div>
</nav>

<div class="container">
    <!-- Flash Message -->
    <?php if($this->session->flashdata('user_registered')): ?>
         <?php
             echo '<p class="alert alert-success">'.$this->session->flashdata('user_registered').'</p>';
         ?>
    <?php endif; ?>

    <?php if($this->session->flashdata('post_created')): ?>
         <?php
             echo '<p class="alert alert-success">'.$this->session->flashdata('post_created').'</p>';
         ?>
    <?php endif; ?>

    <?php if($this->session->flashdata('post_updated')): ?>
         <?php
             echo '<p class="alert alert-success">'.$this->session->flashdata('post_updated').'</p>';
         ?>
    <?php endif; ?>

    <?php if($this->session->flashdata('category_created')): ?>
         <?php
             echo '<p class="alert alert-success">'.$this->session->flashdata('category_created').'</p>';
         ?>
    <?php endif; ?>

    <?php if($this->session->flashdata('post_deleted')): ?>
         <?php
             echo '<p class="alert alert-success">'.$this->session->flashdata('post_deleted').'</p>';
         ?>
    <?php endif; ?>
    <?php if($this->session->flashdata('user_loggedin')): ?>
        <?php
        echo '<p class="alert alert-success">'.$this->session->flashdata('user_loggedin').'</p>';
        ?>
    <?php endif; ?>
    <?php if($this->session->flashdata('login_failed')): ?>
        <?php
        echo '<p class="alert alert-danger">'.$this->session->flashdata('login_failed').'</p>';
        ?>
    <?php endif; ?>
    <?php if($this->session->flashdata('user_loggedout')): ?>
        <?php
        echo '<p class="alert alert-success">'.$this->session->flashdata('user_loggedout').'</p>';
        ?>
    <?php endif; ?>
    <?php if($this->session->flashdata('category_deleted')): ?>
        <?php
        echo '<p class="alert alert-success">'.$this->session->flashdata('category_deleted').'</p>';
        ?>
    <?php endif; ?>
