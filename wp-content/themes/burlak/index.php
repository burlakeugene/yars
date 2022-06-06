<?php
  get_header();
  my_get_template_part('banners/index', array(
    'data' => get_fields(19)
  ));
  my_get_template_part('sections/section', array(
    'dark' => true,
    'header' => array(
      'title' => get_the_title(39),
      'line' => true,
      'align' => 'right',
      'uppercase' => true
    ),
    'content' => array(
      'path' => 'blocks/content',
      'props' => array(
        'id' => 39
      )
    )
  ));
  my_get_template_part('sections/section', array(
    'dark' => 20,
    'header' => [
      'title' => get_the_title(95),
      'line' => true,
      'uppercase' => true
    ],
    'content' => [
      'path' => 'slider/slider',
      'props' => [
        'theme' => 'light',
        'fullHeightSlide' => true,
        'buttons' => true,
        'pagination' => true,
        'list' => get_field('list', 95),
        'item' => [
          'path' => 'slider/item--card'
        ],
        'config' => [
          'slidesPerView' => 1,
          'spaceBetween' => 24,
          'autoplay' => [
            'delay' => 5000,
          ],
          'breakpoints' => [
            800 => [
              'slidesPerView' => 2
            ]
          ]
        ]
      ]
    ]
  ));
  my_get_template_part('sections/section', array(
    'content' => [
      'path' => 'slider/slider',
      'props' => [
        'buttons' => true,
        'list' => get_field('list', 89),
        'item' => [
          'path' => 'slider/item--image'
        ],
        'config' => [
          'slidesPerView' => 1,
          'autoplay' => [
            'delay' => 5000,
          ],
        ]
      ]
    ]
  ));
  my_get_template_part('sections/section', array(
    'dark' => 40,
    'header' => array(
      'title' => get_the_title(75),
      'line' => true,
      'uppercase' => true
    ),
    'content' => array(
      'path' => 'about/benefits',
      'props' => array(
        'list' => get_field('list', 75)
      )
    )
  ));
  my_get_template_part('sections/section', array(
    'header' => array(
      'title' => get_the_title(70),
      'line' => true,
      'align' => 'right',
      'uppercase' => true
    ),
    'content' => array(
      'path' => 'blocks/content',
      'props' => array(
        'id' => 70
      )
    )
  ));
  get_template_part('videos/index');
  get_template_part('reviews/index');
  get_template_part('gallery/block');
  my_get_template_part('sections/section', array(
    'header' => array(
      'title' => 'У Вас остались вопросы?',
    ),
    'content' => array(
      'path' => 'forms/callback-mini',
    )
  ));
  get_footer();
?>