package xender.app.statistic.schedule;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class JobListener implements ServletContextListener {

	private static Logger logger=LoggerFactory.getLogger(JobListener.class);
	
	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		
		logger.debug("statistic job started...");
		
		Schedule  schedule=new Schedule();
		schedule.doJob();
		

	}

}
