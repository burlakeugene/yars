<?php
  $image = get_the_post_thumbnail_url($news->ID, 'medium');
  $image_lazy = get_the_post_thumbnail_url($news->ID, 'lazy');
  $image_full = get_the_post_thumbnail_url($news->ID, 'full');
?>
<div class="container">
  <div class="content">
    <?php the_content() ?>
  </div>
  <!-- <div class="deliver"></div> -->
  <!-- <?php get_template_part('blocks/share') ?> -->
</div>