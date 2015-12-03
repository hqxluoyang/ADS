
define(['directModule'], function (module) {
    'use strict';
   module.directive('tipList' ,[function(){
		return {
			restrict: 'E',
			link:function(scope, el, attr){
				scope.langCountry =[{
		        	   name:"中文 :",
		        	   code:"zh"
		           },{
		        	   name:"台湾 :",
		        	   code:"zh_TW"
		           },{
		        	   name:"英文 :",
		        	   code:"en"
		           },{
		        	   name:"西班牙 :",
		        	   code:"es"
		           },{
		        	   name:'葡萄牙 :',
		        	   code:'pt'
		           },{
		        	   name:"法国 :",
		        	   code:'fr'
		           },{
		        	   name:"日本 :",
		        	   code:'ja'
		           },{
		        	   name:"荷兰 :",
		        	   code:'nl'
		           },{
		        	   name:"俄罗斯 :",
		        	   code:'ru'
		           },{
		        	   name:"瑞典 :",
		        	   code:'sv'
		           },{
		        	   name:"马来西亚 :",
		        	   code:'ms'
		           },{
		        	   name:"意大利 :",
		        	   code:'it'
		           },{
		        	   name:"德语 :",
		        	   code:'de'
		           },{
		        	   name:"马来西亚 :",
		        	   code:'ms'
		           }];
				
				scope.clickrow = function(index){
					document.getElementById('countLanguage').value = scope.langCountry[index]['code']; 
				};
				
				scope.tipListPanel = function(){
					scope.langPanel = false;
				}
				
		        $("#loginLangTip").niceScroll({cursorcolor:"#eee"});
		           
			},
			template:"<div  ng-click='dblclick()'  class='tipList' id='loginLangTip'><div  ng-repeat='obj in langCountry' ng-click='clickrow($index)' ng-class-odd={{'oddbg'}} class='listrow' ><div class='name'>{{obj['name']}}</div><div class='code'>{{obj['code']}}</div></div></div>"
		}
	}])
});
