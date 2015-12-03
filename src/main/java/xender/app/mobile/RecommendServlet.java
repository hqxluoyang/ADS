package xender.app.mobile;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hamcrest.core.Is;
import org.nutz.lang.Lang;

import xender.app.access.JdbcTemplate;
import xender.app.statistic.schedule.RequestCount;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class RecommendServlet extends HttpServlet {

	private static final long serialVersionUID = 2587018036183447014L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

		String channel = request.getParameter("channel");
		String lang = request.getParameter("lang");

		String sql = "select code,name,icon_path,apk_path,link,channel,position,type,size,note,stars,package,versioncode,versionname from app where 1=1 ";

		if (channel != null && !channel.equals("")) {
			sql += " and channel='" + channel + "'";
		}

		if (lang != null && !lang.equals("")) {
			sql += " and language='" + lang + "'";
		}

		sql += " and status='1' order by position asc limit 10 ";

		// Gson gson=new Gson();

		// 需要返回null的
		Gson gson = new GsonBuilder().serializeNulls().create();
		Map<String, Object> map;
		try {
			map = JdbcTemplate.getInstance().queryForMap(sql);
			cleanNull(map);
			ArrayList<String> array = new ArrayList<String>();
			Iterator<String> itr = map.keySet().iterator();
			while (itr != null && itr.hasNext()) {
				String key = itr.next();
				Object value = map.get(key);
				String jsonStr = gson.toJson(value);
				array.add(jsonStr);
			}

			// 判断，如果手机查询了请求，但是没有广告，记录下来。
			RequestCount.count(channel, !Lang.isEmpty(array));
			
			OutputStreamWriter writer = new OutputStreamWriter(response.getOutputStream(), "UTF-8");
			writer.write(array.toString());
			writer.flush();

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	private void cleanNull(Map<String, Object> map) {

		if (!Lang.isEmpty(map)) {
			Iterator<String> itr = map.keySet().iterator();
			while (itr != null && itr.hasNext()) {
				String key = itr.next();
				Object value = map.get(key);
				if (value != null) {

					if (value instanceof HashMap) {
						value = cleanNull_((HashMap) value);
						map.put(key, value);
					}
				}
			}
		}
	}

	private Map cleanNull_(HashMap map) {
		if (!Lang.isEmpty(map)) {
			Iterator<String> itr = map.keySet().iterator();
			while (itr != null && itr.hasNext()) {
				String key = itr.next();
				Object value = map.get(key);
				if (value == null) {
					map.put(key, "");
				}
			}
		}
		return map;
	}
}
