<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Session</title>
</head>
<body>
	Session	: <%= session.getId() %><br />
	Name	: <%= session.getAttribute("user") %><br />
	Pass	: <%= session.getAttribute("pass") %><br />
	<%
	if(session.isNew()) {
		response.sendRedirect("index.html");
	}
		session.setMaxInactiveInterval(5); %>

	<a href="destroy.jsp">Destroy</a>
</body>
</html>