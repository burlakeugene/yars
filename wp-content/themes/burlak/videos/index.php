<?php
  $id = 59;
  $list = get_field('videos', $id);
  my_get_template_part('sections/section', array(
    'dark' => 60,
    'header' => array(
      'title' => get_the_title($id),
      'uppercase' => true,
      'line' => true
    ),
    'content' => array(
      'path' => 'slider/slider',
      'props' => [
        'classes' => 'videos',
        'pagination' => true,
        'list' => $list,
        'item' => [
          'path' => 'videos/item'
        ],
        'config' => [
          'autoHeight' => true,
          'spaceBetween' => 20,
        ]
      ]
    )
  ));
?>