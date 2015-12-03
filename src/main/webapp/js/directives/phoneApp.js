
define(['directModule' , "config"], function (module , config) {
    'use strict';
   module.directive('phoneapp' ,["$rootScope" ,"$http" , function($rootScope , $http){
		return {
			restrict: 'E',
			
			scope:{
				control: "="
			},
			
			link:function(scope, el, attr){
				
				scope.app = scope.control || {};
				scope.switchPhone="top10";
				scope.phoneList=[];
				scope.recommend=[];
				
				scope.getRecomend = function(){
					var data={
						channel:$rootScope.channel,
						lang:$rootScope.lang
					}
					
					 $http({
						url:"mobile/recommend",
						params:data,
						method:'GET'
				   }).success(function(par){
						  scope.recommend = par;
						  $("#phoneContainer").niceScroll({cursorcolor:"#eee"});
					}).error(function(data){
							
					})
				}
				
				scope.getphoneList = function(){
					var data={
							withCredentials : true
					}
					
					$http({
						url:config.gp['topTen'],
						params:data,
						method:'POST'
				   }).success(function(par){
						  scope.phoneList = par;
						  $("#phoneContainer").niceScroll({cursorcolor:"#eee"});
				   })	  
				}
				
				scope.app.getData = function(){
					var data={
							withCredentials : true
					}
					
					$http({
						url:config.gp['topTen'],
						params:data,
						method:'POST'
				   }).success(function(par){
						  scope.phoneList = par;
						  $("#phoneContainer").niceScroll({cursorcolor:"#eee"});
				   })	  
				}
				
				scope.app.changePosition = function(){
					
					if($rootScope.me == "admin") return;
    		
					if(scope.switchPhone=="top10"){
						document.getElementById("barPosition").style.marginLeft="0px";
						scope.getphoneList();
					}else{
						document.getElementById("barPosition").style.marginLeft="100px";
						scope.getRecomend();
					}
				};
				
				scope.checkBar = function(bar){
					
					if(bar=="top10"){
						scope.switchPhone="top10";
						document.getElementById("barPosition").style.marginLeft="0px";
						scope.getphoneList();
					}else{
						scope.switchPhone="recommend";
						document.getElementById("barPosition").style.marginLeft="100px";
						scope.getRecomend();
					}
				};
			},
			templateUrl:"partials/phone-app.html"
		}
	}])
});
