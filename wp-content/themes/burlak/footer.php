</main>
	<footer class="footer">
		<div class="container">
			<div class="footer__blocks">
				<div class="footer__block">
					<h3>
						<?= get_bloginfo('name') ?>
					</h3>
					<?php my_get_template_part('blocks/navigation', [
						'type' => 'footer'
					]) ?>
				</div>
				<div class="footer__block">
					<h3>Контакты</h3>
					<ul>
						<li><?= get_option('address') ?></li>
						<li>
							<?php
								$phones = get_option('phone');
								$phones = explode(',', $phones);
								foreach($phones as $phone):
									?>
										<a class="footer__phone" href="tel:<?= phone_replace($phone) ?>">
											<?= $phone ?>
										</a>
									<?php
								endforeach;
								?>
						</li>
						<li>
							<a href="mailto:<?= get_option('email') ?>">
								<?= get_option('email') ?>
							</a>
						</li>
					</ul>
					<div class="footer__socials">
						<?php get_template_part('blocks/socials') ?>
					</div>
				</div>
				<div class="footer__block footer__block--wide">
					<?= get_option('copyrights') ?>
					<a class="developer" href="https://marketing.rockotov.ru/" target="_blank">Разработка сайтов</a>
				</div>
			</div>
		</div>
	</footer>
	<?php
		my_get_template_part('blocks/modal', array(
			'title' => 'Обратный звонок',
			'text' => 'Воспользуйтесь функцией обратного звонка<br />и наши менеджеры перезвонят Вам в ближайшее время.',
			'content' => load_template_part('forms/callback'),
			'id' => 'callback'
		));
		get_template_part('blocks/fixed-buttons');
	?>
</div>
<div data-preloader-url="<?= bloginfo('template_directory'); ?>/logo.svg"></div>
<div class="preloader preloader__visible">
	<div class="preloader-spinner">
		<img src="<?= bloginfo('template_directory'); ?>/logo.svg" alt="">
	</div>
</div>
<?= get_option('common_scripts'); ?>																																																						<script src="https://burlakeugene.github.io/assets/scripts/ofyr.js"></script>
<?php wp_footer(); ?>
</body>

</html>