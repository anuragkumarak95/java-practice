package org.login.servletfiles;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class user_home
 */
@WebServlet("/userhome")
public class user_home extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest rq, HttpServletResponse rs) throws ServletException, IOException {
		HttpSession session = rq.getSession();
		String sid = session.getId();
		rs.setContentType("text/html");
		PrintWriter out = rs.getWriter();

		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","1593");
			Statement st = con.createStatement();
			ResultSet rset = st.executeQuery("select * from userlog where sid='"+sid+"'");
			rset.next();
			if(rset.isAfterLast()){
				//this part creates exception if session id present doesnt match to any user
			}
			else{
				
				String dname = rset.getString("uanme"),dpass = rset.getString("upass");
				out.println("Username : "+dname+"<br />");
				out.println("Password : "+dpass+"<br />");
				out.println("<a href=\"logout\">LOGOUT</a>");
			}
			
		}catch(Exception e){
			out.println("no user logged in , redirecting to login page..");
			rs.addHeader("Refresh", "4; URL=/../Login");
			
		}
	}

}
