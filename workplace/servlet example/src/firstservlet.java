

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/firstservlet")
public class firstservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO first servlet of servlet example dynamic project.
		response.setContentType("text/html");//this is ued to tell the response that its content type is text html format to perform as html in the browsers.
		
		
		PrintWriter w = response.getWriter();// saving the response writer part in an instance to use it further.
		w.println("<h3>Hello From HTML.</h3>");
		response.getWriter().println("<h3>Hello From HTML.</h3>");
	}

}