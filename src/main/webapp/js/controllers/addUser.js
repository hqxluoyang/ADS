define(['conModule' , "panel" , "tools" , "md5"], function (controllers , panel , tools , md5) {
    'use strict';
	
    controllers.controller('addUser', ["$scope" ,
                                       			"$http" ,
                                       			"$rootScope" ,
                                       			"allControl" ,
                                       			"uploadModule" , 
                                       			"panelCon",
                                       			
                                       			function (vm , 
                       										  $http , 
                       										  $rootScope , 
                       										  allControl , 
                       										  uploadModule,
                       										  panelCon) {
		
    	allControl.push({
			name:"addUser",
			scope:vm
		});
    	
		vm.userIdShow = false;
		vm.nameShow = false;
    	
    	vm.showPanel = function(){
   
    		 panelCon.show("addUser" , {	width:450,
													height:324,
													area:[0 , 0 , 324 , 50],
													parentID:"userPage",
													title:"添加用户",
													drag:true})
    		
			vm.initPar();
    	};
    	
    	vm.submitUser = function(){
    		var user = {};
			user["user_id"] = document.getElementById("userIdAdd").value ;
			user["name"]=document.getElementById("userNameAdd").value;
			user["password"] = md5(document.getElementById("userPassWordAdd").value) ;
			user["channel"] = document.getElementById("userChannelAdd").value ;
			
			user["org"] = document.getElementById("userGroup").value ;
			
			if(!user["user_id"] || !user["name"] || !user["password"] ||!user["channel"] || !user["org"]){
				return
			}
			
			allControl.sendMsg({
				name:"user",
				type:"addUser",
				data:user
			})
	       
			
    	}
    	
    	vm.initPar = function(){
    		vm.userIdShow = false;
    		vm.nameShow = false;
    	}
    	
    	vm.focusId = function(){
    		vm.userIdShow = false;
    	};
    	
    	vm.focusName = function(){
    		vm.nameShow = false;
    	};
    	
    	vm.errName = function(obj){
    		
    		if(!obj['user_id']){
    			vm.errorUserId="has_error";
    			vm.userIdShow = true;
    		}
    		
    		if(!obj['name']){
    			vm.name="has_error";
    			vm.nameShow = true;
    		}
    		
    	}
    	
		vm.recvMsg = function(par){
			switch(par['type']){
			case "showPanel":
				vm.showPanel();
				break;
			case "errName":
				vm.errName(par['data'])
			default :
				break;
			}
		}
		
	}])
});
