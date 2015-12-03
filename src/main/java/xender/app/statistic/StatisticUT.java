package xender.app.statistic;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.nutz.dao.Cnd;
import org.nutz.dao.entity.Record;
import org.nutz.dao.pager.Pager;
import org.nutz.dao.sql.Criteria;
import org.nutz.json.Json;
import org.nutz.lang.Lang;
import org.nutz.lang.Strings;
import org.nutz.lang.Times;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import xender.app.Util;
import xender.app.access.DbKit;
import xender.app.access.JdbcTemplate;
import xender.app.ut.UT;

@SuppressWarnings("all")
public class StatisticUT {

    private static Logger log = LoggerFactory.getLogger(StatisticUT.class);

    /**
     * @param pageno (pagesize默认为15)
     * @return
     */
    public static List<Record> getList(String tb, String pageno, String channel, String lang) {
        List<Record> out = new ArrayList<Record>();
        int pageno_ = 0;
        if (Strings.isBlank(pageno)) {
            pageno_ = 0;
        }
        if (UT.isInt(pageno)) {
            pageno_ = UT.getInt(pageno);
        }

        // 如果没有传入pageno,或者传入的值不正确,就默认为第一页
        if (pageno_ <= 0) {
            pageno_ = 1;
        }

        Pager pager = new Pager();
        pager.setPageSize(15);
        pager.setPageNumber(pageno_);

        Criteria cri = Cnd.cri();

        cri.where().and("status", ">", 0);
        // 渠道xender表示admin
        if (channel != null && !channel.equals("xender")) {
            cri.where().and("channel", "=", channel);
        }

        if (lang != null && !"".equals(lang)) {
            cri.where().and("language", "=", lang);
        }

        if (tb.equals("app")) {
            cri.getOrderBy().asc("status").asc("position");
        } else {
            cri.getOrderBy().asc("status");
        }

        out = DbKit.getDao().query(tb, cri, pager);
        return out;
    }

    /**
     * pagesize=15的情况下,总共可以分多少页
     *
     * @param tb
     * @return
     */
    public static int pagescount(String tb, String channel, String lang) {

        Cnd cnd = Cnd.where("1", "=", "1");

        // 渠道xender表示admin
        if (!Strings.isBlank(channel) && !channel.equals("xender")) {
            cnd.and("channel", "=", channel);
        }

        if (!Strings.isBlank(lang) && !"".equals(lang)) {
            cnd.and("language", "=", lang);
        }

        int count = DbKit.getDao().count(tb, cnd);

        int out = count / 15;
        if (count % 15 > 0) {
            out++;
        }
        return out;

    }

