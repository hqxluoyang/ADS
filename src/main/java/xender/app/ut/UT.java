package xender.app.ut;

import org.nutz.lang.Strings;

public class UT {

	/**
	 * 判断字符串是否
	 * 
	 * @param i
	 * @return
	 */
	public static boolean isInt(String i) {

		if (Strings.isBlank(i)) {
			return false;
		}
		try {
			Integer.valueOf(Strings.trim(i));
		} catch (Exception e) {
			return false;
		}
		return true;

	}

	public static int getInt(String i) {
		int out = 0;
		if (Strings.isBlank(i)) {
			return 0;
		}
		try {
			out = Integer.valueOf(Strings.trim(i));
		} catch (Exception e) {
		}
		
		return out;
	}
}
