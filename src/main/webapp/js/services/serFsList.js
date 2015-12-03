define(['serModule' , "tools" , "config"], function (services , tools , config) {
    'use strict';
    //services.value('version', '0.1');
	
	services.factory('serFsList', ["panelCon" ,"uploadModule" , "$http" ,"allControl" ,   function(panelCon , uploadModule , $http , allControl){
	
	var model = {};
	
	model.scope = '';
	
	model.getData = function(){
		$http({
			url:config.gp['aaSubList'],
			method:'GET'
		}).success(function(data){
		   console.log("data:" , data)
		    //data[0].tcode = true;
		    for(var i=0 ; i<data.length ; i++){
		    	data[i].tcode == "true" ? data[i].tcode = true : data[i].tcode=false;
		    }
		   // alert(data[0].tcode)
		   	model.scope.listPic = data;
		}).error(function(data){
				
		})
	};
	
	model.fsAdd = function(data){

		   $http({
				url:config.gp['aaNew'],
				method:'GET',
				params:data
			}).success(function(d){
			
				 model.scope.listPic.splice(0,0,d[0])
				
			}).error(function(data){
				
			})
	}
	
	model.putawayAd = function(obj){
		
		 var scope = model.scope;
		console.log("obj:" , obj)
		 var data = {
				code:obj['code']
		   };
		   $http({
			   url:config.gp['aaApproveAa'],
			   params:data,
			   method:'GET'
		   }).success(function(d){
		   
			   for(var i=0 ; i<scope.listPic.length ; i++){
				   if(data["code"] == scope.listPic[i]["code"]){
					   scope.listPic.splice(i , 1);
					   break;
				   }
			   }
			
		   }).error(function(data){
		
		   })
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
	}
	
	model.showDetail = function(obj){
		allControl.sendMsg({
			name : "showDetail",
			type :"showDetail",
			data : obj
		})
	};
	
	model.init = function(scope){
		
		model.scope = scope;
		model.resize();
		model.getData();
	};
	
	model._style = function(){
		var containerH = document.getElementById("container").style.height ; 
		var height = parseInt(containerH) - 120
		$("#fslistPage").css({height:containerH})
		$("#fsListGrid").css({height:height})
		$("#fsListGrid").niceScroll({cursorcolor:"#eee"});
	}
	
	model.resize = function(){
		model._style();
	}
	
	model.changeBox = function(obj){
		//console.log("obj:" , obj);
		var tcode = (obj["tcode"] == true ? 1 : 0)
		var data = {
			code:obj["code"],
			tcode:tcode
		}
		
		$http({
			   url:config.gp['testgg'],
			   params:data,
			   method:'GET'
		   }).success(function(d){
			
		   }).error(function(data){
		
	    })
	};
	
	return {
		fsAdd: model.fsAdd,
		clickImage : model.clickImage,
		changeBox : model.changeBox,
		resize: model.resize,
		showDetail : model.showDetail,
		putawayAd: model.putawayAd,
		init: model.init
	}
	
}]);
});
