<?php
  my_get_template_part('sections/section', array(
    'dark' => 75,
    'header' => array(
      'title' => 'Галерея',
      'line' => true,
      'uppercase' => true,
      'align' => 'left'
    ),
    'content' => array(
      'wide' => true,
      'path' => 'gallery/list',
      'props' => array(
        'list' => array_map(function($item) {
          return array(
            'lazy' => $item['photo']['sizes']['lazy-square'],
            'draw' => $item['photo']['sizes']['gallery'],
            'full' => $item['photo']['sizes']['large'],
          );
        }, get_field('items', 43))
      )
    )
  ));
?>