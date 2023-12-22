/**
 * Slick Custom
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
/*global jQuery: true */
/*jslint white: true */
/*jshint browser: true, jquery: true */

jQuery(function ($) {
  "use strict";

  $(".slides").slick({
    dots: false,
    infinite: true,
    fade: true,
    autoplay: true,
    autoplaySpeed: 5000,
    speed: 1300,
    slidesToShow: 1,
    slidesToScroll: 1,
    prevArrow: false,
    nextArrow: false,
    swipeToSlide: true,
    cssEase: "ease-in-out",
  });
});
