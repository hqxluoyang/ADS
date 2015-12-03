

use appmgr;

CREATE TABLE user (
  id varchar(32)  NOT NULL,
  user_id varchar(20),
  name varchar(30),
  password varchar(30),
  status int,
  type int,
  org  varchar(100),
  channel varchar(20),
  PRIMARY KEY (id)
)   DEFAULT CHARSET=utf8;


create TABLE app (
  id varchar(32)  NOT NULL,
  code varchar(50),
  name varchar(30),
  type varchar(10),
  price DECIMAL(6,2),
  size int,
  status varchar(1),
  language varchar(10),
  country varchar(10),
  developer varchar(30),
  link varchar(100),
  channel varchar(20),
  position int,
  icon_path varchar(150),
  apk_path varchar(150),
  up_time DATETIME,
  off_time DATETIME,
  down int,
  note varchar(100),
  stars DECIMAL(2,1),
  reserve1 varchar(30),
  reserve2 varchar(30),
  PRIMARY KEY (id)
)  DEFAULT CHARSET=utf8;

create TABLE download (
  id varchar(32)  NOT NULL,
  code varchar(50),
  time  DATETIME,
  imei  varchar(20),
  ip  varchar(30),
  PRIMARY KEY(id)
) DEFAULT CHARSET=utf8;

create TABLE downstatistic (
  id varchar(32) NOT NULL,
  code varchar(50),
  time DATETIME,
  count int,
  PRIMARY KEY(id)
) ENGINE= DEFAULT CHARSET=utf8;

create TABLE ad (
  id varchar(32) NOT NULL,
  code varchar(50),
  title varchar(50),
  note  varchar(200),
  country varchar(20),
  channel varchar(10),
  language varchar(10),
  png_path varchar(150),
  status varchar(1),
  up_time DATETIME,
  off_time DATETIME,
  click int,
  link_type varchar(1),
  link varchar(150),
  PRIMARY KEY(id)
) DEFAULT CHARSET=utf8;

create TABLE click (
  id varchar(32) NOT NULL,
  code varchar(50),
  time  DATETIME,
  imei  varchar(20),
  ip  varchar(30),
  PRIMARY KEY(id)
) DEFAULT CHARSET=utf8;

create TABLE country (
  id varchar(32)  NOT NULL,
  code varchar(2),
  cn_name varchar(30),
  en_name varchar(30),
  PRIMARY KEY (id)
) DEFAULT CHARSET=utf8;

create TABLE language (
  id varchar(32) NOT NULL,
  code varchar(2),
  cn_name varchar(12),
  native_name varchar(20),
  en_name varchar(20)
  PRIMARY KEY (id)
) DEFAULT CHARSET=utf8;