define(['serModule' , "tools"], function (services , tools) {
    'use strict';
    //services.value('version', '0.1');
	
	services.factory('uploadModule',['allControl' , '$http' , function(allControl , $http){
		
		var uploadMrg = function(config){
			
			this.files = config.files;
			this.url = config.url;
			this.type = config.type;
			this.el = config.el;
			this.loaded = config.loaded;
			
			this.control = config.control;
			
			this.parentId = config.parentId;
			
			this.code = config.code;
			
		};
		
		uploadMrg.prototype.start = function(){
			for(var i=0 ; i< this.files.length ; i++){
				this.send(this.files[i]);
			}
		};
		
		uploadMrg.prototype.uploadProgress = function(evt,pro){

			 if (evt.lengthComputable) {
			       var percentComplete = Math.round(evt.loaded * 100 / evt.total);
			     
			       if(percentComplete == 100 && this.scope.parentId == "uploadPro"){
			    	   percentComplete = 99;
			       }
			       
			       this.scope.el.style.width = percentComplete.toString() + "%";
			       this.scope.loaded.innerHTML = percentComplete.toString() + "%";
		       
		     }
		 };
		 
		uploadMrg.prototype.recvName = function(){
			
		};
		 
		uploadMrg.prototype.uploadComplete = function(){
			
			var that = this.upload;
			
			if(that.scope.parentId != "uploadPro"){
				allControl.sendMsg({
					name : that.scope.control,
					type: "uploadSucc"
				})
				return
			}
			
			 that.scope.el.style.width = "100%";
			 that.scope.loaded.innerHTML = "100%";
			  allControl.emit({name:"newApp" ,
					data:{
						type:"uploadSucc"
					}
				})
				
				/*
			
			$http({
				url:"app/apkInfo",
				method:'GET'
		   }).success(function(par){
			   that.scope.el.style.width = "100%";
			   that.scope.loaded.innerHTML = "100%";
			   allControl.emit({name:"newApp" ,
					data:{
						type:"uploadSucc",
						data:par
					}
				})
			}).error(function(data){
					
			})
			*/
			
		};
		
		uploadMrg.prototype.createBar = function(){
			
			var parent = document.getElementById(this.parentId);
	
			$(parent).empty();
			
			this.el = tools.createEl(parent , "DIV" , "bar");
			this.loaded = tools.createEl(parent , "SPAN" , "percent");
			
		};
		
		
		uploadMrg.prototype.selectType = function(config){
			var model = config['type'];
			var name = config.files[0].name;
			var type = name.substring(name.lastIndexOf('.')+1);
			
			var nameType = config.files[0].type;
			//console.log("config.files[0]:" , config.files[0])
			switch(model){
				case "image":
					
					if(nameType.indexOf("image") == 0){
						this.createBar(config);
						return true;
					}else{
						return false;
					}
					
					break;
				case "apk" :
					if(type == 'apk'){
						this.createBar(config);
						return true;
					}else{
						return false;
					}
					
					break;
				default:
					
					return true
					break;
			}
		};

		uploadMrg.prototype.send = function(file){
			 var fd = new FormData();
			
			 if(file["base64"]){
				 fd.append("base64file",file["data"]);
			 }else{
				 fd.append("filename",file);
			 }
			 
			 fd.append("code",this.code);

			 var that = this;
			 
			 var xhr = new XMLHttpRequest();
			 
			 xhr.onreadystatechange=function(){
			 	 if (xhr.readyState == 4 && xhr.status == 200) {
                    return xhr.responseText;
                }
			 }
			 
			 xhr.upload.addEventListener("progress", this.uploadProgress, false);
			 xhr.addEventListener("load", this.uploadComplete, false);
			 //xhr.addEventListener("error", this.uploadFailed, false);
			 //xhr.addEventListener("abort", this.uploadCanceled, false);
			 xhr.open("POST", this.url);
			 xhr.upload.scope = that;
			 xhr.send(fd);
			 
			 var myvalue=xhr.onreadystatechange();
			 
		};
		
		
		return {
			upload:function(config){
				
				var uploadData = new uploadMrg(config);
				console.log(config.files)
				if(!uploadData.selectType(config)){
					alert("请选择 正确的类型");
					return
				}
				
				this.setBar(uploadData);
				uploadData.start();
				document.getElementById('uplaodFile').value='';
				document.getElementById('allUplaodFile').value='';
			},
			
			setBar:function(con){
				con.el.style.width = 0;
				con.loaded.innerHTML = '';
			}
		};
	}]);
});
