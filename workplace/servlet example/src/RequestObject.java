

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RequestObject
 */
@WebServlet("/RequestObject")
public class RequestObject extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO request object creating a dynamic page.
		String uname = request.getParameter("uname");
		String upass = request.getParameter("upass");
		
		response.setContentType("text/html");
		PrintWriter w = response.getWriter();
		w.println("<title> Request Object </title>" + "<br />");
		w.println("Hello , "+uname);
		w.println("Password : " + upass);
	}

}
