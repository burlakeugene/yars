<?php
  if($data['type'] === 'iframe'):
  ?>
  <div class="video-iframe">
    <?= $data['iframe'] ?>
  </div>
  <?php
    else:
      my_get_template_part('blocks/video', array(
        'src' => $data['video']['link']['url'],
        'preview' => $data['video']['preview']['sizes']['large']
      ));
    endif;
  ?>