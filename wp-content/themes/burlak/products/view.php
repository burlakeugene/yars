<div class="product" data-title="<?= get_the_title() ?>">
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