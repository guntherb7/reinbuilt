<?php
/**
 * Contact
 * Template Name: Contact
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
$phone = get_field('phone', 'options');
$email = get_field('email', 'options');
$address = get_field('address', 'options');
$addressLink = get_field('address_link', 'options');
get_header(); ?>

<div id="contact" class="container-full"> 
    <div id="contact_grid">
            
        <div id="contact_grid-left">
            <div id="contact_left-content">
                <img src="/wp-content/uploads/2022/10/signal-orange-1.png" class="signal-icon" />
                <?php the_content(); ?> 
            </div>
            <div id="contact_line"></div>
            <div id="contact_grid-links">
                <p id="site-tagline"><?php echo get_option('blogdescription'); ?></p>
                <a id="contact-address" href="<?php echo $address_link; ?>" target="_blank"><?php echo $address; ?></a>
                <a id="contact-phone" href="tel:<?php echo $phone; ?>"><?php echo $phone; ?></a>
                <a id="contact-email" href="mailto:<?php echo $email; ?>"><?php echo $email; ?></a>
                <div id="contact-social">
                    <?php get_template_part('block', 'social');?>
                </div>
            </div>
        </div>
        <div id="contact_grid-right">
            <?php echo apply_shortcodes( '[contact-form-7 id="157" title="Contact form 1"]' ); ?>
        </div>


                
    </div>
                
</div>

<div id="team-short">
    <div class="container-full">
        <h3>Meet Our Team</h3>
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
                        <p class="team-short_grid-phone"><?php the_field('phone_number'); ?></p>

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