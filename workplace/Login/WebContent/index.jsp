<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.IOException" %>
    <%@ page import="java.sql.Connection" %>
    <%@ page import="java.sql.DriverManager" %>
    <%@ page import="java.sql.ResultSet" %>
    <%@ page import="java.sql.Statement" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String sid=session.getId();
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
		response.addHeader("Refresh", "1; URL=userhome");
	}
	
}catch(Exception e){
	System.out.println("no logged user found of session : "+sid);
}
%>

<br />
<form action="login" method="post">
	UserName : <input type = "text" name = "uname" /><br />
	<br />Password : <input type="password" name="upass" /><br />
	<br /><input type="submit" value="Login"><br />
</form>

<a href = "signup.html">SIGN UP</a>
</body>
</html>