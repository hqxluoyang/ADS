
define([
    'require',
    'angular',
	"uiBootstrap",
    'app',
    'routes',
    'jquery',
    'spin',
	"jquery.nicescroll",
	 "jquery.multiple",
	"ngRun",
	"html",
	"domReady"
	
	
], function (require, ng , uiBootstrap , app ,routes , js ,spin , jqueryNice , multiple , ngRun , html ,  domReady) {
    'use strict';
    require(['domReady!'], function (document) {
    
    	html();
    	ngRun.run(app);
    	ng.bootstrap(document, ['app']); 	
    });
});
