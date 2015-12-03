package xender.app.connection;

import java.sql.Connection;
import java.sql.SQLException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public final class DBConnectionFactory {

	private static Logger logger=LoggerFactory.getLogger(DBConnectionFactory.class);
	
	private static DBConnectionFactory instance=null;
	public static DBConnectionFactory instance(){
		synchronized(DBConnectionFactory.class){
			if(instance==null){
				instance=new DBConnectionFactory();
			}
		}
		return instance;
	}

	public Connection getConnection(){
		DBConnection dbConnection=new BoneCPConnection();
		Connection connection=null;
		try {
			connection=dbConnection.connection();
			//logger.debug("DB connection created.");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return connection;
	}
	
	
}
