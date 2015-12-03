define(['serModule'], function (services) {
    'use strict';
    //services.value('version', '0.1');
	
	services.factory('allControl', function(){
	var control = []
    return {
		push:function(vm){
			var flag=true;
			for(var i=0 ; i<control.length ; i++){
				if(control[i]['name'] == vm['name']){
					control[i]["scope"] = vm['scope'];
					return;
				}
			}
			
			control.push(vm);
		},
		
		emit:function(par){
			for(var i=0 ; i< control.length ; i++){
				if(control[i]['name'] == par['name'] || par['name'] == "broadcast"){
					control[i]['scope'].recvMsg.call(control[i]['scope'] , par['data']);
				}
			}
		},
		
		sendMsg:function(config){
			
			this.emit({
				name:config['name'],
				data:{
					type:config['type'],
					data:config['data']
				}
			})
			
		}
	};
});
});
