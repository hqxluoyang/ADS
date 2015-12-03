define(['conModule' , "panel" , "tools" , "md5"], function (controllers , panel , tools , md5) {
    'use strict';
	
    controllers.controller('changePass', ["$scope" ,"$http" ,"$rootScope" ,"allControl" ,"uploadModule" , "panelCon" , function (vm , $http , $rootScope , allControl , uploadModule , panelCon) {
		
    	allControl.push({
			name:"changePass",
			scope:vm
		});
    	
		vm.showPanel = function(data){
			document.getElementById("newPasswordID").value = data["name"];
			
			panelCon.show("changePassword" , {	width:400,
																height:300,
																area:[0 , 0 , 400 , 50],
																parentID:"changePassword",
																title:"修改用户密码",
																drag:true})
		};
		
		vm.changePassword = function(){
			var password = {};
    		
    		password["user"] = document.getElementById("newPasswordID").value;
    		password["oldPass"] = md5(document.getElementById("oldPassword").value);
    	    password["newPass"] = md5(document.getElementById("newPassword").value);
    		var again =  md5(document.getElementById("newPasswordAgain").value);

    		if(password["newPass"] == again && again !=""){
    			
    			$http({
    				url:"app/pass",
    				params:password,
    				method:'POST'
    			}).success(function(data){
    				
    			}).error(function(data){
    				
    			})
    			
    			panelCon.hide("changePassword");
    			console.log("sdfe")
    			
    		}else{
    			alert("两次新密码不一样!")
    		}
    		
		};
		
		vm.recvMsg = function(par){
			switch(par['type']){
			case "showPanel":
				vm.showPanel(par['data']);
				break;
			default :
				break;
			}
		}
		
	}])
});
