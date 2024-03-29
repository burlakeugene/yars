<?php
  $id = $data->ID;
  $image = get_the_post_thumbnail_url($id, 'product');
  $name = $data->post_title;
  $price = get_field('price', $id);
?>

<div class="product product--item" style="background-image: url(<?= $image ?>)" data-categories="<?=
  implode(',', array_map(function($item){
      return $item->term_id;
    }, wp_get_post_terms($id, 'products-cats')
  ));
?>">
  <div class="product__inner">
    <div class="product__title">
      <?= $name ?>
    </div>
    <div class="product__footer">
      <a class="button ajax" href="<?= get_permalink($id) ?>">Подробнее</a>
      <?php if($price): ?>
      <div class="product__price">
        <?= $price ?>
      </div>
      <?php endif; ?>
    </div>
  </div>
</div>