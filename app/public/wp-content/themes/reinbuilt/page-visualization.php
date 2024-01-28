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
<p>Visualization</p>
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
						</div>  <img src="<?php echo esc_url($image['url']); ?>" alt="<?php echo esc_attr($image['alt']); ?>"
					class="img-responsive" />   -->

			</div>
			<div id="products_hero-right">
				<h1 id="products_hero-intro" class="theme-h1">
					<?php echo $intro; ?>
				</h1>
				<p id="products_hero-copy">
					<?php echo $copy; ?>
				</p>
			</div>
		</div>

	</div>
	<div class="clearfix"></div>

	<div id="products_content">

		<?php if (have_rows('products')): ?>
			<div id="products_tiles" class="container-full">
				<?php while (have_rows('products')):
					the_row();
					$logo = get_sub_field('logo');
					$copy = get_sub_field('copy');
					$link = get_sub_field('link');
					$linkText = get_sub_field('link_text');
					?>
					<a href="<?php echo $link; ?>" class="products_tiles-grid">
						<div class="products_tiles-left">
							<img src="<?php echo esc_url($logo['url']); ?>" alt="<?php echo esc_attr($logo['alt']); ?>"
								class="products_tiles-logo img-responsive" />
						</div>
						<div class="products_tiles-right">
							<?php echo $copy; ?>
							<span class="products_tiles-link">
								<?php echo $linkText; ?>
							</span>
						</div>
					</a>
				<?php endwhile; ?>
			</div>
		<?php endif; ?>

	</div>


</div>

<div id="contact-block">
	<div id="contact-block_content">
		<?php echo $contact; ?>
	</div>
</div>

<?php get_footer(); ?>
