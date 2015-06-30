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
            
            ps=con.prepareStatement("insert into applicanttb values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1, request.getParameter("appid"));
            ps.setString(2, request.getParameter("firstname"));
            ps.setString(3, request.getParameter("lastname"));
            ps.setString(4, request.getParameter("cl"));
            ps.setString(5, request.getParameter("city"));
            ps.setString(6, request.getParameter("dob"));
            ps.setString(7, request.getParameter("male"));
            ps.setString(8, request.getParameter("mobile"));
            ps.setString(9, request.getParameter("status"));
            ps.setString(10, request.getParameter("email"));
            ps.setString(11, request.getParameter("state"));
            ps.setString(12, request.getParameter("pincode"));
            ps.setString(13, request.getParameter("address"));
            ps.setString(14, request.getParameter("basic"));
            ps.setString(15, request.getParameter("dt"));
            ps.setString(16, request.getParameter("uni"));
            ps.setString(17, request.getParameter("pyear"));
            ps.setString(18, request.getParameter("pg"));
            ps.setString(19, request.getParameter("dt1"));
            ps.setString(20, request.getParameter("uni1"));
            ps.setString(21, request.getParameter("year1"));
            ps.setString(22, request.getParameter("pl"));
            ps.setString(23, request.getParameter("te"));
            ps.setString(24, request.getParameter("cc"));
            ps.setString(25, request.getParameter("cd"));
            ps.setString(26, request.getParameter("fa"));
            ps.setString(27, request.getParameter("role"));
            ps.setString(28, request.getParameter("obj"));
             
            ps.executeUpdate();
            //out.println("Record Submitted");
            response.sendRedirect("addprofile.jsp");
            
        }
             catch(Exception e)
             {
                 out.println(e);
             }
            %>
            
    </body>
</html>
