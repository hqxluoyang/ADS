package xender.app.upload;

import java.io.IOException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.qiniu.common.QiniuException;
import com.qiniu.http.Response;
import com.qiniu.storage.UploadManager;
import com.qiniu.util.Auth;

public class QiniuUpload extends Qiniu  {
	
	private static final Logger logger = LoggerFactory.getLogger(ApkUploadServlet.class);	

	public String upload(byte[] data,String fileName) {

		try {
						
			Response res = uploadManager.put(data, fileName, getToken(fileName));
			if (res.isOK()) {
				data=null;
				logger.debug("file {} uploaded successfully.",fileName);
			} else {
				logger.debug("file {} uploaded failed.",fileName);
			}
		} catch (QiniuException e) {
			data=null;
			Response r = e.response;

			try {
				// 响应的文本信息
				logger.error(r.bodyString());
			} catch (QiniuException e1) {
				// ignore
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "http://" + domain + "/" + fileName;
	}



}
