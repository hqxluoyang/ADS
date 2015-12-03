/**
 * WeLine server side implementation.
 *
 * @copyright shanchuan.cn, all rights reserved.
 */


package xender.app.access;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

/**
 * @author Richard Hu (husiyou@shanchuan.cn)
 * @Date  2015年3月3日
 */

public interface DBAccess {
	
	boolean execute(String sql) throws SQLException;
	List<Object> queryForList(String sql) throws SQLException;
	int queryForInt(String sql) throws SQLException;
	Object queryForObject(String sql) throws SQLException;
	Map<String,Object> queryForMap(String sql) throws SQLException;
	int update(String sql) throws SQLException;
	

}
