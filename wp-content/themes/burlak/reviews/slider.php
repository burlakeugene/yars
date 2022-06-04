<?php
if($list):
?>
  <div class="reviews">
    <div class="swiper-container">
      <div class="swiper-wrapper">
        <?php foreach ($list as $item) : ?>
          <div class="swiper-slide">
            <?php
              my_get_template_part('reviews/item', [
                'data' => $item
              ]);
            ?>
          </div>
        <?php endforeach ?>
      </div>
      <?php get_template_part('blocks/swiper-buttons') ?>
    </div>
    <div class="gallery__navigation">
      <?php get_template_part('blocks/swiper-pagination') ?>
    </div>
  </div>
<?php
endif;
?>