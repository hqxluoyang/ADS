
define(['serModule'], function (services) {
    'use strict';
    //services.value('version', '0.1');
	
	services.factory('layout', ["allControl" , function(allControl){
		return {
			init:function(){
				this.resize();
				window.addEventListener("resize" , this.resize.bind(this));
			},
			
			resize: function(){
				this.setWH();
			},
			
			setWH:function(){
				var width = document.documentElement.clientWidth;
				var height = document.documentElement.clientHeight;
				document.body.style.overflow = "hidden";
				document.body.style.overflow = "hidden";
				
				document.getElementById("container").style.width = (width -100) + "px";
				document.getElementById("container").style.height = (height-50) + "px";
				document.getElementById("foter").style.width = (width -100) + "px";
				
				allControl.sendMsg({
					name:"broadcast",
					type:"resize"
				})
				
			}
		}
	}]);
});
