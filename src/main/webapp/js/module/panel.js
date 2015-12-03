define(["drag"] , function(drag){
   	function panel(config){
		
   		this.width = config['width'] || 300;
		this.height= config['height']|| 300;
		
		this.position = config['position'];
		this.drag = config['drag'];
		this.title = config["title"] || '';
		this.parentID = config["parentID"];
		this.anim = config['anim'];
		
		this.html = config['html'];
		var dom = document.getElementById(this.parentID);
		this.el = dom;
		
		this.area = config.area;
		
		var bnt = dom.children[0].children[1]
		
		bnt.addEventListener("click" , this.hide.bind(this));
		this.container = container;
		
		this.setStyle();
		
		if(this.drag) new drag({
			dom:this.el,
			area:this.area
		});
		window.addEventListener("resize" , this.resize.bind(this));
   	}
   	
   	panel.prototype.resize = function(){
   		this.setLeftTop();
   	};
   	
   	panel.prototype.setLeftTop = function(){
   		var documentWidth = document.documentElement.clientWidth;
		var documentHeight = document.documentElement.clientHeight;
		if(this.position == "rb"){
			this.el.style.left = (documentWidth - this.width -15) + "px";
			this.el.style.top = (documentHeight - this.height -35)  + "px";
		}else if(this.position == "rt"){
			this.el.style.top = "51px";
			this.el.style.left = (documentWidth - this.width -10) + "px";
		}else{
			this.el.style.left = (documentWidth - this.width)/2 + "px";
			this.el.style.top = (documentHeight - this.height)/2  + "px";
		}
   	};
   	
   	panel.prototype.setHeight = function(h){
   		this.height = h;
   		if(this.height) this.el.style.height = this.height + "px";
   	};
	
	panel.prototype.setStyle = function(){
		
		this.el.style.width = this.width + "px";
		this.el.style.height = this.height + "px";
		
		this.setLeftTop();
		
		this.el.style.background = "#FBFBFF";
		this.el.className = "panel ";
		this.el.style.display = "none";
		
		if(this.parentID == "phonePanel"){
			this.el.style.background = "none";
			this.el.style.border = "none";
			this.el.className = "panel noStyle";
		}
		
	};
	
	panel.prototype.show = function(){
		var documentWidth = document.documentElement.clientWidth;
		var documentHeight = document.documentElement.clientHeight;
		this.el.style.display = "block";
	}
	
	panel.prototype.hide = function(){
		this.el.style.display = "none";
	}
	
	panel.prototype.submit = function(){
		
	}
	
	return panel;
})