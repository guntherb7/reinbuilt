/**
 * Theme scripting
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
/*global jQuery: true */
/*jslint white: true */
/*jshint browser: true, jquery: true */
/*jshint esversion: 6 */

jQuery(function ($) {
  "use strict";

  $("#menu-icon").bind("click", function (event) {
    var body = $("html");
    event.preventDefault();
    if (body.hasClass("nav-open")) {
      body.removeClass("nav-open");
    } else {
      event.stopPropagation();
      body
        .one("click", function () {
          body.removeClass("nav-open");
          $("#slide-nav").removeClass("active");
        })
        .addClass("nav-open");
    }
  });
  $("#slide-nav").bind("click", function () {
    event.stopPropagation();
  });
  $("#menu-icon").on("click", function () {
    $("#slide-nav").toggleClass("active");
    $("#menu-icon").toggleClass("active");
    event.preventDefault();
  });

  $("li.menu-item-has-children > a").one("click", function (event) {
    event.preventDefault();
    $(this).next(".sub-menu").addClass("open");
  });

  var heroSwiper = new Swiper("#fp-hero__carousel", {
    cssMode: false,
    setWrapperSize: true,
    grabCursor: true,
    mousewheel: false,
    slidesPerView: 1,
    loop: true,
    autoplay: {
      delay: 3500,
      disableOnInteraction: true,
    },
  });

  var clientSwiper = new Swiper("#fp-clients__carousel", {
    loop: true,
    autoplay: {
      delay: 1,
      disableOnInteraction: false,
    },
    speed: 10000,
    slidesPerView: 2,
    grabCursor: false,
    mousewheelControl: false,
    keyboardControl: false,
    breakpoints: {
      768: {
        slidesPerView: 4,
      },
    },
  });

  var studySwiper = new Swiper("#study_carousel", {
    cssMode: false,
    setWrapperSize: true,
    grabCursor: true,
    mousewheel: false,
    slidesPerView: 1,
    loop: true,
    autoplay: {
      delay: 3500,
      disableOnInteraction: true,
    },
  });

  $(window).on("load", function () {
    if ($(window).width() > 992) {
      $(".services_tiles-grid").removeClass("accordions");
      $(".services_left").removeClass("accordions_title");
    }
  });

  //...// Clicking on the accordion header title
  $(".accordions").on("click", ".accordions_title", function () {
    // will (slide) toggle the related panel.
    $(this).toggleClass("active").next().slideToggle();
  });

  // grays out the current page in the nav
  const navLinks = document.querySelectorAll(".nav-link");

  for (const link of navLinks) {
    if (link.href === window.location.href) {
      link.classList.add("active");
    }
  }
  const lenis = new Lenis();

  lenis.on("scroll", (e) => {
    console.log(e);
    console.log("scroll");
  });

  function raf(time) {
    lenis.raf(time);
    requestAnimationFrame(raf);
  }

  requestAnimationFrame(raf);
});
