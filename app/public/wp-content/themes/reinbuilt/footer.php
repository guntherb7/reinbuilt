<?php
/**
 * Theme footer
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 **/
$phone = get_field('phone', 'options');
$email = get_field('email', 'options');
$address = get_field('address', 'options');
$addressLink = get_field('address_link', 'options');

?>

<!-- Schema JSON-LD -->
<?php wp_footer(); ?>
</body>

</html>
