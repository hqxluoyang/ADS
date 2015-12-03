define(['serModule' , "tools"], function (services , tools) {
    'use strict';
    //services.value('version', '0.1');
	services.factory('leftControl',['allControl' , '$http' , '$rootScope' , "$location" , function(allControl , $http , $rootScope , $location ){
		
		var left = {};
		
		left.scope = '';
		
		left.login = function(scope){
			left.scope = scope;
			
			if($rootScope.me == "admin"){
				$rootScope.appAd == "openScreen" ? left.scope.navPage = left.getAdminScreen() : left.scope.navPage = left.getAdminLeft()
			}else{
				left.scope.navPage = left.getUserLeft();
			}
			
			left.setSelected("login");
		}
		
		left.setSelected = function(d){

			var wallNavIndex = tools.getLocalStorage('wallNavIndex') || 0;
			var wallHref = tools.getLocalStorage('wallHref') || "home";
			
			var fsNavIndex = tools.getLocalStorage('fsNavIndex') || 0;
			var fsHref = tools.getLocalStorage('fsHref') || "fslist";
			var href = "";
			
		//	console.log("fsHref , wallHref:" , wallHref , fsHref)
			
			
			
			if($rootScope.appAd == "wall"){
				$location.path(wallHref);
				href = wallHref;
				left.scope.navIndex = wallNavIndex || 0;
			}else{
				$location.path(fsHref);
				href = fsHref;
				left.scope.navIndex = fsNavIndex || 0;
			}
			
			if(wallHref == "fscount" && fsHref == "fscount" && d==undefined){
				allControl.sendMsg({
			    	name:"fscount",
			    	type: "checkoutwall"
		    	})
			
					
				setTimeout(function(){
					var url = $location.$$url;
					allControl.sendMsg({
				    	name:"phoneCon",
				    	type: "openClosePhone",
				    	data :{
				    		url:url
				    	}
			    	})
				} , 100)
				
				
			}
			
			
		};
		
		left.getUserLeft = function(){
			return [{
		    		url:"home",
		    		text:"首页"
		    	},{
		    		url:"applist",
		    		text:"待上架"
		    	},{
		    		url:"release",
		    		text:"已上架"
		    	},{
		    		url:"soldout",
		    		text:"已下架"
		    	},{
		    		url:"fscount",
		    		text:"统计"
		    	}];
		}
		
		left.getAdminScreen = function(){
			return [{
		    		url:"fslist",
		    		text:"待上架"
		    	},{
		    		url:"fsrelease",
		    		text:"已上架"
		    	},{
		    		url:"fssoldout",
		    		text:"已下架"
		    	},{
		    		url:"testAd",
		    		text:"测试管理"
		    	},{
		    		url:"fscount",
		    		text:"统计"
		    	}];
		}
		
		left.getAdminLeft = function(){
			return  [{
		    		url:"home",
		    		text:"首页"
		    	},{
		    		url:"applist",
		    		text:"待上架"
		    	},{
		    		url:"release",
		    		text:"已上架"
		    	},{
		    		url:"soldout",
		    		text:"已下架"
		    	},{
		    		url:"fscount",
		    		text:"统计"
		    	},{
		    		url:"user",
		    		text:"用户管理"
		    	}];
		}
		
		left.openScreen = function(){
			left.scope.navPage = left.getAdminScreen();
		}
		
		left.navIndex = function(index){
			left.scope.navIndex = index;
			
			var href =  left.scope.navPage[index]['url']
			var storage = tools.getLocalStorage('wallScreen');
		    
			if(storage == "wall"){
				tools.setLocalStorage({
					wallNavIndex : index,
					wallHref :href
				})
			}else if(storage == "openScreen"){
				tools.setLocalStorage({
					fsNavIndex : index,
					fsHref :href
				})
			}
			
			
		
		};
		
		left.setStorageNavHref = function(par){
			tools.setLocalStorage(par);
		};
		
		left.setWall = function(){
			left.scope.navPage = left.getAdminLeft();

			console.log("left:setWall:")
		}
		
		left.check = function(app){
			switch(app){
				case "wall":
					left.setWall();
					$rootScope.appAd = "wall";
					tools.setLocalStorage({
						wallScreen : "wall"
					})
					left.setSelected();
					break;
				case "openScreen":
					left.openScreen();
					$rootScope.appAd = "openScreen";
					tools.setLocalStorage({
						wallScreen : "openScreen"
					})
					left.setSelected();
					break;
				default:
					break;
			}
		}
		
		return {
			run     :  left.login,
			check :  left.check,
			navIndex : left.navIndex
		};
	}]);
});
