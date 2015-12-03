

define(['app'], function (app) {
    'use strict';
   
    return app.config(['$stateProvider', '$urlRouterProvider', function ($stateProvider, $urlRouterProvider) {
    	
    	
    	
    	$stateProvider
    		.state('applist' , {
    			 url : "/applist",
    			 templateUrl: 'partials/appList.html',
    	         controller: 'appList'
    		})
    		
    		.state('login' , {
    			url:"/login",
    			templateUrl: 'partials/login.html',
                controller: 'login'
    		})
    		
    		.state('release' , {
    			 url:"/release",
    			 templateUrl: 'partials/release.html',
    	         controller: 'release'
    		})
    		
    		.state('soldout' , {
    			url:"/soldout",
    			templateUrl: 'partials/soldout.html',
                controller: 'soldout'
    		})
    		
    		.state('user' , {
    			url:"/user",
    			templateUrl: 'partials/user.html',
                controller: 'user'
    		})
    		
    		.state('fslist' , {
    			url:"/fslist",
    			templateUrl: 'partials/fslist.html',
                controller: 'fslist'
    		})
    		
    		.state('fssoldout' , {
    			url:"/fssoldout",
    			templateUrl: 'partials/fssoldout.html',
                controller: 'fssoldout'
    		})
    		
    		.state('fsrelease' , {
    			url:"/fsrelease",
    			templateUrl: 'partials/fsrelease.html',
                controller: 'fsrelease'
    		})
    		
    		.state('fscount' , {
    			url:"/fscount",
    			templateUrl: 'partials/fscount.html',
                controller: 'fscount'
    		})
    		
    		.state('count' , {
    			url:"/count",
    			templateUrl: 'partials/fscount.html',
                controller: 'fscount'
    		})
    		
    		.state('home' , {
    			url:"/home",
    			templateUrl: 'partials/home.html',
                controller: 'home'
    		})
    		
    		.state('testAd' , {
    			url:"/testAd",
    			templateUrl: 'partials/testAd.html',
                controller: 'testAd'
    		})
    	
    	$urlRouterProvider.otherwise('home');
    	
    	
    }]);
});
