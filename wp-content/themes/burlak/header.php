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

<?php
  $phone = get_phones()[0];
?>

<body data-home="<?= esc_url(home_url('/')); ?>" <?php body_class(get_option('theme')); ?>>
  <div id="app">
    <div id="top"></div>
    <header class="header">
      <div class="container">
        <div class="header__inner">
          <div class="header__col">
            <?php get_template_part('blocks/logo') ?>
          </div>
          <div class="header__col">
            <?php my_get_template_part('blocks/navigation', [
              'type' => 'header'
            ]) ?>
          </div>
          <?php if($phone): ?>
            <div class="header__col">
              <a class="button button--black button--ghost" href="tel:<?= phone_replace($phone) ?>">
                <?= $phone ?>
              </a>
            </div>
          <?php endif; ?>
        </div>
      </div>
    </header>
    <sidebar class="sidebar">
    </sidebar>
    <main>