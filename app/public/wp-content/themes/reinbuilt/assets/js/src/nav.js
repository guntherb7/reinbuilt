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

// When #menu is clicked, expand the menu and cover the screen with the overlay
jQuery(document).ready(function ($) {
  $("#menu").click(function () {
    $(".menu-items").toggleClass("open");
    $(".overlay").toggleClass("open");
  });
  $(".overlay").click(function () {
    $(".menu-items").toggleClass("open");
    $(".overlay").toggleClass("open");
  });
});
// When the window is resized, close the menu and overlay
$(window).resize(function () {
  $(".menu-items").removeClass("open");
  $(".overlay").removeClass("open");
});
