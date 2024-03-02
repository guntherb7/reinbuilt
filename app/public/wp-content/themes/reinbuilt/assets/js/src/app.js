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

  //wait until images, links, fonts, stylesheets, and js is loaded
  window.addEventListener(
    "load",
    function (e) {
      // Slide .hero-swiper off the top of the screen when scrolling down
      gsap.to(".hero-swiper", {
        yPercent: -100,
        duration: 0.5,
        ease: "power3.in",
        scrollTrigger: {
          trigger: ".hero-swiper",
          start: "top top",
          end: "+=70",
          scrub: true,
          markers: true,
        },
      });
    },
    false
  );
});

// wait until DOM is ready
document.addEventListener("DOMContentLoaded", function (event) {
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
              start: "center center",
              end: "center center",
              markers: true,
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
