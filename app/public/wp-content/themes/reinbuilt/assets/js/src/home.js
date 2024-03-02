/**
 * Theme scripting
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
/*jshint esversion: 11 */

// document.addEventListener("DOMContentLoaded", (event) => {
//   const elHeroSwiper = document.querySelector(".hero-swiper");
//   const elNav = document.querySelector(".nav");

//   let elBody = document.body;
//   let phone =
//     "only screen and (min-device-width: 375px) and (max-device-width: 667px) and (-webkit-min-device-pixel-ratio: 2)";
//   let tablet =
//     "only screen and (min-device-width: 768px) and (max-device-width: 1024px) and (-webkit-min-device-pixel-ratio: 1)";

//   function heroSwiperActivated(e) {
//     // take in the click ^ (e)vent

//     // prevent browser from refreshing
//     e.preventDefault();

//     // grab id from event
//     let { id } = e.target;

//     // if no id, assign index
//     if (id === "" || e.type === "wheel" || e.type === "touchmove") {
//       // to fetch data from
//       id = "index";
//       // to change url with
//       url = "";
//       // if there is an id, assign it to the url
//     } else {
//       // to change url with
//       url = id;
//     }

//     // For reference: history(data, title, url)
//     history.pushState(id, null, url);

//     // reveal content by toggling overlay & ability to scroll
//     elHeroSwiper.classList.add("hero-swiper--active");
//     elNav.classList.remove("nav--inactive");
//     elBody.classList.remove("noscroll");
//     elBody.scrollTop = 0;
//   }

//   // Event Listeners
//   elHeroSwiper.addEventListener("click", heroSwiperActivated);

//   // Scroll is disable (overflow:hidden) so we use `wheel` event
//   elHeroSwiper.addEventListener("wheel", heroSwiperActivated);

//   // Swipe Event
//   elHeroSwiper.addEventListener("touchmove", heroSwiperActivated);

//   window.addEventListener("popstate", (e) => {
//     // reveal content by toggling overlay & ability to scroll
//     elHeroSwiper.classList.toggle("hero-swiper--active");
//     elNav.classList.remove("nav--inactive");
//     elBody.classList.toggle("noscroll");
//     elBody.scrollTop = 0;
//   });
// });

function heroSplash(e) {
  // Get all elements with the class "project-title"
  var projectTitles = document.getElementsByClassName("project-title");

  // Iterate through each projectTitle element
  for (var i = 0; i < projectTitles.length; i++) {
    // Get the parent div of the projectTitle element
    var parentDiv = projectTitles[i].parentNode;

    // Check if the hero element exists within the same parent div
    if (parentDiv.querySelector(".section-hero")) {
      var hero = parentDiv.querySelector(".section-hero"); // Get the hero within the same div

      // Toggle the display of the hero element
      hero.style.display = hero.style.display === "block" ? "none" : "block";
    }
  }
}
