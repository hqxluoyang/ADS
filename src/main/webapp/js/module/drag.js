'use strict';

define([],
function(){
        function drag(config){
                this._end_x = 0;
                this._end_y = 0;
                this.flag = false;
                this.el = config.dom;
             //   console.log("config:" , config)
                this.area = config.area
                this.mousemove =config.mousemove ? config.mousemove : this.mousemove;
                this.mouseup = config.mouseup ? config.mouseup : this.mouseup;
                this.el.addEventListener("mousedown" , config.mousedown ? config.mousedown.bind(this) : this.mousedown.bind(this));
                this.el.addEventListener("DOMMouseScroll" , config.mousewheel ? config.mousewheel.bind(this) : this.mousewheel.bind(this));
                this.el.addEventListener("mousewheel" , config.mousewheel ? config.mousewheel.bind(this) : this.mousewheel.bind(this));
                this.el.addEventListener("mousemove" , config.mousemove ? config.mousemove.bind(this) : this.mousemove.bind(this));
                document.addEventListener("mouseup" , config.mouseup ? config.mouseup.bind(this) : this.mouseup.bind(this));
        }

        drag.prototype.mousewheel = function(){
                //this.flag = false;
        };
        drag.prototype.keypress = function(e){
        };
        drag.prototype.mousedown = function(e){
        	
                if(e.button == 2)
                        return;
                var x = parseInt(this.el.style.left|| this.el.style.clientLeft , 10);
                var y =  parseInt(this.el.style.top || this.el.style.clientTop, 10);
                
                var ex = e.x || e.clientX;
                var ey = e.y || e.clientY;
               
                var evX =ex - x;
                var evY =ey - y;
       
                if(this.area){
                	if(!(evX>this.area[0] && evX<(this.area[0] + this.area[2]) && evY > this.area[1] && evY < (this.area[1] + this.area[3]))) return;
                }
                this.el.style.cursor = "pointer";
                
                this._start_x = x;
                this._start_y =y;
        		this.flag = true;
        }

        drag.prototype.mouseup = function(e){
        	
        	 this.el.style.cursor = "";
             this.flag = false;
        }

        drag.prototype.mousemove = function(e){

                if(e.button == 2)
                        return;
                if(this.flag){
                        var x = e.pageX -this._end_x;
                        var y = e.pageY - this._end_y ;
                        this.el.style.left = (parseInt(this.el.style.left || this.el.style.clientLeft,10) + x) + "px";
                        this.el.style.top = (parseInt(this.el.style.top || this.el.style.clientTop,10) + y) + "px";
                       
                }else{
                }
                this._end_x = e.pageX;
                this._end_y = e.pageY;

        }
	return drag;	
});