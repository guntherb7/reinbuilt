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


<div class="contact">
    <div class="grid" id="formwrap">
        <div>
            <picture>
                <source srcset="<?php echo get_template_directory_uri(); ?>/assets/img/15STEP_BROCHUREIMAGE.png"
                    type="image/webp">
                <source srcset="<?php echo get_template_directory_uri(); ?>/assets/img/15STEP_BROCHUREIMAGE.png"
                    type="image/png">
                <img src="<?php echo get_template_directory_uri(); ?>/assets/img/15STEP_BROCHUREIMAGE.png" alt="Contact"
                    class="contact-img">
            </picture>
        </div>
        <div class="contact-form">
            <h3>Reinbuilt luxury: <br>
                15 step guide to building your luxury home</h3>
            <form action="/?page_id=143#wpcf7-f156-p143-o1" method="post" class="wpcf7-form" novalidate="novalidate">
                <div style="display: none;">
                    <input type="hidden" name="_wpcf7" value="156">
                    <input type="hidden" name="_wpcf7_vesion" value="3.7.2">
                    <input type="hidden" name="_wpcf7_lale" value="en_US">
                    <input type="hidden" name="_wpcf7_un" value="wpcf7-f156-p143-o1">
                    <input type="hidden" name="_wpnonce" value="d1da331d93">
                </div>
                <p>
                    <span class="wpcf7-form-control-wrap Name">
                        <input type="text" name="First Name" value="" size="40"
                            class="nameinput wpcf7-form-control wpcf7-text wpcf7-validates-as-required"
                            aria-required="true" aria-invalid="false" placeholder="First Name">
                        <input type="text" name="Last Name" value="" size="40"
                            class="nameinput wpcf7-form-control wpcf7-text wpcf7-validates-as-required"
                            aria-required="true" aria-invalid="false" placeholder="Last Name">
                    </span>
                    <span class="wpcf7-form-control-wrap Email">
                        <input type="email" name="Email" size="40"
                            class="emailinput wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email"
                            aria-required="true" aria-invalid="false" placeholder="Email">
                    </span>
                    <input type="submit" value="Send" class="wpcf7-form-control btn-orange">
                </p>
            </form>
        </div>
    </div>
</div>

<?php get_footer(); ?>
