<?php
  if($list):
  ?>
  <div class="benefits">
    <?php foreach($list as $item): ?>
      <div class="benefit">
        <div class="benefit__icon">
          <img src="<?= $item['icon']['url'] ?>" alt=" <?= $item['title'] ?>">
        </div>
        <div class="benefit__title">
          <?= $item['title'] ?>
        </div>
        <div class="benefit__text">
          <?= $item['text'] ?>
        </div>
      </div>
    <?php endforeach; ?>
  </div>
  <?php
  endif;
?>