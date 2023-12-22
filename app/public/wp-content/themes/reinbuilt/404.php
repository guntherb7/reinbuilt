<?php
/**
 * Single template
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
get_header();?>

<div id="404-container" class="container">

	<div id="single-post">
		<div class="single-post_container">

			<h1>404 - Page Not Found</h1>
		
			<div class="single-post_content">	
				<h3>Pages</h3>
				<ul><?php wp_list_pages("title_li=" ); ?></ul>
				<h3>Posts</h3>
				<ul><?php wp_get_archives('type=postbypost'); ?></ul>
			</div>
		</div>
	</div>
</div>

<?php get_footer(); ?>