package xender.app;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import xender.app.access.JdbcTemplate;

public class ChangePositionServlet extends HttpServlet {
	
	private static final long serialVersionUID = -4047288104479953006L;

	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		String code=request.getParameter("code");
		String step=request.getParameter("step");
		int step_int=Integer.valueOf(step);
		if(step_int==0)
		{
				throw new RuntimeException("step不能为0");
		}
		
		synchronized(this){		
		
	     try {    	 
			//@SuppressWarnings("unchecked")
			List<Object> objs=JdbcTemplate.getInstance().queryForList("select position,channel,language from app where code='"+code+"'");
			Integer pos=(Integer) objs.get(0);	
			String channel=objs.get(1).toString();
			String lang=objs.get(2).toString();
			
			String sql="";
			if(step_int>0){  //上移
				sql="select id,position,code from app where position=(select  position  from app where position<"+pos+" and channel='"+channel+"' and language='"+lang+"' and status='1'  ORDER BY  position  desc  LIMIT "+(step_int-1)+", 1  ) "
						+ "and status='1' and code!='"+code+"' and channel='"+channel+"' and language='"+lang+"'";
			}else                  //下移
			{            
				sql="select id,position from app where position=(select  position  from app where position>"+pos+" and channel='"+channel+"' and language='"+lang+"'  and status='1' ORDER BY  position  asc  LIMIT "+( Math.abs(step_int)-1)+", 1) "
						+ "and status='1' and code!='"+code+"' and channel='"+channel+"' and language='"+lang+"'";
			}
				
			List<Object> list=JdbcTemplate.getInstance().queryForList(sql);
			
			
			if(list==null||list.size()==0)
				return;
			
			Object id=null;
			Integer position2=null;
			
			
			if(list.get(0) instanceof List){
				List obj1=(List) list.get(0);				
				id= obj1.get(0);
				position2=(Integer) obj1.get(1);
			}else {
				id= list.get(0);
				position2=(Integer) list.get(1);

				if(id!=null){
					String sql1="update app set position="+(position2.intValue())+" where code='"+code+"'";
					String sql2="update app set position="+pos+" where id='"+id+"'";
					
					JdbcTemplate.getInstance().execute(sql1);	
					JdbcTemplate.getInstance().execute(sql2);						
				}
				
				boolean result=JdbcTemplate.getInstance().execute("select * from app where code='"+code+"'");
				if(result){
					OutputStreamWriter writer=new OutputStreamWriter(response.getOutputStream(),"UTF-8");
					writer.write("success");
					writer.flush();
				}	

		}
			

			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
	}
  }
}
	
