define(['conModule' , "panel" ,"config"], function (controllers , panel , config) {
    'use strict';
	
    controllers.controller('titleBar', ["$scope"  ,"$rootScope" ,"allControl" , "panelCon" , function (vm ,   $rootScope , allControl , panelCon) {
		
		allControl.push({
			name:"titleBar",
			scope:vm
		});
		
		vm.title="";
		var module={};
		
		module.showTile = function(){
			
			if($rootScope.me == "admin") return;
			
			panelCon.show("titleBar" , {	   width:380,
												   height:50,
												   position:'rb',
												   parentID:"titleBar",
												   title:"提示框",
												   drag:true})
			
			vm.title = "此APK送到  (语言：" + $rootScope.lang + ',' +"渠道:" +  $rootScope.channel + ")";
		}
		
		
		module.hideTile = function(){
			panelCon.hide("titleBar");
		}
		
		vm.recvMsg = function(par){
			switch(par['type']){
				case "login":
					module.showTile(par['data']);
					break;
				case "logOut":
					module.hideTile();
					break;	
				default :
					break;
			}
		}
		
	}])
});