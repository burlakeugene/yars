<?php
  if($list):
?>
  <div class="numbers">
    <?php
      foreach($list as $item):
      ?>
      <div class="number">
        <div class="number__value countdown" data-from="0" data-to="<?= $item['number'] ?>" data-seconds="2">0</div>
        <div class="number__text">
          <?= $item['text'] ?>
        </div>
      </div>
      <?php
      endforeach;
    ?>
  </div>
<?php
  endif;
?>