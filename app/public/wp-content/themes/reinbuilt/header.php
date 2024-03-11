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
  <link href="https://fonts.googleapis.com/css2?family=Syncopate:wght@400;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
  <title>
    <?php wp_title('|', true, 'right'); ?>
  </title>
  <?php wp_head(); ?>
</head>

<body <?php body_class(); ?> class="index-page noscroll">
  <header>
    <nav class="nav above-hero">
      <!-- Menu Toggle Checkbox -->
      <input class="checkbox" type="checkbox" aria-label="Menu" id="menu" />
      <!-- Dark Mode Icon -->
      <img src="/wp-content/uploads/2024/02/moon-solid.png" alt="Light Icon" class="nav-icon light-icon"
        onclick="darkMode()">
      <!-- Light Mode Icon -->
      <img src="/wp-content/uploads/2024/02/sun-solid.png" alt="Dark Icon" class="nav-icon dark-icon"
        onclick="darkMode()">
      <!-- Hamburger Icon -->
      <div class="hamburger-lines">
        <span class="line line1"></span>
        <span class="line line2"></span>
        <span class="line line3"></span>
      </div>
      <!-- Menu Items -->
      <ul role="list" class="menu-items">
        <a href="/">
          <div class="nav--logo">
            <img src="/wp-content/uploads/2024/03/REINBUILT_LOGO_DARK-GRAY.svg" loading="eager" fetchpriority="high"
              alt="Reinbuilt Luxury Homes Logo in Dark Gray" class="light-icon">
            <img src="/wp-content/uploads/2024/03/REINBUILT_LOGO_LIGHT-GRAY.svg" loading="eager" fetchpriority="high"
              alt="Reinbuilt Luxury Homes Logo in Dark Gray" class="dark-icon">
          </div>
        </a>
        <li><a href="/">Architecture</a></li>
        <li><a href="/interior/">Interior</a></li>
        <li><a href="/restoration/">Restoration</a></li>
        <!-- <li><a href="/calculators/">Calculators</a></li> -->
        <!-- <li><a href="/visualization/">Visualization</a></li> -->
      </ul>
    </nav>
  </header>