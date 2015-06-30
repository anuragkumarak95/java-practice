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
            
            ps=con.prepareStatement("insert into resulttb values(?,?,?,?,?,?,?,?)");
            ps.setString(1, request.getParameter("sno"));
            ps.setString(2, request.getParameter("jobid"));
            ps.setString(3, request.getParameter("appid"));
            ps.setString(4, request.getParameter("appname"));
            ps.setString(5, request.getParameter("jstatus1"));
            ps.setString(6, request.getParameter("salary"));
            ps.setString(7, request.getParameter("doj"));
            ps.setString(8, request.getParameter("jstatus"));                         
            ps.executeUpdate();
            
            response.sendRedirect("result.jsp");
            
        }
             catch(Exception e)
             {
                 out.println(e);
             }
            %>
            
    </body>
</html>
