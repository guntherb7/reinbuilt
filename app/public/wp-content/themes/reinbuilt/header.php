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
  <link href="https://fonts.googleapis.com/css2?family=Syncopate:wght@400;700&display=swap" rel="stylesheet" as="font">
  <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300&display=swap" rel="stylesheet" as="font">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/gsap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/ScrollTrigger.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/ScrollToPlugin.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/gsap@3.12.5/dist/Observer.min.js"></script>

  <title>
    Reinbuilt | Luxury Homes
  </title>

  <?php wp_head(); ?>
</head>

<body <?php body_class(); ?> class="index-page noscroll">
  <header>
    <nav class="nav">
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
      <ul role="menu" class="menu-items">
        <a href="/" role="menuitem">
          <div class="nav--logo">
            <img src="/wp-content/uploads/2024/03/REINBUILT_LOGO_DARK-GRAY.svg" width="275" height="42" loading="eager"
              fetchpriority="high" alt="Reinbuilt Luxury Homes Logo in Dark Gray" class="light-icon">
            <img src="/wp-content/uploads/2024/03/REINBUILT_LOGO_LIGHT-GRAY.svg" width="275" height="42" loading="eager"
              fetchpriority="high" alt="Reinbuilt Luxury Homes Logo in Dark Gray" class="dark-icon">
          </div>
        </a>
        <li role="menuitem"><a href="/" role="link">Architecture</a></li>
        <li role="menuitem"><a href="/interior/" role="link">Interior</a></li>
        <li role="menuitem"><a href="/restoration/" role="link">Restoration</a></li>
        <li role="menuitem"><a href="/" role="link">Our Team</a></li>
        <li role="menuitem"><a href="/" role="link">Start A Project</a></li>
        <!-- <li role="menuitem"><a href="/calculators/" role="link">Calculators</a></li> -->
        <!-- <li role="menuitem"><a href="/visualization/" role="link">Visualization</a></li> -->
      </ul>
    </nav>
  </header>