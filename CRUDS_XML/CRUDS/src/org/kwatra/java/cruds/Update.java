package org.kwatra.java.cruds;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(description = "Update Records", urlPatterns = { "/Update" })
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
response.setContentType("text/html");
		
		PrintWriter w = response.getWriter();
		w.print("<center><h3>Page redirecting..Wait...!!</h3></center>");
		String upd = request.getParameter("id");
		String first = request.getParameter("first");
		String last = request.getParameter("last");
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","1234");
			Statement st = con.createStatement();
			st.executeQuery("update demo set first='"+first+"',last='"+last+"'where id="+upd);
		} catch(Exception e) {
		    System.out.println(e.getMessage());
		}
		response.setHeader("Refresh", "5; URL=Read");
		
		
	}

}
