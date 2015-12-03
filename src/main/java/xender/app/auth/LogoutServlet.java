package xender.app.auth;

import java.io.IOException;
import java.io.OutputStreamWriter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LogoutServlet extends HttpServlet {

	private static final long serialVersionUID = -2371227500131720277L;
	private static Logger logger = LoggerFactory.getLogger(LogoutServlet.class);

	public void doGet(HttpServletRequest request, HttpServletResponse response) {

		String path = request.getContextPath();

		try {

			response.sendRedirect(path);
			request.getSession().invalidate();

			OutputStreamWriter writer=new OutputStreamWriter(response.getOutputStream(),"UTF-8");
			writer.write("200");
		    writer.flush();

		} catch (IOException e) {
			e.printStackTrace();
		}

	}

}
