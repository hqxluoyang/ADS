package xender.app.upload;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.qiniu.common.QiniuException;
import com.qiniu.http.Response;
import com.qiniu.storage.BucketManager;

public class QiniuDelete extends Qiniu {
	
	private static Logger logger=LoggerFactory.getLogger(QiniuDelete.class);
	
	public void delete(String apkFile,String iconFile) {
		
		BucketManager.Batch ops = new BucketManager.Batch().delete(bucketName, apkFile,iconFile);
		try {
			
			//this.getBucketManager().delete(bucketName, file);						
		    Response r =this.getBucketManager().batch(ops);	    
		    if(r.isOK()){
		    	logger.debug("delete successfully.");
		    }else {
		    	logger.debug("delete failt.");
		    }    
		    
		}catch (QiniuException e) {
		    Response r = e.response;
		    logger.error(r.toString());
		    try {
		        // 响应的文本信息
		        logger.error(r.bodyString());
		    } catch (QiniuException e1) {
		        //ignore
		    }
		}
	}
	
	public void delete(String pngFile) {
		
		BucketManager.Batch ops = new BucketManager.Batch().delete(bucketName, pngFile);
		try {
			
			//this.getBucketManager().delete(bucketName, file);						
		    Response r =this.getBucketManager().batch(ops);	    
		    if(r.isOK()){
		    	logger.debug("delete successfully.");
		    }else {
		    	logger.debug("delete failt.");
		    }    
		    
		}catch (QiniuException e) {
		    Response r = e.response;
		    logger.error(r.toString());
		    try {
		        // 响应的文本信息
		        logger.error(r.bodyString());
		    } catch (QiniuException e1) {
		        //ignore
		    }
		}
	}
	
	public static void main(String[] args){
		
		String iconFile="res/drawable-xxhdpi-v4/ic_launcher.png";
		String apkFile="294eeb82-6217-43a7-b55b-3799473afd11";		
		QiniuDelete delete=new QiniuDelete();
		delete.delete(apkFile,iconFile);
	
	}
	
	
}
