<?php
/**
 * Theme header.
 *
 * @category Theme
 * @package  Reinbuilt
 * @author   Gunther Beam <gunther@guntherbeam.com>
 * @version  1.0
 */
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
      <input class="checkbox" type="checkbox" aria-label="Menu" id="menu-icon" />
      <!-- Dark Mode Icon -->
      <img src="http://localhost:10020/wp-content/uploads/2024/02/moon-solid.svg" alt="Light Icon"
        class="nav-icon light-icon" onclick="darkMode()">
      <!-- Light Mode Icon -->
      <img src="http://localhost:10020/wp-content/uploads/2024/02/sun-solid.svg" alt="Dark Icon"
        class="nav-icon dark-icon" onclick="darkMode()">
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
