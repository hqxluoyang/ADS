define(['conModule' , "panel" ,"config" , "tools"], function (controllers , panel , config , tools) {
    'use strict';
	
    controllers.controller('fsrelease', ["$scope"  ,"allControl" ,"fsR" ,   function (vm  , allControl , fsR) {
    
		allControl.push({
			name:"fsrelease",
			scope:vm
		});
		
		var module = {};
		
		vm.header = {
				 order:"序号",
			    icon:'图标',
			    name :"名称",
			    title: "标题",
			    country:"国家",
			    up : "上架时间",
			    display: "浏览量",
			    click: "点击量",
			    price: "价格(RMB)",
			    language: "语言",
			    release : "操作",
			    soldout : "操作"
		};
		
		vm.releasePic = []
		
		vm.soldOut = function(obj){
			fsR.soldOut(obj)
		}
		   
	   vm.listAdd = function(par){
		   var data = par;
		   var self = vm;
		   $http({
				url:config.gp['newApp'],
				method:'GET',
				params:data
			}).success(function(d){
			
				vm.releaseApp.splice(0,0,d[0])
				
			}).error(function(data){
				
			})
		
	   };
	   
	   vm.showDetail = function(obj){
		  
		   fsR.showDetail(obj);
	   }
	   
	   vm.getCount = function(obj){
		   
		   fsR.getCount(obj , "count");
	   };
	   
	   vm.display = function(obj){

		   fsR.getCount(obj , "display");
	   };
	   
	   vm.clickImage = function(obj){
		   fsR.clickImage(obj);
	   }
	   
	   
	   vm.recvMsg = function(par){
			switch(par['type']){
				case "listAdd":
					vm.listAdd(par['data']);
					break;
				case "resize":
					fsR.resize();
					break;
				default :
					break;
			}
		};
		
		fsR.init(vm);
		    
    }])
			
});
