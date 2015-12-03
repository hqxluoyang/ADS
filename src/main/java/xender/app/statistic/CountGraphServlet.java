package xender.app.statistic;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import xender.app.access.JdbcTemplate;

public class CountGraphServlet extends HttpServlet {

	private static final long serialVersionUID = 8012636377824470811L;
	
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException {
		
		String channel=request.getParameter("channel");
		
		String sql="select name,code from app where channel='"+channel+"'";
		ArrayList<Object> array=new ArrayList<Object>();
		Gson gson=new Gson();
		try {
			List<Object> list=JdbcTemplate.getInstance().queryForList(sql);
			if(list.size()==0)
				return;
			
			if(list.size()==1){
				String name=(String) list.get(0);
				String appCode=(String) list.get(1);
				ArrayList<Object> data=this.data(appCode);
				Map<String,Object> map=new HashMap<String,Object>();
				map.put("name", name);
				map.put("data", data);
				array.add(map);
			}else {
				
				
				for(int i=0;i<list.size();i++){
					
					Map<String,Object> map2=new HashMap<String,Object>();				
					List<Object> subList=(List) list.get(i);
					String name=(String) subList.get(0);
					String appCode=(String) subList.get(1);
					ArrayList<Object> data=this.data(appCode);
					
					map2.put("name", name);
					map2.put("data", data);	
					
					array.add(map2);
					
				}				
	
				
			}	
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		OutputStreamWriter writer=new OutputStreamWriter(response.getOutputStream(),"UTF-8");
		writer.write(gson.toJson(array));
		
		writer.flush();
		
	}

	
	private ArrayList<Object> data(String appCode){
		
		String sql="select d.time,d.count as count from app a,downcount d where a.code=d.code "
				+ " and d.code='"+appCode+"'";
	
		Map<String, Object> map=null;
		ArrayList<Object> array=new ArrayList<Object>();;

		try {
			map = JdbcTemplate.getInstance().queryForMap(sql);			
			Iterator<String> itr=map.keySet().iterator();
			
			while(itr!=null&&itr.hasNext()){
				String key=itr.next();
				Object value=map.get(key);
			
				array.add(value);
			}
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

		
		return array;
	}


}
