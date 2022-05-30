<div class="quote <?= $photo ? 'quote--photo' : '' ?>">
  <?php get_template_part('icons/quote') ?>
  <?php
    if($photo):
    ?>
      <div class="quote__photo">
        <img src="<?= $photo ?>" alt="<?= $title ?>">
      </div>
    <?php
    endif;
  ?>
  <div class="quote__header">
    <?php
      if($title):
      ?>
        <div class="quote__title">
          <?= $title ?>
        </div>
      <?php
      endif;
    ?>
    <?php
      if($subscription):
      ?>
        <div class="quote__subscription">
          <?= $subscription ?>
        </div>
      <?php
      endif;
    ?>
  </div>
  <?php
    if($text):
    ?>
      <div class="quote__text content">
        <?= $text ?>
      </div>
    <?php
    endif;
  ?>
</div>