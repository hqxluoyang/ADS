define(['serModule'], function (services) {
    'use strict';
	services.factory('routeChange',['allControl' ,'$rootScope' ,"$location" ,  function(allControl , $rootScope , $location){
		var urlChange = {};
		
		urlChange.locationChangeSuccess = function(){
			
			var url = $location.$$url;
			console.log("url:" , url)
			if(url == "/login")return
			allControl.sendMsg({
		    	name:"phoneCon",
		    	type: "openClosePhone",
		    	data :{
		    		url:url
		    	}
		    })
			
		}
		
		$rootScope.$on('$locationChangeSuccess',urlChange.locationChangeSuccess) 
	}]);
});
