/**
 * Theme scripting
 *
 * @package reinbuilt
 * @author Gunther Beam LLC
 */
/*jshint esversion: 11 */

import { gsap } from "assets/js/src/node_modules/gsap";

import { CustomEase } from "/assets/js/src/node_modules/gsapCustomEase";
import { RoughEase } from "assets/js/src/node_modules/gsapEasePack";

import { ScrollTrigger } from "assets/js/src/node_modules/gsapScrollTrigger";
import { Observer } from "assets/js/src/node_modules/gsapObserver";
import { ScrollToPlugin } from "assets/js/src/node_modules/gsapScrollToPlugin";
import { Draggable } from "assets/js/src/node_modules/gsapDraggable";
import { MotionPathPlugin } from "assets/js/src/node_modules/gsapMotionPathPlugin";
import { EaselPlugin } from "assets/js/src/node_modules/gsapEaselPlugin";
import { PixiPlugin } from "assets/js/src/node_modules/gsapPixiPlugin";
import { TextPlugin } from "assets/js/src/node_modules/gsapTextPlugin";

gsap.registerPlugin(
  ScrollTrigger,
  Observer,
  ScrollToPlugin,
  Draggable,
  MotionPathPlugin,
  EaselPlugin,
  PixiPlugin,
  TextPlugin,
  RoughEase,
  CustomEase
);

// wait until DOM is ready
document.addEventListener("DOMContentLoaded", function (event) {
  console.log("DOM loaded");

  //wait until images, links, fonts, stylesheets, and js is loaded
  window.addEventListener(
    "load",
    function (e) {
      //custom GSAP code goes here
      // This tween will rotate an element with a class of .my-element
      gsap.to(".my-element", {
        rotation: 360,
        duration: 2,
        ease: "bounce.out",
      });

      console.log("window loaded");
    },
    false
  );
});
