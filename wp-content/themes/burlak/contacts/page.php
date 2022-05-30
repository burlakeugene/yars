<?php
  $country = get_option('country');
  $address = get_option('address');
  $teaser = get_option('teaser');
  $phones = explode(',', get_option('phone'));
  $email = get_option('email');
  $map = get_field('map');
  $map['pin'] = array(
    'href' => $map['pin']['url'],
    'width' => $map['pin']['width'],
    'height' => $map['pin']['height']
  );
?>
<div class="container">
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
          <?= $country ?>
          <div><?= $address ?></div>
        </div>
        <div class="contacts__content__block__text">
          <?= $teaser ?>
        </div>
      </div>
      <?php if($phones): ?>
      <div class="contacts__content__block">
        <div class="contacts__content__block__text">
          Контактные телефоны
        </div>
        <div class="contacts__content__block__value">
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
        <div class="contacts__content__block__text">
          Поддержка 24 часа
        </div>
      </div>
      <?php endif; ?>
      <?php if($email): ?>
      <div class="contacts__content__block">
        <div class="contacts__content__block__text">
          Электнонный адрес
        </div>
        <div class="contacts__content__block__value">
          <a href="mailto:<?= $email ?>">
            <?= $email ?>
          </a>
        </div>
      </div>
      <?php endif; ?>
      <div class="contacts__content__block">
        <button data-callback="Страница контактов" class="button button--black">
          Обратный звонок
        </button>
      </div>
    </div>
  </div>
</div>