<?php
$post_info = get_post_type_object('banners');
$args = array(
  'numberposts' => -1,
  'post_type' => $post_info->name,
  // 'meta_query'	=> array(
  //       'relation'		=> 'AND',
  //       array(
  //           'key'	 	=> 'slider',
  //           'value'	  	=> '1',
  //           'compare' 	=> '=',
  //       ),
  //   ),
);
$banners = get_posts($args);
?>
<?php if ($banners): ?>
<div class="banners swiper-container">
  <div class="swiper-wrapper">
    <?php foreach ($banners as $banner) : ?>
      <div class="swiper-slide">
        <?php
          $post = get_post($banner->ID);
          setup_postdata($post);
          get_template_part('banners/item');
        ?>
      </div>
    <?php endforeach ?>
  </div>
  <div class="banners__navigation">
    <?php get_template_part('blocks/swiper-navigation') ?>
  </div>
</div>
<?php endif; ?>