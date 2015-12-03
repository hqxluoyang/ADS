# appadm

## 接口地址变动
### 因为Adblock等去广告插件会拦截地址中含有ad的链接.

            
/app/addApp      &ensp;&ensp;&ensp;&ensp;       /app/newApp         
/app/adduser     &ensp;&ensp;&ensp;&ensp;     		/app/newuser            
/ad/adUpload      &ensp;&ensp;&ensp;&ensp;  		/aa/aaUpload            
/ad/submittedList      &ensp;&ensp;&ensp;&ensp; 		/aa/submittedList           
/ad/unapprovedList    &ensp;&ensp;&ensp;&ensp;  		/aa/unapprovedList          
/ad/approvedList	  &ensp;&ensp;&ensp;&ensp;      	/aa/approvedList            
/ad/addAd	        &ensp;&ensp;&ensp;&ensp;	/aa/newAa           
/ad/delAd	      &ensp;&ensp;&ensp;&ensp;  	/aa/delAa           
/ad/approveAd	   &ensp;&ensp;&ensp;&ensp;     	/aa/approveAa           
/ad/unapproveAd	   &ensp;&ensp;&ensp;&ensp;     	/aa/unapproveAa         
/mobile/ad	     &ensp;&ensp;&ensp;&ensp;   	/mobile/aa          
/mobile/adnew    &ensp;&ensp;&ensp;&ensp;   		/mobile/aanew           
/ad/summary	     &ensp;&ensp;&ensp;&ensp;   	/aa/summary         




## 字段说明

### app表

字段            |含义         | 数据类型        
-------------- |------------| --------------|
id             |PK            | varchar(32)  |       
name           |应用名称      | varchar(20)   | 
type           |应用类型     |varchar(2)  |  
price          |价格     | decimal(6,2)    | 
size           |大小(M)     | decimal(5,2)   | 
status         |状态(0:未发布;1:运行;2:下架)        | varchar(1)  |
language       |语言        | varchar(10)    |
developer      |开发者       | varchar(32)    |
link           |资源目标（gplink）| varchar(30) |
channel        |渠道号      | varchar(20)    |
position       |应用墙位置        | int    |
icon_path      |icon存储路径   |varchar(150)         |
note           |说明     |varchar(100) |
reserve1       |预留      |  varchar(10) |
reserve2       |预留      |  varchar(10) |
reserve3       |预留      | varchar(10)  |
reserve4       |预留      | varchar(10)  |
up_time        |上架时间     | datetime     |
off_time       |下架时间     | datetime    |
code       |应用编码      | varchar(50)  | 
down           |下载量   |int      |
apk_path       |apk存储路径     | varchar(150) |
country        |目标国家     |varchar(10)   |
stars          |几颗星       | decimal(2,1) |
package          |包名       | varchar(50)  |
versioncode      | 版本号      | varchar(50)  |
versionname      | 版本名称      | varchar(50)  |


### user表

字段            |含义         | 数据类型        
-------------- |------------| --------------|
id             |PK            |varchar(32)    |      
user_id        |用户Id       |varchar(20)    |
name           |用户名       |varchar(20)    |
password       |用户口令      |varchar(20)   |
status         |状态(1:启用；2：禁用) |int |
type           |类型(1:管理员;2:普通用户；) |int|
org            |所属单位  |varchar(30)|
channel      |渠道号  |varchar(10) |

### ad表
字段            |含义         |数据类型
---------------|------------|-------------|
id             |PK          |varchar(32)  |
code        |广告编码      |varchar(50)  |
tcode		|是否是用于测试|tinyint|	  
title          |标题         |varcahr(50)  |
note           |注释         |varchar(200) |
country        |国家         |varchar(20)  |
channel        |渠道         |varchar(20)  |
language       |语言         |varchar(10)  |
png_path       |广告图片存储路径 |varchar(150) |
status         |状态(0:未发布；1：已发布；2：下架)|varchar(1)|
up_time        |上架时间    |datetime    |
off_time       |下架时间    |datetime    |
click          |点击量      |int         |
link_type      |链接类型(0:无链接；1:有链接)|varchar(1)|
link           |链接地址    |varchar(150) |


