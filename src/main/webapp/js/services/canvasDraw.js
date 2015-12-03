define(['serModule', "panel" ,"config" , "chart"], function (services , panel , config , chart) {
    'use strict';
    //services.value('version', '0.1');
	services.factory('canvasDraw',['$http' , '$rootScope' ,'panelCon'  , "allControl" , function($http , $rootScope , panelCon , allControl ){
		var draw = {};
		
		draw.config = '';
		
		draw.drawChart = function(d , day){
			var lineAd = document.getElementById("downChartLine").getContext("2d");
    		
    		if(config['panel']['chart']){
    		}else{
    			config['panel']['chart'] = new chart(lineAd)
    		}
    		
	        var data = {
	                labels :day,
	                width:300,
	                height:500,
	                datasets : [
	                    {
	                        fillColor : "rgba(151,187,205,0.5)",
	                        strokeColor : "rgba(151,187,205,1)",
	                        pointColor : "rgba(151,187,205,1)",
	                        pointStrokeColor : "#fff",
	                        data : d
	                    }
	                ]
	           }
			   
	        config['panel']['chart'].Line(data);
		};
		
		draw.hidePhone = function(){
			if(config["panel"]["phone"]){
				config["panel"]["phone"].hide();
			}
		};
		
		draw.showPanel = function(config){
			console.log("showPanel:" , config)
			panelCon.show("downChart" , { width:850,
													   height:500,
													   position:'',
													   show:false,
													   parentID:"downChart",
													   title:"下载图标",
													   drag:true})
													   
			var context = document.getElementById("downChartLine").getContext("2d");

			context.clearRect ( 0 , 0 , 600, 290 );
			draw.config = config;
			draw.getData(config);
		};
		
		draw.getData = function(config){
			
			var wallAd = $rootScope.wallAd;
			
			var restUrl =config['url'] ||  "statistic/dailyCount";
			
			//if(wallAd != 'wall')  restUrl = "statistic/dailyClick";
			console.log("config:" , config)
    		
    		$http({
				url:restUrl,
				params:config,
				method:'GET'
		   }).success(function(cd){
			   var data=[];
			   var d=[];
			   
			   if(cd.length <= 0){
				   return;
			   }
			   
			   panelCon.show("downChart");
			   allControl.sendMsg({
				   name:"downChart",
				   type:"displayDay",
				   data:{
					   start : cd[0]['time'],
					   end : cd[cd.length - 1]['time'],
					   up : config['up'],
					   off : config['off'], 
					   name:config['name']
				   }
				   
			   })
			   
			   for(var i=0 ; i<cd.length ; i++){
			   		d.push(cd[i].time);
			   		data.push(cd[i].count);
			   	}
			 
				draw.drawChart(data , d)
			}).error(function(data){
					
			})
		};
		
		draw.refrsh = function(config){
			
			config['code'] = draw.config['code']
			
			draw.getData(config)
		};
		
		draw.logOut = function(){
			panelCon.hide("downChart");
		};
		
		return {
			logOut:draw.logOut,
			show:draw.showPanel,
			refrsh:draw.refrsh
		}
		
	}]);
});
