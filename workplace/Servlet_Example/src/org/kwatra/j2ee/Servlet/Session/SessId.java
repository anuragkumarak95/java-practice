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
 * Servlet implementation class SessId
 */
@WebServlet(description = "Session id usage", urlPatterns = { "/SessId" })
public class SessId extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
		try {
			String p = request.getParameter("upass");
			String u = request.getParameter("uname");
			
			HttpSession s = request.getSession();
			
			s.setAttribute("pass", p);
			s.setAttribute("name", u);
			String id  = s.getId();
			out.println("Session id : " + id);
		} catch(Exception e) {
			
			System.out.println(e);
		}
		
		response.sendRedirect("SessionData");
	}

}
