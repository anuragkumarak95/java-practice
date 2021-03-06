package exm.cookie;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class chooselang
 */
@WebServlet("/chooselang")
public class chooselang extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO study about creating and using cookie.also redirecting to a page.

		
		String uname = request.getParameter("uname");
		String ulang = request.getParameter("lang");
		
		Cookie cname = new Cookie("name",uname),clang = new Cookie("lang",ulang);
		response.addCookie(clang);
		response.addCookie(cname);
		response.sendRedirect("userdetail");

	}

}
