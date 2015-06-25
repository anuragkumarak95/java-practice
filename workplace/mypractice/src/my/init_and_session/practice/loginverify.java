package my.init_and_session.practice;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class loginverify
 */
@WebServlet(description = "checks if the session code provided and session code saved in context is same, hence logined still", urlPatterns = { "/loginstat" })
public class loginverify extends HttpServlet {
	private static final long serialVersionUID = 1L;


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext cx = request.getServletContext();//generating session and adding session id here.
		HttpSession session = request.getSession();
		String sid = session.getId();//generating context of servlet and getting the session id attribute here.
		String cxid = (String) cx.getAttribute("a_id");
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		if(sid.equals(cxid)){//if saved session id of user is equal to current session id then basically user is still logged in.
			out.println("Admin is Still Logged in : <br />");
			out.println("Admin Name : "+cx.getAttribute("a_name")+"<br />");
			out.println("Admin Password : "+cx.getAttribute("a_pass")+"<br />");
			out.println("<a href=\"logout\">logout</a>");
		}
		else{out.println("No user is Loggged in : <br />");
		     out.println("<a href=\"login1.html\">login</a>");}
	}


}
