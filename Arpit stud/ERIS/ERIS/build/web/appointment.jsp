<%-- 
    Document   : appointment
    Created on : Mar 22, 2014, 12:47:14 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>SEND MAIL  </h3>
        <br>
        <div style=" margin-left: 100px">
        <form action="sendmail.jsp" method="POST">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            To : <input type="text" name="toadd" value="" size="30" /><br>
            <Br>
            Subject : <input type="text" name="subject" value="" size="30" /><br><br>Message : <br>
            <textarea name="desc" rows="6" cols="50">
            </textarea> <br><br><br>
            

            <input type="submit" value="Send" name="submit" />
        </form>
            </div>
    </body>
</html>
