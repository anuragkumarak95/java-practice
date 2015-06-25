package org.kwatra.j2ee.Servlet.Session;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SessionDestroy
 */
@WebServlet(description = "Destroy session from server End", urlPatterns = { "/SessionDestroy" })
public class SessionDestroy extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try {
			HttpSession s = request.getSession(); 
			s.invalidate();
			String ida  = s.getId();
			out.println("<h2>Session id after destroy: " + ida+"</h2>");
			
		} catch(Exception e) {
			
			System.out.println(e);
		}
			out.println("<br /><a href='index.html'>Index page</a>");
	}

}
