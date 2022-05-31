
<?php
  if($type):
    $args = array(
      'theme_location' => $type,
      'menu_class' => 'navigation navigation--'+$type
    );
    if($items_wrap){
      $args['items_wrap'] = $items_wrap;
    }
  ?>
    <div class="navigation">
      <?php
        wp_nav_menu($args);
      ?>
    </div>
  <?php
  endif;
?>