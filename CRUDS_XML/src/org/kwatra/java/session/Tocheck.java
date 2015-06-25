package org.kwatra.java.session;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Tocheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			response.setContentType("text/html");
			PrintWriter w = response.getWriter(); 
			HttpSession session=request.getSession(false); 
			String n = (String)session.getAttribute("uname");
			String p = (String)session.getAttribute("upass");
			w.println("Hello " + n+ " "+p);
			String id = (String)session.getId();
			w.print("<br />Session id : ");
			w.println(id);
			w.println("<br /><a href='Destroy'>Destroy</a>");
			w.close(); 
		} catch(Exception e){
			System.out.println(e);
		  }
	}

}
