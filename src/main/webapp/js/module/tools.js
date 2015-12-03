define(["spin"] , function(spin){
   var tools = {};
	
   tools.guidGenerator= function(){
		var s4 = function(){
			return(((1+Math.random())*0x10000)|0).toString(16).substring(1);
		}
		return(s4() + s4() +"-" + s4() +"-" + s4() +"-" + s4() +"-" + s4() +"-" + s4()  + s4()  )
	};
	
	tools.clone = function(obj){
		function F(){};
		
		F.prototype = obj;
		return new F;
	};
	
	tools.setLocalStorage = function(config){
		
		var storage = window.localStorage;
		console.log("storage:" , config)
		if(storage){
			
			for(x in config){
				 storage.setItem(x , config[x]);
				 console.log(x , config[x])
			}
		
		}else{
			 alert('This browser does NOT support localStorage');
		}
	}
	
	tools.getLocalStorage = function(name){
		
		var storage = window.localStorage;
		
		if(window.localStorage){
			 return storage.getItem(name);
		}else{
			 alert('This browser does NOT support localStorage');
		}
	}
	
	tools.isNum = function(s){
		
		if(s != null && s != ""){
			return !isNaN(s);
		}
		
		return false;
	}
	
	tools.createEl = function(parent ,div , className , id){
		var dom = document.createElement(div);
			if(className){
				dom.className = className;
			}
			if(id) dom.id = id;
			parent.appendChild(dom);
			return dom;
	};
	
	tools.getSessionId = function(){
		var c_name = 'JSESSIONID';
		if(document.cookie.length>0){
			var c_start = document.cookie.indexOf(c_name + "=");
			if(c_start != -1){
				c_start = c_start + c_name.length +1;
				var c_end = document.cookie.indexOf(";", c_start);
				if(c_end == -1){
					c_end = document.cookie.length;
				}
				return unescape(document.cookie.substring(c_start, c_end));
			}
		}
		};
	
	tools.copyObj = function(obj){
		var r = {};
		
		for(var i in obj){
			if(obj.hasOwnProperty(i)){
				r[i] = obj[i];
			}
		}
		
		return r;
	};
	
	tools.cv = function(obj , target){
		for(var i in target){
			if(target.hasOwnProperty(i)){
				target[i] = obj[i];
			}
		}
		
	}
	
	tools.execFun = function(that , fun){
		var wait = function(s){
			if(s){
				s();
			}else{
				setTimeout(function(){
					wait(that[fun]);
				} , 200)
			}
		}
		
		wait(that[fun]);
	}
	
	tools.waiterMsg = function(){
		var opts = {
					  lines: 10, // The number of lines to draw
					  length: 14, // The length of each line
					  width: 10, // The line thickness
					  radius: 20, // The radius of the inner circle
					  corners: 1, // Corner roundness (0..1)
					  rotate: 44, // The rotation offset
					  direction: 1, // 1: clockwise, -1: counterclockwise
					  color: '#fff', // #rgb or #rrggbb or array of colors
					  speed: 1, // Rounds per second
					  trail: 50, // Afterglow percentage
					  shadow: true, // Whether to render a shadow
					  hwaccel: true, // Whether to use hardware acceleration
					  className: 'spinner', // The CSS class to assign to the spinner
					  zIndex: 2e9, // The z-index (defaults to 2000000000)
					  top: '50%', // Top position relative to parent
					  left: '50%' // Left position relative to parent
			};
			var target = document.getElementById('main');
			var spinner = new spin(opts).spin(target);
	}
	
	return tools;

})