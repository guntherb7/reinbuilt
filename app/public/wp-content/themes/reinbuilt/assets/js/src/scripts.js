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
