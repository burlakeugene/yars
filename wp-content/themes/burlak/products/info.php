<?php
  $currency = get_option('currency');
  $price = get_field('price');
  $colors = get_field('colors');
?>
<div class="product__info">
  <div class="product__info__colors">
    <?php
      foreach($colors as $color):
        ?>
        <img src="<?= $color['image']['sizes']['medium'] ?>" alt="<?= $color['label'] ?>">
        <?php
      endforeach;
    ?>
    <?php
      foreach($colors as $color):
        ?>
        <div data-theme="<?= $color['theme'] ?>">
          <div style="background-color: <?= $color['color'] ?>">
            <?php get_template_part('icons/checked') ?>
            <?= $color['label'] ?>
          </div>
        </div>
        <?php
      endforeach;
    ?>
  </div>
  <div class="product__info__data">
    <div class="product__title">
      <h1><?php the_title() ?></h1>
    </div>
    <div class="product__price">
      от <?= $price ?> <?= $currency ?>
    </div>
    <div class="product__description">
      <?php the_content(); ?>
    </div>
    <div class="product__footer">
      <button class="button" data-callback>Оставить заявку</button>
    </div>
  </div>
</div>