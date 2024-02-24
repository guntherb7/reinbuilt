/**
 * Theme scripting
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
/*jshint esversion: 6 */

// Dark Mode
function darkMode() {
  const element = document.body;
  const nav = document.querySelector(".nav");
  const navMenu = document.querySelector(".menu-items");
  const lightIcon = document.querySelector(".light-icon");
  const darkIcon = document.querySelector(".dark-icon");

  element.classList.toggle("dark-mode");
  nav.classList.toggle("dark-mode");
  navMenu.classList.toggle("dark-mode");

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

// Dark Mode Toggle
var darkModeButton = document.querySelector(".darkMode");

if (darkModeButton) {
  darkModeButton.addEventListener("click", darkMode);
}

document.addEventListener("DOMContentLoaded", function () {
  var menu = document.getElementById("menu");
  var menuItems = document.querySelector(".menu-items");
  var heroLogo = document.querySelector(".hero--logo");

  function toggleMenu() {
    console.log("Toggling menu");
    menuItems.classList.toggle("open");
  }

  function closeMenu() {
    console.log("Closing menu");
    menuItems.classList.remove("open");
  }

  if (menu) {
    menu.addEventListener("click", toggleMenu);
  } else {
    console.log("Menu element not found");
  }

  if (heroLogo) {
    heroLogo.addEventListener("mouseover", toggleMenu);
  } else {
    console.log("Hero logo element not found");
  }

  window.addEventListener("resize", closeMenu);
  window.addEventListener("scroll", closeMenu);
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
