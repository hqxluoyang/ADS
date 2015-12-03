define(['conModule' , "panel" , "config" , "tools"], function (controllers , panel , config , tools) {
    'use strict';
	
	var mod = {};
	
    mod.subAppPanel = "";
    mod.putaway = "";
    
	mod.init = function(){
		
	}
	mod.init();
	
    controllers.controller('header', ['$scope', "$location", "$http" , "$rootScope" ,"allControl" , "timeout" ,  function (vm , $location , $http , $rootScope , allControl , timeout) {
       vm.greetMe = 'World';
       
       vm.wallScreen ="0";
	   
       allControl.push({
			name:"header",
			scope:vm
		});
	   
       vm.loginOut = function(){
   
			$http({
				url:"logout",
				params:{user:$rootScope.me},
				method:'GET'
			}).success(function(user){
				
				window.location.reload();
				
			}).error(function(data){
				
			})
       };
       
       vm.changeWall = function(){
    	   allControl.sendMsg({
    		   name:"left",
    		   type :"wall"  
    	   })
    	  
    	   
    	   vm.wallScreen ="0";
    	   $rootScope.wallAd = "wall"
    	   allControl.sendMsg({
    		   name:"phoneCon",
    		   type :"showphone"  
    	   })
    	   
       };
       
       vm.changeAd = function(){
    	   allControl.sendMsg({
    		   name:"left",
    		   type :"openScreen"  
    	   })
    	   
    	   vm.wallScreen ="1";
    	   $rootScope.wallAd = "openScreen";
    	 
    	   allControl.sendMsg({
    		   name:"phoneCon",
    		   type :"showphone"  
    	   })
    	   
       };
       
       vm.submitUser = function(){
    	   config["panel"]["changePassword"].hide()
       };
       
       vm.changePassword = function(){
			var data = {
				 name:$rootScope.me
			 }
			
			 allControl.emit({name:"changePass" ,
				data:{
					type:"showPanel",
						data:data
					}
			   })
   		};
   		
   		vm.login = function(){
   			var s = tools.getLocalStorage("wallScreen");

   			s == "openScreen" ? vm.wallScreen ="1" : vm.wallScreen ="0";
   			
   		}
   		
   		vm.recvMsg = function(par){
			switch(par['type']){
				case "timeout":
					vm.loginOut();
					break;
				case "login":
					vm.login();
				default :
					break;
			}
		}
   		
	}]);
    
			
});
