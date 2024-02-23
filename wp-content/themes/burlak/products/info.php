<?php
  $price = get_field('price');
  $colors = get_field('colors');
  $color = $colors && $colors[0] ? $colors[0]['label'] : '';
?>
<div class="product__info">
  <div class="product__info__side">
    <?php get_template_part('products/colors') ?>
  </div>
  <div class="product__info__side">
    <h1 class="product__title">
      <?php the_title() ?>
    </h1>
    <?php if($price): ?>
      <div class="product__price">
        <?= $price ?>
      </div>
    <?php endif; ?>
    <div class="product__description content">
      <?php the_content(); ?>
    </div>
    <div class="product__footer">
      <button class="button" data-callback="<?= get_the_title().', цвет: '.$color ?>">Оставить заявку</button>
      <button class="button button--ghost" data-callback="Дополнительное оборудывание">Дополнительное оборудывание</button>
    </div>
  </div>
</div>