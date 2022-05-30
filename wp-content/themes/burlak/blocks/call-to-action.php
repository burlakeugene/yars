<?php
  $id = 67;
  $fields = get_fields($id);
  $left = $fields['left'];
  $right = $fields['right'];
?>

<div class="call-to-action">
  <div
    class="call-to-action__left"
    style="background-image: url(<?= $left['background']['sizes']['large'] ?>)"
  >
    <div class="call-to-action__left__inner">
      <div class="call-to-action__title">
        <?php if($left['first_title']): ?>
          <h3><?= $left['first_title'] ?></h3>
        <?php endif; ?>
        <?php if($left['second_title']): ?>
          <h2><?= $left['second_title'] ?></h2>
        <?php endif; ?>
      </div>
      <?php if($left['text']): ?>
        <div class="call-to-action__text">
          <?= $left['text'] ?>
        </div>
      <?php endif; ?>
      <?php if($left['link']['text'] && $left['link']['href']): ?>
        <a
          class="button button--white <?= !$left['link']['external'] ? 'ajax' : '' ?>"
          <?= $left['link']['external'] ? 'target="_blank"' : '' ?>
          href="<?= $left['link']['href'] ?>"
        >
          <?= $left['link']['text'] ?>
        </a>
      <?php endif; ?>
    </div>
    <?php
      if($left['lines']['text']):
        $texts = [];
        for($i = 0; $i < 10; $i++){
          $texts[] = $left['lines']['text'];
        }
        for($i = 0; $i <= 1; $i++):
          ?>
          <div
            style="background-color: <?= $left['lines']['background'] ?>;color: <?= $left['lines']['color'] ?>;"
            class="call-to-action__line call-to-action__line--<?=$i?>">
            <?php
              foreach($texts as $text):
              ?>
                <div>
                  <?= $text ?>
                </div>
              <?php
              endforeach;
            ?>
          </div>
          <?php
        endfor;
      endif;
    ?>
  </div>
  <div class="call-to-action__right" style="background-image: url(<?= $right['background']['sizes']['medium'] ?>)">
    <div class="call-to-action__right__inner">
      <div>
        <?php if($right['title']): ?>
          <div class="call-to-action__title">
            <h4><?= $right['title'] ?></h4>
          </div>
        <?php endif; ?>
        <?php if($right['text']): ?>
          <div class="call-to-action__text">
            <?= $right['text'] ?>
          </div>
        <?php endif; ?>
      </div>
      <div>
          <?php
            get_template_part('forms/callback-mini')
          ?>
      </div>
    </div>
  </div>
</div>