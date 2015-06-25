package org.kwatra.j2ee.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(description = "First Servlet Program", urlPatterns = { "/firstservlet" })
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		//For Print Values on a web page use PrintWriter
		response.setContentType("text/html");
		PrintWriter w = response.getWriter();
		w.println("<H3>Hello from html</h3>");
		response.getWriter().println("<H3>Hello from html</h3>");
		
	}

}
