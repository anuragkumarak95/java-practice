<%-- 
    Document   : logout
    Created on : Feb 10, 2014, 11:52:59 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <%
            session.setAttribute("UName", null);
            session.removeAttribute("UName");
            response.sendRedirect("Login.jsp");
            %>
    </body>
</html>
