define(['conModule' , 'tools'], function (controllers , tools) {
    'use strict';
	
    controllers.controller('phoneCon', ["$scope"  ,"$rootScope" ,"allControl" ,"panelCon" ,"$location" ,  function (vm  , $rootScope , allControl , panelCon , $location) {
		
    	
    	
		allControl.push({
			name:"phoneCon",
			scope:vm
		});
		
		vm.phoneInfo = "phone_pic";
		vm.appControl= {};
		vm.picControl= {};
		
		vm.showphone = function(){
			
			if($rootScope.me == "admin" && $rootScope.appAd == "wall"){
				 panelCon.hide("phone");
				 return
			}
			
		    panelCon.show("phone" , {	 width:291,
													   height:550,
													   position:'rt',
													   parentID:"phonePanel",
													   title:"榜单列表",
													   drag:true})
    	};
    	
    	vm.showPhone = function(){
    		var user = $rootScope.me ;
    		var ad_pic = $rootScope.wallAd ;
    		
    		switch(user){
    			case "admin":
    				vm.phoneInfo = "phone_pic";
    				if(ad_pic == "wall"){
    					panelCon.hide("phone");
    					return;
    				}else{
    					vm.showphone();
    				}
    				
    				break;
    			default:
    				vm.phoneInfo = "phone_app";
    				vm.showphone();
    				tools.execFun(vm.appControl , "getData");
    				break
    			
    		}
    	}
    	
    	vm.login = function(){
    
    		vm.showPhone();
    		
    	}
    	
    	
    	vm.openClosePhone = function(data){
    		console.log("phoneCon")
    		if(data['url'] == "/fscount"){
    			panelCon.hide("phone");
    		}else{
    			vm.showphone();
    		}
    	}
    	
    	
		vm.recvMsg = function(par){
			switch(par['type']){
				case "login":
					if($location.$$path != "/fscount")
					vm.login(par['data']);
					break;
					
				case "showphone":
					vm.showphone(par['data']);
					break;	
				case "logOut":
					
					panelCon.hide("phone");
					
					break;
				case "changePosition":
					vm.appControl.changePosition(par['data']);
					break;
					
				case "showImage":
					vm.picControl.showImage(par['data']);
					break;
				case "openClosePhone":
					vm.openClosePhone(par['data']);
					break;
				default :
					break;
			}
		}
		
	}])
});
