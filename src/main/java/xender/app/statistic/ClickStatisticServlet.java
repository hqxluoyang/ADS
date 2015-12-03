package xender.app.statistic;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.nutz.lang.Lang;

import xender.app.Util;
import xender.app.access.JdbcTemplate;

import com.google.gson.Gson;

@SuppressWarnings("all")
public class ClickStatisticServlet extends HttpServlet {

	private static final long serialVersionUID = -4814493494766264440L;
	SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		String code = request.getParameter("code");
		String start = request.getParameter("start");
		String end = request.getParameter("end");

		if (start == null || end == null) {
			start = (String) Util.retrieveObject(request, "start");
			end = (String) Util.retrieveObject(request, "end");
		}

		Calendar calendar = Calendar.getInstance();
		int date = calendar.get(Calendar.DATE);
		calendar.set(Calendar.DATE, date - 7);
		Date before = calendar.getTime();

		if (start == null || "".equals(start) || end == null || "".equals(end)) {
			end = format.format(new Date());
			start = format.format(before);

			Util.putSession(request, "start", start);
			Util.putSession(request, "end", end);
		}



		if (code != null) {

			String[] dates = StatisticUT.getStartEnd(code, "ad", start, end);
			start = dates[0];
			end = dates[1];
			
			String sql = "select code,DATE_FORMAT(time,'%Y/%m/%d') as time ,count from clickstatistic  " + "where code='" + code + "' and  time<='" + end + "' and time>='" + start + "'  order by time asc";

			Gson gson = new Gson();
			Map<String, Object> map;
			try {
				map = JdbcTemplate.getInstance().queryForMap(sql);
				List<String> array = new ArrayList<String>();
				Iterator<String> itr = map.keySet().iterator();
				while (itr != null && itr.hasNext()) {
					String key = itr.next();
					Object value = map.get(key);
					String jsonStr = gson.toJson(value);
					array.add(jsonStr);
				}

				if (Lang.isEmpty(array)) {
					array = StatisticUT.get7Default(code, "ad", start, end);
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
