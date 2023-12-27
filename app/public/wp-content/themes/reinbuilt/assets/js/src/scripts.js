/**
 * Theme scripting
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
/*jshint esversion: 6 */

const lenis = new Lenis();

lenis.on("scroll", (e) => {
  console.log(e);
});

function raf(time) {
  lenis.raf(time);
  requestAnimationFrame(raf);
}

requestAnimationFrame(raf);

// grays out the current page in the nav
const navLinks = document.querySelectorAll(".nav-link");

for (const link of navLinks) {
  if (link.href === window.location.href) {
    link.classList.add("active");
  }
}

// hamburger menu
const hamburger = document.getElementById("menu-icon");

hamburger.addEventListener("click", () => {
  hamburger.classList.toggle("active");
  document.body.classList.toggle("menu-open"); // Prevent body scroll

  const mobileNav = document.getElementById("mobile-nav");
  if (mobileNav.classList.contains("active")) {
    mobileNav.classList.remove("active"); // Close menu if already open
  } else {
    mobileNav.classList.add("active"); // Open menu
  }
});

// Toggle mobile menu
const toggleNav = document.querySelector(".toggle-nav");
toggleNav.addEventListener("click", () => {
  const mobileNav = document.getElementById("mobile-nav");
  mobileNav.classList.toggle("active");
});

// Append accordion toggle for nested menus
const menuItems = document.querySelectorAll(
  "#menu-primary-navigation > li.menu-item-has-children"
);
menuItems.forEach((item) => {
  item.append(
    '<div class="accordion-toggle"><div class="fa fa-angle-down"></div></div>'
  );
});

// Handle accordion toggle clicks
const accordionToggles = document.querySelectorAll(
  "#mobile-nav .accordion-toggle"
);
accordionToggles.forEach((toggle) => {
  toggle.addEventListener("click", () => {
    const nestedUl = toggle.closest("li").querySelector("> ul");
    nestedUl.classList.toggle("active");
    toggle.classList.toggle("toggle-background");
    toggle.querySelector(".fa").classList.toggle("toggle-rotate");
  });
});
