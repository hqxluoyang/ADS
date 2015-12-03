package xender.app.statistic.schedule;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.apache.log4j.Logger;
import org.nutz.dao.Cnd;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import xender.app.access.DbKit;
import xender.app.access.JdbcTemplate;
import xender.app.statistic.StatisticUT;

@SuppressWarnings("all")
public class ClickStatisticJob implements Job {
    private Logger log = Logger.getLogger(ClickStatisticJob.class);
    SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
    String now = format.format(StatisticUT.dateminus(new Date(), 1));
    String before7 = format.format(StatisticUT.dateminus(new Date(), 7));

    @Override
    public void execute(JobExecutionContext arg0) throws JobExecutionException {

        DbKit.getDao().clear("click", Cnd.where("time", "<", before7).and("type", "=", "1"));

//		String selectAppCodes = "select code from ad where status='1'";
        String selectAppCodes = "select code from ad ";
        try {
            List<Object> adCodes = JdbcTemplate.getInstance().queryForList(selectAppCodes);

            // 统计之前,删除之前的数据[一天]
            for (Object obj : adCodes) {
                List<Object> _codes = (List<Object>) obj;
                String appCode = _codes.get(0).toString();
                Schedule.cleanStatisticCount(appCode, now, "clickstatistic");
            }

            int index = 0;
            for (Object obj : adCodes) {
                List<Object> _codes = (List<Object>) obj;
                String adCode = _codes.get(0).toString();
                index++;
                log.debug(index + "/" + adCodes.size() + ",统计click,code=" + adCode);

                String queryCount = "select count(d.code) as count from click d where d.code='" + adCode + "' and type='1'" + "and DATE_FORMAT(d.time,'%Y/%m/%d')='" + now + "'";

                String id = (UUID.randomUUID().toString().replace("-", ""));
                List<Object> clicks = JdbcTemplate.getInstance().queryForList(queryCount);

                if (clicks.size() == 0) {
                    JdbcTemplate.getInstance().execute("insert into clickstatistic(id,code,time,count) values ('" + id + "','" + adCode + "','" + now + "'," + 0 + ")");
                } else {
                    Long count = (Long) clicks.get(0);
                    JdbcTemplate.getInstance().execute("insert into clickstatistic(id,code,time,count) values ('" + id + "','" + adCode + "','" + now + "'," + count.intValue() + ")");
                }

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
