/**
 * Theme scripting
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
/*jshint esversion: 6 */

// Dark Mode Toggle
var darkModeButton = document.querySelector(".darkMode");

if (darkModeButton) {
  darkModeButton.addEventListener("click", darkMode);
}

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
const navLinks = document.querySelectorAll(".menu-items li a");

for (const link of navLinks) {
  if (link.href === window.location.href) {
    link.classList.add("active");
  }
}

gsap.registerPlugin(ScrollTrigger);
gsap.registerPlugin(ScrollTrigger, ScrollSmoother, ScrollToPlugin);

ScrollSmoother.create({
  smooth: 1,
  effects: true,
  smoothTouch: 0.1,
});

// Logo to header animation
let logoTl = gsap.timeline({
  scrollTrigger: {
    trigger: document.body,
    start: 0,
    end: () => window.innerHeight * 1.2,
    scrub: 0.6,
  },
});
logoTl.fromTo(
  ".logo",
  {
    top: "20vw",
    yPercent: -50,
    scale: 1.7,
  },
  {
    top: "2vw",
    yPercent: 0,
    scale: 1,
    duration: 0.8,
  }
);

// Attempt to snap sections on scroll
gsap.utils.toArray("section").forEach((panel, i) => {
  ScrollTrigger.create({
    trigger: panel,
    start: "top top",
    pin: true,
    pinSpacing: false,
  });
});

ScrollTrigger.create({
  snap: 1 / 5, // snap whole page to the closest section!
});
// Smooth Scroll library
const lenis = new Lenis();

lenis.on("scroll", (e) => {
  console.log(e);
});
lenis.on("scroll", ScrollTrigger.update);

gsap.ticker.add((time) => {
  lenis.raf(time * 1000);
});

gsap.ticker.lagSmoothing(0);
function raf(time) {
  lenis.raf(time);
  requestAnimationFrame(raf);
}
