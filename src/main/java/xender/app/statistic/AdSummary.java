package xender.app.statistic;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.nutz.dao.Cnd;
import org.nutz.dao.entity.Record;
import org.nutz.lang.Lang;
import org.nutz.lang.Strings;
import org.nutz.lang.Times;

import xender.app.access.DbKit;

import com.google.gson.Gson;

@SuppressWarnings("all")
public class AdSummary extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private Gson gson = new Gson();

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        OutputStreamWriter writer = new OutputStreamWriter(response.getOutputStream(), "UTF-8");

        Map out = new HashMap();
        List out_ = new ArrayList();

        String begindate = request.getParameter("date");
        String enddate = "";
        String pageno = request.getParameter("pageno");

        // 确定开始和结束的日期
        String[] begin_end = StatisticUT.getStartEnd_tongji(begindate, enddate);
        // 返回多少天
        List<Date> days = StatisticUT.getDays(begin_end);
        List<Record> apps = StatisticUT.getList("ad", pageno, null, null);

        //准备数据，每天里的每个应用的统计结果，供下面循环使用。
        Map<Date, List<Record>> day_ads_click = StatisticUT.getMap_date_list("clickstatistic");
        Map<Date, List<Record>> day_ads_show = StatisticUT.getMap_date_list("showstatistic");

        for (int i = 0; i < days.size(); i++) {
            Map temp = new HashMap();
            temp.put("date", Times.format("yyyy/MM/dd", days.get(i)));
            Date d = days.get(i);

            List<SummaryVO> list = new ArrayList();
            if (!Lang.isEmpty(apps)) {
                for (int j = 0; j < apps.size(); j++) {
                    Record ad = apps.get(j);
                    SummaryVO vo = new SummaryVO();
                    vo.setName(ad.getString("title"));
                    // 指定的天,指定的应用. 查询对应的统计数据
                    Record rec_click = findInList(day_ads_click.get(d), ad.getString("code"));
                    Record rec_show =findInList(day_ads_show.get(d), ad.getString("code"));

                    if (!Lang.isEmpty(rec_click)) {
                        vo.setClickcount(rec_click.getString("count"));
                    } else {
                        vo.setClickcount("0");// gson会默认不显示null字段
                    }

                    if (!Lang.isEmpty(rec_show)) {
                        vo.setShowcount(rec_show.getString("count"));
                    } else {
                        vo.setShowcount("0");
                    }

                    if (i == 0) {
                        vo.setImgurl(ad.getString("png_path"));
                    }

                    vo.setDownloadcount(null);
                    list.add(vo);
                }
            }
            temp.put("data", list);
            // 构造好了其中一个map
            out_.add(temp);
        }

        out.put("datas", out_);
        out.put("pagescount", StatisticUT.pagescount("ad", "", ""));

        writer.write(gson.toJson(out));
        writer.flush();

    }

    /**
     * list 是3个统计表的list， 从中根据code过滤结果
     *
     * @param records
     * @param code
     * @return
     */
    private Record findInList(List<Record> records, String code) {
        if (Lang.isEmpty(records) || Strings.isBlank(code)) {
            return null;
        }

        for (int i = 0; i < records.size(); i++) {
            if (records.get(i).getString("code").equals(code)) {
                return records.get(i);
            }
        }
        return null;
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
