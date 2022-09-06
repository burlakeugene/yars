<?php
  if(!$list){
    $list = get_field('items', 43);
  }
  if(!$title){
    $title = 'Галерея';
  }
  if(!$theme){
    $theme = 'dark';
  }
  my_get_template_part('sections/section', array(
    'dark' => $theme == 'dark' ? 80 : false,
    'header' => array(
      'title' => $title,
      'line' => true,
      'uppercase' => true,
      'align' => 'left'
    ),
    'content' => array(
      'wide' => true,
      'path' => 'slider/slider',
      'props' => [
        'theme' => $theme == 'dark' ? 'light' : 'dark',
        'classes' => 'gallery',
        'list' => $list,
        'pagination' => true,
        'buttons' => true,
        'item' => [
          'path' => 'gallery/item'
        ]
      ]
    )
  ));
?>