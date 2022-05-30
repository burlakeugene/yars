<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе установки.
 * Необязательно использовать веб-интерфейс, можно скопировать файл в "wp-config.php"
 * и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки базы данных
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://ru.wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Параметры базы данных: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'DB_NAME', 'yars' );

/** Имя пользователя базы данных */
define( 'DB_USER', 'root' );

/** Пароль к базе данных */
define( 'DB_PASSWORD', 'root' );

/** Имя сервера базы данных */
define( 'DB_HOST', 'localhost' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу. Можно сгенерировать их с помощью
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}.
 *
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными.
 * Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'd8rdE;)[|&~TwP~93N,tME;cv#$}>k^+n*`rY*|d1{E^!O]uyI5R*x?SKkfk]HW=' );
define( 'SECURE_AUTH_KEY',  '^d@l:}0a6{RyjRA:^h>^>1U?c.N5!jRZUbnasI3f+7^RZ!d3TVKk2~qXP?83:?0$' );
define( 'LOGGED_IN_KEY',    'GP^98]|?u<(^SYQQv1pd,$W{7nYSrM1bkqj^)wKbDe}E;xP5=c(3iJ~OJ*6A=Mr:' );
define( 'NONCE_KEY',        'b/s)*=}mFT qB$^(@3)F<D/`RtG71f/r)Sx+mH`{ir9Xlm&{#Mk&hMm~I1c8>(5G' );
define( 'AUTH_SALT',        '$Kc/Wd-}8iz7`fEOue^?V$<v9Z,4prk.N!q~;)%P>u|wl=I5tw}{~i8o09w?8HpO' );
define( 'SECURE_AUTH_SALT', 'Q{qvU!?%w`%X#1QhOd%c8rW{$YQ}DHzbj-2`M&(g3(w`8!;0AuPl3 ^K|_Wc@Hq|' );
define( 'LOGGED_IN_SALT',   'hO%GW5a*(!*Bu=e.~_i,?{jVv;/d6uK2xNmX/,/IcW|(DIB!y*rJ}X]]7pNLst?u' );
define( 'NONCE_SALT',       ';d4e8aLx!~lV[KsmGf~g%Jy[wp8WiL{O@VAKT)Fbv/X@}YuG-{.H_fYs 8+ad<F8' );

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'yars_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в документации.
 *
 * @link https://ru.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Произвольные значения добавляйте между этой строкой и надписью "дальше не редактируем". */



/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once ABSPATH . 'wp-settings.php';
