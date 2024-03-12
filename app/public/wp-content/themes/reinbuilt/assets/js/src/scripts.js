/**
 * Theme scripting
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
/*jshint esversion: 11 */

// function handleNavOnScroll() {
//   var nav = $(".nav"); // Replace with your nav element's class
//   var heroSwiper = $(".hero-swiper"); // Replace with your hero-swiper element's class
//   var initialScroll = $(window).scrollTop(); // Store initial scroll position

//   $(window).scroll(function () {
//     var currentScroll = $(window).scrollTop();

//     // Check if scrolling up and initial scroll was at 0
//     if (currentScroll < initialScroll) {
//       nav.addClass("above-hero"); // Add class for styling
//     } else {
//       nav.removeClass("above-hero"); // Remove class for styling
//     }

//     // Update initial scroll for future checks
//     initialScroll = currentScroll;
//   });
// }

// $(document).ready(function () {
//   var path = window.location.pathname;
//   if (path !== "/" && path !== "/architecture") {
//     handleNavOnScroll(); // Call the function on page load
//   }
// });

// Select the navigation bar element

// Function to check the scroll position and update the navigation bar
function checkScroll() {
  // Get the current scroll position
  const scroll = window.scrollY;
  nav.style.top = "-70px";

  // If the scroll position is less than 1, we're at the top of the page
  if (scroll < 1) {
    // Change the navigation bar to be fully visible and positioned at the top
    nav.style.top = "0";
    nav.style.transition = "top 0.2s ease-in";
    elWelcome.style.top = "60px";
  } else if (scroll > 0) {
    // Otherwise, make the navigation bar semi-transparent and move it up out of view
    nav.style.top = "0";
    elWelcome.style.top = "0";
  }
  console.log(scroll);
}

// When the DOM content is loaded
document.addEventListener("DOMContentLoaded", () => {
  // After a short delay
  setTimeout(() => {
    // Scroll the window slightly to trigger the scroll event
    window.scrollTo(1, 1);

    // Add the scroll event listener
    window.addEventListener("scroll", checkScroll);

    // Check the initial scroll position
    checkScroll();
  }, 100); // Delay of 100 milliseconds
});
