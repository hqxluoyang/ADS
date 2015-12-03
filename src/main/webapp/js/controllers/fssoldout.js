define(['conModule' , "panel" ,"config" ], function (controllers , panel , config) {
    'use strict';
	
    controllers.controller('fssoldout', ["$scope" ,"serSoldout" , "allControl" ,  function (vm , serSoldout  , allControl) {
	    var module={}
	    
	    allControl.push({
			name:"fssoldout",
			scope:vm
		});
	    
		vm.header = {
			    order:"序号",
			    icon:'图标',
			    name :"名称",
			    title: "标题",
			    country:"国家",
			    off : "下架时间",
			    click: "点击量",
			    price: "价格(RMB)",
			    display:"浏览量",
			    language: "语言",
			    release : "操作",
			    soldout : "操作"
		};
	   
		vm.soldoutPic = [];
		
		vm.delPic = function(obj){
			serSoldout.delPic(obj);
		}
		
		vm.getCount = function(obj){
			serSoldout.getCount(obj , "count")
		};
		
		vm.display = function(obj){
		
			serSoldout.getCount(obj , "display");
		};
		
		vm.clickImage = function(obj){
			serSoldout.clickImage(obj);
		}
		
		vm.putawayAd = function(obj){
			serSoldout.putawayAd(obj);
		}
		
		vm.showDetail = function(obj){
			serSoldout.showDetail(obj)
		}
		
		vm.recvMsg = function(par){
			switch(par['type']){
				case "resize":
					serSoldout.resize();
					break;
				default :
					break;
			}
		};
	   
		serSoldout.init(vm);
        
	}])
			
});
