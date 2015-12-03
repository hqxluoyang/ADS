/**
 * WeLine server side implementation.
 *
 * @copyright shanchuan.cn, all rights reserved.
 */


package connection;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.junit.Test;

import xender.app.access.JdbcTemplate;


/**
 * @author Richard Hu (husiyou@shanchuan.cn)
 * @Date  2015年3月3日
 */

public class ConnectonTest {

	//@Test
	public void testQuery() throws SQLException{
		String sql="SELECT id FROM toplist";
		Integer rs=(Integer) JdbcTemplate.getInstance().queryForObject(sql);
		System.out.println(rs); // should print out "1"'
	}
	
	//@Test
	public void testColumList() throws SQLException{
		String sql="SELECT id,type FROM weline.toplist where id=2";
		List<Object> list=JdbcTemplate.getInstance().queryForList(sql);
		for(int i=0;list!=null&&i<list.size();i++){
			System.out.println(list.get(i));
		}
	}
	
	//@Test
	public void testColumnsList() throws SQLException{
		String sql="SELECT name,type FROM weline.toplist";
		List<Object> list=JdbcTemplate.getInstance().queryForList(sql);
		for(int i=0;list!=null&&i<list.size();i++){
			List row=(List) list.get(i);
			for(int n=0;n<row.size();n++){
				System.out.println(row.get(n));
			}
		}
	}
	//@Test
	public void testColumnMap() throws SQLException{
		String sql="SELECT name,type,seq FROM weline.toplist order by seq desc limit 1,5";
		Map<String,Object> map=JdbcTemplate.getInstance().queryForMap(sql);
		int size=map.size();
		for(int i=1;i<=size;i++){
			Map row=(Map) map.get(i+"");
			Iterator keys=row.keySet().iterator();
			while(keys.hasNext()){
				Object key=keys.next();
				System.out.println(key+"="+row.get(key));
			}
			//System.out.println(row.get("name"));
		}
		
	}

   //@Test
    public void testInsert() throws SQLException{
    	String sql="insert into weline.app(id,code,name,type,price,size,status,language,developer,link,"
				+ "channel,position,icon,note,up_time,off_time,reserve1,reserve2,reserve3,reserve4) values ('11','10','微连','工具',11.1,1.2,'1','中文','闪传',"
				+ "'https://play.google.com/store/apps/details?id=cn.xender','yundou_google',1,'afadfsf','good','2015/03/04 17:45:05','2015/03/04 17:45:05','r1','r2','r3','r4')";
    	boolean result=JdbcTemplate.getInstance().execute(sql);
    	System.out.println("result:"+result);
    	
    }
    
	//@Test
    public void testColumnsMap() throws SQLException{
    	String sql="SELECT name,type FROM weline.app where id=11";
    	Map<String,Object> map=JdbcTemplate.getInstance().queryForMap(sql);
    	System.out.println(map.get("name")+","+map.get("type"));
		
	}
	
    //@Test
    public void update() throws SQLException{
    	String sql="update weline.toplist set seq=6 where id=6";
    	int result=JdbcTemplate.getInstance().update(sql);
    	System.out.println("result:"+result);
    }
    //@Test
    public void updateBatch() throws SQLException{
    	String sql1="insert into weline.toplist(id,name,description,type) values(7,'xender3','new version','app') ";
    	String sql2="insert into weline.toplist(id,name,description,type) values(8,'xender4','new version','app') ";
    	String sql3="insert into weline.toplist(id,name,description,type) values(9,'xender5','new version','app') ";
    	
    	String[] sql=new String[]{sql1,sql2,sql3};
    	 JdbcTemplate.getInstance().execute(sql);
    }
    
    //@Test
    public void updateBatch2() throws SQLException{
    	String sql1="update weline.toplist set seq=11 where id=71";
    	String sql2="update weline.toplist set seq=23 where id=8";
    	String sql3="update weline.toplist set seq=44 where id=9";
    	
    	String[] sql=new String[]{sql1,sql2,sql3};
    	 JdbcTemplate.getInstance().execute(sql);

    	
    }
    
    //@Test
    public void testInsertUser() throws SQLException {
    	String sql="insert into weline.user values ('1','test','测试','1','1','安奇智联','2','google')";
    	JdbcTemplate.getInstance().execute(sql);
    	
    }
    
    //@Test
    public void testInsertMesg() throws SQLException {
    	String sql="insert into weline.message values (1,'测试')";
    	JdbcTemplate.getInstance().execute(sql);
    	
    }
    
	
}
