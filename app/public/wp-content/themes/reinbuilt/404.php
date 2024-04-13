<?php
/**
 * 404 template
 *
 * @package reinbuilt
 * @author X
 */
get_header(); ?>

<div id="404-container" class="container">
	<div id="single-post">
		<div class="single-post_container">
			<h1>
				<?php echo esc_html__('404 - Page Not Found', 'reinbuilt'); ?>
			</h1>
			<div class="single-post_content">
				<h3>
					<?php echo esc_html__('Pages', 'reinbuilt'); ?>
				</h3>
				<ul>
					<?php wp_list_pages(array('title_li' => '')); ?>
				</ul>
				<h3>
					<?php echo esc_html__('Posts', 'reinbuilt'); ?>
				</h3>
				<ul>
					<?php wp_get_archives(array('type' => 'postbypost')); ?>
				</ul>
			</div>
		</div>
	</div>
</div>

<?php get_footer(); ?>