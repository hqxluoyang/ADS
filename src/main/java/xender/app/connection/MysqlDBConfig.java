package xender.app.connection;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;


public class MysqlDBConfig {

	private static MysqlDBConfig instance = null;

	public static MysqlDBConfig getInstance() {
		synchronized (MysqlDBConfig.class) {
			if (instance == null) {
				return new MysqlDBConfig();
			}
		}
		return instance;
	}

	// --------connection config-----------
	/*
	private static final String className = "com.mysql.jdbc.Driver";
	private static final String url = "jdbc:mysql://192.168.1.49/weline?useUnicode=true&characterEncoding=UTF-8";
	private static final String user = "root";
	private static final String password = "1";
	*/

	public Properties config() {
		
		InputStream input=MysqlDBConfig.class.getClassLoader().getResourceAsStream("jdbc.properties");
		Properties prop = new Properties();
		try {
			prop.load(input);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		/*
		prop.setProperty("className", className);
		prop.setProperty("url", url);
		prop.setProperty("user", user);
		prop.setProperty("password", password);
		*/

		return prop;
	}

}
