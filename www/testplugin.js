function TestPlugin(argument, callback) {
	cordova.exec(callback, function(err) {
                 callback('Plugin error');
                 }, "TestPlugin", "TestPlugin", [argument]);
}

module.exports = {
testPlugin: testPlugin
};