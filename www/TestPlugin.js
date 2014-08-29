
var argscheck = require('cordova/argscheck'),
utils = require('cordova/utils'),
exec = require('cordova/exec');

var testplugin = function () {
    
}

testplugin.doSomething = function(successCallback, errorCallback) {
    exec(successCallback, errorCallback, 'TestPlugin', 'TestPlugin', [args]);
}

modules.export = testplugin;