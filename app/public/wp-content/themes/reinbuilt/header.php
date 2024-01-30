<?php
/**
 * Theme header.
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 **/
?>
<!DOCTYPE html>
<html class="no-js" <?php language_attributes(); ?>>

<head>
  <!-- Google Tag Manager -->


  <!-- End Google Tag Manager -->
  <meta name="description" content="Reinbuilt Luxury Homes">
  <meta http-equiv="Content-Type" content="text/html; charset=<?php bloginfo('charset'); ?>">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <script src="https://cdn.jsdelivr.net/gh/studio-freight/lenis@1.0.29/bundled/lenis.min.js" async></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/fontawesome.min.css" async>
  <title>
    <?php wp_title('|', true, 'right'); ?>
  </title>
  <?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
  <header>
    <nav>
      <input class="checkbox" type="checkbox" aria-label="Menu" />

      <object data="assets/img/moon.svg" type="image/svg+xml" onclick="darkMode()" class="nav-icon light-icon"></object>

      <object data="assets/img/sun.svg" type="image/svg+xml" onclick="darkMode()" class="nav-icon dark-icon"></object>
      <div class="hamburger-lines">
        <span class="line line1"></span>
        <span class="line line2"></span>
        <span class="line line3"></span>
      </div>
      <ul role="list" class="menu-items">
        <li><a href="/">Architecture</a></li>
        <li><a href="/interior/">Interior</a></li>
        <li><a href="/restoration/">Restoration</a></li>
        <li><a href="/calculators/">Calculators</a></li>
        <li><a href="/visualization/">Visualization</a></li>
      </ul>
    </nav>
  </header>
