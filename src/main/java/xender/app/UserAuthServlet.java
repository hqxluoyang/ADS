package xender.app;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import xender.app.access.JdbcTemplate;

public class UserAuthServlet extends HttpServlet {
	
	private static final long serialVersionUID = 8483958342758278543L;
	private static Logger logger=LoggerFactory.getLogger(UserAuthServlet.class);

	public void doGet(HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException, IOException {
		
		String userId=request.getParameter("uid");
		String status=request.getParameter("status");
		
		if(userId!=null&&(status.equals("1")||status.equals("2"))){
			String sql="update user set status='"+status+"' where user_id='"+userId+"'";
			try {
				logger.debug("sql:{}",sql);
				boolean result=JdbcTemplate.getInstance().execute(sql);
				if(result){
					logger.debug("{}  user: {}",userId,status.equals("1")?"enable":"disable",userId);
					
					OutputStreamWriter writer=new OutputStreamWriter(response.getOutputStream(),"UTF-8");
					writer.write("success");
					writer.flush();
				}
				

			} catch (SQLException e) {
				e.printStackTrace();
			}	
		}
	}
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) {
		
	}

}
