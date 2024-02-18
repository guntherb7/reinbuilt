/**
 * Theme scripting
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
/*jshint esversion: 6 */

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
    localStorage.setItem("darkMode", "true");
  } else {
    lightIcon.style.display = "block";
    darkIcon.style.display = "none";
    localStorage.setItem("darkMode", "false");
  }
}

window.addEventListener("DOMContentLoaded", function initializeDarkMode() {
  var bodyBackgroundColor = getComputedStyle(document.body).backgroundColor;

  if (localStorage.getItem("darkMode") === "true") {
    document.body.classList.add("dark-mode");
    document.querySelector(".menu-items").classList.add("dark-mode");
    document.querySelector(".light-icon").style.display = "none";
    document.querySelector(".dark-icon").style.display = "block";
  } else if (
    localStorage.getItem("darkMode") === "false" ||
    bodyBackgroundColor === "rgb(244, 238, 233)"
  ) {
    document.querySelector(".light-icon").style.display = "block";
    document.querySelector(".dark-icon").style.display = "none";
  }
});

// Dark Mode Toggle
var darkModeButton = document.querySelector(".darkMode");

if (darkModeButton) {
  darkModeButton.addEventListener("click", darkMode);
}
