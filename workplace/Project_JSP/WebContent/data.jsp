<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DATAJSP PAGE</title>
</head>
<body>

<%
String uname = request.getParameter("uname");//this format of jsp is called scriptlet..
String upass = request.getParameter("upass");
session.setAttribute("uname",uname);
application.setAttribute("uname",uname);
%>
UserName : <%=uname %><br />
Password : <%=upass %><br />

<a href = "index.html">&#60;== BACK</a>
</body>
</html>