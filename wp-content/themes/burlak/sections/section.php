<?php
  $classes = 'section '.implode(' ', $classes);
  if($modificators){
    foreach($modificators as $modificator){
      $classes.= ' section--'.$modificator;
    }
  }
  if(!$render || $render === 1):
?>
<?php if($delivers): ?>
  <div class="container">
    <div class="deliver deliver--section"></div>
  </div>
<?php endif; ?>
<section <?= $id ? 'id="'.$id.'"' : '' ?>class="<?= $classes ?>">
  <?php if(!$noContainer): ?>
  <div class="container">
  <?php endif;?>
    <?php if($header):
      $title = $header['title'];
      $link = $header['link'];
      ?>
      <div class="section__header <?= $header['mini'] ? 'section__header--mini' : '' ?>">
        <?php if($title): ?>
          <h2><?= $title ?></h2>
        <?php endif; ?>
        <?php if($link):
          $buttonsClasses = 'button';
          if($link['ajax']) $buttonsClasses .= ' ajax';
          if($link['modificators']){
            foreach($link['modificators'] as $modificator){
              $buttonsClasses .= ' button--'.$modificator;
            }
          }
          ?>
          <a class="<?= $buttonsClasses ?>" href="<?= $link['href'] ?>">
            <?= $link['text'] ?>
          </a>
        <?php endif; ?>
      </div>
    <?php endif; ?>
    <?php if($content): ?>
      <?php if($content['path']) my_get_template_part($content['path'], $content['props']) ?>
    <?php endif; ?>
  <?php if(!$noContainer): ?>
  </div>
  <?php endif;?>
</section>
<?php if($delivers): ?>
  <div class="container">
    <div class="deliver deliver--section"></div>
  </div>
<?php endif; ?>
<?php
  endif;
?>