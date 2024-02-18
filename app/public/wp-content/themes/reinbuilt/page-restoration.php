<?php
/**
 * Partners
 * Template Name: Partners
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
// $image = get_field('hero_image');
// $intro = get_field('intro');
// $copy = get_field('copy');
// $contact = get_field('contact_block_copy');
get_header(); ?>
<div class="content">
	<p>Restoration</p>
	<div id="products">
		<?php if (has_post_thumbnail()) { ?>
			<?php $backgroundImg = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'full'); ?>
			<div id="products_top" class="hero-bg-fade"
				style="background: linear-gradient(90deg, rgba(0,0,0,0) 0%, rgba(0,0,0,1) 40%, rgba(0,0,0,1) 100%),  url('<?php echo $backgroundImg[0]; ?>') no-repeat; background-size:cover;">
			<?php } else { ?>
			<?php } ?>
			<div id="products_hero" class="container-full">
				<div id="products_hero-left">
					<!-- <div class="orange-highlight_container ">
							<div class="orange-box"></div>
							<img src="<?php echo esc_url($image['url']); ?>" alt="<?php echo esc_attr($image['alt']); ?>" class="orange-highlight img-responsive"/>
						</div>
				<img src="<?php echo esc_url($image['url']); ?>" alt="<?php echo esc_attr($image['alt']); ?>"
					class="img-responsive" /> -->
				</div>
				<div id="products_hero-right">

				</div>
			</div>

		</div>
		<div class="clearfix"></div>

		<div id="products_content">


		</div>


	</div>

	<div id="contact-block">
		<div id="contact-block_content">

		</div>
	</div>
</div>

<?php get_footer(); ?>
