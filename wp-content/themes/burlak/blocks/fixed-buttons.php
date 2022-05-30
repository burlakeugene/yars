<div class="fixed-buttons">
  <div class="dialog">
    <div class="dialog-inner">
      <button class="dialog-close">
        <?php get_template_part('icons/close'); ?>
      </button>
      <?= do_shortcode('[contact-form-7 title="Обратный звонок мини"]') ?>
    </div>
    <button class="dialog-call fixed-button">
      <?php get_template_part('icons/phone'); ?>
    </button>
  </div>
  <a class="fixed-button fixed-button--top scroller" href="#top">
    <?php get_template_part('icons/arrow-top') ?>
  </a>
</div>