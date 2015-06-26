<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>READ PAGE</title>
</head>
<body>
<fieldset>
<legend>OPTIONS</legend>
<a href = "form.html"> CREATE NEW </a>||
<a href = "upd_form.html"> UPDATE ENTRY </a>||
<a href = "del_form.html"> DELETE ENTRY </a>
</fieldset>

<%@ page import = "java.sql.*" %>
<%
String dbid = (String)pageContext.getServletContext().getInitParameter("dbid"),
	   dbpass = (String)pageContext.getServletContext().getInitParameter("dbpass");

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",dbid,dbpass);
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from demo order by ID");
	%>
<fieldset><legend>Entries in DataBase are</legend>
	<table>
	<thead>
		<tr>
			<th>#</th>
			<th>First Name</th>
			<th>Last Name</th>
		</tr>
	</thead>
	<tbody>
	<%
	while(rs.next()){
		int id = rs.getInt("ID");
		String first = rs.getString("FIRST"),last = rs.getString("LAST");
		%>
		<tr>
			<td><%=id %></td>
			<td><%=first %></td>
			<td><%=last %></td>
		</tr>		
		<%
		
	}
	%>
	</tbody>
	</table>
	</fieldset>
	<%
	
}catch(Exception e){out.println(e);}

%>

</body>
</html>