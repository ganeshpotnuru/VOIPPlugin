var exec = require('cordova/exec');

exports.coolMethod = function (arg0, success, error) {
    exec(success, error, 'VOIPPlugin', 'coolMethod', [arg0]);
};

exports.newTestMethod = function (arg0, success, error) {
    exec(success, error, 'VOIPPlugin', 'newTestMethod', [arg0]);
};

exports.listenForTimer = function (arg0, success, error) {
    exec(success, error, 'VOIPPlugin', 'listenForTimer', [arg0]);
};
