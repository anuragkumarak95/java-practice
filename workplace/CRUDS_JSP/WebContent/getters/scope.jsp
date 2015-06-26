<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SCOPE GET PAGE</title>
</head>
<body>
<fieldset>
<legend>OPTIONS</legend>

<a href = "/CRUDS_JSP/form.html"> CREATE NEW </a>||
<a href = "/CRUDS_JSP/read.jsp"> READ DATA </a>||
<a href = "/CRUDS_JSP/upd_form.html"> UPDATE ENTRY </a>||
<a href = "/CRUDS_JSP/del_form.html"> DELETE ENTRY </a>
<br /><br />
<a href = "/CRUDS_JSP/ses_form.html"> SESSION </a>||
<a href = "/CRUDS_JSP/cok_form.html"> COOKIE </a>||
<a href = "/CRUDS_JSP/app_form.html"> APPLICATION </a>

</fieldset>

<%
String sesname = (String)session.getAttribute("uname"),sespass = (String)session.getAttribute("upass");
String appname = (String)application.getAttribute("uname"),apppass = (String)application.getAttribute("upass");
String cokname = "",cokpass = "";
Cookie coks[] = request.getCookies();
for(Cookie c : coks){
	if(c.getName().equals("uname")){cokname = c.getValue();}
	if(c.getName().equals("upass")){cokpass = c.getValue();}
}
//attaining all values of different scopes of this application.
%>

<fieldset>
<legend>Session Attributes</legend>
UserName : <%=sesname %><br />
Password : <%=sespass %>
</fieldset>
<fieldset>
<legend>Cookie Attributes</legend>
UserName : <%=cokname %><br />
Password : <%=cokpass %>
</fieldset>
<fieldset>
<legend>Context Attributes</legend>
UserName : <%=appname %><br />
Password : <%=apppass %>
</fieldset>


</body>
</html>