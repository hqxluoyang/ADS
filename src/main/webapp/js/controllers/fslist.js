define(['conModule' , "panel" ,"config" , "tools"], function (controllers , panel , config , tools) {
    'use strict';
	
    controllers.controller('fslist', ["$scope" ,"$http" ,"$rootScope" ,"allControl" ,"serFsList" ,  function (vm , $http , $rootScope , allControl , serFsList) {
    
		allControl.push({
			name:"fslist",
			scope:vm
		});
		
		vm.header = {
			    order:"序号",
			    icon:'图标',
			    name :"名称",
			    title: "标题",
			    country:"国家",
			    up_time : "上架时间",
			    click: "点击量",
			    price: "价格(RMB)",
			    language: "语言",
			    release : "操作",
			    testStatu:"测试",
			    soldout : "操作"
			};
		
		vm.listPic = [];
		vm.tcode = {
			value:true
		}
		
		vm.addNewPic = function(){
			allControl.sendMsg({
				name : "addNewPic",
				type : "addNewPic"
			})
		}
		
		vm.changeBox = function(obj){
			serFsList.changeBox(obj);
		}
		
		vm.clickImage = function(obj){
			serFsList.clickImage(obj);
		}
		
		vm.putawayAd = function(obj){
			serFsList.putawayAd(obj);
		}
		
		vm.showDetail = function(obj){
			serFsList.showDetail(obj)
		}
		
		vm.recvMsg = function(data){
			switch(data['type']){
				case "fsAdd":
					serFsList.fsAdd(data['data']);
					break;
				case "resize":
					serFsList.resize();
				default:
					break;
			}
		}
		
		serFsList.init(vm);
		    
    }])
			
});
