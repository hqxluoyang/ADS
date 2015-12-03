define(['conModule' , "config" , "tools"], function (controllers , config , tools) {
    'use strict';
	
    controllers.controller('uploadFile', ["$scope" , "allControl" ,"uploadModule"  ,   function (vm  , allControl , uploadModule) {
    
		allControl.push({
			name:"uploadFile",
			scope:vm
		});
		
		vm.parData='';
		
		vm.upload = function(data){
			vm.parData = data;
			document.getElementById("allUplaodFile").click();
			console.log("upload data:" , data)
			
		}
		
		
		
		vm.recvMsg = function(par){
			switch(par['type']){
				case "upload":
					vm.upload(par['data']);
					break;
				default :
					break;
			}
		}
		
    }])
			
});
