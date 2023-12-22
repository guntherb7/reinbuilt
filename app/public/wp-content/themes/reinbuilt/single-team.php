<?php
/**
 * Single template
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
get_header();?>

<div id="team-single" style="background: linear-gradient(90deg, rgba(0,0,0,0) 0%, rgba(0,0,0,1) 20%, rgba(0,0,0,1) 100%),  url('/wp-content/uploads/2022/10/corn-bw-1.png') no-repeat; background-size:cover;">

	<div id="team-single_grid" class="container-full">
        <div id="team-single_left">
            <?php if( get_field('state') == 'illinois'): ?>
                <div id="team-single_illinois">
                <?php $image = get_field('headshot');
                if( !empty( $image ) ): ?>
                    <img src="<?php echo esc_url($image['url']); ?>" alt="<?php echo esc_attr($image['alt']); ?>" id="team-single_headshot"/>
                <?php endif; ?>
            <?php elseif	( get_field('state') == 'wisconsin' ): ?>
                <div id="team-single_wisconsin">
                <?php $image = get_field('headshot');
                if( !empty( $image ) ): ?>
                    <img src="<?php echo esc_url($image['url']); ?>" alt="<?php echo esc_attr($image['alt']); ?>" id="team-single_headshot"/>
                <?php endif; ?>
            <?php elseif ( get_field('state') == 'none'): ?>
                <?php $image = get_field('headshot');
                if( !empty( $image ) ): ?>
                    <img src="<?php echo esc_url($image['url']); ?>" alt="<?php echo esc_attr($image['alt']); ?>" id="team-single_headshot"/>
                <?php endif; ?>
                <div id="team-single_none">
            <?php endif; ?>
                </div>
        </div>
        <div id="team-single_right">

            <div id="team-single_line"></div>
            <?php if( get_field('state') == 'illinois'): ?>
                <span id="team-single_state">Illinois</span>
            <?php elseif	( get_field('state') == 'wisconsin' ): ?>
                <span id="team-single_state">Wisconsin</span>
            <?php elseif ( get_field('state') == 'none'): ?>
                <div id="team-single_state-none">
            <?php endif; ?>

            <h1><?php the_title(); ?></h1>
            <div id="team-single_info">
                <p id="team-single_title"><?php the_field('title'); ?></p><div id="team-single_line-vert"></div><?php if( the_field('phone_number') ): ?><p id="team-single_phone"><?php the_field('phone_number'); ?></p><?php endif; ?>
            </div>
            <div id="team-single_bio">
            <?php  if ( have_posts() ) {
					while ( have_posts() ) {
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

<div id="team-short">
    <div class="container-full">
        <h3>Meet the Rest of the Team</h3>
        <div class="team-short_grid container-full">
        <?php
            $args = array(
                'post_type' => 'team',
                'posts_per_page' => '3',
                'order' => 'ASC',
                'offset' => 0,
                'post__not_in' => array( $post->ID )
            );
            $the_query = new WP_Query( $args ); ?>



            <?php if ( $the_query->have_posts() ) : ?>

                <?php while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
                <a href="<?php the_permalink(); ?>" class="team-short_grid-profile">


                    <?php if( get_field('state') == 'illinois'): ?>
                        <div class="team-short_grid-illinois">
                        <?php $image = get_field('headshot');
                        if( !empty( $image ) ): ?>
                            <img src="<?php echo esc_url($image['url']); ?>" alt="<?php echo esc_attr($image['alt']); ?>" class="team-short_grid-headshot"/>
                        <?php endif; ?>
                            <span class="team-short_grid-state">Illinois</span>
                    <?php elseif	( get_field('state') == 'wisconsin' ): ?>
                        <div class="team-short_grid-wisconsin">
                        <?php $image = get_field('headshot');
                        if( !empty( $image ) ): ?>
                            <img src="<?php echo esc_url($image['url']); ?>" alt="<?php echo esc_attr($image['alt']); ?>" class="team-short_grid-headshot"/>
                        <?php endif; ?>
                        <span class="team-short_grid-state">Wisconsin</span>
                    <?php elseif ( get_field('state') == 'none'): ?>
                        <?php $image = get_field('headshot');
                        if( !empty( $image ) ): ?>
                            <img src="<?php echo esc_url($image['url']); ?>" alt="<?php echo esc_attr($image['alt']); ?>" class="team-short_grid-headshot"/>
                        <?php endif; ?>
                        <div class="team-short_grid-none">
                    <?php endif; ?>
                        

                        
                        
                        <p class="team-short_grid-name"><?php the_title(); ?></p>
                        <span class="team-short_grid-title"><?php the_field('title'); ?></span>
                        <?php if( get_field('phone_number') ): ?>
                            <p class="team-short_grid-phone"><?php the_field('phone_number'); ?></p>
                        <?php endif; ?>
                        <span class="team-short_grid-link">Read Bio</span>
                        </div>
                    </a>
                <?php endwhile; ?>

                <?php wp_reset_postdata(); ?>

            <?php endif; ?>


        </div>                
        <a href="/our-team" class="btn-orange">See All</a>
    </div>
</div>

<?php get_footer(); ?>