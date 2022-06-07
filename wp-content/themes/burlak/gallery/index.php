<?php
  $list = get_field('items', 43);
  my_get_template_part('sections/section', array(
    'dark' => 80,
    'header' => array(
      'title' => 'Галерея',
      'line' => true,
      'uppercase' => true,
      'align' => 'left'
    ),
    'content' => array(
      'wide' => true,
      'path' => 'slider/slider',
      'props' => [
        'theme' => 'light',
        'classes' => 'gallery',
        'list' => $list,
        'pagination' => true,
        'buttons' => true,
        'item' => [
          'path' => 'gallery/item'
        ],
        'config' => [
          'autoplay' => [
            'delay' => 5000,
          ]
        ]
      ]
    )
  ));
?>