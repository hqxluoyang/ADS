package xender.app.innertest;

import org.nutz.dao.Cnd;
import org.nutz.dao.entity.Record;
import org.nutz.json.Json;
import org.nutz.lang.Lang;
import org.nutz.lang.Strings;
import xender.app.access.DbKit;
import xender.app.statistic.StatisticUT;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 对IMEI 手机的增删改查
 */
@WebServlet(name = "IMEI_Mgr")
public class IMEI_Mgr extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        Object userId = session.getAttribute("uid");
        if (Lang.isEmpty(userId)) {
            System.out.println(Lang.getIP(request) + "request IMEI Mgr" + request.getRequestURL());
            return;
        }

        //http://127.0.0.1:8888/imei/add
        String path = request.getRequestURL().toString();

        if (path.indexOf("imei/add") > 0) {
            String phname = request.getParameter("phname");
            String phimei = request.getParameter("phimei");
            if (!Strings.isBlank(phname) && !Strings.isBlank(phimei)) {
                Map obj = new HashMap();
                obj.put(".table", "imei");
                obj.put("phname", phname);
                obj.put("phimei", phimei);
                DbKit.getDao().insert(obj);
            }
            IMEI_list.resetList();
        }

        if (path.indexOf("imei/del") > 0) {
            String id = request.getParameter("id");
            String phimei = request.getParameter("phimei");
            if (!Strings.isBlank(id)) {
                DbKit.getDao().clear("imei", Cnd.where("id", "=", Integer.valueOf(id)));
            }
            IMEI_list.resetList();
        }

        if (path.indexOf("imei/list") > 0) {
            List<Record> rs = IMEI_list.list();
            OutputStreamWriter writer = new OutputStreamWriter(response.getOutputStream(), "UTF-8");
            writer.write(Json.toJson(rs));
            writer.flush();
        }


    }
}
