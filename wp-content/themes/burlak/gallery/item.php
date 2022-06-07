<?php
  $full = $data['photo']['sizes']['large'];
  $lazy = $data['photo']['sizes']['lazy-square'];
  $draw = $data['photo']['sizes']['gallery'];
?>
<a data-fancybox="gallery" href="<?= $full ?>">
  <div class="lazy">
    <img src="<?= $lazy ?>" data-lazy="<?= $draw ?>"/>
  </div>
</a>