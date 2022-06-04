<?php
  $id = $data->ID;
  $image = get_the_post_thumbnail_url($id, 'review');
  $name = $data->post_title;
  $excerpt = apply_filters('the_content', $data->post_excerpt);
  $content = apply_filters('the_content', $data->post_content);
  $rating = get_field('rating', $id);
  $isExcerpt = $excerpt && $target !== 'content';
?>
<div class="review">
  <div class="review__inner">
    <div class="review__header">
      <div class="review__header__block">
        <?php if($image): ?>
        <div class="review__photo">
          <img src="<?= $image ?>" alt="<?= $name ?>">
        </div>
        <div class="review__date-name">
          <div class="review__date">
            <?= my_get_template_part('blocks/date', [
              'value' => $data->post_date
            ]) ?>
          </div>
          <div class="review__name">
            <?= $name ?>
          </div>
        </div>
        <?php endif; ?>
      </div>
      <div class="review__header__block">
        <?php
          my_get_template_part('blocks/rating', [
            'value' => $rating
          ])
        ?>
      </div>
    </div>
    <div class="review__content content">
      <?= $isExcerpt ? $excerpt : $content ?>
    </div>
    <?php
      if($isExcerpt):
      ?>
      <button class="button button--ghost" data-open-review="#review-<?= $id ?>">
        Отзыв полностью
      </button>
      <?php
      endif;
    ?>
  </div>
</div>

<?php
  if($isExcerpt){
    my_get_template_part('blocks/modal', array(
      'title' => 'Отзыв',
      'content' => array(
        'path' => 'reviews/item',
        'props' => [
          'data' => $data,
          'target' => 'content'
        ]
      ),
      'id' => 'review-'.$id
    ));
  }
?>