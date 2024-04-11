/**
 * Theme scripting
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
/*jshint esversion: 11 */

document.addEventListener("DOMContentLoaded", (event) => {
  gsap.registerPlugin(ScrollTrigger, ScrollToPlugin, Observer);
  gsap.to(".start-project--absolute", {
    opacity: 1,
    visibility: "visible",
    duration: 1,
    scrollTrigger: { trigger: ".start-project", start: "bottom bottom" },
  });
});
