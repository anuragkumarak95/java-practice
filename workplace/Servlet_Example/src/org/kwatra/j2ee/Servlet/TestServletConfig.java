package org.kwatra.j2ee.Servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestServletConfig
 */
//@WebServlet(description = "Servlet config test", urlPatterns = { "/TestServletConfig" })
public class TestServletConfig extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		
		ServletConfig c = getServletConfig();
		
		String pass = c.getInitParameter("Name");
		
		response.getWriter().println("Config Password: "+pass);
		
		ServletContext d = getServletContext();
		
		String passCont = d.getInitParameter("Name");
		response.getWriter().println("Context Password is: "+passCont);	
	}

}
