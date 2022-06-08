<?php
  get_template_part('page/banners');
  $id = get_the_ID();
  $blocks = get_field('blocks', $id);
  $block = array_shift($blocks);
  if($block){
    my_get_template_part('sections/section', [
      'header' => [
        'title' => $block['title'],
        'line' => true,
        'align' => 'left',
        'uppercase' => true
      ],
      'content' => [
        'path' => 'about/text',
        'props' => $block
      ]
    ]);
  }
  my_get_template_part('sections/section', [
    'dark' => 20,
    'header' => [
      'title' => get_the_title(120),
      'line' => true,
      'uppercase' => true
    ],
    'content' => [
      'path' => 'about/numbers',
      'props' => [
        'list' => get_field('list', 120)
      ]
    ]
  ]);
  foreach($blocks as $block){
    my_get_template_part('sections/section', [
      'header' => [
        'title' => $block['title'],
        'line' => true,
        'align' => 'left',
        'uppercase' => true
      ],
      'content' => [
        'path' => 'about/text',
        'props' => $block
      ]
    ]);
  }
  get_template_part('gallery/index');
  my_get_template_part('sections/section', [
    'header' => [
      'title' => 'У Вас остались вопросы?',
    ],
    'content' => [
      'path' => 'forms/callback-mini',
    ]
  ]);
