package xender.app;

import java.sql.SQLException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import xender.app.access.JdbcTemplate;

public class UserPasswordServlet extends HttpServlet {

	private static final long serialVersionUID = 8533840922080480623L;
	private static Logger logger=LoggerFactory.getLogger(UserPasswordServlet.class);
	
	public void process(HttpServletRequest request,HttpServletResponse response) {
		
		String userId=request.getParameter("user");
		String newPass=request.getParameter("newPass");
		String oldPass=request.getParameter("oldPass");

		
		if(userId!=null&&newPass!=null&&oldPass!=null){
			
			String sql="update user set password='"+newPass+"' where user_id='"+userId+"'";
			try {
				boolean result=JdbcTemplate.getInstance().execute(sql);
				if(result){
					logger.debug("change password for user {} successfully.",userId);
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	}
	
	public void doGet(HttpServletRequest request,HttpServletResponse response) {
		this.process(request, response);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) {
		this.process(request, response);
	}
    
	

}
