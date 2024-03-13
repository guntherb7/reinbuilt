/**
 * Theme scripting
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
/*jshint esversion: 11 */
const darkIcon = document.querySelector(".dark-icon");
const element = document.body;
const heroSwiper = document.querySelector(".hero-swiper");
const heroTagline = document.querySelector(".tagline");
const lightIcon = document.querySelector(".light-icon");
const nav = document.querySelector(".nav");
const navMenu = document.querySelector(".menu-items");
const pageLogo = document.querySelector(".page--logo");
const phone =
  "only screen and (min-device-width: 375px) and (max-device-width: 667px) and (-webkit-min-device-pixel-ratio: 2)";
const tablet =
  "only screen and (min-device-width: 768px) and (max-device-width: 1024px) and (-webkit-min-device-pixel-ratio: 1)";
let timer;

// When the DOM content is loaded
// document.addEventListener("DOMContentLoaded", () => {
//   let path = window.location.pathname;
//   if (
//     path !== "/interior/" &&
//     path !== "/restoration/" &&
//     path !== "/calculators/" &&
//     path !== "/visualization/"
//   ) {
//     // Function to check the scroll position and update the navigation bar
//     function checkScroll() {
//       // Get the current scroll position
//       const scroll = window.scrollY;
//       // If the scroll position is less than 1, we're at the top of the page
//       if (scroll < 1) {
//         // Change the navigation bar to be fully visible and positioned at the top
//         nav.classList.add("nav--drop");
//         // nav.style.top = "0";
//         // nav.style.transition = "top 0.1s ease-in";
//         heroSwiper.style.top = "60px";
//       } else if (scroll > 0) {
//         // Otherwise, make the navigation bar semi-transparent and move it up out of view
//         nav.style.top = "-70px";
//         heroSwiper.style.top = "0";
//       }
//     }
//     // After a short delay
//     setTimeout(() => {
//       // Scroll the window slightly to trigger the scroll event
//       window.scrollTo(1, 1);
//       // Add the scroll event listener
//       window.addEventListener("scroll", checkScroll);
//       // Check the initial scroll position
//       checkScroll();
//     }, 100); // Delay of 100 milliseconds
//   }
// });
