/**
 * Theme scripting
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
/*jshint esversion: 11 */

gsap.registerPlugin(ScrollTrigger, Observer, ScrollToPlugin);

// wait until DOM is ready
document.addEventListener("DOMContentLoaded", function (event) {
  console.log("DOM loaded");

  // create
  let mm = gsap.matchMedia();

  // add a media query. When it matches, the associated function will run
  mm.add("(min-width: 800px)", () => {
    //wait until images, links, fonts, stylesheets, and js is loaded
    window.addEventListener(
      "load",
      function (e) {
        gsap.fromTo(
          ".contact",
          {
            x: "-100%", // start from offscreen left
            opacity: 0,
          },
          {
            scrollTrigger: {
              trigger: ".contact-hero",
              start: "+75 center",
              end: "center center",
            },
            x: "0%", // end at the center
            opacity: 1,
            duration: 1,
          }
        );
      },
      false
    );
  });
});
