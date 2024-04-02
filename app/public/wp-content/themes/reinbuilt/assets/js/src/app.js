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
//           ".contact",
//           {
//             y: "+100%", // start from offscreen left
//             opacity: 0,
//           },
//           {
//             scrollTrigger: {
//               trigger: ".contact-hero",
//               start: "+100 center",
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

gsap.registerPlugin(Observer);

let sections = document.querySelectorAll("section"),
  images = document.querySelectorAll(".bg"),
  outerWrappers = gsap.utils.toArray(".outer"),
  innerWrappers = gsap.utils.toArray(".inner"),
  hold = gsap.utils.toArray(".hold"),
  currentIndex = -1,
  wrap = gsap.utils.wrap(0, sections.length),
  animating;

gsap.set(outerWrappers, { yPercent: 100 });
gsap.set(innerWrappers, { yPercent: -100 });
gsap.set(hold, { yPercent: 0 });

function gotoSection(index, direction) {
  index = wrap(index); // make sure it's valid
  animating = true;
  let fromTop = direction === -1,
    dFactor = fromTop ? -1 : 1,
    tl = gsap.timeline({
      defaults: { duration: 0.75, ease: "power1.inOut" },
      onComplete: () => (animating = false),
    });

  if ((sections[currentIndex] = 2)) {
    // set the background color of sections[1]> .inner to transparent
    gsap.to(sections[1].querySelector(".inner"), {
      backgroundColor: "transparent",
    });
  }
  if (sections[currentIndex] != 2) {
    // set the background color of sections[1]> .inner to transparent
    gsap.to(sections[1].querySelector(".inner"), {
      backgroundColor: "pink !important",
    });
  }

  gsap.to(".seventh", {
    /* your animation properties here */
  });
  // if (currentIndex >= 0) {
  //   // The first time this function runs, current is -1
  //   gsap.set(sections[currentIndex], { zIndex: 1 });
  //   tl.to(images[currentIndex], { yPercent: 0 * dFactor }).set(
  //     sections[currentIndex],
  //     { autoAlpha: 0 }
  //   );

  //   if (
  //     sections[currentIndex].classList.contains("sixth") ||
  //     sections[currentIndex].classList.contains("seventh")
  //     // ||
  //     // sections[currentIndex].classList.contains("eighth")
  //   ) {
  //     document.querySelector(".hold").style.display = "block";
  //     tl.to(".hold", {
  //       autoAlpha: 1,
  //       zIndex: 1000,
  //       opacity: 1,
  //       visibility: "visible",
  //       overwrite: "true",
  //     });
  //   }
  //   if (
  //     sections[currentIndex].classList.contains("eighth") ||
  //     sections[currentIndex].classList.contains("fourth")
  //   ) {
  //     document.querySelector(".hold").style.display = "none";
  //     tl.to(".hold", {
  //       autoAlpha: 1,
  //       zIndex: 1000,
  //       opacity: 1,
  //       visibility: "visible",
  //       overwrite: "true",
  //     });
  //   }
  // }
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
  ).fromTo(images[index], { yPercent: 15 * dFactor }, { yPercent: 0 }, 0);

  currentIndex = index;
  console.log(currentIndex);
  console.log(sections[currentIndex].classList);
}

Observer.create({
  type: "wheel,touch,pointer",
  wheelSpeed: -1,
  onDown: () => !animating && gotoSection(currentIndex - 1, -1),
  onUp: () => !animating && gotoSection(currentIndex + 1, 1),
  tolerance: 10,
  preventDefault: true,
});

gotoSection(0, 1);
