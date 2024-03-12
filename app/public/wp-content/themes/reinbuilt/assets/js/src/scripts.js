/**
 * Theme scripting
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
/*jshint esversion: 11 */

function handleNavOnScroll() {
  var nav = $(".nav"); // Replace with your nav element's class
  var heroSwiper = $(".hero-swiper"); // Replace with your hero-swiper element's class
  var initialScroll = $(window).scrollTop(); // Store initial scroll position

  $(window).scroll(function () {
    var currentScroll = $(window).scrollTop();

    // Check if scrolling up and initial scroll was at 0
    if (currentScroll < initialScroll) {
      nav.addClass("above-hero"); // Add class for styling
    } else {
      nav.removeClass("above-hero"); // Remove class for styling
    }

    // Update initial scroll for future checks
    initialScroll = currentScroll;
  });
}

$(document).ready(function () {
  var path = window.location.pathname;
  if (path !== "/" && path !== "/architecture") {
    handleNavOnScroll(); // Call the function on page load
  }
});
