package org.kwatra.j2ee.Servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(description = "Servlet Request object Example", urlPatterns = { "/RequestObject" })
public class RequestObject extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		
		response.getWriter().println("<title>Request Object</title>");		
		
		String uname = request.getParameter("uname");
		String upass = request.getParameter("upass");
		//HttpSession session = request.getSession();
		//ServletContext context = request.getServletContext();
		
		//if(uname!=""&&uname!=null){
			//ession.setAttribute("name", uname);
			//context.setAttribute("name", uname);
		//}	
						
		response.getWriter().println("Hello, Mr. : "+uname+"<br />");
		response.getWriter().println("Your Password is : "+upass);
		//response.getWriter().println("<br />Session : "+(String) session.getAttribute("name"));
		//response.getWriter().println("<br />Application : "+(String) context.getAttribute("name"));
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");		
		response.getWriter().println("<title>Request Object</title>");		
		String uname = request.getParameter("uname");
		String upass = request.getParameter("upass");
		response.getWriter().println("Hello, Mr. : "+uname+"<br />");
		response.getWriter().println("Your Password is  : "+upass);
		
	}
}
