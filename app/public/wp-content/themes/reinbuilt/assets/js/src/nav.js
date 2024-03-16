/**
 * Theme scripting
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
/*jshint esversion: 11 */

// Dark Mode Function
function darkMode() {
  element.classList.toggle("dark-mode");
  nav.classList.toggle("dark-mode");
  navMenu.classList.toggle("dark-mode");
  pageLogo.classList.toggle("dark-mode");
  html.classList.toggle("dark-mode");
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

  if (localStorage.getItem("darkMode") === "true") {
    html.classList.add("dark-mode");
    document.body.classList.add("dark-mode");
    document.querySelector(".nav").classList.add("dark-mode");
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

// Dark Mode Event Listener
document.addEventListener("DOMContentLoaded", function () {
  // Dark Mode Toggle
  var darkModeButton = document.querySelector(".darkMode");

  if (darkModeButton) {
    darkModeButton.addEventListener("click", darkMode);
  }

  var menu = document.getElementById("menu");
  var menuItems = document.querySelector(".menu-items");

  function toggleMenu() {
    console.log("Toggling menu");
    menuItems.classList.toggle("open");
  }

  if (menu) {
    menu.addEventListener("click", toggleMenu);
  } else {
    console.log("Menu element not found");
  }
});

// add a class of active to the current page link
const currentLocation = location.href;
const menuItem = document.querySelectorAll(".menu-items a");
const menuLength = menuItem.length;
for (let i = 0; i < menuLength; i++) {
  if (menuItem[i].href === currentLocation) {
    menuItem[i].className = "active";
  }
}

document.addEventListener("DOMContentLoaded", function () {
  // Check if the current page is one of the target pages
  if (
    document.URL.includes("/interior") ||
    document.URL.includes("/restoration") ||
    document.URL.includes("/visualization") ||
    document.URL.includes("/calculators")
  ) {
    // add smooth scrolling to page
    lenisScroll();
  }
});
