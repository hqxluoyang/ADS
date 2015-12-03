define(['conModule' , "panel" ,"config" , "tools"], function (controllers , panel , config , tools) {
    'use strict';
	
    controllers.controller('testAd', ["$scope" ,"$http" ,"$rootScope" ,"allControl" ,  function (vm , $http , $rootScope , allControl ) {
    
		allControl.push({
			name:"testAd",
			scope:vm
		});
		
		vm.header = {
			    order:"序号",
			    code:"手机",
			    name :"名称"
			};
		
		vm.listAd = []
		
		vm.addPhone = function(){
			allControl.sendMsg({
				name : "addPhone",
				type : "showPanel"
			})
		}
		
		vm.sendTestPhone = function(data){
			vm.listAd.push(data);
			   $http({
				   url:config.gp['addTPhone'],
				   params:data,
				   method:'GET'
			   }).success(function(d){
			   
				   vm.listAd.push(data);
				
			   }).error(function(data){
			
			   })
		}
		
		vm.getList = function(){

			   $http({
				   url:config.gp['testPhone'],
				   method:'GET'
			   }).success(function(d){
			   
				   vm.listAd = d;
				
			   }).error(function(data){
			
			   })
		}
		
		vm.deltestPhone = function(obj){
			
			var data = {
				code:obj['code']
			}
			
			$http({
				   url:config.gp['imeiDel'],
				   params:data,
				   method:'GET'
			   }).success(function(d){
			   	   var list = vm.listAd;
				   for(var i=0 ; i< list.length ; i++){

						if(list[i]['code'] == obj['code']){
							console.log("i:" , i)
							list.splice(i,1)
					
							return;
						}
					}
				
			   }).error(function(data){
			
			   })
		}
		
		
		vm.recvMsg = function(data){
			switch(data['type']){
				case "sendTestPhone":
					vm.sendTestPhone(data['data']);
					break;
				default:
					break;
			}
		}
		
		vm.init = function(){
			vm.getList();
		}

		vm.init();
		    
    }])
	
	
});
