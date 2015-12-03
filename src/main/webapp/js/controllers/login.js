define(['conModule' , "panel" ,"md5" ,'config'], function (controllers , panel , md5 , config) {
    'use strict';
	
    controllers.controller('login', ["$scope" ,'$window' , '$http' , "allControl" ,"timeout" ,"userLogin", function (vm , $window ,  $http  , allControl , timeout , userLogin) {
    	
    	vm.errorLogin = "";
    	vm.langPanel = false;
    	
    	vm.langCountry =config.countryLang;
    	
    	
    	vm.lang = "zh";
    	
    	allControl.push({
			name:"login",
			scope:vm
		});
		
		vm.focus = function(){
			vm.errorLogin="";
			document.getElementById("loginTipMsg").style.display = "none";
		};
		
		vm.openTip = function(){
			vm.langPanel = true;
		};
		
		vm.loginApp = function(){
			userLogin.run(vm);
		}
		
	    vm.recvMsg = function(par){
			switch(par['type']){
				case "loginIn":
					vm.loginApp();
				default :
					break;
			}
		};
        
	}])
			
});