### imei表
字段            |含义         |数据类型
---------------|------------|-------------|
id             |PK          |int  |
phname         |手机名称-显示用 | varchar(50)  |
phimei         |IMEI          |varchar(50)  |





## api说明


### /test/testgg 
请求参数 
tcode  0或1    1表示是测试数据，0表示是上线数据
code   开屏广告的code

eg:   http://127.0.0.1:8080/test/testgg?tcode=1&code=70a08e32-1bd1-4a9a-a1d8-4a29f97d96d2


### IMEI 增删查
/imei/add    参数phname,phimei

/imei/del    参数id

/imei/list   



### 请求app列表(/app/submittedList,/app/unapprovedList,/app/approvedList)

```
 [
    {
      "code":"352584063586355",
      "name":"weline",
      "dev":"shanchuan",
      "link":"https://play.google.com/store/apps/details?id=cn.xender",
      "channel":"andouya_google",
      "position":"1",
      "up":"2015/03/04 17:45:05",
      "off":"2016/03/04 17:45:05",
      "type":"phone tool",
      "lang":"cn",
      "status":"0",
      "icon":"#######",
      "price":"12.9",
      "size":"1.2",
      "note":"a good tool for mobile phone"
    },
    {
      "code":"262584063586377",
      "name":"xender",
      "dev":"shanchuan",
      "link":"https://play.google.com/store/apps/details?id=cn.xender",
      "channel":"andouya_google",
      "position":"1",
      "up":"2015/03/04 17:45:05",
      "off":"2016/03/04 17:45:05",
      "type":"phone tool",
      "lang":"cn",
      "status":"0",
      "icon":"#######",
      "price":"12.9",
      "size":"1.2",
      "note":"a good tool for mobile phone"
    }
 
 ]

```

### 提交app(/app/submitApp)

```
 [
    {
      "code":"352584063586355",
      "name":"weline",
      "dev":"shanchuan",
      "link":"https://play.google.com/store/apps/details?id=cn.xender",
      "channel":"andouya_google",
      "type":"phone tool",
      "lang":"cn",
      "status":"0",
      "icon":"#######",
      "price":"12.9",
      "size":"1.2",
      "note":"a good tool for mobile phone"
    }
 ]
 
 ```
 
### app上架(/app/approveApp)

```
  
  传递参数：http://ip:port/app/approveApp?app_code=352584063586355


```

### app下架(/app/unapproveApp)

```

  传递参数：http://ip:port/app/unapproveApp?app_code=352584063586355
  
```

### 增加app(/app/addApp)


### 增加app(/app/delApp)

```

  传递参数示例：http://ip:port/app/delApp?app_code=352584063586355
  
```


### user列表(/app/users)

```
  [
    {
    "uid":"weline",
    "password":"123",
    "type":"0",
    "status":"1",
    "org":"Beijing Anqizhilian Limited",
    "channel":"andou_google"
    },
    {
    "uid":"xendr",
    "password":"123",
    "type":"1",
    "status":"0",
    "org":"Beijing Anqizhilian Limited",
    "channel":"andou_google"
    }
  ]
```

### 增加user(/app/adduser)

```
  [
   {
    "uid":"weline",
    "password":"123",
    "type":"0",
    "status":"1",
    "org":"Beijing Anqizhilian Limited",
    "channel":"andou_google"
   }
  ]
  
``` 

### 启用/禁用user(/app/userauth)

```
   传递参数示例：
   http://ip:port/userauth?uid=weline&status=1
   http://ip:port/userauth?uid=weline&status=2
  
```

### 修改密码(/app/pass)

```
   传递参数示例：
   http://ip:port/pass?uid=weline&password=123
  
```

### 修改app位置

```
    url: "app/changePosition";
    data{
        app_code:xxxxx,
        step:x;  //1:up;-1:down
    }
 ```
    
### 上传 app

```
    url:"app/adUpload"
    data:{
        app_code:xxx
    }
```


## apk 信息

