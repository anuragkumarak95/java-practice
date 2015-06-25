package my.init_and_session.practice;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class servlet2
 */
@WebServlet(urlPatterns="/userdetail",initParams={@WebInitParam(name = "admin",value="Anurag")})
public class servlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest rq, HttpServletResponse rs) throws ServletException, IOException {
		rs.setContentType("text/html");//pre-conditions.
		PrintWriter out = rs.getWriter();
		
		HttpSession session = rq.getSession();//getting the session
		String sid = session.getId();//and session id saving in string sid.
		
		//outputing the initPrams data inputed in the servlet at creation in the servletconfiguration process.
		out.println("<p align = \"CENTER\"> Session ID : "+sid+" || Admin ->"+this.getServletConfig().getInitParameter("admin")+" </p>");

		
		out.println("<br />Data redirected by the session information.<br />");
		out.println("User Name : "+session.getAttribute("uname")+"<br />");
		out.println("User Password : "+session.getAttribute("upass")+"<br />");
		out.println("User Gender : "+session.getAttribute("ugender")+"<br />");
		out.println("<a href=\"selfdestruct\">click</a> to destroy the session.");
		
	}

}
