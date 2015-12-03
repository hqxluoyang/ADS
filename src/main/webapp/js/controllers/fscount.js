define(['conModule' , "config" , "tools"], function (controllers , config , tools) {
    'use strict';
	
    controllers.controller('fscount', ["$scope" ,"$http"  ,"allControl" , "serCount" ,  function (vm , $http , allControl , serCount) {
    
		allControl.push({
			name:"fscount",
			scope:vm
		});
		
		vm.tablepanel = {}; //table操作方法；
		vm.fscountsearch = {}; // 搜索栏
		console.log("init fscount")
		vm.recvMsg = function(par){
			switch(par['type']){
			case "getAdCount":
			
				tools.execFun(vm.fscountsearch , "checkoutwall");
				break;
			case "checkoutwall":
				console.log("checkout wall");
				tools.execFun(vm.fscountsearch , "checkoutwall");
				break;
			case "search":
				vm.tablepanel.search(par['data']);
				break;
			case "resize":
				tools.execFun(vm.tablepanel , "resize");
			default :
				break;
			}
		}
		
	   serCount.init();
		    
    }])
			
});
