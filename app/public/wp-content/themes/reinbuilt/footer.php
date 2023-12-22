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
<footer class="footer">
    <div class="footer--nav">
        <ul>
            <li><a href="http://reinbuilt.local/" class="nav-link">Architecture</a></li>
            <li><a href="#" class="nav-link">Interior</a></li>
            <li><a href="#" class="nav-link">Restoration</a></li>
            <li><a href="#" class="nav-link">Calculators</a></li>
            <li><a href="#" class="nav-link">Services</a></li>
            <li><a href="#" class="nav-link">Contact</a></li>
        </ul>
    </div>

    <img src="http://reinbuilt.local/wp-content/uploads/2023/12/LOGO.png" alt="" class="footer--logo">
</footer>
<!-- Schema JSON-LD -->
<?php wp_footer(); ?>
</body>
</html>


