<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="org.jstlpractice.ak.user"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FORM PAGE</title>
</head>
<body>
<%
user admin = new user();
admin.setUname("Admin_NAME");//using the user() setters.
admin.setUpass("Admin_PASS");
admin.setUgen("Admin_IS_MALE");

session.setAttribute("sid", session.getId());
session.setAttribute("admin", admin);
request.setAttribute("user", admin);

//using request attribute dispatcher to obtain new attribues just setted here as objects in the dispatched page.
RequestDispatcher dispatcher = request.getRequestDispatcher("taker.jsp");
dispatcher.forward(request, response);
%> 

<fieldset>
<legend>FILL THIS</legend>
<form action="taker.jsp" method="post">
UserName : <input type="text" name="uname" placeholder = "User Name Here" /><br />
Password : <input type="password" name="upass" /><br />
Gender : <input type="radio" name="ugen" value="MALE" />MALE&emsp;
<input type="radio" name="ugen" value="FEMALE" />FEMALE
<br /><br />
<input type="submit" value="GOO" />
</form>
</fieldset>

</body>
</html>