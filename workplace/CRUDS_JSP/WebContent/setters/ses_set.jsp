<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Session Set PAGE</title>
</head>
<body>

<%
String uname = request.getParameter("uname"),upass = request.getParameter("upass");
session.setAttribute("uname", uname);
session.setAttribute("upass",upass);
%>

UserName : <%= uname %><br />
Password : <%= upass %>
<a href="/CRUDS_JSP/getters/scope.jsp">Check Scope</a>

</body>
</html>