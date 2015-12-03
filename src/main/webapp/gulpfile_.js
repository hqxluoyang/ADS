var gulp = require('gulp');

var jshint = require('gulp-jshint');
//var sass = require('gulp-sass');
var concat = require('gulp-concat');
var uglify = require('gulp-uglify');
var rename = require('gulp-rename');
var less = require('gulp-less');
var rjs = require('gulp-requirejs');
var minifycss = require('gulp-minify-css');

var html2js = require("gulp-ng-html2js");

var imagemin = require("gulp-imagemin");
var pngquant = require("imagemin-pngquant");

gulp.task('build-less' , function(){
	gulp.src(['./js/lib/bootstrap/css/bootstrap.min.css'  , './js/lib/bootstrap/css/bootstrap-theme.min.css' , './css/app.less'])
	.pipe(less())
	.pipe(minifycss())
	.pipe(concat('app.min.css'))
	.pipe(gulp.dest('./static/css/'));
})

gulp.task('html2js' , function(){
	gulp.src("./partials/*.html")
	.pipe(html2js({
		moduleName:"app",
		prefix:"partials/"
	}))
	.pipe(concat('html.min.js'))
	.pipe(uglify())
	.pipe(gulp.dest("static/partials"))
})

gulp.task("imagemin" , function(){
	gulp.src('static/img/*')
	.pipe(imagemin({
		progressive:true,
		svgoPlugins:[{removeViewBox:false}],
		use:[pngquant()]
	}))
	.pipe(gulp.dest('static/images/'))
})

gulp.task('requirejsBuild' , function(){
	rjs({
		baseUrl:'js',
		paths: {
			
			'angular': 'lib/angular/angular',
			'angular-route': 'lib/angular-route/angular-route',
			'uiBootstrap': 'lib/bootstrap/ui-bootstrap-tpls-0.12.0.min',
			'domReady': 'lib/requirejs-domready/domReady',
			'jquery': 'lib/jquery.min',
			'jquery.nicescroll': 'lib/jquery.nicescroll.min',
			'chart': 'lib/Chart',
			'md5': 'lib/md5.min',
			'spin': 'lib/spin',
			'requireLib':'lib/requirejs/require',
			'html':'../static/partials/html.min',
			
			"app": "app",
			"boot": "boot",
			
			"addUser":"controllers/addUser",
			"appList":"controllers/appList",
			"changePass":"controllers/changePass",
			"header":"controllers/header",
			"home":"controllers/home",
			"left":"controllers/left",
			"login":"controllers/login",
			"mainControl":"controllers/mainControl",
			"newApp":"controllers/newApp",
			"phone":"controllers/phone",
			"release":"controllers/release",
			"showDetail":"controllers/showDetail",
			"soldout":"controllers/soldout",
			"user":"controllers/user",
			"conIndex":"controllers/conIndex",
			"conModule":"controllers/conModule",
			"downChart":"controllers/downChart",
			"titleBar":"controllers/titleBar",
			
			"serIndex":"services/serIndex",
			"serModule":"services/serModule",
			"upload":"services/upload",
			"allControl":"services/allControl",
			
			"directIndex":"directives/directIndex",
			"directIndex":"directives/directModule",
			
			"filtIndex":"filters/filtIndex",
			"filtModule":"filters/filtModule",
			"numberInput":"filters/numberInput",
			
			'layout': 'module/layout',
			'panel': 'module/panel',
			'config': 'module/config',
			'text': 'module/text',
			'tools': 'module/tools',
			'drag': 'module/drag' 
		},
		
		shim: {
			'angular': {
				exports: 'angular'
			},
			'spin': {
				exports: 'spin'
			},
			'md5': {
				exports: 'md5'
			},
			'jquery': {
				exports:"jQuery"
			},
			
			'jquery.nicescroll': {
				deps: ['jquery'],
				exports: 'jQuery.fn.nicescroll'
			},
			
			'angular-route': {
				deps: ['angular']
			},
			'uiBootstrap': {
				exports:  'uiBootstrap',
				deps: ['angular']
			},
		},
		
		include:"requireLib",
	//	optimize:"none",
		name:"main",
		out: "static/main-built.js"
	}).pipe(uglify())
	.pipe(gulp.dest('./static'))
})

gulp.task('default' , function(){
	gulp.run('build-less' , 'requirejsBuild' , 'build-less' , 'html2js' , 'imagemin');
	gulp.watch('./css/app.less' , function(){
		gulp.run('build-less');
	})
	
	gulp.watch('./partials/*' , function(){
		gulp.run('html2js');
	})
	
})