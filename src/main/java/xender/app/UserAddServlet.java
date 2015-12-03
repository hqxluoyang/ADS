package xender.app;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.sql.SQLException;
import java.util.UUID;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import xender.app.access.JdbcTemplate;


public class UserAddServlet extends HttpServlet {

	private static final long serialVersionUID = 3696117427830413111L;
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException {
		this.process(request, response);
		
		
	}
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException {
		this.process(request, response);

	}
	
	private void process(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException{
		
		String userId=request.getParameter("user_id");
		String org=request.getParameter("org");
		String password=request.getParameter("password");
		//String state=request.getParameter("state");
		//String type=request.getParameter("type");
		String channel=request.getParameter("channel");
		String name=request.getParameter("name");
		
		
		String id=(UUID.randomUUID().toString().replace("-",""));
		String sql="insert into user(id,user_id,name,password,status,type,channel,org) values ('"+id+"','"
		+userId+"','"+name+"','"+password+"','1','2','"+channel+"','"+org+"')";
		
		try {
			boolean success=JdbcTemplate.getInstance().execute(sql);
			if(success){
				OutputStreamWriter writer=new OutputStreamWriter(response.getOutputStream(),"UTF-8");
				writer.write("success");
				writer.flush();	
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
	

}
