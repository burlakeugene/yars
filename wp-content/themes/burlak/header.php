<!doctype html>
<html <?php language_attributes(); ?>>

<head>
  <meta charset="<?php bloginfo('charset'); ?>">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="theme-color" content="<?= get_option('theme') ?>">
  <script src="https://api-maps.yandex.ru/2.1/?apikey=1a8ec6fa-754c-461f-aead-f0b6c40f9cf0&lang=ru_RU"></script>
  <script src="https://yastatic.net/share2/share.js"></script>
  <?php get_template_part('open-graph') ?>
  <?php wp_head(); ?>
  <?= get_option('head_additions'); ?>
</head>

<body data-home="<?= esc_url(home_url('/')); ?>" <?php body_class(get_option('theme')); ?>>
  <div id="app">
    <div id="top"></div>
    <button data-callback="test">test</button>
    <header class="header">
      <div class="container">
        <div class="header__inner">
          <div class="header__col">
            <div class="header__logo">
              <?php get_template_part('blocks/logo') ?>
            </div>
            <div class="header__navigation">
              <?php my_get_template_part('blocks/navigation', [
                'type' => 'header'
              ]) ?>
            </div>
          </div>
          <div class="header__col">
            <div class="header__socials">
              <?php get_template_part('blocks/socials') ?>
            </div>
          </div>
          <div class="header__col">
            <div class="header__buttons">
              <?php get_template_part('search/button') ?>
              <div class="header__buttons__deliver"></div>
              <?php get_template_part('favorite/button--header') ?>
              <?php get_template_part('compare/button--header') ?>
              <?php get_template_part('cart/button--header') ?>
              <?php get_template_part('blocks/toggle') ?>
            </div>
          </div>
        </div>
      </div>
    </header>
    <sidebar class="sidebar">
      <div class="sidebar__main">
        <div class="sidebar__navigation">
          <?php my_get_template_part('blocks/navigation', [
            'type' => 'header'
          ]) ?>
        </div>
      </div>
      <div class="sidebar__footer">
        <div class="sidebar__socials">
          <?php get_template_part('blocks/socials') ?>
        </div>
      </div>
    </sidebar>
    <main>