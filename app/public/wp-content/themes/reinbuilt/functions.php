<?php
/**
 * Theme functions.
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
require_once dirname(__FILE__) . '/includes/admin.php';
require_once dirname(__FILE__) . '/includes/utility.php';
require_once dirname(__FILE__) . '/includes/team.php'; // Custom Post Type Case Studies
// require_once dirname( __FILE__ ) . '/includes/contacts-cpt.php'; // Custom Post Type contacts

/**
 * We use WordPress's init hook to make sure
 * our blocks are registered early in the loading
 * process.
 *
 * @link https://developer.wordpress.org/reference/hooks/init/
 */
function reinbuilt_register_acf_blocks()
{
	/**
	 * We register our block's with WordPress's handy
	 * register_block_type();
	 *
	 * @link https://developer.wordpress.org/reference/functions/register_block_type/
	 */
	register_block_type(__DIR__ . '/blocks/contact');
}
// Here we call our reinbuilt_register_acf_block() function on init.
add_action('init', 'reinbuilt_register_acf_blocks');


add_action('wp_enqueue_scripts', 'reinbuilt_child');
function reinbuilt_child()
{

	wp_enqueue_style('child-styles', get_stylesheet_directory_uri() . '/style.css'); // Enqueue Child theme style sheet (theme info)
	wp_enqueue_style('styles', get_stylesheet_directory_uri() . '/assets/css/styles.css'); // Enqueue child theme styles.css


	wp_register_style('open-sans', 'https://use.typekit.net/jok7wmb.css', array());
	wp_enqueue_style('open-sans');

	wp_register_style('work-sans', 'https://use.typekit.net/jok7wmb.css', array());
	wp_enqueue_style('work-sans');


	// Masonry JS
	wp_register_script('masonry-js', 'https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js', null, null, true);
	wp_enqueue_script('masonry-js');




	// Compiled .js using Grunt.js
	wp_register_script('custom-scripts', get_stylesheet_directory_uri() . '/assets/js/scripts.min.js', array('jquery'), null, true);
	wp_enqueue_script('custom-scripts');


	if (is_page_template('front-page.php')) {


	}

}


function vc_remove_wp_ver_css_js($src)
{
	if (strpos($src, 'ver=' . get_bloginfo('version')))
		$src = remove_query_arg('ver', $src);
	return $src;
}
add_filter('style_loader_src', 'vc_remove_wp_ver_css_js', 9999);
add_filter('script_loader_src', 'vc_remove_wp_ver_css_js', 9999);

// Register Site Navigations
function reinbuilt_child_register_nav_menus()
{
	register_nav_menus(
		array(
			'header-nav' => __('Header Navigation', 'reinbuilt'),
			'footer-nav' => __('Footer Navigation', 'reinbuilt'),
		)
	);
}
add_action('init', 'reinbuilt_child_register_nav_menus');

// Add Custom Logo Support
add_theme_support('custom-logo');

function reinbuilt_custom_logo_setup()
{
	$defaults = array(
		'flex-height' => true,
		'flex-width' => true,
		'header-text' => array('site-title', 'site-description'),
	);
	add_theme_support('custom-logo', $defaults);
}
add_action('after_setup_theme', 'reinbuilt_custom_logo_setup');


acf_add_options_page(
	array(
		'page_title' => 'Instructions',
		'menu_title' => 'Instructions',
		'menu_slug' => 'theme-instructions',
		'capability' => 'edit_posts',
		'icon_url' => 'dashicons-smiley', // Add this line and replace the second inverted commas with class of the icon you like
		'redirect' => false
	)
);

acf_add_options_page(
	array(
		'page_title' => 'Customizations',
		'menu_title' => 'Customizations',
		'menu_slug' => 'customizations',
		'capability' => 'edit_posts',
		'icon_url' => 'dashicons-admin-customizer', // Add this line and replace the second inverted commas with class of the icon you like
		'redirect' => false
	)
);

// Save newly created fields to child theme
add_filter('acf/settings/save_json', 'my_acf_json_save_point');

function my_acf_json_save_point($path)
{

	// update path
	$path = get_stylesheet_directory() . '/acf-json';

	// return
	return $path;

}

// Add ability to add SVG to Wordpress Media Library
function cc_mime_types($mimes)
{
	$mimes['svg'] = 'image/svg+xml';
	return $mimes;
}
add_filter('upload_mimes', 'cc_mime_types');

//add SVG to allowed file uploads
function add_file_types_to_uploads($file_types)
{

	$new_filetypes = array();
	$new_filetypes['svg'] = 'image/svg+xml';
	$file_types = array_merge($file_types, $new_filetypes);

	return $file_types;
}
add_action('upload_mimes', 'add_file_types_to_uploads');

// Display Current Year as shortcode - [year]
function year_shortcode()
{
	$year = date_i18n('Y');
	return $year;
}
add_shortcode('year', 'year_shortcode');

// WP Backend Menu area taller
add_action('admin_head', 'taller_menus');

function taller_menus()
{
	echo '<style>
		.posttypediv div.tabs-panel {
			max-height:500px !important;
		}
	</style>';
}

// Add thumbnails
add_theme_support('post-thumbnails');


// Customize the logo on the wp-login.php page
function my_login_logo()
{ ?>
	<style type="text/css">
		#login h1 a,
		.login h1 a {
			background-image: url(<?php echo get_stylesheet_directory_uri(); ?>/assets/img/logo.png);
			height: 45px;
			width: 204px;
			background-size: 204px 45px;
			background-repeat: no-repeat;
			padding-bottom: 30px;
		}

	</style>
<?php }
add_action('login_enqueue_scripts', 'my_login_logo');

?>
