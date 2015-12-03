define(['serModule' , "tools" , "config"], function (services , tools , config) {
    'use strict';
    //services.value('version', '0.1');
	
	services.factory('apprealse', ["$http" , "allControl" ,  function($http, allControl){
	
	var model = {};
	
	model._style = function(){
		var containerH = document.getElementById("container").style.height ; 
		var height = parseInt(containerH) - 65;
		
		$("#releaseControlPage").css({height:containerH})
		$("#releaseGrid").css({height:height})
		$("#releaseGrid").niceScroll({cursorcolor:"#eee"});
	}
	
	model._setValue = function(obj){
		var list = model.scope.releaseApp;
		
		for(var i=0 ; i< list.length ; i++){

			if(list[i]['code'] == obj[0]['code']){

				model.scope.releaseApp.splice(i,1 , obj[0])
				
				return;
			}
		}
	}
	
	model.getAppList = function(){
		$http({
			url:"app/approvedList",
			method:'GET'
		}).success(function(data){
			
			model.scope.releaseApp = data;
		}).error(function(data){
			
		})
	}
	
	model.listAddfresh = function(par){
		   var data = par;
		   console.log("par.code:" , par['code'])
		   $http({
				url:config.gp['newApp'],
				method:'GET',
				params:data
			}).success(function(d){
				model._setValue(d);
				
			}).error(function(data){
				
			})
		}
	
	model.refreshApp = function(obj){
		var c = tools.copyObj(obj);
		
		allControl.sendMsg({
			name : "newApp",
			type : "refreshApp",
			data:{
				obj:c,
				from:"release"
			}
		})
		
	};
	
	model.resize = function(){
		model._style();
	}
	
	model.init = function(scope){
		model.scope = scope;
		model.resize();
		model.getAppList();
	};
	
	
	return model;
}]);
});
