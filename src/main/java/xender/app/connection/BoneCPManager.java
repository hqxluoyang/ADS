package xender.app.connection;

import java.sql.SQLException;
import java.util.Properties;

import com.jolbox.bonecp.BoneCP;
import com.jolbox.bonecp.BoneCPConfig;

public class BoneCPManager {
	
	private static int minConnectionsPerPartition=1;
	private static int maxConnectionsPerPartition=5;
	
	private static BoneCPManager instance=null;
	private static BoneCP connectionPool=null;
	
	public static BoneCPManager getInstance(){
		synchronized(BoneCPManager.class){
			if(instance==null){
				instance=new BoneCPManager();
			}
		}
		return instance;
	}
	
	public synchronized BoneCP init(Properties prop){
		if(prop==null||prop.isEmpty()){
			throw new IllegalArgumentException("config infomation is null.");
		}
		String className=prop.getProperty("className");
		String url=prop.getProperty("url");
		String user=prop.getProperty("user");
		String password=prop.getProperty("password");
		
		if(connectionPool==null){
			try {
				Class.forName(className);
				BoneCPConfig config=new BoneCPConfig();
		    	config.setJdbcUrl(url);
		    	config.setUser(user);
		    	config.setPassword(password);
		    	
		    	config.setMinConnectionsPerPartition(minConnectionsPerPartition);
		    	config.setMinConnectionsPerPartition(maxConnectionsPerPartition);
		    	config.setPartitionCount(1);	
		    	connectionPool=new BoneCP(config);
		    	
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return connectionPool;
	}
	
	
	
	public  void shutdown(){
		if(connectionPool!=null){
			connectionPool.shutdown();
			connectionPool=null;
		}
	}
	
	

}
