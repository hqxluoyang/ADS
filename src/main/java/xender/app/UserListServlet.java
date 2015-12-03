package xender.app;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.nutz.dao.Sqls;
import org.nutz.dao.entity.Record;
import org.nutz.dao.sql.Sql;

import xender.app.access.DbKit;
import xender.app.access.JdbcTemplate;

import com.google.gson.Gson;

@SuppressWarnings("all")
public class UserListServlet extends HttpServlet {

	private static final long serialVersionUID = -8348841395209524490L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

		Gson gson = new Gson();
		String sql = "select user_id,name,ELT(status,'已启用','已停用') as status,ELT(type,'管理员','普通用户') as type,org,channel from user order by user_id asc";

		Sql sql_ = Sqls.create(sql);
		sql_.setCallback(Sqls.callback.records());
		DbKit.getDao().execute(sql_);
		List<Record> rs = sql_.getList(Record.class);
		System.out.println();

		Map<String, Object> map;
		try {
			map = JdbcTemplate.getInstance().queryForMap(sql);
			ArrayList<String> array = new ArrayList<String>();

			if (map.size() > 0) {
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
			e.printStackTrace();
		}

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException {

	}

}
