<?php
/**
 * @package reinbuilt
 * @author Gunther Beam LLC
 */

// Define query arguments
$args = array(
	'post_type' => 'post',
	'posts_per_page' => 10,
	'post_status' => 'publish',
	'order' => 'DESC',
);

// Create a new instance of WP_Query
$the_query = new WP_Query($args);

// Include the header
get_header();
?>

<main>
	<!-- Use esc_url() for secure output of URLs -->
	<img src="<?php echo esc_url(home_url('/wp-content/uploads/2024/01/REINBUILT_LOGO_DARK-GRAY.svg')); ?>"
		alt="Reinbuilt Logo" class="hero--logo logo dark-icon">
	<img src="<?php echo esc_url(home_url('/wp-content/uploads/2024/01/REINBUILT_LOGO_LIGHT-GRAY.svg')); ?>"
		alt="Reinbuilt Logo" class="hero--logo logo light-icon">
	<!-- #content -->
</main>

<?php
// Include the footer
get_footer();
?>
