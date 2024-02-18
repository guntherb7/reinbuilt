/**
 * Nav Scripting
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
/*global jQuery: true */
/*jslint white: true */
/*jshint browser: true, jquery: true */
/*jshint esversion: 6 */

document.addEventListener("DOMContentLoaded", function () {
  var menu = document.getElementById("menu");
  var menuItems = document.querySelector(".menu-items");
  var heroLogo = document.querySelector(".hero--logo");

  function toggleMenu() {
    console.log("Toggling menu");
    menuItems.classList.toggle("open");
  }

  function closeMenu() {
    console.log("Closing menu");
    menuItems.classList.remove("open");
  }

  if (menu) {
    menu.addEventListener("click", toggleMenu);
  } else {
    console.log("Menu element not found");
  }

  if (heroLogo) {
    heroLogo.addEventListener("mouseover", toggleMenu);
  } else {
    console.log("Hero logo element not found");
  }

  window.addEventListener("resize", closeMenu);
  window.addEventListener("scroll", closeMenu);
});
