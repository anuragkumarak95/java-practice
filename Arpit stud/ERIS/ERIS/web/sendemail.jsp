<%-- 
    Document   : sendemail
    Created on : Feb 27, 2014, 11:24:43 AM
    Author     : Admin
--%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.* "%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mail</title>
    </head>
    <body>
       
           
       <%
               
           
                final String username = "akashyh.55@gmail.com";
		final String password = "rajshayamaji";
 
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
                //props.put(key value, v value); value get by key 
		Session sess = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });
                
		try {
 
			Message message = new MimeMessage(sess);
			message.setFrom(new InternetAddress("akashyh.55@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(request.getParameter("toadd")));
			//message.setRecipients(Message.RecipientType.CC,InternetAddress.parse(request.getParameter("txtcc")));
                        message.setSubject(request.getParameter("subject"));
                        message.setText(request.getParameter("desc")); 
                          
			Transport.send(message);
 
			out.println("Email Sent Successful");
 
		} catch (MessagingException e) {
			out.println(e.getMessage());
		}
	
             
%>
    </body>
</html>
