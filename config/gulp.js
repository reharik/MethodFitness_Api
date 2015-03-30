"use strict";
var root = require("path").normalize(__dirname + "/..");

module.exports = {
  paths: {
    toWatch: [root + "/src/**/*.js", root + "/config/*.js", root + "/server.js", root + "/lib/*.js"]
  }
};
