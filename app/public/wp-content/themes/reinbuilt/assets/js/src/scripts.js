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
if (darkModeButton) {
  darkModeButton.addEventListener("click", darkMode);
}
// The darkMode function remains the same
function darkMode() {
  const element = document.body;
  const nav = document.querySelector(".menu-items");

  element.classList.toggle("dark-mode");
  nav.classList.toggle("dark-mode");
  // Get the background color of the body element
  var bodyBackgroundColor = getComputedStyle(document.body).backgroundColor;

  // Check if the background color is #f4eee9
  if (bodyBackgroundColor === "rgb(244, 238, 233)") {
    // Hide the .light-icon element
    document.querySelector(".light-icon").style.display = "none";
    document.querySelector(".dark-icon").style.display = "block";
  } else if (bodyBackgroundColor === "rgb(34, 34, 34)") {
    // Check if the background color is #222
    // Hide the .dark-icon element
    document.querySelector(".dark-icon").style.display = "none";
    document.querySelector(".light-icon").style.display = "block";
  }
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
