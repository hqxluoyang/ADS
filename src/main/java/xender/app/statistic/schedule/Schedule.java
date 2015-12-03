package xender.app.statistic.schedule;

import java.sql.SQLException;

import org.quartz.CronScheduleBuilder;
import org.quartz.JobBuilder;
import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.Trigger;
import org.quartz.TriggerBuilder;
import org.quartz.impl.StdSchedulerFactory;

import xender.app.access.JdbcTemplate;

@SuppressWarnings("all")
public class Schedule {

//    static String cronExpression = "0 0 1 * * ?";
    static String cronExpression = "0 17 13 * * ?";

    public void doJob() {

//        if (1 == 1) {
//            System.out.println("暂时关闭计划任务");
//            return;
//        }

        try {

            JobDetail job1 = JobBuilder.newJob(DownloadStatisticJob.class).withIdentity("job1", "group1").build();
            JobDetail job2 = JobBuilder.newJob(ClickStatisticJob.class).withIdentity("job2", "group1").build();
            JobDetail job3 = JobBuilder.newJob(ShowStatisticJob.class).withIdentity("job3", "group1").build();

            Trigger trigger1 = TriggerBuilder.newTrigger().withIdentity("trigger1", "group1").withSchedule(CronScheduleBuilder.cronSchedule(cronExpression)).build();
            Trigger trigger2 = TriggerBuilder.newTrigger().withIdentity("trigger2", "group1").withSchedule(CronScheduleBuilder.cronSchedule(cronExpression)).build();
            Trigger trigger3 = TriggerBuilder.newTrigger().withIdentity("trigger3", "group3").withSchedule(CronScheduleBuilder.cronSchedule(cronExpression)).build();

            Scheduler scheduler = StdSchedulerFactory.getDefaultScheduler();

            scheduler.scheduleJob(job1, trigger1);
            scheduler.scheduleJob(job2, trigger2);
            scheduler.scheduleJob(job3, trigger3);

            scheduler.start();

        } catch (SchedulerException se) {
            se.printStackTrace();
        }
    }


    public static void cleanStatisticCount(String adCode, String now, String tb) {
        try {
            JdbcTemplate.getInstance().execute("delete  from " + tb + "  where   code='" + adCode + "'  and  time='" + now + "'");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        Schedule s = new Schedule();
        s.doJob();
    }

}
