<?php
  $id = 103;
  $fields = get_fields($id);
?>

<div class="about about--block">
  <div class="about__left">
    <div class="about__content">
      <?php
        if($fields['title']):
        ?>
        <div class="about__content__title">
          <h2><?= $fields['title'] ?></h2>
        </div>
        <?php
        endif;
      ?>
      <?php
        if($fields['text']):
        ?>
        <div class="about__content__text">
          <?= $fields['text'] ?>
        </div>
        <?php
        endif;
      ?>
    </div>
  </div>
  <div class="about__right">
    <?php if($fields['photos']): ?>
      <div class="about__photos swiper">
        <div class="swiper-wrapper">
          <?php foreach($fields['photos'] as $photo):
            ?>
            <div class="swiper-slide">
              <a
                class="about__photo"
                data-fancybox="about"
                href="<?= $photo['photo']['sizes']['large'] ?>"
                style="background-image: url(<?= $photo['photo']['sizes']['medium'] ?>)"
                >
              </a>
            </div>
          <?php endforeach; ?>
        </div>
        <div class="about__photos__navigation">
          <?php get_template_part('blocks/swiper-navigation') ?>
        </div>
      </div>
    <?php endif; ?>
  </div>
</div>