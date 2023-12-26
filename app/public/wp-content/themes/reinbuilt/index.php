<?php
/**
 * 
 * @package reinbuilt
 * @author Gunther Beam LLC
 */

$args = array (
	'post_type' => 'post',
	'post_per_page' => '10',
	'post_status' => 'publish',
	'order' => 'DESC',
);
$the_query = new WP_Query($args);
get_header(); ?>

<!-- <div id="blog">
<div class="container blog-posts">
	<div id="blog-banner">
	<h1>Reinbuilt Blog</h1>
	</div>
		<div class="blog-articles">
			<?php $first = true; ?>
				<?php while( $the_query->have_posts() ) : $the_query->the_post(); ?>
					<article>
						<a class="blog-article-link" href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>">
							<?php $background_img = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'full'  ); ?>
							<div class="article-left" style="background: url('<?php echo esc_attr( $background_img[0] ); ?>' ) no-repeat center center;"></div>	
							<div class="article-right">
								<h2><?php the_title(); ?></h2>
								<div class="blog-excerpt"><?php the_excerpt(); ?></div>
								<span class="article-read-more">Read More</span>
							</div>
						</a>
					</article>
				<?php endwhile; wp_reset_postdata(); ?>
			
		</div>
		
		<?php the_posts_pagination(); ?>
		
	</div> -->
	<?php if ( function_exists('yoast_breadcrumb') ) {yoast_breadcrumb('<p id="breadcrumbs">','</p>');} ?> 
	<div class="splash-container">
        <div class="splash">
            <h1 class="splash-head">Big Bold Text</h1>
            <p class="splash-subhead">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit.
            </p>
            <p>
                <a href="http://purecss.io" class="pure-button pure-button-primary">Get Started</a>
            </p>
        </div>
    </div>

    <div class="content-wrapper">
        <div class="content">
            <h2 class="content-head is-center">Excepteur sint occaecat cupidatat.</h2>

            <div class="pure-g">
                <div class="l-box pure-u-1 pure-u-md-1-2 pure-u-lg-1-4">

                    <h3 class="content-subhead">
                        <i class="fa fa-rocket"></i>
                        Get Started Quickly
                    </h3>
                    <p>
                        Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.
                    </p>
                </div>
                <div class="l-box pure-u-1 pure-u-md-1-2 pure-u-lg-1-4">
                    <h3 class="content-subhead">
                        <i class="fa fa-mobile"></i>
                        Responsive Layouts
                    </h3>
                    <p>
                        Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.
                    </p>
                </div>
                <div class="l-box pure-u-1 pure-u-md-1-2 pure-u-lg-1-4">
                    <h3 class="content-subhead">
                        <i class="fa fa-th-large"></i>
                        Modular
                    </h3>
                    <p>
                        Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.
                    </p>
                </div>
                <div class="l-box pure-u-1 pure-u-md-1-2 pure-u-lg-1-4">
                    <h3 class="content-subhead">
                        <i class="fa fa-check-square-o"></i>
                        Plays Nice
                    </h3>
                    <p>
                        Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.
                    </p>
                </div>
            </div>
        </div>

        <div class="ribbon l-box-lrg pure-g">
          
            <div class="pure-u-1 pure-u-md-1-2 pure-u-lg-3-5">

                <h2 class="content-head content-head-ribbon">Laboris nisi ut aliquip.</h2>

                <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                    consequat. Duis aute irure dolor.
                </p>
            </div>
        </div>

    </div>
<!-- #content -->

<?php get_footer(); ?>
