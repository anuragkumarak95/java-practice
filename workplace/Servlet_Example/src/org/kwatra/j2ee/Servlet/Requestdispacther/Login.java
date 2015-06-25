package org.kwatra.j2ee.Servlet.Requestdispacther;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet(description = "Login servlet for validate credentials", urlPatterns = { "/Login" })
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String name= request.getParameter("uname");
		String pass= request.getParameter("upass");
		
		if(pass.equals("Gaurav")) {
			RequestDispatcher rd  = request.getRequestDispatcher("Welcome");
			rd.forward(request, response);
			
		} else {
			out.println("<font color='red'><b>You have entered incorrect password</b></font>");
			RequestDispatcher rd  = request.getRequestDispatcher("indexRD.html");
			rd.include(request, response);
		}
			
	}

}