apk上传完成后，从apk包中解析出name信息，并传到浏览器，作为默认表单信息

```
    url:"app/apkInfo"
    data:{
        app_name:xxx,
        icon_temp:xxxxxxxx
    }
```

### 手机端recommend请求

 ```
 http://ip:port/mobile/recommend?channel=gfive&lang=en
 
 返回

   [
    {
      "code":"352584063586355",
      "name":"weline",
      "developer":"shanchuan",
      "link":"https://play.google.com/store/apps/details?id=cn.xender",
      "channel":"andouya_google",
      "position":"1",
      "type":"phone tool",
      "icon_path":"storage/weline2.jpeg",
      "apk_path":
      "size":"1.2",
      "package":"cn.weline",
      "note":"a good tool for mobile phone",
	  "versioncode":"",
	  "versionname":"", 
    },
    {
      "code":"352584063586356",
      "name":"angry birds",
      "developer":"shanchuan",
      "link":"",
      "channel":"andouya_google",
      "position":"2",
      "type":"phone tool",
      "icon_path":"storage/weline2.jpeg",
      "apk_path":"storage/com.sec.android.cmccportal-1.apk",
      "size":"1.2",
      "package":"com.rovio.angrybirdsseasons",
      "note":"a good tool for mobile phone",
	  "versioncode":"",
	  "versionname":"", 
    }
 
 ```
 
### app手机下载量统计(按日期和渠道号)

 ```
  手机下载App后，POST json到：http://ip:port/statistic/downcount
  
  [
    
   {
   "app_code":"45d444a5-d8fd-7600-f280-8366-5743ca06",
   "time":"2015-04-29 17:28:00",
   "imei":"352136061861502",
   "ip":"192.168.1.43"
    }    
  ]

 ```
 
### app手机下载量统计(按渠道号)[暂未用]

 ```
  传入参数：http://ip:port/statistic/countgraph?channel=123&type=w
  其中type有周（w）、月（m）、季（s）、年（y）几种类型，默认为周，
  返回结果：
  
  [
    {
    name:"test1"
    data:
    [
      {
        "time":"w1",
        "count":"1000"
       },
       {
        "time":"w2",
        "count":"1000"
      },
       {
        "time":"w3",
        "count":"1000"
       },
       {
       "time":"w4",
       "count":"1000"
      }
    },
    {
    name:"test2"
    data:
    [
      {
        "time":"w1",
        "count":"900"
       },
       {
        "time":"w2",
        "count":"1300"
      },
       {
        "time":"w3",
        "count":"1100"
       },
       {
       "time":"w4",
       "count":"1500"
      }
    }
    ...
    
    
  ]

 ```
 
### app手机每日下载量

 ```
 传入参数：http://ip:port/statistic/dailyCount?app_code=1234567890&start=20150429&end=20150501
 返回json:
 [
    {
      "time":"2015/04/29",
      "count":2
      }, 
    {
      "time":"2015/04/30",
      "count":1
     }, 
    {
      "time":"2015/05/01",
      "count":1
    }
 ]
  
 ```
 
### ad手机请求
 
写死的测试IMEI  863061026969566，863061026978278，358142032607234

 
 
 ```
 请求：http://192.168.1.215:8080/mobile/adnew?country=cn&lang=zh&imei=863061026969566
 返回json:
 [
  {
   "png_path":"http://7xjh9n.com1.z0.glb.clouddn.com/0f4622fb-dff2-46b8-8ae1-c34491063d3b",
   "link":"http://ip:port/xxxxxxxx"
  }
 ]
 若没有链接，返回：
  [
  {
   "png_path":"http://7xjh9n.com1.z0.glb.clouddn.com/0f4622fb-dff2-46b8-8ae1-c34491063d3b",
  }
 ]

 ```

 
