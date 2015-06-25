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
 * Servlet implementation class SessionData
 */
@WebServlet(description = "Session Data access", urlPatterns = { "/SessionData" })
public class SessionData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			HttpSession s = request.getSession();
			String u = (String)s.getAttribute("name");
			String p = (String)s.getAttribute("pass");
			
			out.println("<h2>Welcome, Mr." + u+"</h2>");
			out.println("<h2><br />Your enter password: " + p+"</h2>");
			String idb  = s.getId();
			out.println("<h2>Session id before destroy: " + idb+"</h2>");
			//response.setHeader("Refresh", "5; URL=");
		} catch(Exception e) {
			
			System.out.println(e);
		}
		
		response.setHeader("Refresh", "5; URL=SessionDestroy");
	}

}
