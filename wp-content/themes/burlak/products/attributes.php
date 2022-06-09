<?php
  function getTable($data){
    ob_start();
		?>
    <div class="attributes">
      <?php foreach($data as $item): ?>
        <div class="attribute">
          <div><?= $item['label'] ?></div>
          <div><?= $item['value'] ?></div>
        </div>
      <?php endforeach; ?>
    </div>
    <?php
		$result = ob_get_contents();
		ob_end_clean();
		return $result;
  }
  $data = get_field('attributes');
  if($data):
    $data = array_map(function($item) {
      return [
        'label' => $item['group'],
        'content' => getTable($item['list'])
      ];
    }, $data);
    my_get_template_part('blocks/tabs', [
      'items' => $data
    ]);
  endif;
?>
