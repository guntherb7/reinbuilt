/**
 * Theme scripting
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
/*jshint esversion: 11 */

// gsap.registerPlugin(ScrollTrigger, Observer, ScrollToPlugin);

// // wait until DOM is ready
// document.addEventListener("DOMContentLoaded", function (event) {
//   // create
//   let mm = gsap.matchMedia();

//   // add a media query. When it matches, the associated function will run
//   mm.add("(min-width: 800px)", () => {
//     //wait until images, links, fonts, stylesheets, and js is loaded
//     window.addEventListener(
//       "load",
//       function (e) {
//         gsap.fromTo(
//           ".ninth",
//           {
//             y: "+100%", // start from offscreen bottom
//           },
//           {
//             scrollTrigger: {
//               trigger: ".contact",
//               start: "top top", // start when the bottom of the .contact-hero element is at the bottom of the viewport
//               end: "center center",
//             },
//             y: "0%", // end at the center
//             opacity: 1,
//             duration: 2,
//           }
//         );
//       },
//       false
//     );
//   });
// });

document.addEventListener("DOMContentLoaded", function (event) {
  gsap.registerPlugin(Observer);

  let sections = document.querySelectorAll("section"),
    images = document.querySelectorAll(".bg"),
    outerWrappers = gsap.utils.toArray(".outer"),
    innerWrappers = gsap.utils.toArray(".inner"),
    currentIndex = -1,
    wrap = gsap.utils.wrap(0, sections.length),
    animating;
  gsap.set(outerWrappers, { yPercent: 100 });
  gsap.set(innerWrappers, { yPercent: -100 });

  function gotoSection(index, direction) {
    index = wrap(index); // make sure it's valid
    animating = true;
    let fromTop = direction === -1,
      dFactor = fromTop ? -1 : 1,
      tl = gsap.timeline({
        defaults: { duration: 0.4, ease: "power1.inOut" },
        onComplete: () => (animating = false),
      });

    if (currentIndex >= 0) {
      // The first time this function runs, current is -1
      gsap.set(sections[index], { zIndex: 1000 });
      tl.to(images[currentIndex], { yPercent: 0 * dFactor }).set(
        sections[currentIndex],
        { autoAlpha: 0 }
      );

      if (index == 5 || index == 6) {
        document.querySelector(".hold").style.opacity = "1";
        document.querySelector(".hold").style.visibility = "visible";
      } else {
        document.querySelector(".hold").style.opacity = "0";
        document.querySelector(".hold").style.visibility = "hidden";
      }
    }
    gsap.set(sections[index], { autoAlpha: 1 });
    tl.fromTo(
      [outerWrappers[index], innerWrappers[index]],
      {
        yPercent: (i) => (i ? -100 * dFactor : 100 * dFactor),
      },
      {
        yPercent: 0,
      },
      0
    );

    currentIndex = index;
  }

  Observer.create({
    type: "wheel,touch,scroll",
    wheelSpeed: -1,
    lockAxis: true,
    onDown: () => !animating && gotoSection(currentIndex - 1, -1),
    onUp: () => !animating && gotoSection(currentIndex + 1, 1),
    tolerance: 10,
    preventDefault: true,
  });

  gotoSection(0, 1);
});
