define(['serModule' , "tools" , 'config'], function (services , tools , config) {
    'use strict';
    //services.value('version', '0.1');
	
	services.factory('fsR',['allControl' , '$http' , function(allControl , $http){
		
		var fsR = {};
		
		fsR.scope = ''
			
		fsR.countUrl = "statistic/dailyClick";
		fsR.showUrl = "statistic/dailyShow";
		
		fsR.getData = function(){
			 $http({
				url:config.gp['aaApproved'],
				method:'GET'
			}).success(function(data){
				fsR.scope.releasePic = data;
			}).error(function(data){
				
			})
		}
		
		fsR.soldOut = function(obj){
			
			var self = fsR.scope ;
			var data = {
					code:obj['code']
		   };
		   $http({
			   url:config.gp['unApproveAa'],
			   params:data,
			   method:'GET'
		   }).success(function(d){
				var self = fsR.scope ;
			   for(var i=0 ; i<self.releasePic.length ; i++){
				   if(data["code"] == self.releasePic[i]["code"]){
					   self.releasePic.splice(i , 1);
					   break;
				   }
			   }
	
		   }).error(function(data){
		
		   })
		}
		
		
		fsR.getCount = function(obj , flag){
			var self = fsR.scope ;
			
			if(flag == "count"){
				obj['url'] = "statistic/dailyClick";
			}else{
				obj['url'] = "statistic/dailyShow";
			}
			
			obj['name'] = obj['title'];
			
			console.log("obj:" , obj)
			allControl.sendMsg({
				name:"downChart" ,
				type:"downPanel",
				data:obj
			})
		};
		
		fsR.clickImage = function(obj){
			allControl.sendMsg({
				name : "phoneCon",
				type :"showImage",
				data : {
					link : obj['link'],
					image : obj['png_path']
				}
			})
		};
		
		fsR.showDetail = function(obj){
			allControl.sendMsg({
				name : "showDetail",
				type :"showDetail",
				data : obj
			})
		}
		
		fsR.init = function(scope){
			fsR.scope = scope;
			
			fsR.getData();
			fsR.resize();
		}
		
		fsR._style = function(){
			var containerH = document.getElementById("container").style.height ; 
		    var height = parseInt(containerH) - 65;
		
			$("#picReleasePage").css({height:containerH})
			$("#fsReleaseGrid").css({height:height})
			$("#fsReleaseGrid").niceScroll({cursorcolor:"#eee"});
		}
		
		fsR.resize = function(){
			fsR._style();
		}
		
		return {
			init: fsR.init,
			getCount : fsR.getCount,
			soldOut: fsR.soldOut,
			clickImage : fsR.clickImage,
			
			resize: fsR.resize,
			showDetail : fsR.showDetail,
			getData: fsR.getData
		}
	}]);
});
