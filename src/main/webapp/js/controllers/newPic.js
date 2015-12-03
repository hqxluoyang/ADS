define(['conModule' , "config"], function (controllers , config) {
    'use strict';
	
    controllers.controller('addNewPic', ["$scope" ,"allControl" ,"serAddpic" ,  function (vm ,  allControl , serAddpic) {
	
    	allControl.push({
			name:"addNewPic",
			scope:vm
		});
  	   
    	vm.newpic = {
    			code: "",
    			title : "",
    			note: "",
    			link : "",
    			lang: "",
    			country: ""
    	};
    	
    	vm.country = config.country;
    	
    	vm.countryLang = config.countryLang;
    	
    	vm.uploadPicSub = function(){
    		
    		serAddpic.uploadPicSub(vm);
    		
    	};
    	
    	vm.changeLang = function(){
    		
    	};
    	
    	
    	vm.uploadPic = function(){
    		
    		var code = vm.newpic['code'];
    		
    		allControl.sendMsg({
    			name: "uploadFile",
    			type: "upload",
    			data:{
    				code:code,
    				type:"image",
    				parentId:"picUploadPro",
    				control:"addNewPic",
    				url: config.gp['aaUpload']
    			}		
    		})
  
    	};
    	
    	vm.submitNewPic = function(){
    		
    		serAddpic.submitNewPic();
    		
    	}
    	
		vm.recvMsg = function(par){
			switch(par['type']){
			case "addNewPic":
				serAddpic.addNewPic(vm);
				break;
			case "logOut":
				serAddpic.logOut();
				break;	
			case 'uploadSucc':
				
				serAddpic.uploadSucc();
				break;
			case "base64":
				serAddpic.getBase64(par['data']);
				break;
			default :
				break;
			}
		}
		
	}])
});
