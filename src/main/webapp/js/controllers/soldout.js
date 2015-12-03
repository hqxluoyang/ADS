define(['conModule' , "panel" ,"config" ], function (controllers , panel , config) {
    'use strict';
	
    controllers.controller('soldout', ["$scope" ,"$http" , "$rootScope" , "allControl" ,  function (vm , $http , $rootScope , allControl) {
	    var module={}
        
	    vm.soldoutApp = [];
	    vm.userControl = $rootScope.me;
	    
	    allControl.push({
			name:"soldout",
			scope:vm
		});
	    
	    vm.searchConditions = {
				name:"",
				channel:"",
				country:""
	    };
        vm.header = {
            order:"序号",
            icon:'图标',
            name :"名称",
            size: "大小(M)",
            position: "位置",
            channel:"渠道",
            type : "类型",
            vers : "版本",
            country:"国家",
            off : "下架时间",
            down: "下载次数",
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
				
				for(var i=0 ; i<vm.soldoutApp.length ; i++){
					if(data["code"] == vm.soldoutApp[i]["code"]){
						vm.soldoutApp.splice(i , 1);
						break;
					}
				}
				
				allControl.emit({name:"phoneCon" ,
						data:{
							type:"changePosition"
						}
				 })
			
			}).error(function(data){
				
			})
       };
       
       vm.delApk = function(obj){
    	   var data = {
    			   code:obj['code']
    	   };
    	   
    	   $http({
				url:"app/delApp",
				params:data,
				method:'GET'
			}).success(function(d){
				
				for(var i=0 ; i<vm.soldoutApp.length ; i++){
					if(data["code"] == vm.soldoutApp[i]["code"]){
						vm.soldoutApp.splice(i , 1);
						break;
					}
				}
			
			}).error(function(data){
				
			})
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
       
       vm.searchApp = function(){
 		   vm.soldoutApp.length = 0;
 		   module.searchList();
 	   }
 	   
 	   vm.resetList = function(){
 		   vm.soldoutApp.length = 0;
 		   vm.searchConditions = {
 				name:"",
 				channel:"",
 				country:""
 		   };
 		   module.getAppList();
 	   };
 	   
 	  vm.detailDbclick = function(index){
		   allControl.emit({name:"showDetail" ,
				data:{
					type:"showDetail",
					data:vm.soldoutApp[index]
				}
		   })
	   };
	   
	   vm.showDownPanel = function(index){
	 		  allControl.emit({name:"downChart" ,
					data:{
						type:"downPanel",
						data:vm.soldoutApp[index]
					}
				})
	 	  };
	 	  
	   vm.recvMsg = function(par){
			switch(par['type']){
				
				case "resize":
					module.resize();
					break;
				default :
					break;
			}
		}	  
 	   
 	   module.searchList = function(){
 		   $http({
 				url:"app/unapprovedList",
 				params:vm.searchConditions,
 				method:'GET'
 		   }).success(function(data){
 				vm.soldoutApp = data;
 			}).error(function(data){
 					
 			})
 	   	}
       
       module.getAppList = function(){
    	   $http({
				url:"app/unapprovedList",
				method:'GET'
			}).success(function(data){
				
				vm.soldoutApp = data;
			}).error(function(data){
				
			})
       };
   	   
   	   module._style = function(){
   	   		var containerH = document.getElementById("container").style.height ; 
		    var height = parseInt(containerH) - 65
		
			$("#soldoutControlPage").css({height:containerH})
			$("#soldoutGrid").css({height:height})
			$("#soldoutGrid").niceScroll({cursorcolor:"#eee"});
   	   }
   		
   	   module.resize = function(){
   	   		module._style();
   	   }
   	   
	   module.init = function(){
		 
			module.getAppList();    //获得登陆用户；
		}
	   
	    
			
	   		
	   module.init();
       
	}])
			
});
