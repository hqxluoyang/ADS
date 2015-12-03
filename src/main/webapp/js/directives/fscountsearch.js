
define(['directModule' , "tools"], function (module , tools) {
    'use strict';
   module.directive('fscountsearch' ,["allControl" , function(allControl){
		return {
			restrict: 'E',
			
			scope:{
				control: "="
			},
			
			link:function(scope, el, attr){
				
				var dateCurrent = new Date();	
				scope.searchObj = scope.control || {};
				
			
				scope.monthArr = ["01" , "02" , "03" , "04" , "05" , "06" , "07" , "08" , "09" , "10" , "11" , "12"];
				scope.monthValue = dateCurrent.getMonth() + 1;
				scope.yearArr = ["2014" , "2015" , "2016" , "2017"];
				scope.modelYear = dateCurrent.getFullYear()
				scope.selectType = "点击量";
				
				scope.typeAdApp = "(下载量)";
				
				
				scope.searchObj.checkoutwall = function(){
					scope.searchParam();
				}
				
				scope.searchParam = function(){
					var data = {
						date:scope.modelYear + "/" + scope.monthValue,
						pageno:1
						
					}
					
					 var wallScreen = tools.getLocalStorage('wallScreen');
				    
				    if(wallScreen == "wall"){
				    	
				    	scope.typeAdApp = "(下载量)";
				    }else{
				    	scope.typeAdApp = "(浏览量 | 点击量)";
				    }
					
					allControl.sendMsg({
						name:"fscount",
						type:"search",
						data:data
					})
				};
				
				
			},
			templateUrl:"partials/fscountsearch.html"
		}
	}])
});
