
<?php
  if($type):
  ?>
    <div class="navigation">
      <?php
        wp_nav_menu(array(
          'theme_location' => $type,
          'menu_class' => 'navigation navigation--'+$type
        ));
      ?>
    </div>
  <?php
  endif;
?>