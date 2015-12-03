package xender.app.upload;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItemIterator;
import org.apache.commons.fileupload.FileItemStream;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.util.Streams;
import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import xender.app.Util;

public class ApkUploadServlet extends HttpServlet {

	private static String domain = Qiniu.domain;

	public static Logger log = LoggerFactory.getLogger(ApkUploadServlet.class);
	private static final long serialVersionUID = -7701727801884790858L;

	private String fullPath;
	private String iconName;
	private String apkName;
	private File iconFile = null;
	ApkUtil apkUtil = new ApkUtil();
	HttpServletRequest request;

	

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		InputStream in = null;
		OutputStream out = null;
		this.request = request;

		ServletFileUpload upload = new ServletFileUpload();
		try {
			FileItemIterator iter = upload.getItemIterator(request);
			while (iter.hasNext()) {
				FileItemStream item = iter.next();
				InputStream stream = item.openStream();

				if (!item.isFormField()) {

					/**
					 * upload file to server as temp file
					 */
					String dir = request.getRealPath("/") + "/";
					String tempPath = "storage/";
					String path = dir + tempPath + item.getName();
					ServerUpload serverUpload = new ServerUpload(path);
					fullPath = serverUpload.upload(stream);

					/**
					 * parse apk file
					 */
					apkUtil.parsetAPKInfo(fullPath);

					String packageName = apkUtil.getPackageName();
					Util.putSession(request, "app_package", packageName);

					String appName = apkUtil.getAppName();
					Util.putSession(request, "app_name", appName);

					String appVersioncode = apkUtil.getVersioncode();
					Util.putSession(request, "app_versioncode", appVersioncode);

					String appVersionname = apkUtil.getVersionname();
					Util.putSession(request, "app_versionname", appVersionname);
					
					iconName = apkUtil.getIconName();
					iconFile = apkUtil.extractApkIcon(new File(fullPath),iconName);
					String iconTempPath=tempPath+iconFile.getName();
					
					Util.putSession(request,"icon_temp",iconTempPath);	
					
					iconName = UUID.randomUUID().toString();
					String iconPath = "http://" + domain + "/" + iconName;
					Util.putSession(request, "icon_path", iconPath);
						
					apkName = UUID.randomUUID().toString();
					InputStream apkInputStream = new FileInputStream(fullPath);
					byte[] data = IOUtils.toByteArray(apkInputStream);
					String qiniuPath = "http://" + domain + "/" + apkName;
					int size = data.length;
					Util.putSession(request, "apk_path", qiniuPath);
					Util.putSession(request, "apk_size", new Integer(size));

					// ------process icon and apk upload------------------------
					ExecutorService pool = Executors.newSingleThreadExecutor();
					pool.execute(uploadThread);

					// --------------------------------------------------------

					// return full path to the browser client
					OutputStreamWriter writer = new OutputStreamWriter(
							response.getOutputStream(), "UTF-8");

					writer.write("success");
					writer.flush();

				} else {
					String charsetName = Util.parseContentTypeEncodeing(
							item.getContentType(), "utf-8");
					String value = Streams.asString(stream, charsetName);
					Util.putSession(request, "code", value);

				}
			}

		}

		catch (FileUploadException e1) {
			e1.printStackTrace();
		} finally {
			if (null != in) {
				in.close();
			}
			if (null != out) {
				out.close();
			}
		}

	}

	//-----upload thread-----
	
	private Runnable uploadThread = new Runnable() {

		@Override
		public void run() {
			try {
				this.upload();
			} catch (Exception e) {
				e.printStackTrace();
			}

		}

		public void upload() throws Exception {

			try {
				QiniuUpload qiniu = new QiniuUpload();
				InputStream iconInputStream = new FileInputStream(iconFile);
				qiniu.upload(IOUtils.toByteArray(iconInputStream), iconName);
				
				InputStream apkInputStream = new FileInputStream(fullPath);
				byte[] data = IOUtils.toByteArray(apkInputStream);
				qiniu.upload(data, apkName);

			} finally {

				File apkFile = new File(fullPath);
				apkFile.delete();
				iconFile.delete();
			}

		}

	};

}
