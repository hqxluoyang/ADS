define(['conModule' , "panel" ,"config"], function (controllers , panel , config) {
    'use strict';
    
    controllers.controller('release', ["$scope"  ,"$http" ,"$rootScope" , "allControl", "apprealse" , function (vm , $http , $rootScope ,allControl , apprealse) {
    	var module = {};
        vm.releaseApp = [];
        vm.userControl = $rootScope.me;
        
        vm.sendposition =true;
        
		allControl.push({
			name:"release",
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
            up_time : "上架时间",
            down: "下载次数",
            price: "价格(RMB)",
            developer:"开发者",
            language: "语言",
            release : "操作",
            soldout : "下架",
            recommend : "推荐"
        };
        
        vm.soldApp = function(obj){
           
        	var data = {
        			code:obj['code']
        	};
   
			$http({
				url:"app/unapproveApp",
				method:'GET',
				params:data
			}).success(function(d){
				for(var i=0 ; i<vm.releaseApp.length ; i++){
					
					if(data["code"] == vm.releaseApp[i]["code"]){
						vm.releaseApp.splice(i , 1);
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
        
        vm.detailDbclick = function(index){
 		   allControl.emit({name:"showDetail" ,
 				data:{
 					type:"showDetail",
 					data:vm.releaseApp[index]
 				}
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
 		   vm.releaseApp.length = 0;
 		   module.searchList();
 	   }
 	   
 	   vm.resetList = function(){
 		   vm.releaseApp.length = 0;
 		   vm.searchConditions = {
 				name:"",
 				channel:"",
 				country:""
 		   };
 		   module.getAppList();
 	   };
 	   
 	   vm.changePositionTop = function(index  , flag){
 		   
 		  var data={
 				 code:vm.releaseApp[index]['code'],
 				  step:flag
 		  }
 		  
 		 var code = vm.releaseApp[index]['code'];
 		  	  
 		 if((index == 0 && flag==1) ||(index == (vm.releaseApp.length-1)  && flag==-1) ) return;
 		 var i=index;
 		 if(!vm.sendposition) return;
 		 vm.sendposition = false;
 		 
 		  $http({
				url:"app/changePosition",
				params:data,
				method:'GET'
		   }).success(function(d){
			  
			   if(data["step"] == 1){
				   var stmp = vm.releaseApp.splice(i , 1);
				   vm.releaseApp.splice(i-1 , 0 , stmp[0]);
			   }else{
				   var stmp = vm.releaseApp.splice(i , 1);
				   vm.releaseApp.splice(i+1 , 0 , stmp[0]);
			   }
			   
			   allControl.emit({name:"phoneCon" ,
					data:{
						type:"changePosition"
					}
				})
				
				vm.sendposition = true;
				
			}).error(function(data){
				vm.sendposition = true;	
			})
 	   };
 	   
 	   vm.showDownPanel = function(index){
 		   
 		  allControl.sendMsg({
 			  name : "downChart",
 			  type  : "downPanel",
 			  data : vm.releaseApp[index]
 		  })
 		
 	   };
 	   
 	   vm.refreshApp = function(obj){
 		  apprealse.refreshApp(obj);
 	   }
		
       apprealse.init(vm);
       
       vm.recvMsg = function(par){
			switch(par['type']){
			
			case "listAdd":
				apprealse.listAddfresh(par['data']);
				break;
			case "resize":
				apprealse.resize();
				break;
			default :
				break;
			}
		}
			
	}]);
	
});
