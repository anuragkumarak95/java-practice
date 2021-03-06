package my.init_and_session.practice;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class sessioncheck
 */
@WebServlet("/status")
public class sessioncheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String sid = session.getId();
		ServletContext cx = request.getServletContext();
		cx.setAttribute("a_name", request.getParameter("a_name"));
		cx.setAttribute("a_pass", request.getParameter("a_pass"));
		cx.setAttribute("a_id", sid);
		response.getWriter().println("<a href=\"loginstat\" >check status</a>");
	}
	

}
