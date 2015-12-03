define(['conModule' , "panel"  , "tools"], function (controllers , panel  , tools) {
    'use strict';
	
    controllers.controller('newApp', ["$scope" ,"$http" ,"$rootScope" ,"allControl" ,"uploadModule" ,"panelCon" ,  function (vm , $http , $rootScope , allControl , uploadModule , panelCon) {
		
    	allControl.push({
			name:"newApp",
			scope:vm
		});
    	
    	var module={};
    	
    	module.fresh = null;
    	
    	vm.newapp = {
    			code:"",
                name :"",
                size: "",
                position: "",
                channel:"",
                type : "",
                price: "",
                developer:"",
                describe:"",
                target:"",
                country:"",
                downUp:"",
                language: ""
         };
    	
    	vm.appParm = false;
    	
    	vm.panel = function(){
    		panelCon.show("submitAppList" , {	 width:538,
				   height:540,
				   area:[0 , 0 , 538 , 50],
				   parentID:"addAppSubmit",
				   title:"提交App",
				   drag:true})

		    vm.appParm = false;
    		document.getElementById("uploadPro").style.display="none";
    	}
    	
    	vm.showPanel = function(){
			var code = tools.guidGenerator();
			vm.panel();
			module.fresh = null;
			vm.newapp["channel"] = $rootScope.channel;
    		vm.newapp["code"] =code;
    		vm.newapp["language"] = $rootScope.lang;
    	};
    	
    	
    	vm.uploadChangeApp = function(){
    		document.getElementById("uploadPro").style.display="inline-block";
			uploadModule.upload({
				files:window.event.target.files,
				code:vm.newapp['code'],
				type:'apk',
				parentId:"uploadPro",
				url:"app/appUpload"
			})
			
    	};
    	
    	vm.uploadAppSub = function(){
    		document.getElementById("uplaodFile").click();
    	};
    	
    	vm.submitNewApp = function(){
    		
    		var obj = {};
    		
    		if(vm.newapp.name=='' || vm.newapp.type=='' || vm.newapp.developer==''){
    			alert("请填完参数");
    			return;
    		}
    		
    		if(!tools.isNum(vm.newapp['price'])){
    			vm.newapp['price'] = 0;
    		}
    		
    		var obj = tools.copyObj(vm.newapp);
    		var to = (module.fresh ? module.fresh : "appList");
    		allControl.sendMsg({
    			name: to,
    			type: "listAdd",
    			data:obj
    		})
    		
    		panelCon.hide("submitAppList");
    	};
    	
    	module.logOut = function(){
    		panelCon.hide("submitAppList");
    	}	
    	
    	module.uploadSucc = function(data){
    		vm.appParm = true;
    		console.log("hello")
    	//	vm.newapp['name'] = data['app_name'];
    	//	document.getElementById("uploadImgSrc").src = data['icon_temp'];
    	};
    	
    	module.refreshApp = function(o){
    		var obj = o.obj;
    		
    		module.fresh = o.from;
    		tools.cv(obj , vm.newapp);
    		
    		vm.panel();
    	};
    	
		vm.recvMsg = function(par){
			switch(par['type']){
			case "showPanel":
				vm.showPanel();
				break;
			case "logOut":
				module.logOut();
				break;	
			case 'uploadSucc':
				module.uploadSucc(par['data']);
				break;
				
			case "refreshApp":
				module.refreshApp(par['data']);
				break;
			default :
				break;
			}
		}
		
	}])
});
