<?php
get_header();
my_get_template_part('sections/section', array(
  'header' => array(
    'title' => 'Модельный ряд',
    'line' => true,
    'tag' => 'h1',
    'uppercase' => true
  ),
  'content' => array(
    'wide' => true,
    'path' => 'products/index',
  )
));
get_footer();
?>