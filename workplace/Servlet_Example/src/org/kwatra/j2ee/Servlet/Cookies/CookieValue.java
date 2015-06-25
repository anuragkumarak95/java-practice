package org.kwatra.j2ee.Servlet.Cookies;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class CookieValue
 */
@WebServlet(description = "Cookies", urlPatterns = { "/CookieValue" })
public class CookieValue extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out  = response.getWriter();
		
		Cookie p[] = request.getCookies();
		
		for(int i=0;i<p.length;i++) {
			
			//out.print("<br>"+p[i].getName()+" "+p[i].getValue());
			String n = (String) p[i].getName();

			if(n.equals("name"))
				out.println("Welcome, Mr. " +p[i].getValue());
			else if(n.equals("lang"))
				out.println("<br />Your choose language is: " + p[i].getValue());
			else
				out.println();
		}
		
	out.println("<br /><a href='DestroyCookie'>Destroy Cookie</a>");	
	}

}
