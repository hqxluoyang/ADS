
define(['directModule'], function (module) {
    'use strict';
   module.directive('uploadf' ,["uploadModule" ,"allControl" ,  function(uploadModule , allControl){
		return {
			restrict: 'E',
			link:function(scope, el, attr){
				
				var dom = document.getElementById("allUplaodFile")
				
				var getBase64 = function(files){
					
					var sfile =  files[0];
					
					var name = sfile.name;
					var type = name.substring(name.lastIndexOf('.')+1);
					
					if(type != "png"){
						return;
					}
					
					var reader = new FileReader();
					 reader.readAsDataURL(sfile);
					 reader.onload = function(){
						 var srcImage = this.result;
						
						 allControl.sendMsg({
							 name:"addNewPic",
							 type : "base64",
							 data :{
								 src:srcImage
							 }
						 })
						 
					 }
					 
				}
				
				var uploadPicSub = function(files){
					var data = scope.parData;
					
					console.log("data par:" , data['parentId'])
					
					document.getElementById(data['parentId']).style.display="inline-block";
					
					getBase64(files)
					
					uploadModule.upload({
						files:files,
						code:data['code'],
						type:data['type'],
						parentId:data['parentId'],
						control: data['control'],
						url:data['url']
					})
					
					
				}
				
				$(dom).change(function(e){
					var files = e.target.files || e.dataTransfer.files;
					uploadPicSub(files);
					dom.value="";
					
				})
			},
			template:"<input id='allUplaodFile' type='file' style='display:none'/>"
		}
	}])
});
