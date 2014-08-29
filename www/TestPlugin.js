function TestPlugin(argument, callback) {
	cordova.exec(function(success){ callback(success);},
                 function(err){ callback(err);},
                 "TestPlugin",
                 "TestPlugin",
                 [argument])
}

module.exports = {
testplugin: testplugin
};