define(['serModule'], function (services) {
    'use strict';
    //services.value('version', '0.1');
	
	services.factory('timeout',['allControl' ,  function(allControl){
	
	var timeout = {};
	
	timeout.initTime = Date.parse(new Date());
	timeout.logoutTime = 30*60*1000;
	//timeout.logoutTime = 10*1000;
	/*
	timeout.pull = function(){
		setInerval(function(){
			
		} , 2000)
	};
	*/
	
	timeout.init = function(){
		document.addEventListener("mousedown" , this.mousedown.bind(this));
	}
	
	timeout.mousedown = function(){
		var curT = Date.parse(new Date());
		
		if((curT - this.initTime) > this.logoutTime){
			allControl.emit({name:"header" ,
				data:{
					type:"timeout"
					}
			 })
		}else{
			this.initTime = curT ;
		}
		
	}
   timeout.init();
   
   return timeout;
}]);
});
