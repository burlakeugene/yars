<?php
  $banners = get_field('banner');
  my_get_template_part('slider/slider', [
    'theme' => 'light',
    'classes' => 'banners',
    'fullHeightSlide' => true,
    'pagination' => true,
    'list' => $banners,
    'item' => [
      'path' => 'page/banner'
    ],
    'config' => [
      'slidesPerView' => 1,
      'loop' => true,
      'autoplay' => [
        'delay' => 5000,
      ],
    ]
  ]);
?>

