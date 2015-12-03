define(['conModule' , "panel" , "tools" , "md5"], function (controllers , panel , tools , md5) {
    'use strict';
	
    controllers.controller('addPhone', ["$scope" ,
                                       			"$http" ,
                                       			"$rootScope" ,
                                       			"allControl" ,
                                       			"panelCon",
                                       			
                                       			function (vm , 
                       										  $http , 
                       										  $rootScope , 
                       										  allControl , 
                       										  panelCon) {
		
    	allControl.push({
			name:"addPhone",
			scope:vm
		});
		
		vm.phone = {
			name:"",
			code:""
		}
    	
    	vm.showPanel = function(){
    		 panelCon.show("addPhone" , {	width:450,
													height:300,
													area:[0 , 0 , 324 , 50],
													parentID:"addPhone",
													title:"添加手机",
													drag:true})
    		
			
    	};
    	
    	vm.submitAddPhone = function(){
			var code = tools.guidGenerator();
			var data = {
				phname:vm.phone['name'],
				code:code,
				phimei:vm.phone['code']
			}
			allControl.sendMsg({
				name:"testAd",
				type:"sendTestPhone",
				data:data
			})

			panelCon.hide("addPhone");
    	}

		vm.recvMsg = function(par){
			switch(par['type']){
			case "showPanel":
				vm.showPanel();
				break;
			default :
				break;
			}
		}
		
	}])
});
