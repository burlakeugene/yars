<?php
  $fields = get_fields($id);
  $content = apply_filters('the_content', $fields['content']);
  $images = $fields['images'];
?>

<div class="content-block">
  <?php
    if($images):
    ?>
      <div class="content-block__images">
        <div class="content-block__images__main swiper-container">
          <div class="swiper-wrapper">
            <?php foreach($images as $image):
              $image_full = $image['image']['sizes']['large'];
              ?>
              <div class="swiper-slide">
                <a href="<?= $image_full ?>" data-fancybox="content-block-<?= $id ?>">
                  <img src="<?= $image_full ?>" />
                </a>
              </div>
            <?php endforeach; ?>
          </div>
          <?php
            if(count($images) > 1){
              get_template_part('blocks/swiper-buttons');
            }
          ?>
        </div>
        <?php if(count($images) > 1): ?>
          <div class="content-block__images__thumbs swiper-container">
            <div class="swiper-wrapper">
              <?php foreach($images as $image):
                $src = $image['image']['sizes']['slider-thumb'];
                ?>
                <div class="swiper-slide">
                  <img src="<?= $src ?>" />
                </div>
              <?php endforeach; ?>
            </div>
          </div>
        <?php endif; ?>
      </div>
    <?php
    endif;
  ?>
  <div class="content-block__content content">
    <?= $content ?>
  </div>
</div>