package xender.app.dic;

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
import xender.app.access.JdbcTemplate;
import com.google.gson.Gson;

public class LanguageServlet extends HttpServlet {

	private static final long serialVersionUID = 299928473258238223L;
	
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException {
		
		String sql="select code,name,native_name from language";
		
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
