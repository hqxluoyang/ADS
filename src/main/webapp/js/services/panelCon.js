define(['serModule' , "panel"], function (services , panel) {
    'use strict';
    //services.value('version', '0.1');
	services.factory('panelCon',['allControl' , '$http' , '$rootScope' , function(allControl , $http , $rootScope){
		
		var panelControl = {};
		
		panelControl['panel']={};
		
		panelControl.show = function(nameId , config){
			var p = panelControl['panel'][nameId];
			if(!p){
				panelControl['panel'][nameId] = new panel(config);
			}
			
			if(config==undefined || config['show'] !=false) panelControl['panel'][nameId].show();
		};
		
		panelControl.hide = function(nameId){
			if(panelControl['panel'][nameId]) panelControl['panel'][nameId].hide();
		};
		
		return {
			show:panelControl.show,
			hide:panelControl.hide
		}
		
	}]);
});
