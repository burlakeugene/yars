<?php
$post_info = get_post_type_object('reviews');
$args = array(
  'numberposts' => -1,
  'post_type' => $post_info->name,
  'post_status' => 'publish',
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
    'path' => 'slider/slider',
    'props' => [
      'classes' => 'reviews',
      'list' => $list,
      'pagination' => true,
      'buttons' => true,
      'item' => [
        'path' => 'reviews/item'
      ],
      'config' => [
        'autoHeight' => true,
        'spaceBetween' => 20,
        'loop' => true,
        'autoplay' => [
          'delay' => 5000,
        ]
      ]
    ]
  )
));