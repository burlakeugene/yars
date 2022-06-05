<?php
  if($list):
  ?>
    <div class="videos">
      <div class="swiper-container">
        <div class="swiper-wrapper">
          <?php foreach ($list as $item) : ?>
            <div class="swiper-slide">
              <?php
                my_get_template_part('videos/item', [
                  'data' => $item
                ]);
              ?>
            </div>
          <?php endforeach ?>
        </div>
      </div>
      <div class="videos__navigation">
        <?php get_template_part('blocks/swiper-pagination') ?>
      </div>
    </div>
  <?php
  endif;
?>