### ad列表(/ad/submittedList,/ad/unapprovedList,/ad/approvedList)
 
  已提交、未上架、已上架返回结果基本相同，后台只是根据status进行区分
 
 ```
  [
   {
    "title":"xender3.0,the best transfer tool",
    "country":"india",
    "lang":  "en",
    "png_path":"http://7xjh9n.com1.z0.glb.clouddn.com/51efe4bf-4e6d-4faf-a330-9990413f56b5",
    "up_time": "2015/04/30",
    "off_time":"2015/05/30",
    "click": "10000",
    "link_type":"1",
    "link":"http://ip/ad_path......"   
   },
   {
   ......
   
   }
  ]
 
 ```
 
### ad提交(/ad/submitAd)
 
 ```
 [
   {
    "title":"xender3.0,the best transfer tool",
    "channel":"x",
    "lang":  "en",
    "png_path":"http://7xjh9n.com1.z0.glb.clouddn.com/51efe4bf-4e6d-4faf-a330-9990413f56b5",
    "up_time": "2015/04/30",
    "off_time":"2015/05/30",
    "link_type":"1",
    "link":"http://ip/ad_path......" 
 
   }
 ]
 
 ```
 
### ad上架(/aa/approveAa)
 
 ```
  http://ip:port/aa/approveAa?ad_code=352584063586355
 
 ```

### ad下架(/aa/unapproveAa)
 
 ```
 http://ip:port/aa/unapproveAd?ad_code=352584063586355
 
 ```
 
### 上传 ad

```
    url:"ad/adUpload"
    data:{
        app_code:xxx
    }
```

### ad click统计

 http://ip:port/statistic/click

```
  [
   {
   "code":"45d444a5-d8fd-7600-f280-8366-5743ca06",
   "time":"2015-04-29 17:28:00",
   "imei":"352136061861502",
   "ip":"192.168.1.43"
    }    
  ]
```

### ad show统计

 http://ip:port/statistic/show

```
  [
   {
   "code":"45d444a5-d8fd-7600-f280-8366-5743ca06",
   "time":"2015-04-29 17:28:00",
   "imei":"352136061861502",
   "ip":"192.168.1.43"
    }    
  ]
```

### app 显示多天的统计

http://127.0.0.1:8080/app/summary?pageno=1&date=2015/06
	
```
 
 
{
"datas":[{
		"data" : [{
				"name" : "MuPDF",
				"downloadcount" : "0"
			}, {
				"name" : "写字板v1.5",
				"downloadcount" : "0"
			}, {
				"name" : "京东",
				"downloadcount" : "0"
			}, {
				"name" : "Tencent Video",
				"downloadcount" : "0"
			}, {
				"name" : "WIFI万能钥匙",
				"downloadcount" : "0"
			}, {
				"name" : "Xender",
				"downloadcount" : "0"
			}, {
				"name" : "Xender",
				"downloadcount" : "0"
			}, {
				"name" : "Xender",
				"downloadcount" : "0"
			}, {
				"name" : "微連",
				"downloadcount" : "0"
			}, {
				"name" : "Xender",
				"downloadcount" : "0"
			}
		],
		"date" : "06/01"
	}, {
		"data" : [{
				"name" : "MuPDF",
				"downloadcount" : "0"
			}, {
				"name" : "写字板v1.5",
				"downloadcount" : "0"
			}, {
				"name" : "京东",
				"downloadcount" : "0"
			}, {
				"name" : "Tencent Video",
				"downloadcount" : "0"
			}, {
				"name" : "WIFI万能钥匙",
				"downloadcount" : "0"
			}, {
				"name" : "Xender",
				"downloadcount" : "0"
			}, {
				"name" : "Xender",
				"downloadcount" : "0"
			}, {
				"name" : "Xender",
				"downloadcount" : "0"
			}, {
				"name" : "微連",
				"downloadcount" : "0"
			}, {
				"name" : "Xender",
				"downloadcount" : "0"
			}
		],
		"date" : "06/02"
	} 
],
"pagescount":2 
}

``` 
 
 

### ad 显示多天的统计

http://127.0.0.1:8080/ad/summary?pageno=1&date=2015/06
	
