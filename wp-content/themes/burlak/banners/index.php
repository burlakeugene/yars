<?php
if($data):
  ?>
  <div class="banner banner--index" style="background-image: url(<?= $data['image']['url'] ?>)">
    <div class="container container--wide">
      <div class="banner__title">
        <h1>
          <?= $data['title'] ?>
        </h1>
      </div>
      <div class="banner__text">
        <?= $data['text'] ?>
      </div>
      <?php
        if($data['button']['enable']):
        ?>
          <div class="banner__button">
            <button class="button button--black" data-callback="Баннер на главной">
              <?= $data['button']['text'] ?>
            </button>
          </div>
        <?php
        endif;
      ?>
    </div>
  </div>
  <?php
endif;
?>
