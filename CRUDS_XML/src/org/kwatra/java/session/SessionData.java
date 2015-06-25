package org.kwatra.java.session;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SessionData extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try{
			response.setContentType("text/html");  
	        PrintWriter w = response.getWriter(); 
	        String n=request.getParameter("name"); 
	        String p = request.getParameter("pass");
	        w.print("Welcome "+n+" "+p);
	        request.getSession().setAttribute("uname",n);
	        request.getSession().setAttribute("upass",p);
			w.print("<br /><a href='Tocheck'>To Check</a><br />");
		} catch(Exception e){
			System.out.println(e);
		}
		 
	}

}
