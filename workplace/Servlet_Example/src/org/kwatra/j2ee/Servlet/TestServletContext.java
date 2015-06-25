package org.kwatra.j2ee.Servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet(description = "ServletContext testing", urlPatterns = { "/TestServletContext" })
public class TestServletContext extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		
		ServletContext c = getServletContext();
		
		String pass = c.getInitParameter("Name");
		response.getWriter().println("Password is: "+pass);
	}

}
