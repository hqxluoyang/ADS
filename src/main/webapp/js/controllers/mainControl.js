define(['conModule'  , "config"  ,"md5" , "tools" , "panel"], function (controllers , config  , md5 , tools , panel) {
    'use strict';
	
	var mod = {};
	
    mod.subAppPanel = "";
    mod.putaway = "";
	
    controllers.controller('mainControl', ['$scope', "$location", "$http" , "$rootScope" , "uploadModule" , "allControl"  , function (vm , $location , $http , $rootScope , uploadModule ,allControl) {
    	
		allControl.push({
			name:"mainControl",
			scope:vm
		});
		
		var module={};
		
		vm.selection = "home";
    
        vm.userID =$rootScope.me;
    	vm.userControl = $rootScope.me;
    	vm.lang="";
    		
    	vm.resize = function(){
    		 console.log("emit resize")
    		 vm.$emit('summon', {});
    	};
    	
    	vm.numberInput = function(obj){
    		console.log(arguments)
    	};
    	
    	vm.selectChange = function(val){
    		vm.selection = val;
    	};
    	
    	module.login = function(){
    		vm.userControl = $rootScope.me;
			vm.userID = $rootScope.me;
			vm.lang = $rootScope.lang;
    	}
		
		vm.recvMsg = function(data){
			switch(data['type']){
				case "login":
					module.login();
					break;
			}
		}
    	 
	}]);
			
});
