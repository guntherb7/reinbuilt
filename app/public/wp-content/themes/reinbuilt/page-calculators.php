<?php get_header(); ?>
<div class="hero">
    <a href="/">
        <img src="/wp-content/uploads/2024/03/REINBUILT_LOGO_WHITE.svg" loading="eager" fetchpriority="high"
            alt="Reinbuilt Luxury Homes Logo in White" class="hero--logo light-icon tagline">
    </a>
    <img class="hero--image" alt="" src="/wp-content/uploads/2024/03/9-7-jpeg.webp" data-object-fit="cover"
        loading="eager" fetchpriority="high" width="1920" height="1172" />
</div>
<!-- END HERO -->
<!-- COST CALCULATOR START -->
<section class="cost-calculator">
    <?php echo do_shortcode('[forminator_form id="29"]'); ?>
</section>
<!-- COST CALCULATOR END -->

<section>
    <div class="contact-wrapper">
        <img src="/wp-content/uploads/2024/02/Full-n_orange_drive-37-1-jpg.webp" loading="lazy" alt="placeholder"
            width=“415” height=“300” class="contact-hero" />
        <div class="contact">
            <div id="mc_embed_shell">
                <link href="//cdn-images.mailchimp.com/embedcode/classic-061523.css" rel="stylesheet" type="text/css">
                <div id="mc_embed_signup">
                    <form
                        action="https://guntherbeam.us22.list-manage.com/subscribe/post?u=c84950591afda259787f3a3ba&amp;id=9d1eaef23a&amp;f_id=0070c2e1f0"
                        method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate"
                        target="_blank">
                        <div id="mc_embed_signup_scroll">
                            <h2 class="text-center">Start Building With Us</h2>
                            <div class="indicates-required"><span class="asterisk">*</span> indicates required</div>
                            <div class="mc-field-group">
                                <label for="mce-EMAIL">Email Address <span class="asterisk">*</span></label>
                                <input type="email" name="EMAIL" class="required email" id="mce-EMAIL" required=""
                                    value="" autocomplete="email">
                                <span id="mce-EMAIL-HELPERTEXT" class="helper_text"></span>
                            </div>
                            <div class="mc-field-group">
                                <label for="mce-FNAME">First Name <span class="asterisk">*</span></label>
                                <input type="text" name="FNAME" class="required text" id="mce-FNAME" required=""
                                    value="" autocomplete="given-name">
                            </div>
                            <div class="mc-field-group">
                                <label for="mce-LNAME">Last Name <span class="asterisk">*</span></label>
                                <input type="text" name="LNAME" class="required text" id="mce-LNAME" required=""
                                    value="" autocomplete="family-name">
                            </div>
                            <div class="mc-field-group"><label for="mce-PHONE">Phone Number </label>
                                <input type="text" name="PHONE" class="REQ_CSS" id="mce-PHONE" value=""
                                    autocomplete="tel-national">
                            </div>
                            <div id="mce-responses" class="clear foot">
                                <div class="response" id="mce-error-response" style="display: none;"></div>
                                <div class="response" id="mce-success-response" style="display: none;"></div>
                            </div>
                            <div aria-hidden="true" style="position: absolute; left: -5000px;">
                                /* real people should not fill this in and expect good things - do not remove this
                                or
                                risk
                                form bot signups */
                                <input type="text" name="b_c84950591afda259787f3a3ba_9d1eaef23a" tabindex="-1" value="">
                            </div>
                            <div class="clear foot">
                                <input type="submit" name="subscribe" id="mc-embedded-subscribe" class="button"
                                    value="Start Your Project">
                            </div>
                        </div>
                    </form>
                </div>
                <script type="text/javascript"
                    src="//s3.amazonaws.com/downloads.mailchimp.com/js/mc-validate.js"></script>
                <script
                    type="text/javascript">(function ($) { window.fnames = new Array(); window.ftypes = new Array(); fnames[0] = 'EMAIL'; ftypes[0] = 'email'; fnames[1] = 'FNAME'; ftypes[1] = 'text'; fnames[2] = 'LNAME'; ftypes[2] = 'text'; fnames[4] = 'PHONE'; ftypes[4] = 'phone'; fnames[3] = 'ADDRESS'; ftypes[3] = 'address'; fnames[5] = 'BIRTHDAY'; ftypes[5] = 'birthday'; }(jQuery)); var $mcj = jQuery.noConflict(true);</script>
            </div>
        </div>
    </div>
</section>


<?php get_footer(); ?>