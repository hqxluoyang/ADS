package xender.app.connection;


import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.jolbox.bonecp.BoneCP;


public class BoneCPConnection  implements DBConnection {

    private Connection connection=null;
    private static Logger logger=LoggerFactory.getLogger(BoneCPConnection.class);
 
	public Connection connection() throws SQLException {
    	return createConnection();		
    	
	}
	
	
	private synchronized Connection createConnection(){							
			Properties prop=MysqlDBConfig.getInstance().config();
			BoneCP connectionPool=BoneCPManager.getInstance().init(prop);
			Connection connection=null;
	    	try {
	    		connection=connectionPool.getConnection();
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
	    	return connection;
	}
	

	public void close() {		
		if(connection!=null){
			try{
				connection.close();
				connection=null;				
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
				
	}
	
	

}
