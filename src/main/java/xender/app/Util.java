package xender.app;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public final class Util {

	public static boolean isAdminUser(HttpServletRequest request) {
		HttpSession session = request.getSession();
		if (session == null)
			return false;

		Integer type = (Integer) session.getAttribute("type");
		if (type != null && type.intValue() == 1) { // type:1-admin;user;2-normal
			return true;
		}
		return false;
	}

	public static String getChannel(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session == null) {
			return null;
		}
		String channel = (String) session.getAttribute("channel");

		return channel;
	}

	public static String getLanguage(HttpServletRequest request) {
		HttpSession session = request.getSession();
		if (session == null)
			return null;

		String lang = (String) session.getAttribute("lang");
		return lang;
	}

	private static Pattern pattern = Pattern.compile(".*charset=(.+?);");

	public static String parseContentTypeEncodeing(String contentType, String defaultEncoding) {
		String charsetName = defaultEncoding;
		if (contentType != null) {
			Matcher m = pattern.matcher(contentType);
			if (m.find()) {
				charsetName = m.group(1);
			}
		}
		return charsetName;
	}

	public static void putSession(HttpServletRequest request, String key, Object object) {
		HttpSession session = request.getSession(false);
		if (session != null) {
			session.setAttribute(key, object);
		}

	}

	public static Object retrieveObject(HttpServletRequest request, String key) {
		HttpSession session = request.getSession(false);
		if (session != null) {
			return session.getAttribute(key);
		}
		return null;
	}

	public static void clearSession(HttpServletRequest request, String key) {
		HttpSession session = request.getSession(false);
		if (session != null) {
			session.removeAttribute(key);
		}
	}

}
