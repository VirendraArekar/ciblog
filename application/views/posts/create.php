<h2><?= $title ?></h2>
<?php echo validation_errors(); ?>
<?php echo form_open_multipart('posts/create'); ?>
    <div class="form-group">
        <label for="title">Title</label>
        <input type="text" class="form-control" name="title"  placeholder="Add Title...">
    </div>
    <div class="form-group">
        <label for="body">Body</label>
        <textarea class="form-control" id="body" name="body" placeholder="Add Body..."></textarea>
        <script>
            CKEDITOR.replace( 'body' );
        </script>
    </div>
    <div class="form-group">
        <label for="categories">Category</label>
        <select name="category_id" class="form-control">
            <?php foreach($categories as $category): ?>
                <option value="<?php echo $category['id'];?>"><?php echo $category['name'];?></option>
            <?php endforeach; ?>
        </select>
    </div>
    <div class="form-group">
        <label for="upload">Image Upload</label>
        <input type="file" name="userfile" size="20" />
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>