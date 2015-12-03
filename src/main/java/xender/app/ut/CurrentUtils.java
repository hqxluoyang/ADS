package xender.app.ut;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * 
 * 管理当前当前登录对象
 * 
 */
public class CurrentUtils {
	private final String CUR_CHANNEL = "channel";
	public static CurrentUtils INSTANCE = null;

	private CurrentUtils() {

	}

	/**
	 * 获取实例
	 * 
	 * @return
	 */
	public static CurrentUtils getInstance() {
		if (INSTANCE == null) {
			synchronized (CurrentUtils.class) {
				if (INSTANCE == null) {
					INSTANCE = new CurrentUtils();
				}
			}
		}

		return INSTANCE;
	}

	/**
	 * 获取当前Session
	 * 
	 * @return
	 */
	private HttpSession getSession(HttpServletRequest req) {
		return req.getSession(true);
	}

	/**
	 * 获取当前session里面放置的channel
	 * 
	 * @return
	 */
	public Object getChannel(HttpServletRequest req) {
		return req.getSession().getAttribute(CUR_CHANNEL);
	}

	/**
	 * 把当前User对象放置到session里面
	 * 
	 * @param user
	 */
	public void setChannel(HttpServletRequest req, Object user) {
		req.getSession().setAttribute(CUR_CHANNEL, user);
	}
}