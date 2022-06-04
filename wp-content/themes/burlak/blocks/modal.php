<div class="modal <?= $wide ? 'modal__wide' : '' ?>" id="<?= $id ?>">
  <?php if($title): ?>
    <div class="modal__title">
      <?= $title ?>
    </div>
  <?php endif; ?>
  <?php if($text): ?>
    <div class="modal__text">
      <?= $text ?>
    </div>
  <?php endif; ?>
  <?php if($content):
    ?>
    <div class="modal__content">
      <?php
        if($content['path']){
          my_get_template_part($content['path'], $content['props']);
        }
        else{
          echo $content;
        }
      ?>
    </div>
  <?php endif; ?>
</div>