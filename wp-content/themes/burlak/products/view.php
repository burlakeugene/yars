<?php
  $images = get_field('items');
  $title = get_the_title();
?>
<div class="product" data-title="<?= $title ?>">
  <?php
    get_template_part('page/banners');
    my_get_template_part('sections/section', [
      'content' => [
        'path' => 'products/info'
      ]
    ]);
    my_get_template_part('sections/section', [
      'dark' => 20,
      'header' => [
        'title' => 'Характеристики',
        'uppercase' => true,
        'line' => true
      ],
      'content' => [
        'path' => 'products/attributes'
      ]
    ]);
    if($images){
      my_get_template_part('gallery/index', [
        'theme' => 'light',
        'title' => 'Галерея "'.$title.'"',
        'list' => $images
      ]);
    }
    my_get_template_part('sections/section', array(
      'header' => array(
        'title' => 'У Вас остались вопросы?',
      ),
      'content' => array(
        'path' => 'forms/callback-mini',
      )
    ));
  ?>
</div>