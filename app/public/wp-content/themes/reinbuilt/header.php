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
  <meta http-equiv="Content-Type" content="text/html; charset=<?php bloginfo('charset'); ?>">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link rel="stylesheet" href="https://indestructibletype.com/fonts/Jost.css" type="text/css" charset="utf-8" />
  <link href="https://fonts.googleapis.com/css2?family=Syncopate&display=swap" rel="stylesheet">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/11.0.5/swiper-bundle.min.js"></script>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/11.0.5/swiper-bundle.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/gh/studio-freight/lenis@1.0.29/bundled/lenis.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <title>
    <?php wp_title('|', true, 'right'); ?>
  </title>
  <?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
  <header>
    <nav>
      <div class="navbar">
        <div class="nav-container">
          <input class="checkbox" type="checkbox" name="" id="" />
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" class="nav-icon light-icon">
            <path
              d="M144.7 98.7c-21 34.1-33.1 74.3-33.1 117.3c0 98 62.8 181.4 150.4 211.7c-12.4 2.8-25.3 4.3-38.6 4.3C126.6 432 48 353.3 48 256c0-68.9 39.4-128.4 96.8-157.3zm62.1-66C91.1 41.2 0 137.9 0 256C0 379.7 100 480 223.5 480c47.8 0 92-15 128.4-40.6c1.9-1.3 3.7-2.7 5.5-4c4.8-3.6 9.4-7.4 13.9-11.4c2.7-2.4 5.3-4.8 7.9-7.3c5-4.9 6.3-12.5 3.1-18.7s-10.1-9.7-17-8.5c-3.7 .6-7.4 1.2-11.1 1.6c-5 .5-10.1 .9-15.3 1c-1.2 0-2.5 0-3.7 0c-.1 0-.2 0-.3 0c-96.8-.2-175.2-78.9-175.2-176c0-54.8 24.9-103.7 64.1-136c1-.9 2.1-1.7 3.2-2.6c4-3.2 8.2-6.2 12.5-9c3.1-2 6.3-4 9.6-5.8c6.1-3.5 9.2-10.5 7.7-17.3s-7.3-11.9-14.3-12.5c-3.6-.3-7.1-.5-10.7-.6c-2.7-.1-5.5-.1-8.2-.1c-3.3 0-6.5 .1-9.8 .2c-2.3 .1-4.6 .2-6.9 .4z"
              onclick="darkMode()" />
          </svg>
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" class="nav-icon dark-icon">
            <path
              d="M361.5 1.2c5 2.1 8.6 6.6 9.6 11.9L391 121l107.9 19.8c5.3 1 9.8 4.6 11.9 9.6s1.5 10.7-1.6 15.2L446.9 256l62.3 90.3c3.1 4.5 3.7 10.2 1.6 15.2s-6.6 8.6-11.9 9.6L391 391 371.1 498.9c-1 5.3-4.6 9.8-9.6 11.9s-10.7 1.5-15.2-1.6L256 446.9l-90.3 62.3c-4.5 3.1-10.2 3.7-15.2 1.6s-8.6-6.6-9.6-11.9L121 391 13.1 371.1c-5.3-1-9.8-4.6-11.9-9.6s-1.5-10.7 1.6-15.2L65.1 256 2.8 165.7c-3.1-4.5-3.7-10.2-1.6-15.2s6.6-8.6 11.9-9.6L121 121 140.9 13.1c1-5.3 4.6-9.8 9.6-11.9s10.7-1.5 15.2 1.6L256 65.1 346.3 2.8c4.5-3.1 10.2-3.7 15.2-1.6zM160 256a96 96 0 1 1 192 0 96 96 0 1 1 -192 0zm224 0a128 128 0 1 0 -256 0 128 128 0 1 0 256 0z"
              onclick="darkMode()" />
          </svg>
          <div class="hamburger-lines">
            <span class="line line1"></span>
            <span class="line line2"></span>
            <span class="line line3"></span>
          </div>
          <div class="menu-items">
            <li><a href="/">Architecture</a></li>
            <li><a href="/interior">Interior</a></li>
            <li><a href="/restoration">Restoration</a></li>
            <li><a href="/calculators">Calculators</a></li>
            <li><a href="/visualization">Visualization</a></li>
          </div>
        </div>
      </div>
    </nav>
  </header>


  <!--<nav id="bottom-nav">
    <footer class="footer">
      <div class="footer--nav">
        <ul>
          <li><a href="http://reinbuilt.local/" class="nav-link">Architecture</a></li>
          <li><a href="#" class="nav-link">Interior</a></li>
          <li><a href="#" class="nav-link">Restoration</a></li>
          <li><a href="#" class="nav-link">Calculators</a></li>
          <li><a href="#" class="nav-link">Visualization</a></li>
        </ul>
      </div>
      <img src="https://reinbuilt.local/wp-content/uploads/2023/12/LOGO.png" alt="" class="footer--logo">
    </footer>
  </nav> -->
