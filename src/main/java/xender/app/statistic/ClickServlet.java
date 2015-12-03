package xender.app.statistic;

import java.io.IOException;
import java.sql.SQLException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.util.Streams;

import org.nutz.lang.Strings;
import xender.app.access.JdbcTemplate;

import com.google.gson.Gson;

public class ClickServlet extends HttpServlet {

    private static final long serialVersionUID = -1999151950672542429L;

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        Gson gson = new Gson();
        String jsonMsg = Streams.asString(request.getInputStream(), "utf-8");
        ClickVO click = gson.fromJson(jsonMsg, ClickVO.class);
        String path = request.getServletPath();
        if (Strings.isBlank(click.getCode())) {
            System.out.println("click.getCode()  为空");
            return;
        }

        if (path.equals("/statistic/show")) {

            try {

                String id = UUID.randomUUID().toString().replace("-", "");
                String insert = "insert into click(id,code,time,imei,ip,type) values ('" + id + "','" + click.getCode() + "',"
                        + "'" + click.getTime() + "','" + click.getImei() + "','" + click.getIp() + "','0')";  // type-0:show
                JdbcTemplate.getInstance().execute(insert);


//                String update = "update ad set display=(select count(code) from click where code='" + click.getCode() + "' and type='0') where code='" + click.getCode() + "'";
                String update = "update ad set display=display+1     where code='" + click.getCode() + "'";
                JdbcTemplate.getInstance().execute(update);

            } catch (SQLException e) {
                e.printStackTrace();
            }

        } else if (path.equals("/statistic/click")) {

            try {

                String id = UUID.randomUUID().toString().replace("-", "");
                String insert = "insert into click(id,code,time,imei,ip,type) values ('" + id + "','" + click.getCode() + "',"
                        + "'" + click.getTime() + "','" + click.getImei() + "','" + click.getIp() + "','1')"; //type-1:click
                JdbcTemplate.getInstance().execute(insert);

//                String update = "update ad set click=(select count(code) from click where code='" + click.getCode() + "' and type='1') where code='" + click.getCode() + "'";
                String update = "update ad set click=click+1 where code='" + click.getCode() + "'";
                JdbcTemplate.getInstance().execute(update);

            } catch (SQLException e) {
                e.printStackTrace();
            }


        }


    }


}
