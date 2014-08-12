/*global cordova*/
cordova.define("cordova/plugin/testplugin",
      function (require, exports, module) {
               var exec = cordova.require('cordova/exec');
               function addEntry(title, success, fail) {
               exec(
                    success, // success callback function
                    fail, // error callback function
                    'TestPlugin', // mapped to native Java class for android
                    'addEntry', // with this action name
                    [{        // and this array of custom arguments                      "title": title
                     }]
                    );
               }
               module.exports = {
                    addEntry: addEntry
               }
      }
);