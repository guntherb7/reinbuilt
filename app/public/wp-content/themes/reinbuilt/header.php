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
  <script src="https://cdn.jsdelivr.net/gh/studio-freight/lenis@1.0.29/bundled/lenis.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/fontawesome.min.css" async>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
  <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
  <title>
    <?php wp_title('|', true, 'right'); ?>
  </title>
  <?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
  <header>
    <nav>
      <!-- Menu Toggle Checkbox -->
      <input class="checkbox" type="checkbox" aria-label="Menu" id="menu" />
      <!-- Dark Mode Icon -->
      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" class="nav-icon light-icon">
        <path
          d="M223.5 32C100 32 0 132.3 0 256S100 480 223.5 480c60.6 0 115.5-24.2 155.8-63.4c5-4.9 6.3-12.5 3.1-18.7s-10.1-9.7-17-8.5c-9.8 1.7-19.8 2.6-30.1 2.6c-96.9 0-175.5-78.8-175.5-176c0-65.8 36-123.1 89.3-153.3c6.1-3.5 9.2-10.5 7.7-17.3s-7.3-11.9-14.3-12.5c-6.3-.5-12.6-.8-19-.8z"
          onclick="darkMode()" />
      </svg>
      <!-- Light Mode Icon -->
      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" class="nav-icon dark-icon">
        <path
          d="M361.5 1.2c5 2.1 8.6 6.6 9.6 11.9L391 121l107.9 19.8c5.3 1 9.8 4.6 11.9 9.6s1.5 10.7-1.6 15.2L446.9 256l62.3 90.3c3.1 4.5 3.7 10.2 1.6 15.2s-6.6 8.6-11.9 9.6L391 391 371.1 498.9c-1 5.3-4.6 9.8-9.6 11.9s-10.7 1.5-15.2-1.6L256 446.9l-90.3 62.3c-4.5 3.1-10.2 3.7-15.2 1.6s-8.6-6.6-9.6-11.9L121 391 13.1 371.1c-5.3-1-9.8-4.6-11.9-9.6s-1.5-10.7 1.6-15.2L65.1 256 2.8 165.7c-3.1-4.5-3.7-10.2-1.6-15.2s6.6-8.6 11.9-9.6L121 121 140.9 13.1c1-5.3 4.6-9.8 9.6-11.9s10.7-1.5 15.2 1.6L256 65.1 346.3 2.8c4.5-3.1 10.2-3.7 15.2-1.6zM160 256a96 96 0 1 1 192 0 96 96 0 1 1 -192 0zm224 0a128 128 0 1 0 -256 0 128 128 0 1 0 256 0z"
          onclick="darkMode()" />
      </svg>
      <!-- Hamburger Icon -->
      <div class="hamburger-lines">
        <span class="line line1"></span>
        <span class="line line2"></span>
        <span class="line line3"></span>
      </div>
      <!-- Menu Items -->
      <ul role="list" class="menu-items">
        <li><a href="/">Architecture</a></li>
        <li><a href="/interior/">Interior</a></li>
        <li><a href="/restoration/">Restoration</a></li>
        <li><a href="/calculators/">Calculators</a></li>
        <li><a href="/visualization/">Visualization</a></li>
      </ul>
    </nav>
  </header>
