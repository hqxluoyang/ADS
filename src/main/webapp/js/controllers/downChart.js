define(['conModule'], function (controllers) {
    'use strict';
	
    controllers.controller('downChart', ["$scope"  , "allControl" , "canvasDraw" , function (vm , allControl  , canvasDraw) {
		
		allControl.push({
			name:"downChart",
			scope:vm
		});
		
		vm.selectedTime = {}; //选择时间调用方法；
		
		vm.recvMsg = function(par){
			switch(par['type']){
				case "downPanel":
					console.log("par:" , par)
					canvasDraw.show({
							code : par['data']['code'],
							name : par['data']['name'],
							url: par['data']['url'],
							up : par['data']['up'],
							off : par['data']['off'],
							start : '',
							end : ''
					});
					break;
				case "logOut":
					canvasDraw.logOut();
				case "displayDay":
				
					vm.selectedTime.setDate(par['data']);
				default :
					break;
			}
		}
		
	}])
});
