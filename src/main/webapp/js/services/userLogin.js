define(['serModule' , "tools" , "spin" , "md5"], function (services , tools , spin , md5) {
    'use strict';
    //services.value('version', '0.1');
	services.factory('userLogin',['allControl' , '$http' , '$rootScope' ,'$location'  , function(allControl , $http , $rootScope , $location ){
		
		var user = {};
		
		user.run = function(scope){
			var uid = document.getElementById("uidInput").value;
			var password = md5(document.getElementById("inputPassword3").value);
	
			var lang=scope.lang ;
			if(password =='' || uid=='' ){
				scope.errorLogin = "has-error";
				document.getElementById("loginTipMsg").style.display = "block";
				return
			}
			
			var opts = {
					  lines: 10, // The number of lines to draw
					  length: 14, // The length of each line
					  width: 10, // The line thickness
					  radius: 20, // The radius of the inner circle
					  corners: 1, // Corner roundness (0..1)
					  rotate: 44, // The rotation offset
					  direction: 1, // 1: clockwise, -1: counterclockwise
					  color: '#fff', // #rgb or #rrggbb or array of colors
					  speed: 1, // Rounds per second
					  trail: 50, // Afterglow percentage
					  shadow: true, // Whether to render a shadow
					  hwaccel: true, // Whether to use hardware acceleration
					  className: 'spinner', // The CSS class to assign to the spinner
					  zIndex: 2e9, // The z-index (defaults to 2000000000)
					  top: '50%', // Top position relative to parent
					  left: '50%' // Left position relative to parent
			};
			var target = document.getElementById('main');
			var spinner = new spin(opts).spin(target);
			
			user.login({
				vm:scope,
				load:spinner,
				par:{
					uid:uid,
					password:password,
					lang:lang
				}
			});
		}
		
		user.login = function(con){
			$http({
				url:"login",
				params:con.par,
				method:'GET'
			}).success(function(d){
	
				$rootScope.me = d.user;
				$rootScope.channel = d.channel;
				$rootScope.lang = d.lang;
				$location.path('/home');
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
					name:"broadcast",
					type :"login"
				})
				
				con.load.stop();
			}).error(function(data){
				$location.path('login');
				document.getElementById("bgLogin").style.display = "block";
				con.load.stop();
				con.vm.errorLogin = "has-error"
			})
		}
		
		return {
			run:user.run
		};
	}]);
});
