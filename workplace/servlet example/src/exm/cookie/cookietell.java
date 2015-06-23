package exm.cookie;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class cookietell
 */
@WebServlet("/userdetail")
public class cookietell extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO generate a session and use it to increment a counter as many times user comes to the page.

		HttpSession session = request.getSession(false);//taking a session as present.
		if(session == null){//if in case no session is active(where session gives null)
			session = request.getSession(true);//create new session.
			session.setAttribute("count", 0);//provide new attribute to the session.
			
		}
		
		int count = (Integer)session.getAttribute("count");//get value from an attribute of present session.
		count++;
		session.setAttribute("count", count);//print the counter value
		
		response.setContentType("text/html;UTF-8");//used to define the content type of the HTTPResponse.
		response.getWriter().println("counter : "+count + "<br />");
		response.getWriter().println("<title>User Details Through saved Cookie.</title>");
		Cookie clist[] = request.getCookies();//get the list of cookies in the page.
		for(Cookie c : clist){//loop it
			response.getWriter().println("USER "+c.getName()+" : "+c.getValue()+"<br />");//print cookie name and value inividually.
		}
	}

}
