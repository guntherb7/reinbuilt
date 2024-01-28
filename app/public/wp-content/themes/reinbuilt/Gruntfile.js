module.exports = function (grunt) {
  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON("package.json"),

    jshint: {
      options: {
        force: true,
      },
      all: ["assets/js/src/*.js"],
    },
    modernizr: {
      dist: {
        parseFiles: true,
        customTests: [],
        devFile: "assets/js/src/scripts.js",
        dest: "assets/js/src/scripts.js",
        tests: [
          // Tests
        ],
        options: ["setClasses"],
        uglify: true,
      },
    },
    // Add new js files from the /assets/js/src/ directory to be compiled as well as what they should be output as
    uglify: {
      min: {
        files: {
          "assets/js/scripts.min.js": ["assets/js/src/scripts.js"],
          "assets/js/home.min.js": ["assets/js/src/home.js"],
        },
      },
    },
    sass: {
      dist: {
        options: {
          style: "compressed",
          sourcemap: "none",
        },
        files: {
          // Dictionary of files // 'destination': 'source'
          "assets/sass/styles.css": "assets/sass/styles.scss",
        },
      },
    },
    concat: {
      generated: {
        files: {
          "assets/js/scripts.min.js": ["assets/js/src/scripts.js"],
          "assets/js/home.min.js": ["assets/js/src/home.js"],
        },
      },
    },
    cssmin: {
      target: {
        files: [
          {
            expand: true,
            src: "assets/sass/styles.css",
            dest: "./",
            ext: ".min.css",
          },
        ],
      },
    }, // This can be run as a watch task which looks for changes to files and compiles in real time
    watch: {
      scss: {
        files: ["assets/sass/*.scss"],
        tasks: ["sass"],
      },
      css: {
        files: ["assets/sass/styles.css"],
        tasks: ["cssmin"],
      },
      scripts: {
        files: ["assets/js/src/*.js"],
        tasks: ["jshint", "concat", "uglify"],
      },
    },
  });

  // Load tasks
  grunt.loadNpmTasks("grunt-contrib-jshint");
  grunt.loadNpmTasks("grunt-contrib-uglify");
  grunt.loadNpmTasks("grunt-contrib-sass");
  grunt.loadNpmTasks("grunt-contrib-cssmin");
  grunt.loadNpmTasks("grunt-contrib-concat");
  grunt.loadNpmTasks("grunt-modernizr");
  grunt.loadNpmTasks("grunt-contrib-watch");

  // Default task(s).
  grunt.registerTask("default", [
    "jshint",
    "uglify",
    "sass",
    "cssmin",
    "concat",
    "modernizr",
    "watch",
  ]);
};
