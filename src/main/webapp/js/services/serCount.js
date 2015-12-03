define(['serModule' , "tools"], function (services , tools) {
    'use strict';
    //services.value('version', '0.1');
	
	services.factory('serCount', ["panelCon" , "$http" ,"allControl" ,   function(panelCon , $http , allControl){
	
	var model = {};
	
	model.scope = '';
	
	model._getData = function(){
		allControl.sendMsg({
			name:"fscount",
			type:"getAdCount"
		})
	};
	
	
	model.init = function(scope){
		
		model.scope = scope;
		model.resize();
		model._getData();
	};
	
	model.resize = function(){
		var containerH = document.getElementById("container").style.height ; 
		var height = parseInt(containerH) - 120
		$("#countlist").css({height:containerH})
		//$("#tableGrid").css({height:height})
		//$("#tableGrid").niceScroll({cursorcolor:"#eee"});
		//$("#tableGrid").css({height:height})
		//$("#tableGrid").niceScroll({cursorcolor:"#eee"});
	}
	
	return model;
	
}]);
});
