
define([
    'angular',
    'ui-router',
    'conIndex',
    'filtIndex',
    'serIndex',
    'directIndex',
    'uiBootstrap'
], function (angular) {
    'use strict';
    return angular.module('app', [
        'app.controllers',
        'app.directives',
        'app.filters',
        'app.services',
        'ui.router',
		'ui.bootstrap'
    ]);
});
