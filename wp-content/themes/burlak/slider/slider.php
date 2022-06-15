<?php
  if($list):
    $inner_classes = 'slider';
    if($fullHeightSlide) $inner_classes .= ' slider--full-height-slide';
    if($theme) $inner_classes .= ' slider--'.$theme;
    if($classes) $inner_classes .= ' '.$classes;
  ?>
    <div class="<?= $inner_classes ?>" data-config='<?php
      echo json_encode($config);
    ?>'>
      <div class="slider__inner">
        <div class="swiper-container">
          <div class="swiper-wrapper">
            <?php foreach($list as $index => $list_item): ?>
              <div class="swiper-slide">
                <?php my_get_template_part($item['path'], [
                  'data' => $list_item,
                  'index' => $index
                ]) ?>
              </div>
            <?php endforeach; ?>
          </div>
          <?php if($buttons) get_template_part('slider/buttons') ?>
        </div>
      </div>
      <?php if($pagination) get_template_part('slider/pagination') ?>
    </div>
  <?php
  endif;
?>