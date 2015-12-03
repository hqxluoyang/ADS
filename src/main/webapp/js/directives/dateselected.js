
define(['directModule'], function (module) {
    'use strict';
   module.directive('dateselected' ,["canvasDraw" , function(canvasDraw){
		return {
			restrict: 'E',
			
			scope:{
				control: "="
			},
			
			link:function(scope, el, attr){
				
				scope.formats = ['dd-MMMM-yyyy', 'yyyy/MM/dd', 'dd.MM.yyyy', 'shortDate'];
				scope.format = scope.formats[1];
				scope.dd = null;
				scope.dt = null;
				
				var upOff = {
						up: "",
						off: ""
				}
				
				scope.url = '' ;
				
				var getNewDate = function(){
						var d = new Date();
						
						return scope.changeformats(d);
				}
				
				scope.internalControl = scope.control || {};
				scope.internalControl.setDate = function(parm) {
					
					if(parm == undefined) return;

					var start =parm['start'].split('/');
					var end =parm['end'].split('/');
					
					if(parm['off']){
						upOff['off'] = parm['off'];
					}else{
						upOff['off'] = scope.changeformats(new Date());
					}
					
					if(parm['up']) upOff['up'] = parm['up'] ;
					scope.dt = new Date(start[0] , parseInt(start[1])-1 , start[2]);
					scope.dd = new Date(end[0] , parseInt(end[1])-1 , end[2]);
					
				//console.log("dt dd:" ,scope.dt , scope.dd )
					
					scope.url = parm['url'];
					
					if(parm['name']) scope.name = parm['name'];
			    }
				
				scope.dateOptions = {
					    formatYear: 'yy',
					    startingDay: 1
				};
				
				scope.changeformats = function(date){
					
					 var year = date.getFullYear();
				     var month = (date.getMonth()+1).toString();    //js从0开始取 
				     var date1 = (date.getDate()).toString();
				     
				     if(month.length < 2) month = '0' + month;
				     if(date1.length < 2) date1 = '0' + date1;
				     
				     return (year + "/" + month +"/"+ date1)
				     
				};
				
				scope.name=""
				
				scope.setValue = function(){alert("hehe")}
				
				scope.disabled = function(date, mode) {
				    return ( mode === 'day' && ( date.getDay() === 0 || date.getDay() === 6 ) );
				};
				
				scope.submitTime = function(){
					var start = (scope.changeformats(scope.dt)).toString();
					var end = (scope.changeformats(scope.dd)).toString();
					console.log("upOff:" , upOff);
					var up = upOff['up'].toString();
					var off = upOff['off'].toString();
					
					if(start > end){
						alert("起始时间不能大于结束时间");
						return;
					}

					if(start < up || end > off){
						var msg = "时间段" + up + "-" + off + "之间有数据";
						alert(msg);
						return;
					}
					
					canvasDraw.refrsh({
						start:start,
						url : scope.url,    //访问的URL
						end:end
					})
				}
				
			},
			templateUrl:"partials/dateselected.html"
		}
	}])
});
