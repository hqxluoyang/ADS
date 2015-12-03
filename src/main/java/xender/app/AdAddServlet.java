package xender.app;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.nutz.lang.Lang;
import org.nutz.lang.Strings;

import com.google.gson.Gson;

import xender.app.access.JdbcTemplate;

public class AdAddServlet extends HttpServlet {

	private static final long serialVersionUID = 161327731863928464L;

	String adCode = "";

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		adCode = (String) Util.retrieveObject(request, "code");
		
		// 更新 就删除
		// if (!Strings.isBlank(adCode)) {
		// try {
		// JdbcTemplate.getInstance().execute("delete from ad where `code`='" +
		// adCode + "' ");
		// } catch (SQLException e) {
		// e.printStackTrace();
		// }
		// }
		
		if (adCode == null || "".equals(adCode)) {
			adCode = UUID.randomUUID().toString();
		}
		String title = request.getParameter("title");
		String note = request.getParameter("note");
		String country = request.getParameter("country");
		String lang = request.getParameter("lang");

		String pic_path = (String) Util.retrieveObject(request, "png_path");
		String link_type = request.getParameter("link_type");
		String link = request.getParameter("link");
		link_type = (link_type == null ? "0" : "1");
		String id = (UUID.randomUUID().toString().replace("-", ""));

		String sql = "insert into ad (id,code,tcode,title,note,country,language,png_path,link_type,link,status,click,flag) values ('" + id + "','" + adCode + "',0,'" + title + "','" + note + "'," + "'" + country + "','" + lang + "','" + pic_path + "','" + link_type + "','" + link + "','0',0,'1')";

		try {
			boolean result = JdbcTemplate.getInstance().execute(sql);

			if (result) {

				String update = "update ad set flag='0' where code!='" + adCode + "' and country='" + country + "' and language='" + lang + "'";
				JdbcTemplate.getInstance().execute(update);// 最后提交的广告才是手机用到的
				
				String query = "select code, title,note,country,language,png_path,link_type,link from ad where code='" + adCode + "'";

				Map<String, Object> map = JdbcTemplate.getInstance().queryForMap(query);
				ArrayList<String> array = new ArrayList<String>();

				if (map.size() > 0) {
					Gson gson = new Gson();
					Iterator<String> itr = map.keySet().iterator();
					while (itr != null && itr.hasNext()) {
						String key = itr.next();
						Object value = map.get(key);
						String jsonStr = gson.toJson(value);
						array.add(jsonStr);
					}
				}
				OutputStreamWriter writer = new OutputStreamWriter(response.getOutputStream(), "UTF-8");
				writer.write(array.toString());
				writer.flush();

			}

		} catch (SQLException e) {
			e.printStackTrace();
			adCode = null;
		} finally {
			adCode = null;
			Util.clearSession(request, "png_path");
		}

	}
}
