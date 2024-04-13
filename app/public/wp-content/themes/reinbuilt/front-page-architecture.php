<?php
/**
 * @package reinbuilt
 * @author X
 **/
get_header(); ?>

<div id="content">
    <h1>Hello world</h1>
    <?php if (has_post_thumbnail()) {
        $backgroundImg = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'full'); ?>
        <div id="fp-hero" class="hero-bg-fade"
            style="background: linear-gradient(90deg, rgba(0,0,0,1) 0%, rgba(0,0,0,1) 60%, rgba(0,0,0,0) 100%),  url('<?php echo esc_url($backgroundImg[0]); ?>') no-repeat; background-size:114vh; background-position:top right;">
        <?php } ?>
        <div id="fp-hero_grid" class="container-full">
            <div id="fp-hero_right">
                <div id="fp-hero_right-container">
                    <?php $image = get_field('hero_image');
                    if (!empty($image)): ?>
                        <img src="<?php echo esc_url($image['url']); ?>" alt="<?php echo esc_attr($image['alt']); ?>"
                            class="orange-highlight img-responsive" />
                    <?php endif; ?>
                </div>
            </div>
            <div id="fp-hero_left">
                <h4>
                    <?php the_field('tagline'); ?>
                </h4>
                <h1>
                    <?php the_field('title'); ?>
                </h1>
                <p>
                    <?php the_field('text'); ?>
                </p>
                <?php $link = get_field('link');
                if ($link):
                    $link_url = $link['url'];
                    $link_title = $link['title'];
                    ?>
                    <a class="btn btn-orange" href="<?php echo esc_url($link_url); ?>">
                        <?php echo esc_html($link_title); ?>
                    </a>
                <?php endif; ?>
                <div id="fp-hero_social">
                    <?php get_template_part('block', 'social'); ?>
                </div>
            </div>
        </div>
    </div>

    <div id="fp-grid">
        <div id="fp-grid_content" class="container-full">
            <?php if (have_rows('grid')): ?>
                <?php while (have_rows('grid')):
                    the_row();
                    $gridIcon = get_sub_field('icon');
                    $gridText = get_sub_field('text');
                    $gridLink = get_sub_field('link');
                    ?>
                    <a href="<?php echo esc_url($gridLink); ?>" class="fp-grid_link">
                        <img src="<?php echo esc_url($gridIcon['url']); ?>" alt="<?php echo esc_attr($gridIcon['alt']); ?>" />
                        <h4>
                            <?php echo esc_html($gridText); ?>
                        </h4>
                    </a>
                <?php endwhile; ?>
            <?php endif; ?>
        </div>
    </div>

    <div id="fp-cta">
        <div id="fp-cta_container" class="container">
            <div id="fp-cta_left">
                <?php the_field('cta_left'); ?>
            </div>
            <div id="fp-cta_right">
                <?php the_field('cta_right'); ?>
            </div>
        </div>
    </div>

    <div id="fp-quote">
        <div id="fp-quote_container" class="container-full">
            <?php the_field('quote'); ?>
        </div>
    </div>

</div><!-- #front-page -->

<?php get_footer(); ?>