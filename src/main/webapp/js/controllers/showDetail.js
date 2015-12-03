define(['conModule' ], function (controllers , panel) {
    'use strict';
	
    controllers.controller('showDetail', ["$scope" ,"$http" ,"$rootScope" ,"allControl" ,"panelCon" , function (vm , $http , $rootScope , allControl , panelCon) {
		
      var showListAll={
    		    name :"名称",
    		    size: "大小(M)",
    		    channel:"渠道",
    		    type : "类型",
    		    vers : "版本",
    		    up : "上架时间",
    		    off:"下架时间",
    		    Dtime: "下载次数",
    		    price: "价格(RMB)",
    		    developer:"开发者",
    		    language: "语言",
    		    recommend : "推荐",
    		    
    		    link :'link',
			    icon:'图标',
			    title: "标题",
			    country:"国家",
			    "png_path": "广告",
			    up_time : "上架时间",
			    click: "点击量",
			  
    	};
    	
    	vm.currrentList = [];
    	
		allControl.push({
			name:"showDetail",
			scope:vm
		});
		
		vm.show = function(data){
			
			 panelCon.show("detail" , { width:500,
											   height:500,
											   parentID:"showDetail",
											   title:"",
											   drag:true})
		
			vm.currentList = [];
			
			for(var obj in data){
				if(showListAll.hasOwnProperty(obj)){
					vm.currentList.push({
						val:data[obj],
						showName:showListAll[obj]
					})
				}
			}
			
		};
		
		vm.recvMsg = function(par){
			switch(par['type']){
				case "showDetail":
					vm.show(par['data']);
				default :
					break;
			}
		}
		
	}])
});
