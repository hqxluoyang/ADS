define(['conModule' , "config"], function (controllers , config) {
    'use strict';
    controllers.controller('user', ["$scope"  , "$rootScope" , "$http" , "$location","allControl" ,"panelCon" , function (vm , $rootScope , $http , $location , allControl , panelCon) {
		
    	var module = {};
		vm.userAll = [];
		
		allControl.push({
			name:"user",
			scope:vm
		});
		
		vm.userR = "userRed";
		vm.userG= "userGreen"
		
        vm.header = {
            order:"序号",
            user_id :"用户ID",
            name: "用户名",
            channel:"通道",
            type : "类型",
            state:"状态",
            org:"组织",
            delUser:"操作",
            changePass:"修改密码"
        };
       
        vm.addUer = function(){
        	
        	allControl.sendMsg({
        			name:"addUser" ,
					type:"showPanel"
		   })
        }
        
        module.getUser = function(){
        	$http({
				url:"app/users",
				method:'GET'
			}).success(function(data){
				vm.userAll =data;
			}).error(function(data){
				
			})
        }
		
		vm.delUser = function(obj , index){
			var i=index;
			var s = (obj["status"]=="已启用" ? 2 : 1 )
			var data = {
					uid:obj["user_id"],
					status:s
				}
			
			$http({
				url:"app/userauth",
				method:'GET',
				params:data
			}).success(function(d){
				if(vm.userAll[i]["status"] == "已启用"){
					vm.userAll[i]["status"] = "已停用";
				}else{
					vm.userAll[i]["status"] = "已启用";
				}
				
			}).error(function(data){
				
			})
		}

         
        vm.chPassword = function(obj){
        	 var data = {
        			 name:obj['name']
        	 }
        	 allControl.sendMsg({
        		name:"changePass" ,
 				type:"showPanel",
 				data:data
        	 })
        	
        }
		
        vm.addUserPanel = function(){
        	 
        	allControl.sendMsg({
        		name:"addUser" ,
 				type:"showPanel"
        	 })
         	 
        };
        
        vm.addUser = function(obj){
        	var d = obj;
        
        	var err = {
        		user_id:true,
        		name:true
        	}
        	
        	for(var i=0 ; i<vm.userAll.length ; i++){
        		if(obj['user_id'] == vm.userAll[i]['user_id']) err['user_id']=false;
        		if(obj['name'] == vm.userAll[i]['name']) err['name']=false
        	}
        	
        	if(!err['user_id'] || !err['name']){
        		allControl.sendMsg({
            		name:"addUser" ,
     				type:"errName",
     				data: err
            	 })
        		return;
        	}
        	
        	
			$http({
				url:config.gp['newUser'],
				params:d,
				method:'POST'
			}).success(function(data){
				vm.userAll.push(d);
			}).error(function(data){
				
			})
			
			panelCon.hide("addUser");
			
        }
		
		vm.resize = function(){
			var containerH = document.getElementById("container").style.height ; 
			var height = parseInt(containerH) - 65
			
			$("#userControlPage").css({height:containerH})
			$("#userGrid").css({height:height})
			$("#userGrid").niceScroll({cursorcolor:"#eee"});
		}
		
	    vm.recvMsg = function(par){
	    	
			switch(par['type']){
				case "addUser":
					vm.addUser(par['data']);
				default :
					break;
			}
		};
	
		module.init = function(){
			vm.resize();
			module.getUser();    //获得登陆用户；
		}
		
		module.init();
	}]);
});
