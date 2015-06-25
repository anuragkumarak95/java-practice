package org.kwatra.java.cookie;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Cookie;


public class CookieV extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			response.setContentType("text/html");
			String n = request.getParameter("name");
			String p = request.getParameter("pass");
			Cookie cname = new Cookie("Name", n);
			Cookie cpass = new Cookie("Pass", p);
			response.addCookie(cname);
		    response.addCookie(cpass);
		    cname.setMaxAge(60*60*24);
			cpass.setMaxAge(60*60*24);
		    PrintWriter w = response.getWriter();
		    w.print("<h3>"+cname.getName()+": ");
		    w.println(cname.getValue());
		    w.print(cpass.getName()+": ");
		    w.println(cpass.getValue()+"</h3>");
		} catch(Exception e) {
			System.out.println(e);
		}
		
	
	}

}
