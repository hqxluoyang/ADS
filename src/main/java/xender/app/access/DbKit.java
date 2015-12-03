package xender.app.access;

import org.nutz.dao.impl.NutDao;

import com.alibaba.druid.pool.DruidDataSource;

public class DbKit {

	private static NutDao dao;

	static {
		if (dao == null) {
			dao = new NutDao();
			DruidDataSource druid = new DruidDataSource();
			druid.setUrl(DbPropertiesUT.get_url());
			druid.setUsername(DbPropertiesUT.get_username());
			druid.setPassword(DbPropertiesUT.get_password());
			druid.setMaxActive(100);// 最多创建多少链接
			druid.setMinIdle(10);// 最少保留多少链接
			druid.setInitialSize(2);// 没有连接的时候一次创建多少
			dao.setDataSource(druid);
		}
	}

	public static NutDao getDao() {
		return dao;
	}

	
}
