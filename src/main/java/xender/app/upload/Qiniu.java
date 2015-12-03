package xender.app.upload;

import com.qiniu.storage.BucketManager;
import com.qiniu.storage.UploadManager;
import com.qiniu.util.Auth;

public abstract class Qiniu {

	// protected static String ACCESS_KEY =
	// "Fqjmf585wslyEOwLhdgXF-0boyHW1qD0hGzX0ZjA";
	// protected static String SECRET_KEY =
	// "MUo-zEddiRoL2GYE2j45AEOeW9v3P2EOXGo33625";
	// protected static final String bucketName = "appwall";
	// protected static final String domain = "7xir60.com1.z0.glb.clouddn.com";

	public static String ACCESS_KEY = "cdEp_191sGvVAEuaqSbcNadWBf9u0GkY6kXklJlW";
	public static String SECRET_KEY = "CDkLsowd0bg0mK6uGYEjG3XlB5WzJqgbZfkYjaCU";
	public static final String bucketName = "appwall";
	public static final String domain = "7xjh9n.com1.z0.glb.clouddn.com";
	
	Auth auth = Auth.create(ACCESS_KEY, SECRET_KEY);

	protected static final UploadManager uploadManager = new UploadManager();

	protected String getToken(String key) {
		return auth.uploadToken(bucketName, key);
	}

	protected BucketManager getBucketManager() {
		return new BucketManager(auth);
	}

}
