define(['serModule' , "tools"], function (services , tools) {
    'use strict';
    //services.value('version', '0.1');
	
	services.factory('serAddpic', ["panelCon" ,"uploadModule" , "allControl" ,  function(panelCon , uploadModule , allControl){
	
	var newPic = {};
	
	newPic.scope = '';
	
	newPic.addNewPic = function(scope){
		
		newPic.scope = scope;
		
		var code = tools.guidGenerator();
			panelCon.show("newPic" , { width:538,
										   height:540,
										   area:[0 , 0 , 538 , 50],
										   parentID:"addNewPic",
										   title:"上传pic",
										   drag:true})
		
			document.getElementById("picUploadPro").style.display="none";
			document.getElementById("picUploadCon").style.display = "none";
    		scope.newpic["code"] =code;
    		
    		newPic.setSelected();
	}
	
	newPic.setCountry = function(value){
		var self = newPic.scope;
		var code = [];
		
		if(!value){
			self.newpic.country = '';
			return
		}
		
		for(var i=0 ; i< value.length ; i++){
			
			code.push(self.country[parseInt(value[i])].code)
		}
		console.log("vcode:" , code)
		var arr = code.join('&');
		console.log("code:" , arr)
		self.newpic.country = arr;
	}
	
	newPic.setSelected = function(){
		
		$('#ms').change(function() {
			var value = $(this).val()
			
           newPic.setCountry(value);
        }).multipleSelect({
        	style:{
        		width:"200px",
        		"margin-left":"20px",
        		height:"33px",
        		"line-height":"33px"
        	}
        });
	};
	
	newPic.getBase64 = function(data){
		console.log("data:")
		document.getElementById("uploadPicSrc").src = data.src;
	};
	
	newPic.submitNewPic = function(){
		var obj = {};
		var app = newPic.scope.newpic;

		for(var v in app){
			obj[v] = app[v];
		}
	
		allControl.sendMsg({
			name: "fslist",
			type: "fsAdd",
			data:obj
		})
		
		panelCon.hide("newPic");
	}
	
	newPic.logOut = function(){
		
	}
	
	newPic.uploadSucc = function(){
		document.getElementById("picUploadCon").style.display = "block";
	};
	
	return {
		addNewPic: newPic.addNewPic,
		uploadPicSub: newPic.uploadPicSub,
		submitNewPic: newPic.submitNewPic,
		uploadSucc :newPic.uploadSucc ,
		
		getBase64 : newPic.getBase64,
		logOut : newPic.logOut,
		uploadPic: newPic.uploadPic
	}
	
}]);
});
