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
import org.nutz.dao.pager.Pager;
import org.nutz.lang.Lang;
import org.nutz.lang.Strings;
import org.nutz.lang.Times;

import xender.app.Util;
import xender.app.access.DbKit;
import xender.app.ut.CurrentUtils;
import xender.app.ut.UT;

import com.google.gson.Gson;

// 0 表示待上架
//1  表示已经商家
//2  表示已经下架

// 统计页面只显示  已上架,和已下架,顺序是先显示已上架. 
@SuppressWarnings("all")
public class AppSummary extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Gson gson = new Gson();

	// eg http://192.168.1.215:8080/app/summary?pageno=1&date=2015/06
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		OutputStreamWriter writer = new OutputStreamWriter(response.getOutputStream(), "UTF-8");

		String channel = Util.getChannel(request);
		String lang = Util.getLanguage(request);

		Map out = new HashMap();
		List out_ = new ArrayList();

		String begindate = request.getParameter("date");
		String enddate = "";// 截止时间客户端不传递
		String pageno = request.getParameter("pageno");
		
		// 确定开始和结束的日期
		String[] begin_end = StatisticUT.getStartEnd_tongji(begindate, enddate);

		// 返回多少天
		List<Date> days = StatisticUT.getDays(begin_end);
		List<Record> apps = StatisticUT.getList("app", pageno, channel, lang);

		//准备数据，每天里的每个应用的统计结果，供下面循环使用。
		Map<Date, List<Record>> day_ads_down = StatisticUT.getMap_date_list("downstatistic");


		for (int i = 0; i < days.size(); i++) {
			Map temp = new HashMap();
			temp.put("date", Times.format("yyyy/MM/dd", days.get(i)));
			Date d = days.get(i);

			List<SummaryVO> list = new ArrayList();
			if (!Lang.isEmpty(apps)) {
				for (int j = 0; j < apps.size(); j++) {
					Record app = apps.get(j);
					SummaryVO vo = new SummaryVO();
					vo.setName(app.getString("name"));
					// 指定的天,指定的应用. 查询对应的统计数据
					Record rec =findInList(day_ads_down.get(d), app.getString("code"));

					if (!Lang.isEmpty(rec)) {
						vo.setDownloadcount(rec.getString("count"));
					} else {
						vo.setDownloadcount("0");
					}

					vo.setClickcount(null);
					vo.setShowcount(null);
					// 填充list中的所有app添加url字段内容. datas[0]
					if (i == 0) {
						vo.setImgurl(app.getString("icon_path"));
					}

					list.add(vo);

				}
			}

			temp.put("data", list);
			// 构造好了其中一个map
			out_.add(temp);
		}

		out.put("datas", out_);
		out.put("pagescount", StatisticUT.pagescount("app", channel, lang));

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
