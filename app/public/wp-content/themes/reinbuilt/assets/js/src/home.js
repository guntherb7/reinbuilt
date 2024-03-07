/**
 * Theme scripting
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
/*jshint esversion: 11 */

const elWelcome = document.querySelector(".hero-swiper");
const elTagline = document.querySelector(".tagline");
const elArrow = document.querySelector(".arrowdown");
var nav = document.querySelector(".nav");
let timer;

let elBody = document.body;
let phone =
  "only screen and (min-device-width: 375px) and (max-device-width: 667px) and (-webkit-min-device-pixel-ratio: 2)";
let tablet =
  "only screen and (min-device-width: 768px) and (max-device-width: 1024px) and (-webkit-min-device-pixel-ratio: 1)";

function lenisScroll() {
  // Smooth Scroll library
  const lenis = new Lenis();

  lenis.on("scroll", ScrollTrigger.update);

  gsap.ticker.add((time) => {
    lenis.raf(time * 1000);
  });

  gsap.ticker.lagSmoothing(0);
}

let startY;

function welcomeActivated(e) {
  // take in the click ^ (e)vent

  // prevent browser from refreshing
  e.preventDefault();

  // grab id from event
  let { id } = e.target;

  // if no id, assign index
  if (id === "" || e.type === "wheel" || e.type === "touchmove") {
    // to fetch data from
    id = "index";
    // to change url with
    url = "";
    // if there is an id, assign it to the url
  } else {
    // to change url with
    url = id;
  }

  // For reference: history(data, title, url)
  history.pushState(id, null, url);

  // fetch data
  // fetchData(id)

  // reveal content by toggling overlay & ability to scroll
  elWelcome.classList.add("welcome--active");
  elBody.classList.remove("noscroll");
  setTimeout(lenisScroll, 300);

  // Reveal .nav.page--logo with a transition
  let logo = document.querySelector(".nav .page--logo");
  logo.style.opacity = "1";
}

elTagline.addEventListener("click", welcomeActivated);

elArrow.addEventListener("click", welcomeActivated);

// Scroll is disable (overflow:hidden) so we use `wheel` event
elWelcome.addEventListener("wheel", function (event) {
  if (event.deltaY > 0) {
    welcomeActivated(event);
    nav.classList.remove("above-hero"); // Remove class for styling
  }
});

// Swipe Event
elWelcome.addEventListener("touchstart", function (event) {
  startY = event.changedTouches[0].clientY;
});

elWelcome.addEventListener("touchmove", function (event) {
  let touch = event.changedTouches[0];
  if (touch.clientY < startY) {
    welcomeActivated(event);
    nav.classList.remove("above-hero"); // Remove class for styling
  }
});

window.addEventListener("popstate", (e) => {
  // reveal content by toggling overlay & ability to scroll
  elWelcome.classList.toggle("welcome--active");
  elBody.classList.toggle("noscroll");
  nav.classList.remove("above-hero"); // Remove class for styling
  // target state from event
  // const { state } = e

  // fetch data
  // fetchData(state)
});

function heroSplash1(e) {
  var hero1 = document.getElementById("section-hero--1");

  if (hero1.style.display !== "block") {
    hero1.style.display = "block";
  } else {
    hero1.style.display = "none";
  }
}
function heroSplash2(e) {
  var hero2 = document.getElementById("section-hero--2");

  if (hero2.style.display !== "block") {
    hero2.style.display = "block";
  } else {
    hero2.style.display = "none";
  }
}
function heroSplash3(e) {
  var hero3 = document.getElementById("section-hero--3");

  if (hero3.style.display !== "block") {
    hero3.style.display = "block";
  } else {
    hero3.style.display = "none";
  }
}
