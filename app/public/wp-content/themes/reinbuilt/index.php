<?php
/**
 * @package reinbuilt
 * @author Gunther Beam LLC
 */

// Define query arguments


// Include the header
get_header();
?>
<div class="content">
	<h1>Hello world</h1>
	<!-- Use esc_url() for secure output of URLs -->
	<img src="<?php echo esc_url(home_url('/wp-content/uploads/2024/01/REINBUILT_LOGO_DARK-GRAY.svg')); ?>"
		alt="Reinbuilt Logo" class="hero--logo logo dark-icon">
	<img src="<?php echo esc_url(home_url('/wp-content/uploads/2024/01/REINBUILT_LOGO_LIGHT-GRAY.svg')); ?>"
		alt="Reinbuilt Logo" class="hero--logo logo light-icon">
	<!-- #content -->

</div>
<?php
// Include the footer
get_footer();
?>
