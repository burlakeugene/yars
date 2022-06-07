<?php
	if (!function_exists('burlak_setup')) :
		function burlak_setup(){
			load_theme_textdomain('burlak', get_template_directory() . '/languages');
			add_theme_support('automatic-feed-links');
			add_theme_support('title-tag');
			add_theme_support('post-thumbnails');
			register_nav_menus(array(
				'header' => esc_html__('Header', 'burlak'),
				'footer' => esc_html__('Footer', 'burlak'),
				'footer_second' => esc_html__('Footer second', 'burlak'),
			));
			add_theme_support('custom-logo');
    	add_theme_support('custom-header');
		}
	endif;
	add_action('after_setup_theme', 'burlak_setup');

	function burlak_scripts(){
		wp_enqueue_style('burlak-style', get_stylesheet_uri());
    wp_enqueue_script('burlak-bundle', get_template_directory_uri() . '/dist/js/bundle.js');
    wp_enqueue_style('burlak-theme', get_template_directory_uri() . '/dist/css/main.css');
	}
	add_action('wp_enqueue_scripts', 'burlak_scripts');
	show_admin_bar(false);

	function add_fancybox($content){
    global $post;
    $pattern = "/<a(.*?)href=('|\")(.*?).(bmp|gif|jpeg|jpg|png)('|\")(.*?)>/i";
    $replacement = '<a$1href=$2$3.$4$5 data-fancybox="%POSTID%"$6>';
    $content = preg_replace($pattern, $replacement, $content);
    $content = str_replace("%POSTID%", $post->ID, $content);
    return $content;
	}
	add_filter('the_content', 'add_fancybox');

	function phone_replace($string){
    $string = str_replace(" ", "", $string);
    $string = str_replace("-", "", $string);
    $string = str_replace("(", "", $string);
    $string = str_replace(")", "", $string);
    return $string;
	}

	add_image_size('lazy', 50, 50, false);
	add_image_size('lazy-square', 50, 50, true);
	add_image_size('gallery', 860, 550, true);
	add_image_size('review', 200, 200, true);
	add_image_size('slider-thumb', 180, 140, true);
	add_image_size('product', 620, 640, true);

	function fix_wp_get_attachment_image_svg($image, $attachment_id, $size, $icon) {
		if (is_array($image) && preg_match('/\.svg$/i', $image[0]) && $image[1] <= 1) {
			if(is_array($size)) {
				$image[1] = $size[0];
				$image[2] = $size[1];
			} elseif(($xml = simplexml_load_file($image[0])) !== false) {
				$attr = $xml->attributes();
				$viewbox = explode(' ', $attr->viewBox);
				$image[1] = isset($attr->width) && preg_match('/\d+/', $attr->width, $value) ? (int) $value[0] : (count($viewbox) == 4 ? (int) $viewbox[2] : null);
				$image[2] = isset($attr->height) && preg_match('/\d+/', $attr->height, $value) ? (int) $value[0] : (count($viewbox) == 4 ? (int) $viewbox[3] : null);
			} else {
				$image[1] = $image[2] = null;
			}
		}
		return $image;
	}
	add_filter( 'wp_get_attachment_image_src', 'fix_wp_get_attachment_image_svg', 10, 4 );

	function getMonth($month){
    $months = ['Января', 'Февраля', 'Марта', 'Апреля', 'Мая', 'Июня', 'Июля', 'Августа', 'Сентября', 'Октября', 'Ноября', 'Декабря'];
    return $months[$month - 1];
	}

	function my_query($query){
    if (!is_admin() && (is_post_type_archive('product') || is_tax(get_object_taxonomies('product')))) {
			$query->set('posts_per_page',
			$query->query['numberposts'] ?
				$query->query['numberposts'] : $_GET['posts_per_page'] ?
					$_GET['posts_per_page'] : 12
			);
			return;
    }
    if (!is_admin() && is_post_type_archive('articles')) {
      $query->set('posts_per_page', -1);
      return;
  	}
	}
	add_action('pre_get_posts', 'my_query', 1);


	add_action('admin_menu', function () {
    add_options_page('Theme settings page', 'Theme settings', 'manage_options', 'theme-page', 'theme_settings_page');
	});

	add_action('admin_init', function () {
    register_setting('theme-page-settings', 'common_scripts');
    register_setting('theme-page-settings', 'head_additions');
    register_setting('theme-page-settings', 'copyrights');
    register_setting('theme-page-settings', 'address');
    register_setting('theme-page-settings', 'phone');
    register_setting('theme-page-settings', 'email');
		register_setting('theme-page-settings', 'entity');
    register_setting('theme-page-settings', 'vkontakte');
    register_setting('theme-page-settings', 'viber');
    register_setting('theme-page-settings', 'whatsup');
    register_setting('theme-page-settings', 'theme');
		register_setting('theme-page-settings', 'currency');
	});

	function theme_settings_page(){
    ?>
  <div class="wrap theme-settings">
    <h1>Theme settings</h1>
    <form action="options.php" method="post">
      <?php
      settings_fields('theme-page-settings');
    	do_settings_sections('theme-page-settings'); ?>
      <label>
        <div>Theme color</div>
        <input type="text" name="theme" value="<?= esc_attr(get_option('theme')) ?>" />
      </label>
      <label>
        <div>Common scripts</div>
        <textarea name="common_scripts"><?= esc_attr(get_option('common_scripts')); ?></textarea>
      </label>
      <label>
        <div>Head additions</div>
        <textarea name="head_additions"><?= esc_attr(get_option('head_additions')); ?></textarea>
      </label>
      <label>
        <div>Address</div>
        <input type="text" name="address" value="<?= esc_attr(get_option('address')) ?>" />
      </label>
      <label>
        <div>Phone</div>
        <input type="tel" name="phone" value="<?= esc_attr(get_option('phone')) ?>" />
      </label>
      <label>
        <div>Mail</div>
        <input type="email" name="email" value="<?= esc_attr(get_option('email')) ?>" />
      </label>
			<label>
        <div>Entity</div>
        <input type="text" name="entity" value="<?= esc_attr(get_option('entity')) ?>" />
      </label>
      <label>
        <div>Copyrights</div>
        <input type="text" name="copyrights" value="<?= esc_attr(get_option('copyrights')) ?>" />
      </label>
      <label>
        <div>Vkontakte</div>
        <input name="vkontakte" type="text" value="<?= esc_attr(get_option('vkontakte')); ?>">
      </label>
      <label>
        <div>Viber</div>
        <input name="viber" type="text" value="<?= esc_attr(get_option('viber')); ?>">
      </label>
      <label>
        <div>WhatsUp</div>
        <input name="whatsup" type="text" value="<?= esc_attr(get_option('whatsup')); ?>">
      </label>
			<label>
        <div>Currency symbol</div>
        <input name="currency" type="text" value="<?= esc_attr(get_option('currency')); ?>">
      </label>
      <?php submit_button(); ?>
    </form>
  </div>
  <style>
    .theme-settings {
      max-width: 600px;
    }

    .theme-settings input {
      width: 100%;
    }

    .theme-settings input[type="checkbox"] {
      width: auto;
    }

    .theme-settings textarea {
      width: 100%;
      resize: none;
      height: 150px;
    }

    .theme-settings label {
      margin-bottom: 10px;
      display: block;
    }

    .theme-settings .submit {
      margin-top: 0;
    }

    .theme-settings input[type='submit'] {
      width: auto;
    }

    .theme-settings h1 {
      margin-bottom: 20px;
    }
  </style>
	<?php
	}

	function declension($value = 1, $wordForms = ['товар', 'товара', 'товаров']){
    $array = [2,0,1,1,1,2];
    return $wordForms[($value%100>4&&$value%100<20)?2:$array[($value%10<5)?$value%10:5]];
	}

	function my_get_template_part($template, $data = array()){
    extract($data);
    require locate_template($template . '.php');
	}

	function register_post_types_init(){
		register_post_type(
				'products',
				array(
				'label' => 'Модельный ряд',
				'labels' => array(
					'menu_name' => 'Модельный ряд'
				),
				'taxonomies' => array('products-cats'),
				'public' => true,
				'has_archive' => true,
				'supports' => array('thumbnail', 'title', 'editor', 'excerpt')
			)
		);
		register_taxonomy(
			'products-cats',
			'products',
			array(
				'label' => __('Categories'),
				'rewrite' => array('slug' => 'products-category'),
				'hierarchical' => true,
				'update_count_callback' => '_update_post_term_count',
				'query_var' => true,
			)
		);
		register_post_type(
			'reviews',
			array(
			'label' => 'Отзывы',
			'labels' => array(
				'menu_name' => 'Отзывы'
			),
			'public' => true,
			'has_archive' => true,
			'supports' => array('thumbnail', 'title', 'editor', 'excerpt')
		));
	}
	add_action('init', 'register_post_types_init');

	function get_socials(){
    $socials = array();
    if (get_option('vkontakte')) {
        $socials['vkontakte'] = get_option('vkontakte');
    }
    if (get_option('viber')) {
      $socials['viber'] = get_option('viber');
    }
    if (get_option('whatsup')) {
      $socials['whatsup'] = get_option('whatsup');
    }
    return $socials;
	}

	function get_phones(){
		return explode(',', get_option('phone'));
	}

	function get_current_tags(){
    $post_type = get_post_type();
    $tags = get_tags();
    $link = get_post_type_archive_link($post_type);
    $result = $tags ? array(
			array(
				'text' => 'Все',
				'link' => $link,
				'active' => !get_queried_object()->term_id
			)
		) : array();
		foreach ($tags as $tag) {
				$result[] = array(
			'text' => $tag->name,
			'link' => $tags_link.'?tag='.$tag->slug,
			'active' => get_queried_object()->term_id === $tag->term_id
		);
		}
		return $result;
	}

	function load_template_part($path){
		ob_start();
		get_template_part($path);
		$result = ob_get_contents();
		ob_end_clean();
		return $result;
	}

	function mergeQueryString($array = []){
		$result = '';
		if(count($_GET) || count($array)) $result .= '?';
		$array = array_merge($_GET, $array);
		foreach($array as $key => $item){
			if($item) $result .= $key.'='.$item.'&';
		}
		$result = substr_replace($result,'',-1);
		return $result;
	}

	function isBlockDisabled($id){
		$fields = get_fields($id);
		if(in_array('enable', $fields)){
			return $fields['enable'];
		}
		return false;
	}

	add_filter( 'body_class','my_body_classes' );
	function my_body_classes($classes) {
		if(is_home()){
			$classes[] = 'home';
		}
		if(is_page(array('about'))){
			$classes[] = 'about';
		}
		if(is_post_type_archive('articles')){
			$classes[] = 'articles';
		}
		return $classes;
	}

  function drawStars(){
    $result = '';
    for ($i = 1; $i <= 5; $i++):
      my_get_template_part('icons/star');
    endfor;
  }

?>