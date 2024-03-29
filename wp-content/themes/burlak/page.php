<?php
  get_header();
  get_template_part('page/banners');
  // get_template_part('blocks/breadcrumbs');
  my_get_template_part('sections/section', array(
    'header' => array(
      'title' => get_the_title(),
      'tag' => 'h1',
      'uppercase' => true,
      'line' => true
    ),
    'content' => [
      'path' => 'page/content'
    ]
  ));
  get_footer();
