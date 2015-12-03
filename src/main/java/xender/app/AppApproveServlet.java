package xender.app;

import java.io.IOException;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import xender.app.access.JdbcTemplate;

public class AppApproveServlet extends HttpServlet{
	
	private static final long serialVersionUID = -8837775725812908928L;

	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
		
	}
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
		this.process(request, response);
	}
	
	
	private void process(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
		
		String path=request.getServletPath();
		String sql="";
		
		String appCode=request.getParameter("code");
		DateFormat df=new SimpleDateFormat("yyyy/MM/dd");
		
		try{
		
		Integer pos=(Integer) JdbcTemplate.getInstance().queryForObject("select max(position) from app where status='1'");
		
		int position=1;
		if(pos!=null){
			position=pos.intValue()+1;
		}
		
		if(path.equals("/app/approveApp")){
			sql="update app app set app.status='"+1+"',app.up_time='"+df.format(new Date())+"',app.position="+position+"  where app.code='"+appCode+"'";
		}else if(path.equals("/app/unapproveApp")){
			sql="update app app set app.status='"+2+"',app.off_time='"+df.format(new Date())+"'  where app.code='"+appCode+"'";
		}
		
		if(sql!=""){
			JdbcTemplate.getInstance().execute(sql);
		}
	

		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}

}
