package xender.app.upload;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import xender.app.Util;

public class APKInfoServlet  extends HttpServlet  {
	
	private static final long serialVersionUID = -8388388581187081522L;

	public void doGet(HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException, IOException{
		
		String apkName=(String) Util.retrieveObject(request, "app_name");
		String icon_path=(String) Util.retrieveObject(request, "icon_temp");
		
		Gson gson=new Gson();
		Map<String, Object> map=new HashMap<String,Object>();
		map.put("app_name", apkName);
		map.put("icon_temp", icon_path);
		
		OutputStreamWriter writer=new OutputStreamWriter(response.getOutputStream(),"UTF-8");
		writer.write(gson.toJson(map));
		writer.flush();
		
		
	}

}
