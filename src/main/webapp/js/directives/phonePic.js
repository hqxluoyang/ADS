
define(['directModule'], function (module) {
    'use strict';
   module.directive('phonepic' ,[function(){
		return {
			restrict: 'E',
			
			scope:{
				control: "="
			},
			
			link:function(scope, el, attr){
				
				scope.picshow=true;
				scope.iframeSrc = "http://web.xender.com/";
				scope.imageSrc = "images/info.png"
				scope.picAd = scope.control || {};
				
				scope.picAd.showImage = function(obj){
					
					scope.imageSrc = obj['image'];
					scope.iframeSrc = obj['link'];
					scope.picshow=true;
					
				};
				
				scope.clickDiv = function(){
					document.getElementById("iframeSrc").src = scope.iframeSrc;
					scope.picshow=false;
				}
				
			},
			templateUrl:"partials/phone-pic.html"
		}
	}])
});
