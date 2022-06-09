<?php
  get_header();
  get_template_part('page/banners');

  my_get_template_part('sections/section', array(
    'header' => array(
      'title' => get_the_title(),
      'tag' => 'h1',
      'uppercase' => true,
      'line' => true
    ),
    'content' => [
      'path' => 'contacts/page'
    ]
  ));
  get_footer();
