package xender.app.connection;

import java.util.Properties;


public class DBConfig {

	private static DBConfig instance = null;

	public static DBConfig getInstance() {
		synchronized (DBConfig.class) {
			if (instance == null) {
				return new DBConfig();
			}
		}
		return instance;
	}

	// --------connection config-----------
	private static final String className = "org.hsqldb.jdbcDriver";
	private static final String url = "jdbc:hsqldb:mem:test";
	private static final String user = "sa";
	private static final String password = "";

	public Properties config() {
		Properties prop = new Properties();
		prop.setProperty("className", className);
		prop.setProperty("url", url);
		prop.setProperty("user", user);
		prop.setProperty("password", password);

		return prop;
	}

}
