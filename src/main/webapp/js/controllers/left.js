define(['conModule' , "panel" , "config"], function (controllers , panel , config) {
    'use strict';
	
	var mod = {};
	
    mod.subAppPanel = "";
    mod.putaway = "";
    
	mod.init = function(){
		
	}
	mod.init();
	
    controllers.controller('left', ['$scope' ,"allControl" , "leftControl" , function (vm , allControl , leftControl) {
		
    	allControl.push({
			name:"left",
			scope:vm
		});
    	
    	vm.navIndex = 0;
		
		vm.navPage = [];
		
		vm.navUser = "{'background':'red'}"
		
		vm.clickNav = function(index){
    		leftControl.navIndex(index);
    	};
		
		vm.login = function(){
			leftControl.run(vm);
		}
		
		vm.recvMsg = function(data){
			switch(data['type']){
				case "login":
					vm.login();
					break;
					
				case "wall":
					leftControl.check("wall");
					break;
					
				case "openScreen" :
					leftControl.check("openScreen");
					break;
					
					default :
						break;
			}
		}
		
	}]);
			
});
