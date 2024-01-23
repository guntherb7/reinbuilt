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

    <div id="menu-icon" class="toggle-nav" onclick="darkMode()">
      <span class="line line-1"></span>
      <span class="line line-2"></span>
      <span class="line line-3"></span>
    </div>
    <div id="mobile-nav">
      <ul id="menu-primary-navigation" class="menu">
        <li class="menu-item-has-children">
          <a href="#">Field</a>
          <ul>
            <li class="current-menu-item"><a href="#">Current Menu Item - Child</a></li>
            <li><a href="#">Sub Item</a></li>
          </ul>
        </li>
        <li class="menu-item-has-children">
          <a href="#">Office</a>
          <ul>
            <li><a href="#">Sub Item</a></li>
            <li><a href="#">Sub Item</a></li>
          </ul>
        </li>
        <li>
          <a href="#">Sales</a>
        </li>
        <li class="menu-item-has-children">
          <a href="#">Marketing</a>
          <ul>
            <li><a href="#">Sub Item</a></li>
            <li><a href="#">Sub Item</a></li>
          </ul>
        </li>
        <li>
          <a href="#">Reporting</a>
        </li>
        <li class="menu-item-has-children current-menu-item">
          <a href="#">Why PestPac</a>
          <ul>
            <li><a href="#">Sub Item</a></li>
            <li><a href="#">Sub Item</a></li>
          </ul>
        </li>
      </ul>
    </div>
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
