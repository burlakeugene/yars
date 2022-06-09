<?php
  $address = get_option('address');
  $phones = explode(',', get_option('phone'));
  $email = get_option('email');
  $map = get_field('map');
  $map['pin'] = array(
    'href' => $map['pin']['url'],
    'width' => $map['pin']['width'],
    'height' => $map['pin']['height']
  );
?>
<div class="contacts">
  <div class="map contacts__map"
    id="contacts-map"
    data-center="<?= $map['coords']['lat'] ?>,<?= $map['coords']['lng'] ?>"
    data-point='<?= json_encode($map) ?>'
    ></div>
  <div class="contacts__content">
    <div class="contacts__content__block">
      <div class="contacts__content__block__text">
        Адрес
      </div>
      <div class="contacts__content__block__value">
        <?php get_template_part('icons/pin') ?>
        <?= $address ?>
      </div>
    </div>
    <?php if($phones): ?>
    <div class="contacts__content__block">
      <div class="contacts__content__block__text">
        Номер телефона
      </div>
      <div class="contacts__content__block__value">
        <?php get_template_part('icons/phone') ?>
        <?php
          foreach($phones as $phone):
            ?>
              <a href="tel:<?= phone_replace($phone) ?>">
                <?= $phone ?>
              </a><br />
            <?php
          endforeach;
        ?>
      </div>
    </div>
    <?php endif; ?>
    <?php if($email): ?>
    <div class="contacts__content__block">
      <div class="contacts__content__block__text">
        Почта
      </div>
      <div class="contacts__content__block__value">
        <?php get_template_part('icons/envelop') ?>
        <a href="mailto:<?= $email ?>">
          <?= $email ?>
        </a>
      </div>
    </div>
    <?php endif; ?>
    <div class="contacts__content__block">
      <button data-callback="Страница контактов" class="button">
        Отправить заявку
      </button>
    </div>
  </div>
</div>