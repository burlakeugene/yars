<?php
  get_template_part('page/banners');
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