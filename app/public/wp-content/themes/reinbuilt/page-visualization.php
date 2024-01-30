<?php
/**
 * Products
 * Template Name: Products
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
$image = get_field('hero_image');
$intro = get_field('intro');
$copy = get_field('copy');
$contact = get_field('contact_block_copy');
get_header(); ?>
<div class="content">
	<p>Visualization</p>
	<div id="smooth-wrapper">
		<div id="smooth-content">
			<section class="">
				1
			</section>
			<section class="">
				2
			</section>
			<section class="">
				3
			</section>
			<section class="">
				4
			</section>
		</div>
	</div>
</div>

<?php get_footer(); ?>
