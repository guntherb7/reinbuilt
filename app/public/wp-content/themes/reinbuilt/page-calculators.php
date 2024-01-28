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
<div class="content">
    <p>Calculators</p>
    <?php echo do_shortcode('[forminator_form id="123"]'); ?>

</div>



<?php get_footer(); ?>
