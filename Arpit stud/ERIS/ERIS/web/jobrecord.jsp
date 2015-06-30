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
            String un=(String)session.getAttribute("UName");
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/erisdb","root","12#");
            st=con.createStatement();
            
            ps=con.prepareStatement("insert into jobtb values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1, request.getParameter("jobid"));
            ps.setString(2, un );
            ps.setString(3, request.getParameter("deptname"));
            ps.setString(4, request.getParameter("postname"));
            ps.setString(5, request.getParameter("loc"));
            ps.setString(6, request.getParameter("exp"));
            ps.setString(7, request.getParameter("dop"));
            ps.setString(8, request.getParameter("key"));
            ps.setString(9, request.getParameter("salary"));
            ps.setString(10, request.getParameter("cn"));
            ps.setString(11, request.getParameter("add"));
            ps.setString(12, request.getParameter("edu"));
            ps.setString(13, request.getParameter("jstatus"));             
            ps.executeUpdate();
            //out.println("Record Submitted");
            response.sendRedirect("Addvacancy.jsp");
            
        }
             catch(Exception e)
             {
                 out.println(e);
             }
            %>
            
    </body>
</html>
