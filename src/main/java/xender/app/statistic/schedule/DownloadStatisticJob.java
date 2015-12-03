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

import xender.app.Util;
import xender.app.access.DbKit;
import xender.app.access.JdbcTemplate;
import xender.app.statistic.StatisticUT;

@SuppressWarnings("all")
public class DownloadStatisticJob implements Job {


    private Logger log = Logger.getLogger(DownloadStatisticJob.class);

    SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
    String now = format.format(StatisticUT.dateminus(new Date(), 1));
    String before7 = format.format(StatisticUT.dateminus(new Date(), 7));

    @Override
    public void execute(JobExecutionContext arg0) throws JobExecutionException {

//		String selectAppCodes = "select code from app where status='1'";

        //统计量太大，删除之前的统计过的数据
        DbKit.getDao().clear("download", Cnd.where("time", "<", before7));

        String selectAppCodes = "select code from app";
        try {
            List<Object> appCodes = JdbcTemplate.getInstance().queryForList(selectAppCodes);

            // 统计之前,删除之前的数据[一天]
            for (Object obj : appCodes) {
                List<Object> _codes = (List<Object>) obj;
                String appCode = _codes.get(0).toString();
                Schedule.cleanStatisticCount(appCode, now, "downstatistic");
            }

            int index = 0;
            for (Object obj : appCodes) {
                List<Object> _codes = (List<Object>) obj;
                String appCode = _codes.get(0).toString();
                index++;
                log.debug(index + "/" + appCodes.size() + ",统计download,code=" + appCode);
                String queryCount = "select count(d.code) as count from download d where d.code='" + appCode + "' " + "and DATE_FORMAT(d.time,'%Y/%m/%d')='" + now + "'";

                String id = (UUID.randomUUID().toString().replace("-", ""));
                List<Object> downloads = JdbcTemplate.getInstance().queryForList(queryCount);

                if (downloads.size() == 0) {
                    JdbcTemplate.getInstance().execute("insert into downstatistic(id,code,time,`count`) values ('" + id + "','" + appCode + "','" + now + "'," + 0 + ")");
                } else {
                    Long count = (Long) downloads.get(0);
                    JdbcTemplate.getInstance().execute("insert into downstatistic(id,code,time,`count`) values ('" + id + "','" + appCode + "','" + now + "'," + count.intValue() + ")");
                }

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

}
