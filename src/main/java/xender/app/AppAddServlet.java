package xender.app;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.nutz.lang.Strings;

import com.google.gson.Gson;

import xender.app.access.JdbcTemplate;

public class AppAddServlet extends HttpServlet {

	private static final long serialVersionUID = 749044563624089425L;
	// public static final String BASE64FILE = "base64file";

	String appCode = "";

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// this.process(request, response);

	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		this.process(request, response);

	}

	public void process(HttpServletRequest request, HttpServletResponse response) throws IOException {

		appCode = (String) Util.retrieveObject(request, "code");

		// 更新 就删除
		int status = 0;// 0 待发布, 1 已上线 ,2已下线
		boolean exist = false;
		if (!Strings.isBlank(appCode)) {
			try {
				exist = JdbcTemplate.getInstance().queryForInt("select count(*) from app where `code`='" + appCode + "' ") > 0 ? true : false;
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}

		if (exist) {
			status = 1;
			try {
				JdbcTemplate.getInstance().execute("delete from app where `code`='" + appCode + "' ");
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		if (appCode == null || "".equals(appCode)) {
			appCode = UUID.randomUUID().toString();
		}

		String name = request.getParameter("name");
		if (name == null) {
			name = (String) Util.retrieveObject(request, "app_name");
		}
		
		String developer = request.getParameter("developer");
		String link = request.getParameter("target");
		String channel = request.getParameter("channel");
		String country = request.getParameter("country");
		String type = request.getParameter("type");
		String posStr = request.getParameter("position");
		long position = ((posStr == null || posStr.equals("")) ? 1000 : Integer.parseInt(posStr));
		String language = (String) Util.retrieveObject(request, "lang");

		String storage = (String) Util.retrieveObject(request, "apk_path");
		String icon = (String) Util.retrieveObject(request, "icon_path");
		
		String downCount = request.getParameter("downUp");
		int count = ((downCount == null || downCount.equals("")) ? 0 : Integer.parseInt(downCount));
		
		String priceStr = request.getParameter("price");
		priceStr = ((priceStr == null || priceStr.equals("")) ? "0" : priceStr);
		BigDecimal price = new BigDecimal(priceStr);
		
		Object _size = Util.retrieveObject(request, "apk_size");
		int size = 0;
		if (_size != null) {
			Integer sizeInt = (Integer) Util.retrieveObject(request, "apk_size");
			size = sizeInt.intValue();
		}

		String app_package = (String) Util.retrieveObject(request, "app_package");
		String app_versioncode = (String) Util.retrieveObject(request, "app_versioncode");
		String app_versionname = (String) Util.retrieveObject(request, "app_versionname");
		
		String note = request.getParameter("describe");
		String id = (UUID.randomUUID().toString().replace("-", ""));
		
		String sql = "insert into app (id,`code`,`name`,type,price,`status`,`language`,developer,link," + "channel,country,position,icon_path,note,apk_path,size,down,package,versioncode,versionname) values('" + id + "','" + appCode + "','" + name + "','" + type + "'," + price + ",'" + status + "','" + language + "','" + developer + "','" + link + "','" + channel + "','" + country + "','" + position + "','" + icon + "','" + note + "','" + storage + "'," + size + "," + count + ",'" + app_package + "','"
				+ app_versioncode + "','"+app_versionname+"')";
		
		try {
			JdbcTemplate.getInstance().execute(sql);
			
			String query = "SELECT code,icon_path as icon,name,type,price,FORMAT((size/(1024*1024)),1) as size,status,language,developer,link,channel,country,position,note," + "DATE_FORMAT(up_time,'%Y/%m/%d') as up,DATE_FORMAT(off_time,'%Y/%m/%d') as off,down,stars FROM app  where code='" + appCode + "'";

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

		} catch (SQLException e) {
			clear(request);
			appCode = null;

			e.printStackTrace();
		} finally {

			clear(request);

		}

	}

	private void clear(HttpServletRequest request) {

		Util.clearSession(request, "apk_size");
		Util.clearSession(request, "app_package");
		Util.clearSession(request, "app_name");
		Util.clearSession(request, "app_version");

	}

}
