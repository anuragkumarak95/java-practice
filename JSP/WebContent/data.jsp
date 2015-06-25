<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Data Insert from User</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		String pass = request.getParameter("pass");
		String gender = request.getParameter("abc");	
		String opt = request.getParameter("val");
		String text = request.getParameter("texta");
		//String c = "";
	%>
	<% session.setAttribute("user", name); %>
	<% session.setAttribute("pass", pass); %>
	Name 	:	<% out.println(name); %><br />
	Pass 	: 	<% out.println(pass); %><br />
	Gender	:   <% out.println(gender); %><br />
	Option 	: 	<% out.println(opt); %><br />
	Text	: 	<% out.println(text); %><br />
	Greet   :
	<%
		String greet[] = request.getParameterValues("chk");	
		for(int i=0;i<greet.length;i++){ 
	    	out.println(greet[i]);
		}
		out.println("<br />");
	%>
	<a href="session.jsp">Session values</a>
</body>
</html>