package xender.app.upload;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import net.dongliu.apk.parser.bean.ApkMeta;
import net.dongliu.apk.parser.ApkParser;

public class ApkUtil {

	private static Logger logger = LoggerFactory.getLogger(ApkUtil.class);

	public static void main(String[] args) {

		String file = "/Users/jaysowen/git/appadmin/src/main/webapp/storage/gp.apk";
		try {
			// PrintWriter pw = new PrintWriter(file, "utf-8");
			outputApkInfo(new File(file));
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public void parsetAPKInfo(String filePath) {

		try (ApkParser apkParser = new ApkParser(new File(filePath))) {
			this.packageName = apkParser.getApkMeta().getPackageName();
			this.appName = apkParser.getApkMeta().getName();
			this.iconName = apkParser.getApkMeta().getIcon();
			this.label = apkParser.getApkMeta().getLabel();
			this.versioncode = String.valueOf(apkParser.getApkMeta().getVersionCode());
			this.versionname = apkParser.getApkMeta().getVersionName();

		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	public static void outputApkInfo(File f) throws IOException {
		if (f.isFile()) {
			ApkParser apk = new ApkParser(f);
			ApkMeta meta = apk.getApkMeta();
			logger.debug("package name:{},icon:{},name:{},label:{}", meta.getPackageName(), meta.getIcon(), meta.getName(), meta.getLabel());
			logger.debug("versioncode:{}", meta.getVersionCode());
			apk.close();
		}
	}

	public static File extractApkIcon(File apkfile, String iconEntryName) throws IOException {
		ZipFile zip = new ZipFile(apkfile);
		ZipEntry entry = zip.getEntry(iconEntryName);
		if (entry != null) {
			InputStream is = zip.getInputStream(entry);
			File iconfile = new File(apkfile.getPath() + parseFileExtension(iconEntryName));
			FileOutputStream os = new FileOutputStream(iconfile);
			byte[] buffer = new byte[4096];
			int len = -1;
			while ((len = is.read(buffer)) != -1) {
				os.write(buffer, 0, len);
			}
			os.close();
			is.close();
			zip.close();
			// return iconfile.getName();
			return iconfile;

		} else {
			zip.close();
			throw new IllegalArgumentException("entry " + iconEntryName + "doesn't exists in " + apkfile);
		}

	}

	/**
	 * 
	 * @param iconEntryName
	 * @return fileExtension include '.'
	 */
	public static String parseFileExtension(String iconEntryName) {
		int lastIndexOf = iconEntryName.lastIndexOf('.');
		if (lastIndexOf > 0)
			return iconEntryName.substring(lastIndexOf);
		else
			return ".png";
	}

	// ----------------------------------------------

	private String packageName;
	private String appName;
	private String iconName;
	private String label;
	private String versioncode;
	private String versionname;
	
	public String getPackageName() {
		return packageName;
	}

	public String getAppName() {
		return appName;
	}

	public String getIconName() {
		return iconName;
	}

	public String getLabel() {
		return label;
	}

	public String getVersioncode() {
		return versioncode;
	}

	public void setVersioncode(String versioncode) {
		this.versioncode = versioncode;
	}

	public String getVersionname() {
		return versionname;
	}

	public void setVersionname(String versionname) {
		this.versionname = versionname;
	}
	
	
	
}
