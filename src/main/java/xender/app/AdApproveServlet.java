package xender.app;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import org.nutz.dao.Chain;
import org.nutz.dao.Cnd;
import org.nutz.dao.entity.Record;
import org.nutz.lang.Lang;
import xender.app.access.DbKit;
import xender.app.access.JdbcTemplate;

public class AdApproveServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        this.process(request, response);
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        this.process(request, response);
    }

    private void process(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String path = request.getServletPath();
        String sql = "";

        String adCode = request.getParameter("code");
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        try {

            if (path.equals("/ad/approveAd")) {
                sql = "update ad  set  tcode=0, status='" + 1 + "',flag=1,up_time='" + df.format(new Date()) + "'  where code='" + adCode + "'";
            } else if (path.equals("/ad/unapproveAd")) {
                sql = "update ad set tcode=0,  status='" + 2 + "',flag=0,off_time='" + df.format(new Date()) + "'  where code='" + adCode + "'";
            } else if (path.equals("/aa/approveAa")) {
                sql = "update ad  set tcode=0, status='" + 1 + "',flag=1,up_time='" + df.format(new Date()) + "'  where code='" + adCode + "'";
            } else if (path.equals("/aa/unapproveAa")) {
                sql = "update ad set tcode=0, status='" + 2 + "',flag=0,off_time='" + df.format(new Date()) + "'  where code='" + adCode + "'";
            }


            if (sql != "") {
                JdbcTemplate.getInstance().execute(sql);


                //这里肯定一条记录
                String query = "select code as code, title,note,country,language as lang,png_path,link_type,link from ad where code='" + adCode + "'";

                Map<String, Object> map = JdbcTemplate.getInstance().queryForMap(query);
                ArrayList<String> array = new ArrayList<String>();

                if (map.size() > 0) {
                    Gson gson = new Gson();
                    Iterator<String> itr = map.keySet().iterator();
                    while (itr != null && itr.hasNext()) {
                        String key = itr.next();
                        Object value = map.get(key);

                        // 如果是上线一个ad ，标志之前发布的为false，这个成为最后一个。
                        if (path.equals("/ad/approveAd") || path.equals("/aa/approveAa")) {
                            setfalseBefore(adCode, value);
                        }
                        //如果下架的该code正好 flag=1，再加上如果还有其他在线的。
                        //这个时候应该再设置其他的最后一个上线的为flag=1.
                        //如果是下线一个ad，需要找到同组中最后一个上线的。
                        if (path.equals("/ad/unapproveAd") || path.equals("/aa/unapproveAa")) {
                            setTrueBefore(adCode, value);
                        }

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
        }
    }


    /**
     * 设置同一个国家，语言   其他选项为0.
     *
     * @param adCode
     * @param value
     */
    private void setfalseBefore(String adCode, Object value) {
        Map map = (LinkedHashMap) value;
        String country = String.valueOf(map.get("country"));
        String language = String.valueOf(map.get("language"));

        // 国家和语言都是一样的话,发布多次开屏广告,显示最后一次发布的.
        // 最后提交的广告才是手机用到的
        String update_false = "update ad set flag='0'  where code!='" + adCode + "' and country='" + country + "' and language='" + language + "'";
        try {
            JdbcTemplate.getInstance().execute(update_false);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    /**
     * 设置同一个国家，语言   其他选项中的最后一个为1.
     *
     * @param adCode
     * @param value
     */
    private void setTrueBefore(String adCode, Object value) {
        Map map = (LinkedHashMap) value;
        String country = String.valueOf(map.get("country"));
        String language = String.valueOf(map.get("language"));

        //获取同组里的最后一个，除了自己。
        Record rec = DbKit.getDao().fetch("ad", Cnd.where("code", "!=", adCode).and("country", "=", country).and("language", "=", language).and("status","=","1").and("up_time", "is not", null).desc("up_time"));
        if (Lang.isEmpty(rec)) {
            return;
        }
        rec.set(".table", "ad");
        rec.set("up_time", new Date());
        rec.set("flag", "1");
        rec.set("status", "1");
        rec.set("tcode", 0);//0表示真正上线，非测试数据

        DbKit.getDao().update("ad",Chain.from(rec),Cnd.where("id","=",rec.getString("id")));

    }
}
