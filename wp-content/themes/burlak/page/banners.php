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
      'autoplay' => count($banners) > 1 ? [
        'delay' => 5000,
      ] : false
    ]
  ]);
?>

