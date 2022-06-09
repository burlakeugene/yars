<?php
  $post_info = get_post_type_object('products');
  $categories = get_terms('products-cats', array(
    'hide_empty' => true,
  ));
  $posts = get_posts([
    'post_type' => $post_info->name,
    'post_status' => 'publish',
    'numberposts' => -1
  ]);
?>

<div class="products">
  <div class="products__tabs tabs__buttons">
    <button data-target="" class="tabs__button" data-active>
      Все модели
    </button>
    <?php foreach($categories as $category): ?>
      <button class="tabs__button" data-target="<?= $category->term_id ?>">
        <?= $category->name ?>
      </button>
    <?php endforeach; ?>
  </div>
  <div class="products__list">
    <?php
    foreach($posts as $post):
      my_get_template_part('products/item', [
        'data' => $post
      ]);
    endforeach;
    ?>
  </div>
</div>