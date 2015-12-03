
define([
"tools"
], function (tools) {
    'use strict';
	
	var ngRun = {};
	ngRun.run = function(app){
		app.run(['$window' , '$rootScope' , '$http' , '$location' , 'allControl' ,"layout" ,"routeChange" , function($window , $rootScope , $http , $location , allControl , layout , routeChange){
			
		//	console.log("layout:" , layout)
			layout.init();
			$http({
				url:"login",
				method:'GET'
			}).success(function(d){
				$rootScope.me = d.user;
				$rootScope.channel = d.channel;
				$rootScope.lang = d.lang;
				document.getElementById("bgLogin").style.display = "none";
				
				if(d.user !="admin"){
					tools.setLocalStorage({
						wallScreen : "wall"
					})
				}
				
				var s = tools.getLocalStorage("wallScreen");
				
				if(s == "openScreen"){
					$rootScope.appAd = "openScreen";
				}else{
					$rootScope.appAd = "wall";
				}
				
				allControl.sendMsg({
					name: "broadcast",
					type : "login"
				})
				
			}).error(function(data){
				$location.path('login');
				document.getElementById("bgLogin").style.display = "block";
				
			})
		}])
	}
	
    return ngRun;
});
