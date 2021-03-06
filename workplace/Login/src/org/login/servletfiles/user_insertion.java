package org.login.servletfiles;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class user_insertion
 */
@WebServlet("/signin")
public class user_insertion extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest rq, HttpServletResponse rs) throws ServletException, IOException {
		String uname =  rq.getParameter("uname");
		String upass = rq.getParameter("upass");
		HttpSession session = rq.getSession();
		String sid = session.getId();
		rs.setContentType("text/html");
		PrintWriter out = rs.getWriter();
		
		try{
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","1593");
			Statement st = con.createStatement();
			st.executeUpdate("insert into userlog values ('"+sid+"','"+uname+"','"+upass+"')");
			out.println("Adding your details in the database..");
			rs.addHeader("Refresh", "3; URL=userhome");
		} catch(Exception e) {
		    System.out.println(e);
		}
	}

}
