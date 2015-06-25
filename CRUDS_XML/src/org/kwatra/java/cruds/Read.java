package org.kwatra.java.cruds;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet("/Read")
public class Read extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter w = response.getWriter();
		try{
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","1593");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from demo");
			while(rs.next()) {
				int id = rs.getInt("id");
				String f = rs.getString("first");
				String l = rs.getString("last");
				w.print("<br />"+"ID: "+id+"<br />"+"Name: " +f+"<br />"+"Last:" +l);
			}
		} catch(Exception e) {
		    System.out.println(e.getMessage());
		}
		
		w.println("<fieldset><a href=\"index.html\">HOME</a>");
		w.println("<a href=\"form.html\">Create</a>");
		w.println("<a href=\"form_upd.html\">Update</a>");
		w.println("<a href=\"form_del.html\">Delete</a>");
		w.println("</fieldset>");
	}

}
