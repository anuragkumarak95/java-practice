

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RequestObject2
 */
@WebServlet("/RQ2")
public class RequestObject2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest rq, HttpServletResponse rs) throws ServletException, IOException {
		// TODO multi html option request page RQ2 link.
		String uname = rq.getParameter("uname"),
				upass = rq.getParameter("upass"),
				ugdr = rq.getParameter("gender"),
				uslct = rq.getParameter("vehicle"),
				utxta = rq.getParameter("texta"),allcb = "";
		String ucb[] = rq.getParameterValues("chk");
		rs.setContentType("text/html");
		PrintWriter w = rs.getWriter();
		w.println("<title>Option Form Details</title>");
		w.println("User Name   : " + uname + "<br />");
		w.println("Password    : " + upass + "<br />");
		w.println("Gender      : " + ugdr + "<br />");
		for(String u : ucb){allcb = allcb +"  || "+ u;}
		w.println("Says        : " + allcb + "<br />");
		w.println("Vehicle     : " + uslct + "<br />");
		w.println("Description : " + utxta + "<br />");
		
	}

}
