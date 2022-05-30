<?php
  $fields = get_fields();
?>

<div class="banner" style="background-image: url(<?= $fields['background']['sizes']['large'] ?>)">
  <div class="banner__inner">
    <?php if($fields['text']): ?>
      <div class="banner__text">
        <?= $fields['text'] ?>
      </div>
    <?php endif; ?>
    <?php if($fields['link']['text'] && $fields['link']['href']): ?>
      <div class="banner__link">
        <a <?= $fields['link']['external'] ? '_blank' : '' ?> class="button <?= $fields['link']['external'] ? '' : 'ajax' ?>" href="<?= $fields['link']['href'] ?>">
          <?= $fields['link']['text'] ?>
        </a>
      </div>
    <?php endif; ?>
  </div>
</div>