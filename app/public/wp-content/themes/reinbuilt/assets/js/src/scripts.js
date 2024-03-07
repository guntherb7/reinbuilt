/**
 * Theme scripting
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
/*jshint esversion: 11 */

$(document).ready(function () {
  var nav = $(".nav");
  var heroSwiper = $(".hero-swiper");
  var initialScroll = $(window).scrollTop(); // Store initial scroll position

  $(window).scroll(function () {
    var currentScroll = $(window).scrollTop();

    // Check if scrolling up and initial scroll was at 0
    if (currentScroll < initialScroll && initialScroll === 0) {
      nav.addClass("above-hero"); // Add class for styling
    } else {
      nav.removeClass("above-hero"); // Remove class for styling
    }

    // Update initial scroll for future checks
    initialScroll = currentScroll;
  });
});
