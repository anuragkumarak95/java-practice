<%-- 
    Document   : insert
    Created on : Feb 10, 2014, 11:59:24 AM
    Author     : Admin
--%>

<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>insert record</title>
        
    </head>
    <body>
        
        <%
             try
        {
            
            Connection con;
            ResultSet rs;
            PreparedStatement ps;
            Statement st;
            
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/erisdb","root","12#");
            st=con.createStatement();
            
//            ps=con.prepareStatement("Update registertb set Password='"+request.getParameter("pw")+"' where Email='"+request.getParameter("email1")+"'");
           
            st.executeUpdate("Update registertb set Password='"+request.getParameter("pw")+"' where Email='"+request.getParameter("email1")+"'");
            //out.println("Record Submitted");
            response.sendRedirect("Login.jsp");
           
        }
             catch(Exception e)
             {
                 out.println(e);
             }
            %>
            
    </body>
</html>
