
require.config({
	baseUrl:'js',
	urlArgs:'ver=0.0.0.0',
    paths: {
        'angular': 'lib/angular/angular',
        'ui-router': 'lib/angular-ui-router.min',
		'uiBootstrap': 'lib/bootstrap/ui-bootstrap-tpls-0.12.0.min',
		'domReady': 'lib/requirejs-domready/domReady',
		'jquery': 'lib/jquery.min',
		'jquery.nicescroll': 'lib/jquery.nicescroll.min',
		'chart': 'lib/Chart',
		'jquery.multiple': 'lib/jquery.multiple.select',
		'md5': 'lib/md5.min',
		'spin': 'lib/spin',
		'html':'../zipHtml/html.min',
		
		"app": "app",
		"boot": "boot",
		"ngRun": "ngRun",
		
		
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
		"conIndex":"controllers/index",
		"conModule":"controllers/conModule",
		"downChart":"controllers/downChart",
		"titleBar":"controllers/titleBar",
		
		"fslist":"controllers/fslist",
		"fsrelease":"controllers/fsrelease",
		"fssoldout":"controllers/fssoldout",
		"fscount":"controllers/fscount",
		"newPic":"controllers/newPic",
		"uploadFile":"controllers/uploadFile",
		"testAd":"controllers/testAd",
		"addPhone":"controllers/addPhone",
		
		"serIndex":"services/index",
		"serModule":"services/serModule",
		"upload":"services/upload",
		"allControl":"services/allControl",
		"timeout":"services/timeout",
		"userLogin":"services/userLogin",
		"panelCon":"services/panelCon",
		"routeChange":"services/routeChange",
		"canvasDraw":"services/canvasDraw",
		"leftControl":"services/leftControl",
		"serAddpic":"services/serAddpic",
		"fsR":"services/fsR",
		"serFsList":"services/serFsList",
		"drawtable":"services/drawtable",
		"serSoldout":"services/serSoldout",
		"apprealse":"services/apprealse",
		"serapplist":"services/serapplist",
		"serCount":"services/serCount",
		"layoutContainer":"services/layout",
		
	
		
		"directIndex":"directives/index",
		"directModule":"directives/directModule",
		"tipList":"directives/tipList",
		"dateselected":"directives/dateselected",
		"phoneApp":"directives/phoneApp",
		"phonePic":"directives/phonePic",
		"uploadF":"directives/uploadF",
		"dataTable":"directives/dataTable",
		"fscountsearch":"directives/fscountsearch",
		
		"filtIndex":"filters/filtIndex",
		"filtModule":"filters/filtModule",
		"numberInput":"filters/numberInput",
	
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
        'html': {
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
		
		'jquery.multiple': {
			deps: ['jquery'],
			exports: 'jQuery.fn.multipleSelect'
		},
		
		'ui-router': {
            deps: ['angular']
        },
		'uiBootstrap': {
            exports:  'uiBootstrap',
			deps: ['angular']
        },
    }
});

require(['boot'] , function(){});
