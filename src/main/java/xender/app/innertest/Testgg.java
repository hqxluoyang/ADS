package xender.app.innertest;

import org.nutz.dao.Sqls;
import org.nutz.dao.sql.Sql;
import org.nutz.lang.Lang;
import org.nutz.lang.Strings;
import xender.app.access.DbKit;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


/**
 * 设置ad广告是否是测试内容
 */
@WebServlet(name = "testgg")
public class Testgg extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String tcode = request.getParameter("tcode");
        if (Strings.isBlank(tcode)) {
            tcode = "1";
        }
        int tcode_int = 1;
        if (Strings.trim(tcode).equals("0")) {
            tcode_int = 0;
        }
        if (Strings.trim(tcode).equals("1")) {
            tcode_int = 1;
        }


        //指定哪个广告
        String code = request.getParameter("code");
        if (Strings.isBlank(code)) {
            return;
        }

        Sql sql = Sqls.create("update  ad set tcode=" + tcode_int + "  where  code='" + code + "'");
        DbKit.getDao().execute(sql);


    }
}


