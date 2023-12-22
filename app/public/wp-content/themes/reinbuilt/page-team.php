<?php
/**
 * Team
 * Template Name: Team
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
$contact = get_field('contact_block_copy');
get_header(); ?>
<?php if ( has_post_thumbnail() ) { ?>
	<?php $backgroundImg = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), 'full' );?>
<div id="team"  style="background: linear-gradient(0deg, rgba(0,0,0,0) 0%, rgba(0,0,0,1) 40%, rgba(0,0,0,1) 100%),  url('<?php echo $backgroundImg[0]; ?>') no-repeat; background-size:100vw; background-position:bottom -20px center;"> 
		
	<div id="team_header">
		<img src="/wp-content/uploads/2022/10/signal-orange-1.png" class="img-responsive"/>
		<h1><?php the_title(); ?></h1>
	</div>


       
        <div class="team_grid container-full">
        <?php } else { ?>
        <?php } ?>
	
		<?php if( have_rows('team_list') ): ?>
			<?php while( have_rows('team_list') ): the_row(); 
			$post_object = get_sub_field('team_member'); ?>
					<?php if( $post_object ): ?>
						<?php // override $post
						$post = $post_object;
						setup_postdata( $post );

						?>
							<div class="team_grid-profile team_grid-profile-<?php the_ID(); ?>" id="<?php the_ID(); ?>">


								<?php if( get_field('state') == 'illinois'): ?>
									<div class="team_grid-illinois">
									<?php $image = get_field('headshot');
									if( !empty( $image ) ): ?>
										<img src="<?php echo esc_url($image['url']); ?>" alt="<?php echo esc_attr($image['alt']); ?>" class="team_grid-headshot"/>
									<?php endif; ?>
										<span class="team_grid-state">Illinois</span>
								<?php elseif	( get_field('state') == 'wisconsin' ): ?>
									<div class="team_grid-wisconsin">
									<?php $image = get_field('headshot');
									if( !empty( $image ) ): ?>
										<img src="<?php echo esc_url($image['url']); ?>" alt="<?php echo esc_attr($image['alt']); ?>" class="team_grid-headshot"/>
									<?php endif; ?>
									<span class="team_grid-state">Wisconsin</span>
								<?php elseif ( get_field('state') == 'none'): ?>
									<?php $image = get_field('headshot');
									if( !empty( $image ) ): ?>
										<img src="<?php echo esc_url($image['url']); ?>" alt="<?php echo esc_attr($image['alt']); ?>" class="team_grid-headshot"/>
									<?php endif; ?>
									<div class="team_grid-none">
								<?php endif; ?>
									

									
									
									<p class="team_grid-name"><?php the_title(); ?></p>
									<span class="team_grid-title"><?php the_field('title'); ?></span>
									<div class="team_grid-phone-container">
									<?php if( get_field('phone_number') ): ?>
									<p class="team_grid-phone"><?php the_field('phone_number'); ?></p>
									<?php endif; ?>
									</div>
									
									<a href="<?php the_permalink(); ?>" class="team_grid-link">Read Bio</a>
								</div>
							</div>

						<?php wp_reset_postdata(); // IMPORTANT - reset the $post object so the rest of the page works correctly ?>
				<?php endif; ?>
			<?php endwhile; ?>
		<?php endif; ?>

	</div>

</div>

<div id="contact-block">
	<div id="contact-block_content">
		<?php echo $contact; ?>
	</div>
</div>
<?php get_footer(); ?>