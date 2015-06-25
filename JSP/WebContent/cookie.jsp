<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cookie</title>
</head>
<body>
	<% Cookie cname = new Cookie("User", request.getParameter("name"));
	   Cookie cpass = new Cookie("Pass", request.getParameter("pass")); 	
			  cname.setMaxAge(60*60*24);
			  cpass.setMaxAge(60*60*24);
		      response.addCookie(cname);
		      response.addCookie(cpass);
	%>
	<%	out.print(cname.getName()); %>: <%	out.print(cname.getValue()); %><br />
	<%	out.print(cpass.getName()); %>: <%	out.print(cpass.getValue()); %>
</body>
</html>