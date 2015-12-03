
define(['directModule' , "tools" , "config"], function (module , tools , config) {
    'use strict';
   module.directive('datatable' ,["$http" ,'$rootScope', function($http , $rootScope){
		return {
			restrict: 'E',
			
			scope:{
				control: "="
			},
			
			link:function(scope, el, attr){
				
				scope.table = scope.control || {};
				scope.tableData = [];
				scope.tableHead = [];
				
				scope.totalData = [];
				
				scope.showAd="ad";
				
				scope.page = [];
				
				scope.searchParam="";
				scope.navIndex="1";
				scope.navBg = "{style:background:red}";
				
				scope.tableImg = "imgwall";
				
				scope.styleWidth=""
				
				scope.table.search = function(data){
						
				    var wallScreen = $rootScope.appAd;
				    
				    if(data == undefined){
				    	var d = new Date();
				    	data = {
				    		"date":d.getFullYear() +"/" + d.getMonth()
				    	}
				    	
				    }
				    
				    scope.searchParam = data;
				    scope.navIndex= parseInt(data['pageno']) -1 ;
				    if(wallScreen == "wall"){
				    	
				    	scope.getApp(data);
				    	scope.showAd="ad";
				    	scope.tableImg = "imgwall";
				    	
				    }else{
				    	scope.getAd(data);
				    	scope.showAd="scree";
				    	scope.tableImg = "imgscree";
				    }
				}
				
				scope.resize = function(){
					var containerH = document.getElementById("container").style.height ; 
					var height = parseInt(containerH) - 290;
					$("#countlist").css({height:containerH})
					
					$("#gridCount").css({height:height})
					$("#gridCount").niceScroll({cursorcolor:"#eee"});
				}
				
				scope.table.resize = function(){
					scope.resize();
				}
				
				scope.getApp = function(data){
					$http({
						url:"app/summary",
						params:data,
						method:'GET'
				   }).success(function(par){
					  var newArr = [{name:"日期"}];
					  var totalCount = {downloadcount:"合计"};
					  var totalData = [totalCount];
					  var page = [];
					  for(var j = 0; j<par.pagescount ; j++){
					  	page.push(j+1);
					  }
					  
					  scope.page = page;
					  
					  var newdata = par.datas[0]['data'] ;
					  for(var i=0 ; i< newdata.length ; i++){
					  	newArr.push({
					  		name:newdata[i]['name'],
					  		imgurl:newdata[i]['imgurl']
					  	});
					  	
					  	var s=0;
					  	
					  	for(var t=0 ; t<par.datas.length;t++){
					  		s += parseInt(par.datas[t]["data"][i]['downloadcount']);
					  	}
					  	
					  	var totalC = {
					  		downloadcount:s
					  	}
					  	
					  	totalData.push(totalC);
					  	
					  }
					  

					  scope.totalData = totalData;
					 
					  scope.tableData = par.datas;
					  scope.tableHead = newArr;
					  
					 var widthp = (100/newArr.length) / 100 + "%";
					  
					  var widthp = (100/newArr.length).toFixed(1) + "%";
					  scope.styleWidth={
					  	width:widthp
					  };
					  
				   }).error(function(data){
							
				   })
				}
				
				scope.getAd = function(data){
					
					$http({
						url:config.gp['aaSummary'],
						params:data,
						method:'GET'
				   }).success(function(par){
					  var newArr = [{name:"日期"}];
					  var totalCount = {downloadcount:"合计"};
					  var totalData = [totalCount];
					  var page = [];
					  for(var j = 0; j<par.pagescount ; j++){
					  	page.push(j+1);
					  }
					  
					  scope.page = page;
					  var newdata = par.datas[0]['data'] ;
					  for(var i=0 ; i< newdata.length ; i++){
					  	newArr.push({
					  		name:newdata[i]['name'],
					  		imgurl:newdata[i]['imgurl']
					  	});
					  	
					  	var s=0;
					  	var c=0;
					  	
					  	for(var t=0 ; t<par.datas.length;t++){
					  		s += parseInt(par.datas[t]["data"][i]['showcount']);
					  		c += parseInt(par.datas[t]["data"][i]['clickcount']);
					  	}
					  	
					  	var totalC = {
					  		showcount:s,
					  		clickcount :c
					  	}
					  	
					  	totalData.push(totalC);
					  	
					  }
					  
					  scope.totalData = totalData;
					  
					  scope.tableData = par.datas;
					  scope.tableHead = newArr;
					  
					  var widthp = (100/newArr.length).toFixed(1) + "%";
					  scope.styleWidth={
					  	width:widthp
					  };
					    console.log("widthp:" , scope.styleWidth)
				   }).error(function(data){
							
				   })
				}
				
				scope.clickNav = function(index){
					console.log("scope.searchData:" , scope.searchData)
					var d = scope.searchParam['date'];
					
					var data={
						pageno:(index + 1),
						date:d
					}
					
					//scope.navIndex = index;
					
					scope.table.search(data);
					
				}
				
				scope.pre = function(){
					if(scope.navIndex == 0 ) return;
					
					scope.clickNav(scope.navIndex - 1);
					
				}
				
				scope.next = function(){
					if(scope.navIndex + 1 >= scope.page.length ) return;
					
					scope.clickNav(scope.navIndex + 1);
					
				}
				
				scope.resize();
			},
			templateUrl:"partials/dataTable.html"
		}
	}])
});
