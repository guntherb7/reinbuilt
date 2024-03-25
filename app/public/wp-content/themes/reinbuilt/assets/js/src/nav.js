/**
 * Theme scripting
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
/*jshint esversion: 11 */

// Menu Toggle Function
function toggleMenu() {
  console.log("Toggling menu");
  menuItems.classList.toggle("open");
}

// Dark Mode Function
function darkMode() {
  element.classList.toggle("dark-mode");
  header.classList.toggle("dark-mode");
  nav.classList.toggle("dark-mode");
  menuItems.classList.toggle("dark-mode");
  pageLogo.classList.toggle("dark-mode");
  html.classList.toggle("dark-mode");

  // Check if dark mode is enabled as icon is clicked, then set the icon accordingly and save the state in local storage
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

// Dark Mode Initialization
document.addEventListener("DOMContentLoaded", function initializeDarkMode() {
  var bodyBackgroundColor = getComputedStyle(document.body).backgroundColor;

  // Check if dark mode is enabled in local storage
  if (localStorage.getItem("darkMode") === "true") {
    html.classList.add("dark-mode");
    document.body.classList.add("dark-mode");
    header.classList.add("dark-mode");
    document.querySelector(".nav").classList.add("dark-mode");
    // document.querySelector(".bg").classList.add("dark-mode");
    document.querySelector(".menu-items").classList.add("dark-mode");
    document.querySelector(".light-icon").style.display = "none";
    document.querySelector(".dark-icon").style.display = "block";
  } else if (
    localStorage.getItem("darkMode") === "false" ||
    bodyBackgroundColor === "rgb(244, 238, 233)"
  ) {
    // document.querySelector(".bg").classList.remove("dark-mode");
    document.querySelector(".light-icon").style.display = "block";
    document.querySelector(".dark-icon").style.display = "none";
  }
});

// Dark Mode Event Listener
document.addEventListener("DOMContentLoaded", function () {
  // Dark Mode Toggle
  var darkModeButton = document.querySelector(".darkMode");

  if (darkModeButton) {
    darkModeButton.addEventListener("click", darkMode);
  }

  if (menu) {
    menu.addEventListener("click", toggleMenu);
  } else {
    console.log("Menu element not found");
  }

  if (
    document.URL.includes("/interior") ||
    document.URL.includes("/restoration") ||
    document.URL.includes("/visualization") ||
    document.URL.includes("/calculators") ||
    document.URL.includes("/test")
  ) {
    // add smooth scrolling to page
    lenisScroll();
  }
});
