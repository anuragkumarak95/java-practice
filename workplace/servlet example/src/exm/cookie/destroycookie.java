package exm.cookie;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/destroycookie")
public class destroycookie extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Destroying the cookie here.
		String cn = " ";
		Cookie c1 = new Cookie("name",cn);
		c1.setMaxAge(0);
		response.addCookie(c1);
		Cookie c2 = new Cookie("lang",cn);
		//c2.setMaxAge(0);
		response.addCookie(c1);
		response.sendRedirect("userdetail");
		
		
	}

}
