/**
 * Theme scripting
 *
 * @package reinbuilt
 * @author X
 */
/*jshint esversion: 11 */

document.addEventListener("DOMContentLoaded", (event) => {
  gsap.registerPlugin(ScrollTrigger, ScrollToPlugin, Observer);
  gsap.to(".start-project--absolute", {
    opacity: 1,
    visibility: "visible",
    duration: 1,
    ease: "power2.out",
    scrollTrigger: { trigger: ".start-project", start: "bottom bottom" },
  });

  gsap.to(".start-project-logo--start", {
    opacity: 0,
    visibility: "hidden",
    duration: 0.6,
    scrollTrigger: { trigger: ".start-project", start: "bottom bottom" },
  });
});
