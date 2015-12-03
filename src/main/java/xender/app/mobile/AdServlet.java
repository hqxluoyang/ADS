package xender.app.mobile;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import xender.app.access.JdbcTemplate;
import com.google.gson.Gson;

/**
 * 
 * 手机请求显示最后的开屏广告 old [老接口,禁用掉]
 */
@SuppressWarnings("all")
public class AdServlet extends HttpServlet {

	private static final long serialVersionUID = 4437571794196946478L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

		if (1 == 1) {
			return;
		}

		String country = request.getParameter("country");
		String lang = request.getParameter("lang");

		if (country == null || lang == null) {
			return;
		}

		String sql = "select code,png_path,link_type,link from ad where 1=1  and country='" + country + "' and language='" + lang + "' and status='1' and flag='1'";

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
