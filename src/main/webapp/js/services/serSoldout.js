define(['serModule' , "tools" , "config"], function (services , tools , config) {
    'use strict';
    //services.value('version', '0.1');
	
	services.factory('serSoldout', ["panelCon" , "allControl" ,"$http" , function(panelCon , allControl , $http){
	
	var model = {};
	
	model.scope = '';
	
	model.getData = function(){
		$http({
			url:config.gp['aaUnList'],
			method:'GET'
		}).success(function(data){
		   
		   model.scope.soldoutPic = data;
		}).error(function(data){
				
		})
	};
	
	model.delPic = function(obj){
		
		var self = model.scope ; 
		
		var data = {
 			   code:obj['code']
 	   };
 	   
 	   $http({
				url:config.gp['delAa'],
				params:data,
				method:'GET'
			}).success(function(d){
				
				for(var i=0 ; i<self.soldoutPic.length ; i++){
					if(data["code"] == self.soldoutPic[i]["code"]){
						self.soldoutPic.splice(i , 1);
						break;
					}
				}
			
			}).error(function(data){
				
			})
	};
	
	model.putawayAd = function(obj){
		
		var self = model.scope ;
		
		var data = {
 			   code:obj['code']
 	   	};
 	   
		$http({
				url:config.gp['aaApproveAa'],
				params:data,
				method:'GET'
			}).success(function(d){
				
				for(var i=0 ; i<self.soldoutPic.length ; i++){
					if(data["code"] == self.soldoutPic[i]["code"]){
						self.soldoutPic.splice(i , 1);
						break;
					}
				}
			
			}).error(function(data){
				
			})
	};
	
	model.init = function(socpe){

		model.scope = socpe;
		model.getData();
		
		model.resize();
	}
	
	model.clickImage = function(obj){
		allControl.sendMsg({
			name : "phoneCon",
			type :"showImage",
			data : {
				link : obj['link'],
				image : obj['png_path']
			}
		})
	};
	
	model.getCount = function(obj , flag){
		
		obj['name'] = obj['title'];
		
		if(flag == "count"){
			obj['url'] = "statistic/dailyClick";
		}else{
			obj['url'] = "statistic/dailyShow";
		}
		
		
		allControl.emit({name:"downChart" ,
			data:{
				type:"downPanel",
				data:obj
			}
		})
	};
	
	model.showDetail = function(obj){
		allControl.sendMsg({
			name : "showDetail",
			type :"showDetail",
			data : obj
		})
	};
	
	model._style = function(){
		var containerH = document.getElementById("container").style.height ; 
		var height = parseInt(containerH) - 65;
	
		$("#soldoutControlPage").css({height:containerH})
		$("#soldoutGrid").css({height:height})
		$("#soldoutGrid").niceScroll({cursorcolor:"#eee"});
	}
	
	model.resize = function(){
		model._style();
	}
	
	return {
		init: model.init,
		delPic : model.delPic,
		clickImage : model.clickImage,
		getCount : model.getCount,
		
		resize:model.resize,
		showDetail : model.showDetail,
		putawayAd : model.putawayAd,
		getData: model.getData	
	}
	
}]);
});
