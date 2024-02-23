/**
 * Theme scripting
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
/*jshint esversion: 6 */

document.addEventListener("DOMContentLoaded", (event) => {
  const services = document.querySelectorAll(".welcome__list__item__link");
  const heading = document.querySelector(".heading");
  const elWelcome = document.querySelector(".welcome");
  const elTagline = document.querySelector(".tagline");
  const elArrow = document.querySelector(".arrowdown");
  const h1 = document.getElementsByTagName("h1");
  let timer;

  let elBody = document.body;
  let phone =
    "only screen and (min-device-width: 375px) and (max-device-width: 667px) and (-webkit-min-device-pixel-ratio: 2)";
  let tablet =
    "only screen and (min-device-width: 768px) and (max-device-width: 1024px) and (-webkit-min-device-pixel-ratio: 1)";

  function welcomeActivated(e) {
    // take in the click ^ (e)vent

    // prevent browser from refreshing
    e.preventDefault();

    // grab id from event
    let { id } = e.target;

    // if no id, assign index
    if (id === "" || e.type === "wheel" || e.type === "touchmove") {
      // to fetch data from
      id = "index";
      // to change url with
      url = "";
      // if there is an id, assign it to the url
    } else {
      // to change url with
      url = id;
    }

    // For reference: history(data, title, url)
    history.pushState(id, null, url);

    // reveal content by toggling overlay & ability to scroll
    elWelcome.classList.add("welcome--active");
    elBody.classList.remove("noscroll");
  }

  services.forEach((service) =>
    service.addEventListener("click", welcomeActivated)
  );

  elTagline.addEventListener("click", welcomeActivated);

  elArrow.addEventListener("click", welcomeActivated);

  // Scroll is disable (overflow:hidden) so we use `wheel` event
  elWelcome.addEventListener("wheel", welcomeActivated);

  // Swipe Event
  elWelcome.addEventListener("touchmove", welcomeActivated);

  window.addEventListener("popstate", (e) => {
    // reveal content by toggling overlay & ability to scroll
    elWelcome.classList.toggle("welcome--active");
    elBody.classList.toggle("noscroll");
  });
});
