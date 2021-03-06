package my.init_and_session.practice;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class sessiondestroy
 */
@WebServlet(description = "this servlet will destry the session details.", urlPatterns = { "/selfdestruct" })
public class sessiondestroy extends HttpServlet {
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
		out.println("<p align = \"CENTER\"> Admin ->"+this.getServletConfig().getInitParameter("admin")+" </p>");
		//this will give adin name as null because this servlet has not been given its individual initParams.
				
		out.println("<br /> session id before destroying : "+sid+" <br />");
		session.invalidate();
		out.println("<br /> session id after destroying : "+rq.getSession().getId()+" <br />");
		try{out.println("session user name : "+ session.getAttribute("uname"));
		}catch(IllegalStateException e){out.println(e);}
	}
	
	public void init(){//this function will only execute once in the lifetime of this servlet, at the time it is initialised in tomcat.
		System.out.println("first selfdestruct page initialisation here.");
	}
}
