/**
 * Theme scripting
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
/*jshint esversion: 6 */

function darkMode() {
  const element = document.body;
  const nav = document.querySelector(".menu-items");
  const lightIcon = document.querySelector(".light-icon");
  const darkIcon = document.querySelector(".dark-icon");

  element.classList.toggle("dark-mode");
  nav.classList.toggle("dark-mode");

  if (element.classList.contains("dark-mode")) {
    lightIcon.style.display = "none";
    darkIcon.style.display = "block";
  } else {
    lightIcon.style.display = "block";
    darkIcon.style.display = "none";
  }
}

window.addEventListener("DOMContentLoaded", function initializeDarkMode() {
  var bodyBackgroundColor = getComputedStyle(document.body).backgroundColor;

  if (bodyBackgroundColor === "rgb(244, 238, 233)") {
    document.querySelector(".light-icon").style.display = "block";
  } else if (bodyBackgroundColor === "rgb(34, 34, 34)") {
    document.querySelector(".dark-icon").style.display = "block";
  }
});

// Dark Mode Toggle
var darkModeButton = document.querySelector(".darkMode");

if (darkModeButton) {
  darkModeButton.addEventListener("click", darkMode);
}

// Smooth Scroll library
const lenis = new Lenis();

lenis.on("scroll", (e) => {
  console.log(e);
});

function raf(time) {
  lenis.raf(time);
  requestAnimationFrame(raf);
}

requestAnimationFrame(raf);

// Swiper JS
const swiper = new Swiper(".mySwiper", {
  lazy: true,
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

const heroSwiper = new Swiper(".hero-swiper", {
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