``` 
{

"datas":[{
		"data" : [{
				"name" : "dfdfdf",
				"clickcount" : "0",
				"showcount" : "0"
			}, {
				"name" : "开屏广告",
				"clickcount" : "0",
				"showcount" : "0"
			}, {
				"name" : "sdf",
				"clickcount" : "0",
				"showcount" : "0"
			}, {
				"name" : "开屏广告",
				"clickcount" : "0",
				"showcount" : "0"
			}, {
				"name" : "sky",
				"clickcount" : "0",
				"showcount" : "0"
			}, {
				"name" : "ld",
				"clickcount" : "0",
				"showcount" : "0"
			}, {
				"name" : "开屏广告",
				"clickcount" : "0",
				"showcount" : "0"
			}, {
				"name" : "开屏广告",
				"clickcount" : "0",
				"showcount" : "0"
			}, {
				"name" : "开屏广告",
				"clickcount" : "0",
				"showcount" : "0"
			}, {
				"name" : "ldd",
				"clickcount" : "0",
				"showcount" : "0"
			}
		],
		"date" : "06/01"
	}, {
		"data" : [{
				"name" : "dfdfdf",
				"clickcount" : "0",
				"showcount" : "0"
			}, {
				"name" : "开屏广告",
				"clickcount" : "0",
				"showcount" : "0"
			}, {
				"name" : "sdf",
				"clickcount" : "0",
				"showcount" : "0"
			}, {
				"name" : "开屏广告",
				"clickcount" : "0",
				"showcount" : "0"
			}, {
				"name" : "sky",
				"clickcount" : "0",
				"showcount" : "0"
			}, {
				"name" : "ld",
				"clickcount" : "0",
				"showcount" : "0"
			}, {
				"name" : "开屏广告",
				"clickcount" : "0",
				"showcount" : "0"
			}, {
				"name" : "开屏广告",
				"clickcount" : "0",
				"showcount" : "0"
			}, {
				"name" : "开屏广告",
				"clickcount" : "0",
				"showcount" : "0"
			}, {
				"name" : "ldd",
				"clickcount" : "0",
				"showcount" : "0"
			}
		],
		"date" : "06/02"
	} 
]
,
"pagescount":2 
}


``` 
 
 
### 语言字典表 [暂未用]
 
 ```
  浏览器访问:http//ip:port/dic/country
  返回结果：
  [
   {
    "code":"01",
    "cn_name":"中国",
    "en_name":"China"
   }，
   { 
    "code":"01",
    "cn_name":"美国",
    "en_name":"USA"
  }
  ...
  ]
  
  ```
  
### 国家字典表 [暂未用]

```
  浏览器访问:http//ip:port/dic/language
  返回结果：
  [
   {
   "code":"01",
   "name":"中文",
   "native_name":"中文"
   },
    {
    "code":"02",
    "name":"英语",
    "native_name":"English"
    }
  ]

```

### 语言代码 [暂未用]

 ```
   中文 :zh
   台湾 :zh_TW
   英文 :en
   西班牙 :es
   葡萄牙 :pt
   法国 :fr
   日本 :ja
   荷兰 :nl
   俄罗斯 :ru
   瑞典 :sv
 ```  
 
 ### 国家代码
 
  		[{
    		name: "中国",
    		code : "cn"
    	},{
    		name : "美国",
    		code : "us"
    	},{
    		name : "韩国",
    		code : "kr"
    	},{
    		name : "印度",
    		code : "in"
    	},{
    		name : "德国",
    		code : "de"
    	},{
    		name : "法国",
    		code : "fr"
    	},{
    		name : "巴西",
    		code : "br"
    	},{
    		name : "香港",
    		code : "hk"
    	}]	 
    	
    	
### 开屏广告统计 
	
	请求:{
		url:"ad/summary",
		data:{
			y:2015,
			d:5,
			clickCount:()
		}
	}
	
	

	返回结构： 
		{
			[{
				date:"5/1",
				data:[{
					name:闪传,
					count:2000
				} , {
					name:微博,
					count: 4000
				}]
			},{
				date:"5/2",
				data:[{
					name:闪传,
					count:2000
				} , {
					name:微博,
					count: 4000
				}]
			}]
		} 

	说明 : 统计