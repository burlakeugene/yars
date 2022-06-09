<div class="banner" style="background-image: url(<?= $data['image']['sizes']['banner'] ?>)">
  <div class="banner__content">
    <?php if($data['title']): ?>
      <div class="banner__title">
        <?= $data['title'] ?>
      </div>
    <?php endif; ?>
    <?php if($data['text']): ?>
      <div class="banner__text">
        <?= $data['text'] ?>
      </div>
    <?php endif; ?>
  </div>
</div>