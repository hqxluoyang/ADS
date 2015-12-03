package xender.app.mobile;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import xender.app.access.JdbcTemplate;

public class DownloadServlet extends HttpServlet {

	private static final long serialVersionUID = 3875814479095635736L;
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException {
		
		String appCode=request.getParameter("code");
		
		String sql="select apk_path from app where code='"+appCode+"'";
		
		try {
			List<Object> list=JdbcTemplate.getInstance().queryForList(sql);
			Object apk=list.get(0);
			if(apk!=null){
				String sql2="update  downcount set count=(select count+1 from downcount where code='"+appCode+"'),day="+(new Date())+" where code='"+appCode+"'";
			    String sql3="udate weline.app set down=(select count+1 from weline.app where code='"+appCode+"') where code='"+appCode+"'";
			    
			    JdbcTemplate.getInstance().execute(sql2);
			    JdbcTemplate.getInstance().execute(sql3);	

			}
			
			

			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		
	}

}
