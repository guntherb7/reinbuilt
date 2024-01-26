<?php
/**
 * 
 * @package reinbuilt
 * @author Gunther Beam LLC
 */

$args = array(
	'post_type' => 'post',
	'post_per_page' => '10',
	'post_status' => 'publish',
	'order' => 'DESC',
);
$the_query = new WP_Query($args);
get_header(); ?>

<div id="blog">
	<div class="container blog-posts">
		<div id="blog-banner">
			<img src="http://localhost:10020/wp-content/uploads/2024/01/REINBUILT_LOGO_DARK-GRAY.svg"
				alt="Reinbuilt Logo" class="hero--logo nav--logo logo">
		</div>
		<h1>Hello World</h1>

	</div>

	<!-- #content -->

	<?php get_footer(); ?>
