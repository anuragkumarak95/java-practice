package org.kwatra.java.session;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Destroy extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try{
			
			response.setContentType("text/html");
			PrintWriter w = response.getWriter();
			request.getSession().invalidate();
			w.println("<h3>Session Destroy..Wait for 5 seconds</h3>");
			response.setHeader("Refresh", "5; URL=session.html");
		} catch(Exception e) {
			System.out.println(e);
		}
	}

}
