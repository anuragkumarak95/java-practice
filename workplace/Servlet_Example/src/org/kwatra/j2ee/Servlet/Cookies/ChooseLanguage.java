package org.kwatra.j2ee.Servlet.Cookies;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(description = "Choose your language", urlPatterns = { "/ChooseLanguage" })
public class ChooseLanguage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String name = request.getParameter("uname");
		
		Cookie n = new Cookie("name",name);
		response.addCookie(n);
		
		String lang = request.getParameter("lang");	
		
		Cookie l = new Cookie("lang",lang);
		response.addCookie(l);
		
		response.sendRedirect("CookieValue");
		
	
	}

}
