package xender.app.upload;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.UUID;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItemIterator;
import org.apache.commons.fileupload.FileItemStream;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;
import xender.app.Util;

public class AdUploadServlet extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		InputStream in = null;
		OutputStream out = null;
		
		ServletFileUpload upload = new ServletFileUpload();
		try {
			FileItemIterator iter = upload.getItemIterator(request);
			while (iter.hasNext()) {
				FileItemStream item = iter.next();
				InputStream stream = item.openStream();

				if (!item.isFormField()) {
					
					String pngName = UUID.randomUUID().toString();
					byte[] data = IOUtils.toByteArray(stream);
					
					QiniuUpload qiniu = new QiniuUpload();
					String fullPath=qiniu.upload(data, pngName);
					Util.putSession(request, "png_path", fullPath);
					
					
				}
			}	
		}catch (FileUploadException e1) {
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
	


}
