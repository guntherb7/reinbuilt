/**
 * Theme scripting
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
/*jshint esversion: 6 */

// grays out the current page in the nav
const navLinks = document.querySelectorAll(".nav-link");

for (const link of navLinks) {
  if (link.href === window.location.href) {
    link.classList.add("active");
  }
}

// hamburger menu
const hamburgerMenu = document.getElementById("hamburger-menu");
const bottomNav = document.getElementById("bottom-nav");

hamburgerMenu.addEventListener("click", () => {
  bottomNav.classList.toggle("open");
});
