define(['conModule'  ,"config" , "tools"], function (controllers , panel , config , tools) {
    'use strict';
	
    controllers.controller('appList', ["$scope" ,"$http" ,"$rootScope" ,"allControl"  , "serapplist",  function (vm , $http , $rootScope , allControl , serapplist) {
    
		allControl.push({
			name:"appList",
			scope:vm
		});
		
		var module = {};
		
		vm.releaseApp = [];
		vm.userControl = $rootScope.me;
		
		vm.searchConditions = {
			name:"",
			channel:"",
			country:""
		};
		
		vm.link = "images/1.png";
		
		vm.header = {
		    order:"序号",
		    icon:'图标',
		    name :"名称",
		    size: "大小(M)",
		    position: "位置",
		    country:"国家",
		    channel:"渠道",
		    type : "类型",
		    vers : "版本",
		    off_time : "上架时间",
		    Dtime: "下载次数",
		    price: "价格(RMB)",
		    developer:"开发者",
		    language: "语言",
		    release : "操作",
		    soldout : "操作",
		    recommend : "推荐"
		};
		    
		vm.putaway = function(obj){
		   var data = {
				   code:obj['code']
		   };
		   $http({
			   url:"app/approveApp",
			   params:data,
			   method:'GET'
		   }).success(function(d){
		   
			   for(var i=0 ; i<vm.releaseApp.length ; i++){
				   if(data["code"] == vm.releaseApp[i]["code"]){
					   vm.releaseApp.splice(i , 1);
					   break;
				   }
			   }
			   
			   allControl.sendMsg({
					name:"phoneCon",
					type:"changePosition"
				})
	
		   }).error(function(data){
		
		   })
		} 
		   
		vm.subAppP = function(){	
			
			 allControl.sendMsg({
					name:"newApp",
					type:"showPanel"
			})
		}
	   
	   vm.resetList = function(){
		   vm.releaseApp.length = 0;
		   vm.searchConditions = {
				name:"",
				channel:"",
				country:""
		   };
		   getAppList();
	   };
	 
	   vm.positionChange = function(obj){
		   var data = {
			    code:obj['code'],
				position:obj['position']
		   }
		  $http({
				url:"app/changePosition",
				params:data,
				method:'GET'
		   }).success(function(data){
				
			}).error(function(data){
					
			})
	   };
	   
	   vm.detailDbclick = function(index){
		   
		   allControl.sendMsg({
				name:"showDetail",
				type:"showDetail",
				data:vm.releaseApp[index]
			})
	   };
	   
	   vm.recvMsg = function(par){
			switch(par['type']){
				case "listAdd":
					serapplist.listAdd(par['data']);
				default :
				
				case "resize":
					serapplist.resize();
					break;
			}
		};
	   	   
	   vm.refreshApp = function(obj){
		   serapplist.refreshApp(obj);
	   }
	  serapplist.init(vm);
		    
    }])
			
});
