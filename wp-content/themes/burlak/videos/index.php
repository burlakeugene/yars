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
      'path' => 'videos/slider',
      'props' => [
        'list' => $list
      ]
    )
  ));
?>