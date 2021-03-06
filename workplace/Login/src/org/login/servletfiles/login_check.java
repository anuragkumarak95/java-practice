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
 * Servlet implementation class login_check
 */
@WebServlet("/login")
public class login_check extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest rq, HttpServletResponse rs) throws ServletException, IOException {
		String uname =  rq.getParameter("uname");
		String upass = rq.getParameter("upass");
		rs.setContentType("text/html");
		PrintWriter out = rs.getWriter();
		
		try{
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","1593");
			Statement st = con.createStatement();
			ResultSet res = st.executeQuery("select * from userlog where uanme='"+uname+"' and upass='"+upass+"'");
			res.next();
			if(res.isAfterLast()){
				//this part creates an exception in case no result is generated, i.e.,wrong user id or password.
			}
			else{
				
				String dname = res.getString("uanme");
				HttpSession session  = rq.getSession();
				String sid = session.getId();
				st.executeUpdate("update userlog set sid = '"+sid+"' where uanme = '"+uname+"' AND upass = '"+upass+"'");
				out.println("Hello "+dname+" , your session id is updated in the database now.<br />");
				rs.setHeader("Refresh", "3; URL=userhome");
			}
			
		} catch(Exception e) {
		    out.println("Wrong ID or Password, try again.. redirecting..");
		    rs.setHeader("Refresh", "4; URL=/../Login");
		}

	}

}
