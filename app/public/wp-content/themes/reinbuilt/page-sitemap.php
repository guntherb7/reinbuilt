<?php
/**
 * Sitemap
 * Template Name: Sitemap
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
get_header(); ?>


<?php $backgroundImg = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), 'full' );?>
	<div class="page-banner">
		<div class="page-banner-container">
			<div class="banner-full" style="background: url('<?php echo $backgroundImg[0]; ?>') no-repeat; background-size:cover;">
				<div class="banner-full-content">
					<div class="yoast-bc-wrap">
						<?php if ( function_exists('yoast_breadcrumb') ) {yoast_breadcrumb('<p id="breadcrumbs">','</p>');} ?> 
					</div>
					<p class="banner-large-text"><?php the_title(); ?></p>
				</div>
			</div>
		</div>
		
	</div>

<div class="content">
    <div class="page-bg site-map">
	    <div class="container_inner">
			<?php if (have_posts()) : 
					while (have_posts()) : the_post(); ?>
					<div class="column_inner">
						
							<!-- SITEMAP -->
                            <div class="two_columns_50_50 clearfix">
								<div class="column1">
									<div class="column_inner">
			                            <h2>Pages</h2> 
			                                <ul><?php wp_list_pages("title_li=" ); ?></ul> 
			                        </div>
			                    </div>
								<div class="column2">
									<div class="column_inner">        
				                        <h2>Blog Posts</h2> 
				                            <ul>
				                            	<?php wp_get_archives('type=postbypost'); ?>
				                            </ul>
			                        </div>
			                    </div>
			                </div>
				
					</div>
			<?php endwhile; ?>
			<?php endif; ?>
									
        </div>
	</div>
</div>
<div class="container_left" id="block-contact">
	<?php get_template_part('block', 'contact');?>
</div>
<?php get_footer(); ?>			