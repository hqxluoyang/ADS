package xender.app.statistic.schedule;

import java.io.File;
import java.util.Date;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

import org.nutz.lang.Files;
import org.nutz.lang.Times;

//判断，如果手机查询了请求，但是没有广告，记录下来。
@SuppressWarnings("all")
public class RequestCount {

	private static Executor exe = Executors.newSingleThreadExecutor();

	private static String path = System.getProperty("user.home");
	private static String filepath = path + File.separatorChar + "count.log";

	public static void count(final String channel, final boolean hasexist) {
		exe.execute(new Runnable() {
			@Override
			public void run() {

				StringBuffer log = new StringBuffer();
				log.append("请求时间： " + Times.format("yyyyMMdd HH:mm:ss", new Date()) + ",");
				log.append("渠道：" + channel);
				log.append("是否发布了广告：" + hasexist);
				log.append("\r\n");
				
				Files.appendWrite(new File(filepath), log);
				
			}
		});

	}
}
