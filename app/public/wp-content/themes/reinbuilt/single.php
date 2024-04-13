<?php
/**
 * Single template
 *
 * @package reinbuilt
 * @author X
 */
get_header(); ?>

<div id="blog-container" class="container">

	<div id="single-post">
		<div class="blog-single_featured-image">
			<?php if (has_post_thumbnail()) { ?>
				<!-- If featured image set, use that, if not use options page default -->
				<?php $featImg = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'full'); ?>
				<img src="<?php echo $featImg[0]; ?>" class="article-featured-image" />
			<?php } else { ?>

			<?php } ?>
		</div>
		<div class="single-post_container">



			<h1 class="single-post_title"><?php the_title(); ?></h1>
			<span class="single-post_date">Posted On: <?php the_time(get_option('date_format')) ?></span>
			<div class="single-post_content">
				<?php if (have_posts()) {
					while (have_posts()) {
						the_post();
						//
						the_content();
						//
						} // end while
					} ?>
			</div>
		</div>
	</div>
</div>

<?php get_footer(); ?>