/**
 * Theme scripting
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
/*jshint esversion: 11 */
const darkIcon = document.querySelector(".dark-icon");
const element = document.body;
const header = document.querySelector("header");
const heroSwiper = document.querySelector(".hero-swiper");
const heroTagline = document.querySelector(".tagline");
const html = document.querySelector("html");
const lightIcon = document.querySelector(".light-icon");
const nav = document.querySelector(".nav");
var menu = document.getElementById("menu");
var menuItems = document.querySelector(".menu-items");
const pageLogo = document.querySelector(".page--logo");
const phone =
  "only screen and (min-device-width: 375px) and (max-device-width: 667px) and (-webkit-min-device-pixel-ratio: 2)";
const tablet =
  "only screen and (min-device-width: 768px) and (max-device-width: 1024px) and (-webkit-min-device-pixel-ratio: 1)";
let timer;
