package xender.app;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import xender.app.access.JdbcTemplate;
import xender.app.upload.QiniuDelete;

public class AppDeleteServlet extends HttpServlet {

	private static final long serialVersionUID = -496643470939113678L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) {

		String code = request.getParameter("code");

		String sql = "select apk_path,icon_path from app where code='"
				+ code + "'";
		try {
			List<Object> list = JdbcTemplate.getInstance().queryForList(sql);
			if(list.size()==0)
				return;
			
			String apk_path = (String) list.get(0);
			String icon_path = (String) list.get(1);
			QiniuDelete qiniu = new QiniuDelete();
			qiniu.delete(getFileName(apk_path),getFileName(icon_path));
		
			String delet = "delete from app where code='" + code + "'";
			boolean result=JdbcTemplate.getInstance().execute(delet);
			
			if(result){
				OutputStreamWriter writer = new OutputStreamWriter(response.getOutputStream(), "UTF-8");
				writer.write("success");
				writer.flush();
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();		
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}


	}

	private String getFileName(String fullPath) {
		int n = fullPath.lastIndexOf("/");
		return fullPath.substring(n + 1);

	}

}