    /**
     * 返回正确的开始时间和结束时间 ,返回的格式是 yyyy/MM/dd
     *
     * @param code
     * @param tb
     * @param begin_str
     * @param end_str
     * @return
     */
    public static String[] getStartEnd(String code, String tb, String begin_str, String end_str) {
        // 处理结束时间
        Date end = null;
        try {
            end = Times.parse("yyyy/MM/dd", end_str);
        } catch (ParseException e1) {
            e1.printStackTrace();
        }

        // 如果有下架时间,那么就把截止日期修改为下架时间
        try {
            Object obj = JdbcTemplate.getInstance().queryForObject("select off_time from " + tb + " where code='" + code + "'");
            if (obj != null) {
                end = (Date) obj;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // 处理开始时间
        Date begin = null;
        try {
            begin = Times.parse("yyyy/MM/dd", begin_str);
        } catch (ParseException e1) {
            e1.printStackTrace();
        }

        // 如果选择的开始时间在下架时间之后,自动修改开始时间为下架时间的前七天
        if (begin.after(end)) {
            begin = dateminus(end, 7);
        }

        String[] out = new String[2];

        out[0] = Times.format("yyyy/MM/dd", begin);
        out[1] = Times.format("yyyy/MM/dd", end);
        ;
        return out;
    }

    /**
     * 返回指定返回内的空值,传入的日期格式是 yyyy/MM/dd
     *
     * @return
     */
    public static List<String> get7Default(String code, String tb, String begin_str, String end_str) {
        List<String> list = new ArrayList();

        // 处理结束时间
        Date end = null;
        try {
            end = Times.parse("yyyy/MM/dd", end_str);
        } catch (ParseException e1) {
            e1.printStackTrace();
        }

        // 如果有下架时间,那么就把截止日期修改为下架时间
        try {
            Object obj = JdbcTemplate.getInstance().queryForObject("select off_time from " + tb + " where code='" + code + "'");
            if (obj != null) {
                end = (Date) obj;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // 处理开始时间
        Date begin = null;
        try {
            begin = Times.parse("yyyy/MM/dd", begin_str);
        } catch (ParseException e1) {
            e1.printStackTrace();
        }

        // 如果选择的开始时间在下架时间之后,自动修改开始时间为下架时间的前七天
        if (begin.after(end)) {
            begin = dateminus(end, 7);
        }

        // 最多返回是30天
        for (int i = 0; i < 30; i++) {

            Map temp = new HashMap();
            {

                // 从begin开始+1天,直到end日期.
                if (end.before(dateplus(begin, i))) {
                    break;
                }

                temp.put("code", code);
                temp.put("time", Times.format("yyyy/MM/dd", dateplus(begin, i)));
                temp.put("count", 0);
                list.add(Json.toJson(temp));
            }

        }

        return list;
    }

    /**
     * 根据开始日期和结束日期,返回指定时间范围段.
     *
     * @param begin_end
     * @return
     */
    public static List<Date> getDays(String[] begin_end) {
        List<Date> out = new ArrayList<Date>();
        try {
            Date begin = Times.parse("yyyy/MM/dd", begin_end[0]);
            Date end = Times.parse("yyyy/MM/dd", begin_end[1]);

            int countday = (int) ((end.getTime() - begin.getTime()) / Times.T_1D) + 1;
            for (int i = 0; i < countday; i++) {
                out.add(new Date(begin.getTime() + Times.T_1D * i));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return out;
    }

    /**
     * 返回两天之间的差距,比如6月30和7月2日之间,算间隔2天.
     *
     * @param end
     * @param begin
     * @return
     */
    public static int getCountBetween(Date end, Date begin) {
        int countday = (int) ((end.getTime() - begin.getTime()) / Times.T_1D) + 1;
        return countday;
    }

    /**
     * 往前移动多少天
     *
     * @param date
     * @param plus
     * @return
     */
    public static Date dateminus(Date date, int minus) {

        date = Times.D(date.getTime() - Times.T_1D * minus);

        return date;
    }

    /**
     * 根据指定的时间 前后移动几天,负数表示往前移动
     *
     * @param date
     * @param plus
     * @return
     */
    public static Date dateplus(Date date, int plus) {

        date = Times.D(date.getTime() + Times.T_1D * plus);

        return date;
    }

    /**
     * 为统计页面返回正确的开始时间和结束时间
     *
     * @param tb
     * @param begin_str 传入参数的格式 yyyy/MM ,是指的月份,也作为end_str的标准.
     * @param end_str
     * @return
     */
    public static String[] getStartEnd_tongji(String begin_str, String end_str) {

        // begin_str为空,说明没有指明月份. 如果指明了的话.就用.否则用当前月份.
        if (Strings.isBlank(begin_str)) {
            end_str = Times.format("yyyy/MM", new Date());
        }

        String input_yyyy = Times.format("yyyy", new Date());
        String input_MM = begin_str.split("/")[1];

        // 检查月份.如果是本月.如果是之后的月,如果是之前的月.
        String currentMM = Times.format("MM", new Date());
        if (currentMM.equals(input_MM)) { // 当前月份
            end_str = input_yyyy + "/" + input_MM + "/" + Times.format("dd", dateminus(new Date(), 1));
        } else {
            // 如果指定的月份比当前月分大,就用当前月份.
            if (equalMM(input_MM, currentMM)) {
                input_MM = currentMM;
            }

            String days = getDayInMonth(input_yyyy, input_MM);
            end_str = input_yyyy + "/" + input_MM + "/" + days;

        }

        begin_str = input_yyyy + "/" + input_MM + "/01";

        // 下面返回的内容是每天
        String[] out = new String[2];
        // 先处理空的情况
        if (Strings.isBlank(end_str)) {
            end_str = Times.format("yyyy/MM/dd", dateminus(new Date(), 1));
        }
        if (Strings.isBlank(begin_str)) {
            begin_str = Times.format("yyyy/MM/dd", dateminus(new Date(), 8));
        }

        // 处理结束时间
        Date end = null;
        try {
            end = Times.parse("yyyy/MM/dd", end_str);
        } catch (ParseException e1) {
            e1.printStackTrace();
            end = dateminus(new Date(), 1);
            log.debug("传入的时间格式错误,使用默认时间.昨天和前7天的范围");
        }
        if (end.after(new Date())) {
            end = dateminus(new Date(), 1);
        }

        // 开始时间的范围是 前30天和前1的范围内.否则设置为
        Date begin = null;
        try {
            begin = Times.parse("yyyy/MM/dd", begin_str);
        } catch (ParseException e1) {
            e1.printStackTrace();
            log.debug("传入的时间格式错误,使用默认时间.昨天和前7天的范围");
            end = dateminus(new Date(), 8);
        }

        // Date d7 = dateminus(end, 8);
        // Date d30 = dateminus(end, 31);
        // if (begin.after(d7)) {
        // begin = d7;
        // } else if (begin.before(d30)) {
        // begin = d30;
        // }

        out[0] = Times.format("yyyy/MM/dd", begin);
        out[1] = Times.format("yyyy/MM/dd", end);
        return out;

    }

    /**
     * 返回指定月份中的天数
     *
     * @param input_yyyy
     * @param input_MM
     * @return
     */
    private static String getDayInMonth(String input_yyyy, String input_MM) {

        if (input_MM.startsWith("0")) {
            input_MM = input_MM.substring(1);
        }

        Integer[] _30 = {4, 6, 9, 11};
        Integer[] _31 = {1, 3, 5, 7, 8, 10, 12};

        int input_MM_ = Integer.valueOf(input_MM);

        if (Lang.contains(_30, input_MM_)) {
            return "30";
        }
        if (Lang.contains(_31, input_MM_)) {
            return "31";
        }

        if (Times.leapYear(Integer.valueOf(input_yyyy))) {
            return "29";
        } else {
            return "28";
        }

    }

    /**
     * A是否大于B
     *
     * @param aMM
     * @param bMM
     * @return
     */

    private static boolean equalMM(String aMM, String bMM) {

        if (aMM.startsWith("0")) {
            aMM = aMM.substring(1);
        }
        if (bMM.startsWith("0")) {
            bMM = bMM.substring(1);
        }

        int a = Integer.valueOf(aMM);
        int b = Integer.valueOf(bMM);

        if (a > b) {
            return true;
        }

        return false;
    }

    /**
     * 增加,减少秒数
     *
     * @param begin
     * @param i     可以为负数
     * @return
     */
    public static Date dateSec(Date begin, int i) {
        return new Date(begin.getTime() + i * 1000);
    }

    /**
     * 比如获取ad中的 ，每天中所有的广告的统计对象
     *
     * @param tb clickstatistic或者 showstatistic....   downstatistic
     * @return
     */
    public static Map<Date, List<Record>> getMap_date_list(String tb) {
        Map<Date, List<Record>> out = new HashMap<Date, List<Record>>();
        if (!tb.equals("clickstatistic") && !tb.equals("showstatistic") && !tb.equals("downstatistic")) {
            System.out.println("表名不正确");
            return null;
        }
        List<Record> rds = DbKit.getDao().query(tb, Cnd.orderBy().desc("time"));
        if (!Lang.isEmpty(rds)) {
            for (int i = 0; i < rds.size(); i++) {
                Record record = rds.get(i);
                Date d = record.getTimestamp("time");
                if (out.containsKey(d)) {
                    out.get(d).add(record);
                } else {
                    List<Record> tem = new ArrayList<Record>();
                    tem.add(record);
                    out.put(d, tem);
                }
            }
        }
        return out;
    }
}
