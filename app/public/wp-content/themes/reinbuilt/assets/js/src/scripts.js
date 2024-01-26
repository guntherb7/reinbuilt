/**
 * Theme scripting
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
/*jshint esversion: 6 */

// Dark Mode Toggle
// Get the button element by its class
var darkModeButton = document.querySelector(".darkMode");

// Add a click event listener to the button
darkModeButton.addEventListener("click", darkMode);

// The darkMode function remains the same
function darkMode() {
  var element = document.body;
  element.classList.toggle("dark-mode");
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
