<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CREATE NEW USER</title>
</head>
<body>
<%@ page import = "java.sql.*" %>
<%
String first = request.getParameter("fname");
String last = request.getParameter("lname");
String dbid = (String)pageContext.getServletContext().getInitParameter("dbid"),
dbpass = (String)pageContext.getServletContext().getInitParameter("dbpass");
try{
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",dbid,dbpass);
	Statement st = con.createStatement();
	st.executeUpdate("insert into demo values(demo_seq.NEXTVAL,'"+first+"','"+last+"')");
	out.println("entry addition completed, redirecting to read page...");
	response.setHeader("Refresh", "3; URL=read.jsp");	
} catch(Exception e) {
    out.println(e.getMessage());
}

%>

</body>
</html>