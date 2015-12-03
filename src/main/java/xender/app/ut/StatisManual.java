package xender.app.ut;

import java.text.ParseException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.nutz.castor.Castors;
import org.nutz.dao.Chain;
import org.nutz.dao.Cnd;
import org.nutz.dao.Sqls;
import org.nutz.dao.entity.Record;
import org.nutz.dao.sql.Sql;
import org.nutz.lang.Lang;
import org.nutz.lang.Times;
import org.nutz.lang.random.R;

import xender.app.access.DbKit;
import xender.app.statistic.StatisticUT;

/**
 * 手动重建所有的统计
 */

@SuppressWarnings("all")
public class StatisManual {

	public static void main(String[] args) {

		// 依据click表和download表重新生成 showstatistic clickstatistic
		// downstatistic三个表中的统计数据
		 manual_rebuildStatis("download", "downstatistic", "app");
		 manual_rebuildStatis("click", "clickstatistic", "ad");
		 manual_rebuildStatis("click", "showstatistic", "ad");//
		// 通过click表中的type判断,1表示点击,0表示展示
		 
		// 重置app和ad表中的统计数据
		manual_rebuild_AppAd("app", "downstatistic");
		manual_rebuild_AppAd("ad", "showstatistic");
		manual_rebuild_AppAd("ad", "clickstatistic");
	}

	// app downstatistic
	// ad showstatistic
	// ad clickstatistic
	private static void manual_rebuild_AppAd(String app_or_ad, String tb_tongjiout) {

		Date begin = getMinDate(tb_tongjiout);
		Date end = getMaxDate(tb_tongjiout);

		int days = StatisticUT.getCountBetween(end, begin);
		List<Record> apps = DbKit.getDao().query(app_or_ad, null); // 所有应用,所有广告.
		if (Lang.isEmpty(apps)) {
			return;
		}

		for (int i = 0; i < apps.size(); i++) {
			String code = apps.get(i).getString("code");

			// Date day = StatisticUT.dateplus(begin, j);

			int count = 0;

			Sql sql = Sqls.create("select  SUM(count) from " + tb_tongjiout + " where `code`='" + code + "'");
			sql.setCallback(Sqls.callback.integer());
			DbKit.getDao().execute(sql);
			count=sql.getInt();
			
			if (app_or_ad.equals("app")) {
				System.out.println(apps.get(i).get("name") + "," + "," + count);
			} else {
				System.out.println(apps.get(i).get("title") + "," + "," + count);
			}
			
			if (tb_tongjiout.equals("downstatistic")) {
				DbKit.getDao().update(app_or_ad, Chain.make("down", count), Cnd.where("code", "=", code));
			}
			if (tb_tongjiout.equals("showstatistic")) {
				DbKit.getDao().update(app_or_ad, Chain.make("display", count), Cnd.where("code", "=", code));
			}
			if (tb_tongjiout.equals("clickstatistic")) {
				DbKit.getDao().update(app_or_ad, Chain.make("click", count), Cnd.where("code", "=", code));
			}

		}

	}

	private static Date getMinDate(String tb) {

		Sql sql = Sqls.create("SELECT MIN(`time`) FROM " + tb + "");
		sql.setCallback(Sqls.callback.timestamp());
		DbKit.getDao().execute(sql);
		Object obj = sql.getResult();
		return (Date) obj;
	}

	private static Date getMaxDate(String tb) {
		Sql sql = Sqls.create("SELECT MAX(`time`) FROM " + tb + "");
		sql.setCallback(Sqls.callback.timestamp());
		DbKit.getDao().execute(sql);
		Object obj = sql.getResult();
		return (Date) obj;
	}

	public static void manual_rebuildStatis(String tb_tongji, String tb_tongji_out, String app_or_ad) {

		// 假设从4.1日开始统计数据
		Date begin = null;
		try {
			begin = Times.parse("yyyy/MM/dd", "2015/04/01");
		} catch (ParseException e) {
		}
		Date end = StatisticUT.dateminus(new Date(), 1);
		int days = StatisticUT.getCountBetween(end, begin);

		// List<Record> apps = DbKit.getDao().query(app_or_ad,
		// Cnd.where("status", "=", "1"));
		List<Record> apps = DbKit.getDao().query(app_or_ad, null); // 所有应用,所有广告.
																	// 其实这样合理,因为即便是下架了,但是不能说人家不曾存在过.只要存在就有历史,就需要统计.
		if (Lang.isEmpty(apps)) {
			return;
		}

		// 这么多天
		for (int i = 0; i < days; i++) {
			Date day = StatisticUT.dateplus(begin, i);

			// 删除所有的数据
			DbKit.getDao().clear(tb_tongji_out, Cnd.where("time", "=", day));

			Date a = day;
			Date b = StatisticUT.dateSec(StatisticUT.dateplus(a, 1), -1);

			System.out.println(a);
			System.out.println(b);
			// 每条上线的应用都要计算.
			for (int j = 0; j < apps.size(); j++) {
				String code = apps.get(j).getString("code");

				// 查询这个应用的详细时间
				int count = DbKit.getDao().count(tb_tongji, Cnd.where("code", "=", code).and("time", ">", a).and("time", "<", b));

				if (tb_tongji_out.equals("clickstatistic")) {
					count = DbKit.getDao().count(tb_tongji, Cnd.where("code", "=", code).and("time", ">", a).and("time", "<", b).and("type", "=", 1));
				} else if (tb_tongji_out.equals("showstatistic")) {
					count = DbKit.getDao().count(tb_tongji, Cnd.where("code", "=", code).and("time", ">", a).and("time", "<", b).and("type", "=", 0));
				}

				Map t = new HashMap();
				t.put(".table", tb_tongji_out);
				t.put("id", R.UU16());
				t.put("code", code);
				t.put("time", day);
				t.put("count", count);
				DbKit.getDao().insert(t);

				if (app_or_ad.equals("app")) {
					System.out.println(apps.get(j).getString("name") + " , " + Times.format("yyyy-MM-dd", day) + "," + count);
				} else {
					System.out.println(apps.get(j).getString("title") + " , " + Times.format("yyyy-MM-dd", day) + "," + count);
				}

			}
		}

		System.out.println("over");
	}

	/**
	 * 重建显示统计
	 */
	public static void manual_show() {

	}

	/**
	 * 重建点击统计
	 */
	public static void manual_click() {

	}

}
