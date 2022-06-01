<?php
  $post = get_post($id);
  $content = apply_filters('the_content', $post->post_content);
  $image_lazy = get_the_post_thumbnail_url($id, 'lazy-square');
  $image = get_the_post_thumbnail_url($id, 'large');
?>

<div class="about about--index">
  <div class="about__image">
    <div class="lazy">
      <img src="<?= $image_lazy ?>" data-lazy="<?= $image ?>"/>
    </div>
  </div>
  <div class="about__content content">
    <?= $content ?>
  </div>
</div>