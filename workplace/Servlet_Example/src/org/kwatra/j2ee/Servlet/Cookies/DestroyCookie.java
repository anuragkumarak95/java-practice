package org.kwatra.j2ee.Servlet.Cookies;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DestroyCookie
 */
@WebServlet("/DestroyCookie")
public class DestroyCookie extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String cn = " "; 
		Cookie l = new Cookie("lang", cn);
		//l.setMaxAge(0);
		response.addCookie(l);
		Cookie n = new Cookie("name", cn);
		n.setMaxAge(0);
		response.addCookie(n);
		
		response.getWriter().println("<br /><a href='index.html'>Index page</a>");
	}

}
