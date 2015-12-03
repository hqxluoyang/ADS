package xender.app;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import xender.app.access.JdbcTemplate;


public class AppListServlet extends HttpServlet{
	
	private static final long serialVersionUID = -8837775725812908928L;

	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
		
	}
	
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
		
		
		HttpSession session=request.getSession();
		if(session==null||Util.getChannel(request)==null){
			return;
		}
		
		String requestPath=request.getServletPath();
		
		String status="";
		String sql="";
		if(requestPath.equals("/app/submittedList")){
			status="0";
			sql="SELECT code,icon_path as icon,name,type,price,FORMAT((size/(1024*1024)),1) as size,status,language,developer,link,channel,country,position,note,"
		   +"down,stars FROM  app  where status='"+status+"'";

		}else if(requestPath.equals("/app/approvedList")) {
			status="1";
			sql="SELECT code,icon_path as icon,name,type,price,FORMAT((size/(1024*1024)),1) as size,status,language,developer,link,channel,country,position,note,"
					+ "DATE_FORMAT(up_time,'%Y/%m/%d') as up,down,stars FROM  app  where status='"+status+"'";
			
		}if(requestPath.equals("/app/unapprovedList")) {
			status="2";
			sql="SELECT code,icon_path as icon,name,type,price,FORMAT((size/(1024*1024)),1) as size,status,language,developer,link,channel,country,position,note,"
					+ "DATE_FORMAT(up_time,'%Y/%m/%d') as up,DATE_FORMAT(off_time,'%Y/%m/%d') as off,down,stars FROM  app  where status='"+status+"'";
			
		}
		
		if(!status.equals("")){
			
			if(!Util.isAdminUser(request)){  //normal user
				String channel=Util.getChannel(request);
				if(channel!=null&&!channel.equals("")){
					sql+=" and channel='"+channel+"'";
				}

			}		
			
			String lang=Util.getLanguage(request);
			if(lang!=null&&!"".equals(lang)){
				sql+=" and language ='"+lang+"'";
			}
			
			sql+=" order by position asc";
		
			
			
			Gson gson=new Gson();			
			Map<String, Object> map;
			try {
				map = JdbcTemplate.getInstance().queryForMap(sql);			
				ArrayList<String> array=new ArrayList<String>();
				Iterator<String> itr=map.keySet().iterator();
				while(itr!=null&&itr.hasNext()){
					String key=itr.next();
					Object value=map.get(key);
					String jsonStr=gson.toJson(value);
					array.add(jsonStr);
				}
			
				OutputStreamWriter writer=new OutputStreamWriter(response.getOutputStream(),"UTF-8");
				writer.write(array.toString());
				writer.flush();

				
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		
		    	    	
		
	}

}
