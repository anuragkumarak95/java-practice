<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UPDATE PAGE</title>
</head>
<body>

<%@ page import = "java.sql.*" %>
<%
String id = request.getParameter("ID");
String dbid = (String)pageContext.getServletContext().getInitParameter("dbid"),
dbpass = (String)pageContext.getServletContext().getInitParameter("dbpass");
String fname = request.getParameter("fname"),lname = request.getParameter("lname");
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",dbid,dbpass);
	Statement st = con.createStatement();
	st.executeUpdate("update demo set FIRST = '"+fname+"' , LAST = '"+lname+"' where ID = '"+id+"'");
	out.println("Your data is updated w.r.t. the ID you gave, redirecting to read page..");
	response.addHeader("Refresh", "3; URL=read.jsp");
	
}catch(Exception e){out.println(e);}
	%>

</body>
</html>