<?php
$id = 19;
$fields = get_fields($id);
?>

<div class="banner banner--index" style="background-image: url(<?= $fields['image']['url'] ?>)">
  <div class="container container--wide">
    <div class="banner__title">
      <h1>
        <?= $fields['title'] ?>
      </h1>
    </div>
    <div class="banner__text">
      <?= $fields['text'] ?>
    </div>
    <?php
      if($fields['button']['enable']):
      ?>
        <div class="banner__button">
          <button class="button button--black" data-callback="Баннер на главной">
            <?= $fields['button']['text'] ?>
          </button>
        </div>
      <?php
      endif;
    ?>
  </div>
</div>

