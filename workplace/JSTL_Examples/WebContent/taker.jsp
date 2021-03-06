<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="org.jstlpractice.ak.user"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="user" class="org.jstlpractice.ak.user" scope="request">
	<jsp:setProperty property="*" name="user" /> <%-- if all te names of Parameters matches the names of membervariables of the class initialised, then property can be put * to set all the membervariables. --%>
</jsp:useBean>
<jsp:useBean id="admin" class="org.jstlpractice.ak.user" scope="session"><%-- jsp:useBean is the taglib used to fetch or create(if fetch is false) ubjects dispatched by the predefined scope. --%>
<jsp:setProperty property="uname" name="admin" value="Admin not gotten" /><%-- setProperty of the jsp taglibs use the setter methods of the class defined by the developer. --%>
</jsp:useBean>
<jsp:useBean id="sid" class="java.lang.String" scope="session"></jsp:useBean>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><jsp:getProperty property="uname" name="user"/> DETAILS</title><%-- getProperty uses the getter method of the class defined by the developer. --%>
</head>
<body>

<fieldset><legend>My Details</legend>
Name : <jsp:getProperty property="uname" name="user"/><br />
Password : <jsp:getProperty property="upass" name="user"/><br />
Gender : <jsp:getProperty property="ugen" name="user"/>
</fieldset>

<fieldset><legend><jsp:getProperty property="uname" name="admin"/> Details</legend>
Name : <jsp:getProperty property="uname" name="admin"/><br />
Password : <jsp:getProperty property="upass" name="admin"/><br />
Gender : <jsp:getProperty property="ugen" name="admin"/><br />
SID : <%=sid %><%-- if your bean is a premitive data type and only have output values, use jsp tags to display it.. --%>
</fieldset>
</body>
</html>