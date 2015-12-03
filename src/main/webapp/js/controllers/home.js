define(['conModule' , "chart"], function (controllers , chart) {
    'use strict';

    controllers.controller('home', ["$scope" ,"$rootScope" ,"allControl" , "$http" , function (vm , $rootScope , allControl , $http) {
		
    	var module={};
    	allControl.push({
			name:"home",
			scope:vm
		});
		
		vm.allApp=[{name:"xender" ,cls:"a"},{name:"andoum" ,cls:"a"}]
		
		module.drawChart = function(d){
			
			var data = {
					labels : ["January","February","March","April","May","June","July"],
					datasets : [
						{
							fillColor : "rgba(220,220,220,0.5)",
							strokeColor : "rgba(220,220,220,1)",
							pointColor : "rgba(220,220,220,1)",
							pointStrokeColor : "#fff",
							data : [65,59,90,81,56,55,40]
						},
						{
							fillColor : "rgba(151,187,205,0.5)",
							strokeColor : "rgba(151,187,205,1)",
							pointColor : "rgba(151,187,205,1)",
							pointStrokeColor : "#fff",
							data : [28,48,40,19,96,27,100]
						},
						{
							fillColor : "rgba(151,187,205,0.5)",
							strokeColor : "rgba(151,187,205,1)",
							pointColor : "rgba(151,187,205,1)",
							pointStrokeColor : "#fff",
							data : [238,448,450,149,946,247,1400]
						}
					]
				}
			
			var lineAd = document.getElementById("homePageCanvas").getContext("2d");
			var drawLine = new chart(lineAd);
			drawLine.Line(d);
		};
		
		module.getList = function(){
			if(!$rootScope.channel) return;
			var d = {
    				channel:$rootScope.channel
    		}
			$http({
				url:"statistic/countgraph",
				params:d,
				method:'GET'
		   }).success(function(data){
			   console.log("data countgraph:" , data)
			   module.processData(data);
			}).error(function(data){
					
			})
		}
		
		module.getColor = function(){
			return [
			        	{
			        		fillColor : "rgba(135,206,235,0.1)",
	                        strokeColor : "rgba(135,206,235,1)",
	                        pointColor : "rgba(135,206,235,1)",
	                        pointStrokeColor : "#fff",
	                        data:[]
			        	},
			        	{
			        		fillColor : "rgba(70,130,180,0.1)",
	                        strokeColor : "rgba(70,130,180,1)",
	                        pointColor : "rgba(70,130,180,1)",
	                        pointStrokeColor : "#fff",
	                        data:[]
			        	},
			        	{
			        		fillColor : "rgba(112,128,144,0.2)",
	                        strokeColor : "rgba(121,187,205,1)",
	                        pointColor : "rgba(121,187,205,1)",
	                        pointStrokeColor : "#fff",
	                        data:[]
			        	},
			        	{
			        		fillColor : "rgba(0,0,128,0.2)",
	                        strokeColor : "rgba(0,0,128,1)",
	                        pointColor : "rgba(0,0,128,1)",
	                        pointStrokeColor : "#fff",
	                        data:[]
			        	},
			        	{
			        		fillColor : "rgba(95,158,160,0.2)",
	                        strokeColor : "rgba(95,158,160,1)",
	                        pointColor : "rgba(95,158,160,1)",
	                        pointStrokeColor : "#fff",
	                        data:[]
			        	},
			        	{
			        		fillColor : "rgba(148,0,211,0.1)",
	                        strokeColor : "rgba(148,0,211,1)",
	                        pointColor : "rgba(148,0,211,1)",
	                        pointStrokeColor : "#fff",
	                        data:[]
			        	},
			        	{
			        		fillColor : "rgba(0,255,0,0.1)",
	                        strokeColor : "rgba(0,255,0,1)",
	                        pointColor : "rgba(0,255,0,1)",
	                        pointStrokeColor : "#fff",
	                        data:[]
			        	},
			        	{
			        		fillColor : "rgba(34,139,34,0.1)",
	                        strokeColor : "rgba(34,139,34,1)",
	                        pointColor : "rgba(34,139,34,1)",
	                        pointStrokeColor : "#fff",
	                        data:[]
			        	},
			        	{
			        		fillColor : "rgba(218,165,32,0.1)",
	                        strokeColor : "rgba(218,165,32,1)",
	                        pointColor : "rgba(218,165,32,1)",
	                        pointStrokeColor : "#fff",
	                        data:[]
			        	},
			        	{
			        		fillColor : "rgba(191,187,205,0.1)",
	                        strokeColor : "rgba(191,187,205,1)",
	                        pointColor : "rgba(191,187,205,1)",
	                        pointStrokeColor : "#fff",
	                        data:[]
			        	}
			        ]
		}
		
		module.processData = function(d){
			var data={
					labels:[],
					datasets:[]
			};
			var label=[];
			var flag=true;
			var dataColor = module.getColor();
			for(var i=0;i<d.length ; i++){
				
				var t = dataColor[i];
				
				for(var j=0 ; j< d[i].data.length; j++){
					t.data.push(d[i].data[j].count);
					if(flag) label.push(d[i].data[j].time);
				}
				
				flag = false;
				data.datasets.push(t);
				data.labels= label;
			}
			module.drawChart(data);
			
		};
		
		 vm.recvMsg = function(par){
			switch(par['type']){
				case "login":
				//	module.getList();
				default :
					break;
			}
		};
		
		module.init = function(){
			//module.getList();
		};
		
		module.init();
       	
	}])
			
});
