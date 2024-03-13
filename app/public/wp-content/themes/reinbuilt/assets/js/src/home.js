/**
 * Theme scripting
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
/*jshint esversion: 11 */

function lenisScroll() {
  // Smooth Scroll library
  const lenis = new Lenis();

  lenis.on("scroll", ScrollTrigger.update);

  gsap.ticker.add((time) => {
    lenis.raf(time * 1000);
  });

  gsap.ticker.lagSmoothing(0);
}
let path = window.location.pathname;
if (
  path !== "/interior/" &&
  path !== "/restoration/" &&
  path !== "/calculators/" &&
  path !== "/visualization/"
) {
  {
    // Function to check the scroll position and update the navigation bar
    function checkScroll() {
      // Get the current scroll position
      const scroll = window.scrollY;
      // If the scroll position is less than 1, we're at the top of the page
      if (scroll < 1) {
        // Change the navigation bar to be fully visible and positioned at the top of the page
        heroSwiper.style.top = "60px";
      } else if (scroll > 0) {
        heroSwiper.style.top = "0";
      }
    }
    // After a short delay
    setTimeout(() => {
      // Scroll the window slightly to trigger the scroll event
      window.scrollTo(1, 1);
      // Add the scroll event listener
      window.addEventListener("scroll", checkScroll);
      // Check the initial scroll position
      checkScroll();
    }, 100); // Delay of 100 milliseconds
  }
  let startY;

  function welcomeActivated(e) {
    // take in the click ^ (e)vent

    // prevent browser from refreshing
    e.preventDefault();

    // // grab id from event
    // let { id } = e.target;

    // // if no id, assign index
    // if (id === "" || e.type === "wheel" || e.type === "touchmove") {
    //   // to fetch data from
    //   id = "index";
    //   // to change url with
    //   url = "";
    //   // if there is an id, assign it to the url
    // } else {
    //   // to change url with
    //   url = id;
    // }

    // // For reference: history(data, title, url)
    // history.pushState(id, null, url);

    // fetch data
    // fetchData(id)

    // reveal content by toggling overlay & ability to scroll
    heroSwiper.classList.add("welcome--active");
    element.classList.remove("noscroll");
    setTimeout(lenisScroll, 300);
  }

  heroTagline.addEventListener("click", welcomeActivated);

  // Scroll is disable (overflow:hidden) so we use `wheel` event
  heroSwiper.addEventListener(
    "wheel",
    function (event) {
      if (event.deltaY > 0) {
        welcomeActivated(event);
        nav.classList.remove("nav--drop"); // Remove class for styling
      }
    },
    { passive: false }
  );

  // Swipe Event
  heroSwiper.addEventListener(
    "touchstart",
    function (event) {
      startY = event.changedTouches[0].clientY;
    },
    { passive: false }
  );

  heroSwiper.addEventListener(
    "touchmove",
    function (event) {
      let touch = event.changedTouches[0];
      if (touch.clientY < startY) {
        welcomeActivated(event);
        nav.classList.remove("nav--drop"); // Remove class for styling
      }
    },
    { passive: false }
  );
}

window.addEventListener("popstate", (e) => {
  // reveal content by toggling overlay & ability to scroll
  heroSwiper.classList.toggle("welcome--active");
  element.classList.toggle("noscroll");
  nav.classList.remove("nav--drop"); // Remove class for styling
});

function heroSplash1(e) {
  var hero1 = document.getElementById("section-hero--1");

  if (hero1.style.display !== "block") {
    hero1.style.display = "block";
  } else {
    hero1.style.display = "none";
  }
}
function heroSplash2(e) {
  var hero2 = document.getElementById("section-hero--2");

  if (hero2.style.display !== "block") {
    hero2.style.display = "block";
  } else {
    hero2.style.display = "none";
  }
}
function heroSplash3(e) {
  var hero3 = document.getElementById("section-hero--3");

  if (hero3.style.display !== "block") {
    hero3.style.display = "block";
  } else {
    hero3.style.display = "none";
  }
}

window.onbeforeunload = function () {
  window.scrollTo(0, 0);
};
