package xender.app.mobile;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.nutz.dao.Cnd;
import org.nutz.dao.entity.Record;
import org.nutz.lang.Lang;
import org.nutz.lang.Strings;
import xender.app.access.DbKit;
import xender.app.access.JdbcTemplate;
import com.google.gson.Gson;
import xender.app.innertest.IMEI_list;

/**
 * 手机请求显示最后的开屏广告
 */
public class AdServletNew extends HttpServlet {

    private static final long serialVersionUID = 4437571794196946478L;

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String country = request.getParameter("country");
        String lang = request.getParameter("lang");
        String imei = request.getParameter("imei");

        boolean istest = false;
        if (!Strings.isBlank(imei)) {
            List<Record> rs = IMEI_list.list();
            for (int i = 0; i < rs.size(); i++) {
                if (rs.get(i).get("phimei").equals(imei)) {
                    istest = true;
                    break;
                }
            }
        }

        if (country == null || lang == null) {
            return;
        }


        //status='" + (istest ? 0 : 1) + "'   表示： 如果是测试请求： 查询的是未上线，否者是上线
        String sql = "select code,IF(tcode>0,'true','false')as tcode,png_path,link_type,link from ad where 1=1  and  tcode=" + (istest ? 1 : 0) + "  and country='" + country + "' and language='" + lang + "' and status='" + (istest ? 0 : 1) + "'  " + (istest ? "" : "  and flag='1'") + "  limit 0,1";

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
