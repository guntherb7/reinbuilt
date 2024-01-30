<?php
/**
 * @package reinbuilt
 * @author Gunther Beam LLC
 */

// Define query arguments


// Include the header
get_header();
?>
<!-- <div class="content">
    <h1>Hello world</h1>
Use esc_url() for secure output of URLs
    <img src="<?php echo esc_url(home_url('/wp-content/uploads/2024/01/REINBUILT_LOGO_DARK-GRAY.svg')); ?>"
        alt="Reinbuilt Logo" class="hero--logo logo dark-icon">
    <img src="<?php echo esc_url(home_url('/wp-content/uploads/2024/01/REINBUILT_LOGO_LIGHT-GRAY.svg')); ?>"
        alt="Reinbuilt Logo" class="hero--logo logo light-icon">
</div> -->
<!-- Hero Image -->
<section id="hero">
    <div class="wp-block-cover alignfull" style="min-height:800px">
        <span aria-hidden="true" class="wp-block-cover__background has-background-dim-60 has-background-dim"></span>
        <img class="wp-block-cover__image-background" alt="" src="https://s.w.org/images/core/5.8/forest.jpg"
            data-object-fit="cover" />
        <div class="wp-block-cover__inner-container">
            <div class="wp-block-align-center">
                <!-- <img
                    src="<?php echo esc_url(home_url('/wp-content/uploads/2024/01/REINBUILT_LOGO_DARK-GRAY.svg')); ?>"
                    alt="Reinbuilt Logo" class="hero--logo logo dark-icon">-->
                <img src="<?php echo esc_url(home_url('/wp-content/uploads/2024/01/REINBUILT_LOGO_LIGHT-GRAY.svg')); ?>"
                    alt="Reinbuilt Logo" class="hero--logo logo light-icon">
            </div>
        </div>
    </div>
</section>
<!-- Hero END -->

<!--Contact-->
<section id="contact">
    <!-- wp:media-text {"align":"full","mediaType":"image","verticalAlignment":"center"} -->
    <div class="wp-block-media-text is-stacked-on-mobile is-vertically-aligned-center">
        <figure class="wp-block-media-text__media"><img src="https://s.w.org/images/core/5.8/architecture-04.jpg"
                alt="Close-up, abstract view of architecture." /></figure>
        <!-- wp:forminator/forms {"module_id":"123"} -->
        <div class="forminator-guttenberg">[forminator_form id="123"]</div>
        <!-- /wp:forminator/forms -->
    </div>
    <!-- /wp:media-text -->
</section>
<!--Contact END-->
<!-- /wp:cover -->
<?php
// Include the footer
get_footer();
?>
