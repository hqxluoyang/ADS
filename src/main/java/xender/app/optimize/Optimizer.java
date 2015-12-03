package xender.app.optimize;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Optimizer implements Filter {
	
	private static Logger logger=LoggerFactory.getLogger(Optimizer.class);


	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest req=(HttpServletRequest)request;
		HttpServletResponse res=(HttpServletResponse)response;

		String servletPath = req.getServletPath();			
		if(servletPath.endsWith("css")){
			res.setHeader("Content-Encoding", "deflate");
			res.setHeader("Content-Type", "text/css;charset=utf-8");
		} else if(servletPath.endsWith("js")){	
			res.setHeader("Content-Encoding", "gzip");
			res.setHeader("Content-Type", "application/javascript;charset=utf-8");
		}		
		chain.doFilter(req, res);

	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
				
	}

	@Override
	public void destroy() {		
	}

}
