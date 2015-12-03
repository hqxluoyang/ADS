package xender.app.connection;

import java.sql.Connection;
import java.sql.SQLException;


public interface DBConnection {
		
	Connection connection() throws SQLException;
	void close();

}
