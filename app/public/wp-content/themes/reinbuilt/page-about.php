<?php
/**
 * About Template
 * Template Name: About
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */

$contact = get_field('contact_block_copy');
get_header(); ?>


<?php if (has_post_thumbnail()) { ?>
    <?php $backgroundImg = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'full'); ?>
    <div id="about" class="hero-bg-fade"
        style="background: linear-gradient(-90deg, rgba(0,0,0,0) 0%, rgba(0,0,0,1) 50%, rgba(0,0,0,1) 100%),  url('<?php echo $backgroundImg[0]; ?>') no-repeat; background-size:cover;">
    <?php } else { ?>
    <?php } ?>
    <div id="about_intro">
        <img src="/wp-content/uploads/2022/10/signal-orange-1.png" class="signal-icon" />
        <?php if (have_posts()) {
            while (have_posts()) {
                the_post();
                //
                the_content();
                //
            } // end while
        } ?>
        <?php
        $link = get_field('button');
        if ($link):
            $link_url = $link['url'];
            $link_title = $link['title'];
            $link_target = $link['target'] ? $link['target'] : '_self';
            ?>
            <a class="btn-orange" href="<?php echo esc_url($link_url); ?>" target="<?php echo esc_attr($link_target); ?>">
                <?php echo esc_html($link_title); ?>
            </a>
        <?php endif; ?>
    </div>

    <div id="about-masonry">
        <?php if (have_rows('masonry_layout')): ?>
            <?php while (have_rows('masonry_layout')):
                the_row();
                $img = get_sub_field('image');
                ?>
                <div class="grid-item">
                    <img src="<?php echo $img; ?>" alt="" class="img-responsive">
                </div>

            <?php endwhile; ?>
        <?php endif; ?>

    </div>
    <div class="clearfix" style="display:block; height:10px; width:100%;"></div>
</div>


<div id="contact-block">
    <div id="contact-block_content">
        <div id="contact-block_content">
            <h3 style="text-align: center;">Let’s Grow Together</h3>
            <p style="text-align: center;">Our partners get more than just the country’s most efficient seed
                distributor, they get an entire system of growth support.</p>
            <p style="text-align: center;"><a href="/contact">Contact Us</a></p>
        </div>
        <?php echo $contact; ?>
    </div>
</div>


<?php get_footer(); ?>
