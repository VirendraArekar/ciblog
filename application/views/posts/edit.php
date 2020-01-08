<h2><?= $title ?></h2>
<?php echo validation_errors(); ?>
<?php echo form_open('posts/update'); ?>
<input type="hidden" name="id" value="<?php echo $post['id']; ?>" />
<div class="form-group">
    <label for="title">Title</label>
    <input type="text" class="form-control" name="title"  placeholder="Edit Title.." value="<?php echo $post['title']; ?>">
</div>
<div class="form-group">
    <label for="body">Body</label>
    <textarea class="form-control" id="body" name="body" value="" placeholder="Edit Body..."><?php echo $post['body']; ?></textarea>
    <script>
        CKEDITOR.replace( 'body' );
    </script>
    <div class="form-group">
        <label for="categories">Category</label>
        <select name="category_id" class="form-control">
            <?php foreach($categories as $category): ?>
                <option value="<?php echo $category['id'];?>"><?php echo $category['name'];?></option>
            <?php endforeach; ?>
        </select>
    </div>
</div>
<button type="submit" class="btn btn-primary">Submit</button>
</form>