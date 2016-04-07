    window.demo = function(str, callback) {
        cordova.exec(callback, function(err) {
            callback('Nothing to echo.');
        }, "demo", "demo", [str]);
    };
