<?php
$colors = get_field('colors');
if($colors):
?>
  <div class="product__colors">
    <div class="product__colors__slider">
      <div class="swiper-container">
        <div class="swiper-wrapper">
          <?php
          foreach($colors as $color):
            ?>
            <div class="swiper-slide">
              <img src="<?= $color['image']['sizes']['product-color'] ?>" alt="<?= $color['label'] ?>">
            </div>
            <?php
          endforeach;
          ?>
        </div>
      </div>
      <?php
        get_template_part('slider/buttons');
      ?>
    </div>
    <div class="product__colors__panel">
      <div class="product__colors__panel__title">
        Доступтые цвета:
      </div>
      <?php
        foreach($colors as $index => $color):
          ?>
          <button data-value="<?= $color['label'] ?>" <?= $index == 0 ? 'data-active' : '' ?> data-theme="<?= $color['theme'] ?>" style="background-color: <?= $color['color'] ?>">
            <?php get_template_part('icons/checked') ?>
          </button>
          <?php
        endforeach;
        ?>
    </div>
  </div>
  <?php
  endif;
?>