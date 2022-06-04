<?php
$post_info = get_post_type_object('reviews');
$args = array(
  'numberposts' => -1,
  'post_type' => $post_info->name,
  // 'meta_query'	=> array(
  //       'relation'		=> 'AND',
  //       array(
  //           'key'	 	=> 'slider',
  //           'value'	  	=> '1',
  //           'compare' 	=> '=',
  //       ),
  //   ),
);
$list = get_posts($args);

my_get_template_part('sections/section', array(
    'gray' => true,
    'header' => array(
      'title' => $post_info->label,
      'align' => 'right',
      'line' => true,
      'uppercase' => true
    ),
    'content' => array(
      'path' => 'reviews/slider',
      'props' => [
        'list' => $list
      ]
    )
  ));