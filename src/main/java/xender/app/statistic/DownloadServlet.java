package xender.app.statistic;

import java.io.IOException;
import java.sql.SQLException;
import java.util.UUID;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.util.Streams;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.google.gson.Gson;
import xender.app.access.JdbcTemplate;

public class DownloadServlet extends HttpServlet {

	private static final long serialVersionUID = 6284655637116873537L;
	private static Logger logger=LoggerFactory.getLogger(DownloadServlet.class);
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException {
			
		Gson gson=new Gson();
		String jsonMsg = Streams.asString(request.getInputStream(), "utf-8");
		DownloadVO download=gson.fromJson(jsonMsg, DownloadVO.class);
		
		try {
		
		String id=UUID.randomUUID().toString().replace("-", "");
		String insert="insert into download(id,code,time,imei,ip) values ('"+id+"','"+download.getCode()+"',"
				+ "'"+download.getTime()+"','"+download.getImei()+"','"+download.getIp()+"')";
		String update="update app set down=(select sum(count) from download where code='"+download.getCode()+"') where code='"+download.getCode()+"'";
		
		String[] sql=new String[]{insert,update}; 	
		JdbcTemplate.getInstance().execute(sql);	
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

}
