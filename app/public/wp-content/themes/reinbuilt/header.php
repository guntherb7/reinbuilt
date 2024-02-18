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
  <script src="https://cdn.jsdelivr.net/gh/studio-freight/lenis@1.0.29/bundled/lenis.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
  <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
  <title>
    <?php wp_title('|', true, 'right'); ?>
  </title>
  <?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>


  <nav>
    <!-- Menu Toggle Checkbox -->
    <input class="checkbox" type="checkbox" aria-label="Menu" id="menu" />
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


  <!-- <header>
    <div id="menu-icon" class="toggle-nav">
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
  </header> -->
  <!-- <script>
    document.addEventListener('DOMContentLoaded', function () {
      var hamburger = document.getElementById('menu-icon');
      var mobileNav = document.getElementById('mobile-nav');

      hamburger.addEventListener('click', function () {
        hamburger.classList.toggle('active');
        mobileNav.classList.toggle('active');
      });

      // Append a div that opens nested <ul> while maintaining clickability of parent <li><a>
      var menuItems = document.querySelectorAll('#menu-primary-navigation > li.menu-item-has-children');
      menuItems.forEach(function (menuItem) {
        var accordionToggle = document.createElement('div');
        accordionToggle.className = 'accordion-toggle';
        accordionToggle.innerHTML = '<div class="fa fa-angle-down"></div>';
        menuItem.appendChild(accordionToggle);

        accordionToggle.addEventListener('click', function () {
          var ul = this.parentNode.querySelector('> ul');
          ul.style.display = ul.style.display === 'none' ? 'block' : 'none';
          this.classList.toggle('toggle-background');
          this.querySelector('.fa').classList.toggle('toggle-rotate');
        });
      });
    });
  </script> -->
