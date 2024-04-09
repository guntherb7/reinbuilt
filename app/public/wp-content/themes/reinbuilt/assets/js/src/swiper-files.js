/**
 * Theme scripting
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
/*jshint esversion: 11 */

// Swiper JS
const swiper = new Swiper(".mySwiper", {
  lazy: false,
  grabCursor: true,
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
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
  mousewheel: false,
  keyboard: false,
  longSwipes: true,
  longSwipesRatio: 0.25,
  autoplay: {
    delay: 4500,
    disableOnInteraction: true,
    spaceBetween: 0,
  },
  breakpoints: {
    851: {
      watchSlidesProgress: true,
      watchSlidesVisibility: true,
      slidesPerView: 1,
      spaceBetween: 0,
      loop: true,
    },
  },
});
