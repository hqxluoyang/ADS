package xender.app.upload;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class ServerUpload  {
	
	private static int BUFFER_SIZE = 4 * 1024;
	private String fullPath;
	
	InputStream in = null;
	OutputStream out = null;
	
	public ServerUpload(String fullPath){
		this.fullPath=fullPath;
	}

	public String upload(InputStream stream) {
		
		File fullFile = new File(fullPath);	
		if(!fullFile.exists()){
			try {
				fullFile.createNewFile();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}	
		
		in = new BufferedInputStream(stream);
		try {
			out = new BufferedOutputStream(new FileOutputStream(fullFile));		
			byte[] buff = new byte[BUFFER_SIZE];
			
			int len = 0;
			while( (len = stream.read(buff)) !=-1) {
				out.write(buff, 0, len);
			}
			
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}finally {
			try {
				out.close();
				if(stream!=null){
					stream.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
			
		}
		return fullFile.getAbsolutePath();

	}
	
	public static void main(String[] args){
		
		String old="/Users/jaysowen/Downloads/gp.apk";
		String fullPath="gp.apk";
		ServerUpload serverUpload=new ServerUpload(fullPath);
		
		try {
			String file=serverUpload.upload(new FileInputStream(new File(old)));
			System.out.println(file);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		
	}
	

}
