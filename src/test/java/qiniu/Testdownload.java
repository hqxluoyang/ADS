package qiniu;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.nutz.http.Http;
import org.nutz.lang.Files;
import org.nutz.lang.Lang;
import org.nutz.lang.Streams;
import org.nutz.lang.Strings;

import xender.app.upload.Qiniu;

import com.qiniu.common.QiniuException;
import com.qiniu.storage.BucketManager;
import com.qiniu.storage.model.FileInfo;
import com.qiniu.storage.model.FileListing;

public class Testdownload extends Qiniu {

	public static void main(String[] args) {

		Testdownload test = new Testdownload();
		test.listid();

	}

	BucketManager bucketManager = getBucketManager();

	public void listid() {

		// try {
		// String[] arr = bucketManager.buckets();
		// System.out.println(arr);
		// } catch (QiniuException e) {
		// e.printStackTrace();
		// }

		try {
			FileListing filelist = bucketManager.listFiles("appwall", null, null, 1000, null);
			if (!Lang.isEmpty(filelist)) {
				output(filelist);
			}

			if (Strings.isBlank(filelist.marker)) {
				return;
			} else {
				getFiles(filelist.marker);
			}

		} catch (QiniuException e) {
			e.printStackTrace();
		}

	}

	private int index = 0;

	private void output(FileListing filelist) {
		for (int i = 0; i < filelist.items.length; i++) {
			FileInfo info = filelist.items[i];
			String k = info.key;
			System.out.println(index++);

			downloadFromOld(k);

			Files.appendWrite(new File("c://1.txt"), k + "\r\n");
		}
	}

	private void downloadFromOld(String k) {

		String downpath = "c://appwall//";
		if (Arrays.asList(Files.files(new File(downpath), null)).contains(new File(downpath + k))) {
			System.out.println("已经存在,跳过不下载");
		} else {
			String downurl = "http://" + domain + "/" + k;
			InputStream input = Http.get(downurl).getStream();
			try {
				Streams.writeAndClose(new FileOutputStream(downpath + k), input);
				System.out.println("下载完毕:" + k);
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			}
		}
	}

	private void getFiles(String marker) {
		try {

			FileListing filelist = bucketManager.listFiles("appwall", null, null, 1000, null);
			if (Strings.isBlank(filelist.marker)) {
				return;
			} else {
				output(filelist);
				getFiles(filelist.marker);
			}
		} catch (QiniuException e) {
			e.printStackTrace();
		}
	}

}
