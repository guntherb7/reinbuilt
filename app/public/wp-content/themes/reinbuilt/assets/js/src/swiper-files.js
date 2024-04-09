/**
 * Theme scripting
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
/*jshint esversion: 11 */

// Swiper JS
const swiper = new Swiper(".mySwiper", {
  lazy: true,
  navigation: {
    nextEl: ".swiper-button-next-outer",
    prevEl: ".swiper-button-prev-outer",
  },
  breakpoints: {
    320: { slidesPerView: 1, spaceBetween: 20 },
    600: { slidesPerView: 2, spaceBetween: 20 },
    968: { slidesPerView: 3, spaceBetween: 20 },
    1200: { slidesPerView: 4, spaceBetween: 20 },
  },
});

const heroImgSwiper = new Swiper(".hero-swiper", {
  cssMode: false,
  setWrapperSize: true,
  grabCursor: true,
  mousewheel: true,
  keyboard: true,
  longSwipes: true,
  longSwipesRatio: 0.25,
  autoplay: {
    delay: 4500,
    disableOnInteraction: true,
    spaceBetween: 0,
  },
  breakpoints: {
    851: {
      mousewheel: false,
      keyboard: false,
      watchSlidesProgress: true,
      watchSlidesVisibility: true,
      slidesPerView: 1,
      spaceBetween: 0,
      loop: true,
    },
  },
});

// const vertical = new Swiper(".vertical", {
//   direction: "vertical", // Set the direction to vertical
//   mousewheel: true, // Enable scrolling with the mouse wheel
//   slidesPerView: 1.2, // Set the number of slides visible at a time
//   spaceBetween: 0, // Add spacing between slides
//   loop: true, // Enable the loop mode
//   centeredSlides: true, // Center the slides
// });
