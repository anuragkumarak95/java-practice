package org.kwatra.j2ee.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ResponseObject
 */
@WebServlet(description = "Servlet Response object Example", urlPatterns = { "/ResponseObject" })
public class ResponseObject extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//What is set content type
		response.setContentType("text/html");
		
		response.getWriter().println("<h3>Hello Mr. Gaurav kwatra</h3>");
		
		//Redirect using response object
		//response.sendRedirect("http://google.com");
		response.setHeader("Refresh", "5; URL=https://google.com");
	}

}
