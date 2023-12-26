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

           

<?php get_footer(); ?>