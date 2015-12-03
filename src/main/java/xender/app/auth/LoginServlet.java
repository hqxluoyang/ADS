package xender.app.auth;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.google.gson.Gson;
import xender.app.access.JdbcTemplate;

public class LoginServlet extends HttpServlet{


	private static final long serialVersionUID = -8895674189645269309L;
	private static Logger logger=LoggerFactory.getLogger(LoginServlet.class);
	
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException {
		
		HttpSession session=request.getSession();		
		String userId=request.getParameter("uid");
		String password=request.getParameter("password");
		String lang=request.getParameter("lang");
		
		response.setHeader("Connection", "keep-alive");
		
		OutputStreamWriter writer=new OutputStreamWriter(response.getOutputStream(),"UTF-8");			
		
		if(userId==null||userId.equals("")){
			if(session!=null){
				userId=(String) session.getAttribute("uid");
				String channel=(String) session.getAttribute("channel");
				lang=(String) session.getAttribute("lang");	
				
				if(userId==null||"".equals(userId)){
					response.setStatus(404);
					writer.write("404");
					writer.flush();
				}else {
					Map<String,String> map=new HashMap<String,String>();
					map.put("user", userId);
					map.put("channel", channel);
					map.put("lang", lang);
					Gson gson=new Gson();				
					writer.write(gson.toJson(map));
					writer.flush();
				}				

			}else {
				response.setStatus(404);
				writer.write("404");
				writer.flush();
			}
		}else 
			
		 if(password!=null&&!password.equals("")){
			String sql="select count(*) from user user where user.user_id='"+userId+"' and user.password='"+password+"' and status='1'";
			try {
				int count=JdbcTemplate.getInstance().queryForInt(sql);
				if(count==0){
					response.setStatus(404);
					writer.write("404");
				}else if(count==1) {
										
					HttpSession aSession=request.getSession(true);
					aSession.setAttribute("uid", userId);					
					
					List<Object> list=JdbcTemplate.getInstance().queryForList("select channel,type from user where user_id='"+userId+"'");
					String channel=(String) list.get(0);
					Integer type=(Integer)list.get(1);
					
			        aSession.setAttribute("channel", channel);
			        aSession.setAttribute("type", type);
			        aSession.setAttribute("lang", lang);
					
					Map<String,String> map=new HashMap<String,String>();
					map.put("user", userId);
					map.put("channel", channel);
					map.put("lang", lang);
					
					Gson gson=new Gson();
					String resp=gson.toJson(map);
					writer.write(resp);

	
				}			 
				writer.flush();

			} catch (SQLException e) {
				e.printStackTrace();
			}

		}

	}

}
