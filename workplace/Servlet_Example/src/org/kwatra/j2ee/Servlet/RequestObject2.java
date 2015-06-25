package org.kwatra.j2ee.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(description = "Servlet with maximum parameters", urlPatterns = { "/RequestObject2" })
public class RequestObject2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name = request.getParameter("uname");
		String pass = request.getParameter("upass");
		String gender = request.getParameter("gender");
		String vehicle = request.getParameter("vehicle");
		String text = request.getParameter("texta");
		String greet[] = request.getParameterValues("chk");
		
		
		//Print Form Data
		for(int i=0; i<greet.length;i++) {
			response.getWriter().println(greet[i]+", Mr. : "+name);
		}
		
		response.getWriter().println("Your Password : "+pass);
		response.getWriter().println("Your gender : "+gender);
		response.getWriter().println("Your vehicle : "+vehicle);
		response.getWriter().println("Your feedback : "+text);
	}

}
