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
			<h1>Reinbuilt Blog</h1>
		</div>
		<div class="blog-articles">
			<?php $first = true; ?>
			<?php while ($the_query->have_posts()):
				$the_query->the_post(); ?>
				<article>
					<a class="blog-article-link" href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>">
						<?php $background_img = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'full'); ?>

						<div class="article-right">
							<h2>
								<?php the_title(); ?>
							</h2>
							<div class="blog-excerpt">
								<?php the_excerpt(); ?>
							</div>
							<span class="article-read-more">Read More</span>
						</div>
					</a>
				</article>
			<?php endwhile;
			wp_reset_postdata(); ?>

		</div>

		<?php the_posts_pagination(); ?>

	</div>
	<?php if (function_exists('yoast_breadcrumb')) {
		yoast_breadcrumb('<p id="breadcrumbs">', '</p>');
	} ?>

	<!-- #content -->

	<?php get_footer(); ?>
