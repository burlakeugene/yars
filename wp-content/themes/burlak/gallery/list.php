<?php
  if($list):
  ?>
  <div class="gallery">
    <div class="swiper-container">
      <div class="swiper-wrapper">
        <?php foreach ($list as $index => $item) : ?>
          <div class="swiper-slide">
            <a data-fancybox="gallery" href="<?= $item['full'] ?>">
              <div class="lazy">
                <img src="<?= $item['lazy'] ?>" data-lazy="<?= $item['draw'] ?>"/>
              </div>
            </a>
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