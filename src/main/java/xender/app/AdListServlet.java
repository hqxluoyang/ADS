package xender.app;

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

public class AdListServlet extends HttpServlet {

	private static final long serialVersionUID = 5990560968333779513L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		/*
		 * HttpSession session=request.getSession();
		 * if(session==null||Util.isAdminUser(request)){ return; }
		 */

		String requestPath = request.getServletPath();
		String sql = "";

		if (requestPath.equals("/ad/submittedList")) {
			sql = "select code,IF(tcode>0,'true','false') as tcode,title,note,country,language as lang,png_path,link_type,link from ad where status='0'";
		} else if (requestPath.equals("/ad/approvedList")) {
			sql = "select code,IF(tcode>0,'true','false') as tcode,title,note,country,language as lang,png_path,DATE_FORMAT(up_time,'%Y/%m/%d') as up,link_type,link,click,display" + " from ad where status='1' order by up desc";
		} else if (requestPath.equals("/ad/unapprovedList")) {
			sql = "select code,IF(tcode>0,'true','false') as tcode,title,note,country,language as lang,png_path,DATE_FORMAT(up_time,'%Y/%m/%d') as up,DATE_FORMAT(off_time,'%Y/%m/%d') as off,link_type,link," + "click,display from ad where status='2' order by off desc";
		} else if (requestPath.equals("/aa/submittedList")) {
			sql = "select code,IF(tcode>0,'true','false') as tcode,title,note,country,language as lang,png_path,link_type,link from ad where status='0'";
		} else if (requestPath.equals("/aa/approvedList")) {
			sql = "select code,IF(tcode>0,'true','false') as tcode,title,note,country,language as lang,png_path,DATE_FORMAT(up_time,'%Y/%m/%d') as up,link_type,link,click,display" + " from ad where status='1' order by up desc";
		} else if (requestPath.equals("/aa/unapprovedList")) {
			sql = "select code,IF(tcode>0,'true','false') as tcode,title,note,country,language as lang,png_path,DATE_FORMAT(up_time,'%Y/%m/%d') as up,DATE_FORMAT(off_time,'%Y/%m/%d') as off,link_type,link," + "click,display from ad where status='2' order by off desc";
		}

		if (!sql.equals("")) {
			Gson gson = new Gson();
			Map<String, Object> map;
			try {
				map = JdbcTemplate.getInstance().queryForMap(sql);
				ArrayList<String> array = new ArrayList<String>();
				Iterator<String> itr = map.keySet().iterator();
				while (itr != null && itr.hasNext()) {
					String key = itr.next();
					Object value = map.get(key);
					String jsonStr = gson.toJson(value);
					array.add(jsonStr);
				}
				OutputStreamWriter writer = new OutputStreamWriter(response.getOutputStream(), "UTF-8");
				writer.write(array.toString());
				writer.flush();

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

}