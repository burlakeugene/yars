<?php
  get_header();
  get_template_part('banners/index');
  // my_get_template_part('sections/section', array(
  //   'header' => array(
  //     'title' => get_post_type_object('product')->labels->name,
  //     'link' => array(
  //       'ajax' => true,
  //       'href' => get_permalink(wc_get_page_id('shop')),
  //       'text' => 'Перейти в каталог',
  //       'modificators' => ['black']
  //     )
  //   ),
  //   'content' => array(
  //     'path' => 'product/categories',
  //     'props' => array(
  //       'index' => true
  //     )
  //   )
  // ));
  // $video = get_fields(41);
  // my_get_template_part('sections/section', array(
  //   'content' => array(
  //     'path' => 'blocks/video',
  //     'props' => array(
  //       'src' => $video['video'],
  //       'text' => $video['text'],
  //       'preview' => $video['background']['sizes']['large']
  //     )
  //   )
  // ));
  // my_get_template_part('sections/section', array(
  //   'content' => array(
  //     'path' => 'articles/index'
  //   )
  // ));
  // my_get_template_part('sections/section', array(
  //   'modificators' => ['dark', 'pattern'],
  //   'header' => array(
  //     'title' => get_post_type_object('questions')->labels->name,
  //     'link' => array(
  //       'ajax' => true,
  //       'href' => get_post_type_archive_link('questions'),
  //       'text' => 'Читать все <span>'.get_post_type_object('questions')->labels->name.'</span>',
  //       'modificators' => ['ghost', 'white']
  //     )
  //   ),
  //   'content' => array(
  //     'path' => 'questions/index'
  //   )
  // ));
  // my_get_template_part('sections/section', array(
  //   'render' => !isBlockDisabled(67),
  //   'content' => array(
  //     'path' => 'blocks/call-to-action'
  //   )
  // ));
  // my_get_template_part('sections/section', array(
  //   'render' => !isBlockDisabled(103),
  //   'noContainer' => true,
  //   'content' => array(
  //     'path' => 'blocks/about'
  //   )
  // ));
  get_footer();
?>