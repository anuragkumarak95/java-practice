package org.kwatra.java.cruds;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Create extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		PrintWriter w = response.getWriter();
		String first = request.getParameter("first");
		String last = request.getParameter("last");
		w.print("<center><h3>Page redirecting..Wait...!!</h3></center>");
		try{
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","1593");
			Statement st = con.createStatement();
			st.executeUpdate("insert into demo values(demo_seq.NEXTVAL,'"+first+"','"+last+"')");
			
		} catch(Exception e) {
		    System.out.println(e.getMessage());
		}
		response.setHeader("Refresh", "5; URL=Read");
	
	}

}
