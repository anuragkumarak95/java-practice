<%-- 
    Document   : interview
    Created on : May 9, 2014, 5:45:37 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Interview List</title>
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
            
            ps=con.prepareStatement("insert into interviewtb values(?,?,?,?,?,?,?,?)");
            ps.setString(1, request.getParameter("jobid"));
            ps.setString(2, request.getParameter("appid"));
            ps.setString(3, request.getParameter("compname"));
            ps.setString(4, request.getParameter("postname"));
            ps.setString(5, request.getParameter("appname"));
            ps.setString(6, request.getParameter("loc")); 
            ps.setString(7, request.getParameter("doi")); 
            ps.setString(8, request.getParameter("time")); 
            ps.executeUpdate();
           
            response.sendRedirect("Addinterview.jsp");
            
        }
             catch(Exception e)
             {
                 out.println(e);
             }
            %>
            
    </body>
</html>
